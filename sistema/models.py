from django.db import models
from django.contrib.auth.models import User


class Categoria(models.Model):
    nombre = models.CharField(max_length=1000)

    def __unicode__(self):
        return u"%s" % self.nombre


class Modelo(models.Model):
    nombre = models.TextField(max_length=200)

    def __unicode__(self):
        return u"%s" % self.nombre

    class Meta:
        verbose_name = 'Modelo o Estandar'
        verbose_name_plural = 'Modelos o Estadares'

class Patron(models.Model):
    nombre = models.CharField(max_length=1000)
    resultado_contexto = models.TextField(max_length=1000, blank=True)
    patrones_relacionados = models.ManyToManyField('self', null=True, blank=True)
    categoria = models.ForeignKey(Categoria, verbose_name="Contexto")

    def __unicode__(self):
        return u"%s" % self.nombre

    class Meta:
        verbose_name_plural = 'Patrones'


class Solucion(models.Model):
    solucion = models.TextField(max_length=1000)
    modelo = models.ForeignKey(Modelo, blank=True, null=True)
    porcentaje = models.IntegerField()
    resultado_contexto = models.TextField(max_length=1000)

    def __unicode__(self):
        return u"%s" % self.solucion


class Problema(models.Model):
    problema = models.TextField(max_length=1000)
    patron = models.ForeignKey(Patron)
    fuerzas = models.ManyToManyField('Pregunta', blank=True, related_name="problemas")
    soluciones = models.ManyToManyField(Solucion)

    def __unicode__(self):
        return u"%s" % self.problema


class AreaProceso(models.Model):
    nombre = models.CharField(max_length=500)

    def __unicode__(self):
        return u"%s" % self.nombre

class ObjetivoEspecifico(models.Model):
    nombre = models.CharField(max_length=200)
    area = models.ForeignKey(AreaProceso)

    class Meta:
        verbose_name = "Meta Especifica"
        verbose_name_plural = "Metas Especificas"

    def __unicode__(self):
        return u"%s" % self.nombre

class PracticaEspecifica(models.Model):
    nombre = models.CharField(max_length=300)
    objetivo = models.ForeignKey(ObjetivoEspecifico)

    def __unicode__(self):
        return u"%s" % self.nombre


class Pregunta(models.Model):
    pregunta = models.CharField(max_length=500)
    practica = models.ForeignKey(PracticaEspecifica)
    patrones = models.ManyToManyField(Patron)

    class Meta:
        verbose_name = "Fuerza"
        verbose_name_plural = "Fuerzas"

    def __unicode__(self):
        return u"%s" % self.pregunta


class Cuestionario(models.Model):
    usuario = models.ForeignKey(User)
    fecha_hora = models.DateTimeField(auto_now=True)
    terminado = models.BooleanField()

    def __unicode__(self):
        return u"%s (%s)" % (self.usuario, self.fecha_hora)


    def procentaje(self):
        #if Pregunta.objects.all().count() == 0:
        #   return 0
        #else:
        return round((float(self.cuestionario.all().count())/Pregunta.objects.all().count()) * 100, 1)


class Respuesta(models.Model):
    RESPUESTAS = (
        ('1', 'Nunca'),
        ('2', 'Rara Vez'),
        ('3', 'Alguna Vez'),
        ('4', 'Usualmente'),
        ('5', 'Siempre'),
    )

    pregunta = models.ForeignKey(Pregunta, related_name='respuesta')
    respuesta = models.CharField(max_length=2, choices=RESPUESTAS)
    cuestionario = models.ForeignKey(Cuestionario, related_name='cuestionario')

