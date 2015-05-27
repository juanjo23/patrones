from django.conf import settings
from django.conf.urls import patterns, include, url
from django.views.generic import TemplateView
# Uncomment the next two lines to enable the admin:
from django.contrib import admin
admin.autodiscover()

urlpatterns = patterns('',
    # Examples:url(r'^about/', TemplateView.as_view(template_name="about.html")),
    url(r'^$', 'sistema.views.principal', name='home'),
    # url(r'^patrones/', include('patrones.foo.urls')),
    url(r'^diagrama/$', 'sistema.views.diagrama', name="diagrama"),
    # url(r'^cuestionario/$', 'sistema.views.cuestionario', name="cuestionario"),
    url(r'^cuestionario/(?P<area>\d+)/$', 'sistema.views.cuestionario', name="cuestionario_area"),
    url(r'^cuestionario/$', 'sistema.views.cuestionario', name="cuestionario"),
    url(r'^perfil/completar/$', 'sistema.views.completar_perfil', name="completar_perfil"),
    url(r'^cuestionarios/$', 'sistema.views.cuestionarios', name="cuestionarios"),
    url(r'^cuestionarios/usuarios$', 'sistema.views.usuarios', name="usuarios"),
    url(r'^cuestionarios/(?P<id_usuario>\d+)/$', 'sistema.views.usuario_cuestionarios', name="usuario_cuestionarios"),
    url(r'^resultado/(?P<id_cuestionario>\d+)/$', 'sistema.views.ver_resultados', name="resultado"),


    # Uncomment the admin/doc line below to enable admin documentation:
    url(r'^admin/doc/',include('django.contrib.admindocs.urls')),

    # Uncomment the next line to enable the admin:
    url(r'^grappelli/', include('grappelli.urls')),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^accounts/', include('userena.urls')),

)
