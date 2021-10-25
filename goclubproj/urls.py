from django.urls import path, re_path, include

from django.contrib import admin
admin.autodiscover()

import goclubdb.views

urlpatterns = [
    re_path(r'^$', goclubdb.views.LayerList.as_view(), name='layer_list'),
    re_path(r'^info$', goclubdb.views.info, name='info'),
    re_path(r'^layers/$', goclubdb.views.LayerList.as_view(), name='layer_list'),
    re_path(r'^layers/json$', goclubdb.views.layerlistjson, name='layerlistjson'),
    re_path(r'^clubs/([\w-]+)$', goclubdb.views.ClubList.as_view(), name='ClubList'),
    re_path(r'^clubs/(?P<layername>[\w-]+)/json$', goclubdb.views.clublistjson, name='clublistjson'),
    re_path(r'^club/(?P<clubid>[0-9]+)$', goclubdb.views.clubdetail, name='clubdetail'),
    re_path(r'^club/(?P<clubid>[0-9]+)/$', goclubdb.views.clubdetail, name='clubdetail'),
    re_path(r'^layer/(?P<pk>[0-9]+)/$', goclubdb.views.LayerDetail.as_view(), name='layerdetail'),
    re_path(r'^layer/(?P<pk>[0-9]+)/edit', goclubdb.views.LayerUpdate.as_view(), name='update_layer'),
    re_path(r'^club/(?P<pk>[0-9]+)/edit', goclubdb.views.ClubUpdate.as_view(), name='update_club'),
    re_path(r'^club/(?P<pk>[0-9]+)/delete', goclubdb.views.ClubDelete.as_view(success_url="/"), name='delete_club'),
    re_path(r'^club/create', goclubdb.views.ClubCreate.as_view(), name='create_club'),
    re_path(r'^layer/create', goclubdb.views.LayerCreate.as_view(), name='create_layer'),
    re_path(r'^club/(?P<name>[A-Z]+)/create', goclubdb.views.ClubCreateLayer.as_view(), name='create_club'),
    re_path(r'^admin/', admin.site.urls),
    re_path(r'^accounts/login/', goclubdb.views.login, name='login'),
    re_path(r'^accounts/', include('allauth.urls')),
]
