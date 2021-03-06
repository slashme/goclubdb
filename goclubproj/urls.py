from django.conf.urls import include, url

from django.contrib import admin
admin.autodiscover()

import goclubdb.views

urlpatterns = [
    url(r'^$', goclubdb.views.LayerList.as_view(), name='layer_list'),
    url(r'^info$', goclubdb.views.info, name='info'),
    url(r'^layers/$', goclubdb.views.LayerList.as_view(), name='layer_list'),
    url(r'^layers/json$', goclubdb.views.layerlistjson, name='layerlistjson'),
    url(r'^clubs/([\w-]+)$', goclubdb.views.ClubList.as_view(), name='ClubList'),
    url(r'^clubs/(?P<layername>[\w-]+)/json$', goclubdb.views.clublistjson, name='clublistjson'),
    url(r'^club/(?P<clubid>[0-9]+)$', goclubdb.views.clubdetail, name='clubdetail'),
    url(r'^club/(?P<clubid>[0-9]+)/$', goclubdb.views.clubdetail, name='clubdetail'),
    url(r'^layer/(?P<pk>[0-9]+)/$', goclubdb.views.LayerDetail.as_view(), name='layerdetail'),
    url(r'^layer/(?P<pk>[0-9]+)/edit', goclubdb.views.LayerUpdate.as_view(), name='update_layer'),
    url(r'^club/(?P<pk>[0-9]+)/edit', goclubdb.views.ClubUpdate.as_view(), name='update_club'),
    url(r'^club/(?P<pk>[0-9]+)/delete', goclubdb.views.ClubDelete.as_view(success_url="/"), name='delete_club'),
    url(r'^club/create', goclubdb.views.ClubCreate.as_view(), name='create_club'),
    url(r'^layer/create', goclubdb.views.LayerCreate.as_view(), name='create_layer'),
    url(r'^club/(?P<name>[A-Z]+)/create', goclubdb.views.ClubCreateLayer.as_view(), name='create_club'),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^accounts/login/', goclubdb.views.login, name='login'),
    url(r'^accounts/', include('allauth.urls')),
    url(r'^avatar/', include('avatar.urls')),
]
