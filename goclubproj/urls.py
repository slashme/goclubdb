from django.conf.urls import include, url

import goclubdb.views

urlpatterns = [
    url(r'^$', goclubdb.views.index, name='index'),
    url(r'^db', goclubdb.views.db, name='db'),
]
