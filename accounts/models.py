#encoding:utf-8
from django.db import models
from django.contrib.auth.models import User
from django.utils.translation import ugettext as _
from userena.models import UserenaBaseProfile
from sistema.models import Modelo

class MyProfile(UserenaBaseProfile):
    user = models.OneToOneField(User,
                                unique=True,
                                verbose_name=_('Usuario'),
                                related_name='mi_perfil')
    empresa = models.CharField(max_length=300)
    numero_empleados = models.IntegerField(default=0)
    sector = models.CharField(max_length=500)
    modelo_estandar = models.ForeignKey(Modelo, blank=True, null=True)