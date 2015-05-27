from .models import Categoria, Patron, Problema, Modelo, Solucion, AreaProceso, ObjetivoEspecifico, PracticaEspecifica, Pregunta, Cuestionario
from django.contrib import admin


class ProblemaInline(admin.TabularInline):
    model = Problema

class PreguntaInline(admin.TabularInline):
    model = Pregunta.patrones.through



class PatronAdmin(admin.ModelAdmin):
    inlines = [
        ProblemaInline,
        PreguntaInline,
    ]


class PreguntaPatronInline(admin.TabularInline):
    model = Pregunta.patrones.through


class PreguntaInline(admin.TabularInline):
    model = Pregunta

class ObjetivoEspecificoInline(admin.TabularInline):
    model = ObjetivoEspecifico


class ArearProcesoAdmin(admin.ModelAdmin):
    inlines = [ObjetivoEspecificoInline]


class PracticaEspecificaInline(admin.TabularInline):
    model = PracticaEspecifica


class ObjetivoEspecificoAdmin(admin.ModelAdmin):
    inlines = [PracticaEspecificaInline]


class PreguntaAdmin(admin.ModelAdmin):
    inlines = [PreguntaPatronInline, PracticaEspecificaInline]


class PracticaAdmin(admin.ModelAdmin):
    inlines = [PreguntaInline,]

class ProblemaAdmin(admin.ModelAdmin):
    filter_horizontal = ("soluciones",)
    filter_vertical = ("fuerzas",)

admin.site.register(Categoria)
admin.site.register(Patron, PatronAdmin)
admin.site.register(Modelo)
admin.site.register(Problema, ProblemaAdmin)
admin.site.register(Solucion)

admin.site.register(AreaProceso, ArearProcesoAdmin)
admin.site.register(ObjetivoEspecifico)
admin.site.register(PracticaEspecifica, PracticaAdmin)
admin.site.register(Pregunta)
admin.site.register(Cuestionario)
