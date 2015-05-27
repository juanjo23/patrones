from django import template
from django.contrib.auth.models import User

register = template.Library()


@register.filter
def prioridad(usuario, modelo):
    empleados = usuario.mi_perfil.numero_empleados
    m = usuario.mi_perfil.modelo_estandar.nombre
    modelos = ('Scrum', 'MoProSoft', 'ISO 15504', 'CMMI-DEV')

    micro = {'Scrum': 1, 'MoProSoft': 2, 'ISO 15504': 3, 'CMMI-DEV': 4}
    pyme = {'Scrum': 1, 'MoProSoft': 2, 'ISO 15504': 3, 'CMMI-DEV': 4}
    mediana = {'Scrum': 4, 'MoProSoft': 3, 'ISO 15504': 1, 'CMMI-DEV': 2}
    grande = {'Scrum': 4, 'MoProSoft': 2, 'ISO 15504': 3, 'CMMI-DEV': 1}

    if m in modelos:
        micro[m] = 0
        pyme[m] = 0
        mediana[m] = 0
        grande[m] = 0
    
    return ""
"""
    if 0 < empleados < 10:
        return micro[modelo.nombre]
    elif 10 < empleados < 50:
        return pyme[modelo.nombre]
    elif 50 < empleados < 150:
        return mediana[modelo.nombre]
    else:
        return grande[modelo.nombre]
"""
