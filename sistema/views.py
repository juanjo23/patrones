from django.contrib.admin.views.decorators import staff_member_required
from django.contrib.auth.decorators import login_required
from django.db.models import Q
from django.shortcuts import render_to_response, redirect
from django.template import RequestContext
from accounts.models import MyProfile
from .models import Patron, Categoria, Pregunta, Cuestionario, Respuesta, AreaProceso, Problema
from operator import itemgetter
from accounts.forms import MyProfileForm
from django.contrib.auth.models import User

@login_required
def principal(request):
    return render_to_response('inicio.html',
        {},
                              context_instance=RequestContext(request))


@login_required
def diagrama(request):
    comando = '{'
    categorias = Categoria.objects.all()
    patrones = Patron.objects.all()

    for categoria in categorias:
        comando += "'" + categoria.nombre + "': ["
        patrones_hijos = categoria.patron_set.all()
        hijos = False
        for patron_hijo in patrones_hijos:
            comando += "'" + patron_hijo.nombre + "', "
            hijos = True

        if hijos:
            comando = comando[:-2]
        comando += "],"

    for patron in patrones:

        comando += "'" + patron.nombre + "': ["
        patrones_hijos = patron.patrones_relacionados.all()
        hijos = False
        for patron_hijo in patrones_hijos:
            comando += "'" + patron_hijo.nombre + "', "
            hijos = True

        if hijos:
            comando = comando[:-2]

        comando += "],"

    comando = comando[:-1]
    comando += "}"
    return render_to_response('diagrama.html',
                              {"comando": comando},
                              context_instance=RequestContext(request))


@login_required
def cuestionario(request, area=None):

    my_profile = MyProfile.objects.get(user=request.user)

    inicio = False

    try:
        cuestionario_obj = Cuestionario.objects.filter(usuario=request.user, terminado=False)[:1].get()
    except Cuestionario.DoesNotExist:
        inicio = True
        cuestionario_obj = Cuestionario()
        cuestionario_obj.usuario = request.user
        cuestionario_obj.terminado = False
        cuestionario_obj.save()

    if inicio:
        return redirect('completar_perfil')

    if request.method == 'POST':

        for key in request.POST:
            if not key == 'csrfmiddlewaretoken':

                res = request.POST.get(key, None)

                if not res == "0":
                    respuesta = Respuesta()
                    respuesta.pregunta = Pregunta.objects.get(id=key)
                    respuesta.respuesta = res
                    respuesta.usuario = request.user
                    respuesta.cuestionario = cuestionario_obj
                    respuesta.save()

    preguntas_total = Pregunta.objects.filter(
        ~Q(respuesta__cuestionario__usuario=request.user, respuesta__cuestionario=cuestionario_obj)).order_by('-id')

    if preguntas_total.count() == 0:
        cuestionario_obj.terminado = True
        cuestionario_obj.save()
        return redirect("resultado", id_cuestionario=cuestionario_obj.id)

    preguntas = Pregunta.objects.filter(
        ~Q(respuesta__cuestionario__usuario=request.user, respuesta__cuestionario=cuestionario_obj)).filter(
        practica__objetivo__area_id=area).order_by('-id')

    if preguntas.count() == 0:
        return redirect("cuestionario_area", area=int(area)+1)


    # preguntas_contestadas = Pregunta.objects.filter(respuesta__cuestionario__usuario=request.user)
    areas = AreaProceso.objects.all()
    porcentaje = float(area) / areas.count() * 100

    return render_to_response('cuestionario.html',
                              {"preguntas": preguntas,
                               "area": area,
                               "areas": areas,
                               "porcentaje": porcentaje},
                              context_instance=RequestContext(request))


@login_required
def cuestionarios(request):
    cuestionarios = Cuestionario.objects.filter(usuario=request.user).order_by('-id')

    return render_to_response('cuestionarios.html',
                              {"cuestionarios": cuestionarios},
                              context_instance=RequestContext(request))

@login_required
def ver_resultados(request, id_cuestionario):
    cuestionario = Cuestionario.objects.get(id=id_cuestionario)
    promedios = dict()

    for problema in Problema.objects.all():
        # problemas = problema.fuerzas.values_list('id', flat=True).order_by('id')
        #datos.append(Respuesta.objects.filter(pregunta__in=problemas))
        # datos.append(Respuesta.objects.filter(pregunta__problemas=problema))
        respuestas = Respuesta.objects.filter(pregunta__problemas=problema, cuestionario=cuestionario)

        suma = 0

        for respuesta in respuestas:
            suma += int(respuesta.respuesta)

        promedios[problema] = (float(suma) / respuestas.count()) * 20

    respuestas = Respuesta.objects.filter(cuestionario=cuestionario).order_by("pregunta__practica__objetivo__area",
                                                                              "pregunta__practica__objetivo",
                                                                              "pregunta__practica")

    total = 0
    area_actual = None
    objetivo_actual = None
    practica_actual = None
    practicas = dict()
    objetivos = dict()
    areas = dict()
    res = list()
    suma_practicas = 0
    total_respuestas = 0
    for respuesta in respuestas:
        total += int(respuesta.respuesta)

        if not practica_actual == respuesta.pregunta.practica:

            if total_respuestas > 0:
                practicas[practica_actual] = float(suma_practicas) / total_respuestas * 20

            practica_actual = respuesta.pregunta.practica

            # res = list()
            # practicas[practica_actual] = res
            suma_practicas = 0
            total_respuestas = 0

        suma_practicas += int(respuesta.respuesta)
        total_respuestas += 1
        # res.append(respuesta)

        if not objetivo_actual == respuesta.pregunta.practica.objetivo:
            objetivos[objetivo_actual] = practicas
            objetivo_actual = respuesta.pregunta.practica.objetivo
            practicas = dict()

        if not area_actual == respuesta.pregunta.practica.objetivo.area:

            if area_actual is not None:
                areas[area_actual] = objetivos

            area_actual = respuesta.pregunta.practica.objetivo.area
            objetivos = dict()

    if respuestas.count() == 0:
        promedio_total = 0
    else:
        promedio_total = float(total) / respuestas.count() * 20

    areas[area_actual] = objetivos

    return render_to_response('resultado.html',
                              {"respuestas": respuestas,
                               "promedios": sorted(promedios.items(), key=itemgetter(1)),
                               "promedio_total": promedio_total,
                               "areas": areas,
                               "cuestionario": cuestionario},
                              context_instance=RequestContext(request))


def completar_perfil(request):

    my_profile = MyProfile.objects.get(user=request.user)



    if request.method == 'POST':
        form = MyProfileForm(request.POST, instance=my_profile)
        if form.is_valid():
            form.save()

            return redirect('cuestionario_area', 1)
    else:
        form = MyProfileForm(instance=my_profile)

    return render_to_response('completar_perfil.html',
                              {"form": form},
                              context_instance=RequestContext(request))

@staff_member_required
def usuario_cuestionarios(request, id_usuario):
    cuestionarios = Cuestionario.objects.filter(usuario_id=id_usuario)
    usuario = User.objects.get(id=id_usuario)

    return render_to_response('cuestionarios_usuario.html',
                              {"cuestionarios": cuestionarios,
                               "usuario": usuario},
                              context_instance=RequestContext(request))

def usuarios(request):
    usuarios = User.objects.all()

    return render_to_response('usuarios.html',
                              {"usuarios": usuarios},
                              context_instance=RequestContext(request))



