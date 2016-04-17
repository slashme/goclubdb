from django.conf.urls import include, url

import goclubdb.views

urlpatterns = [
    url(r'^$', goclubdb.views.index, name='index'),
    url(r'^info$', goclubdb.views.info, name='info'),
    url(r'^layers/$', goclubdb.views.LayerList.as_view(), name='layer_list'),
    url(r'^clubs/(?P<layername>[A-Z]+)', goclubdb.views.clublist, name='clublist'),
    url(r'^club/(?P<clubid>[0-9]+)$', goclubdb.views.clubdetail, name='clubdetail'),
    url(r'^club/(?P<clubid>[0-9]+)/$', goclubdb.views.clubdetail, name='clubdetail'),
    url(r'^layer/(?P<pk>[0-9]+)/$', goclubdb.views.LayerDetail.as_view(), name='layerdetail'),
    url(r'^club/(?P<pk>[0-9]+)/edit', goclubdb.views.ClubUpdate.as_view(), name='update_club'),
    url(r'^club/create', goclubdb.views.ClubCreate.as_view(), name='create_club'),
    url(r'^layer/create', goclubdb.views.LayerCreate.as_view(), name='create_layer'),
    url(r'^club/(?P<name>[A-Z]+)/create', goclubdb.views.ClubCreateLayer.as_view(), name='create_club'),
]
