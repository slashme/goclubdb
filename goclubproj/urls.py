from django.conf.urls import include, url

from django.contrib import admin
admin.autodiscover()

import goclubdb.views

urlpatterns = [
    url(r'^$', goclubdb.views.index, name='index'),
    url(r'^db', goclubdb.views.db, name='db'),
    url(r'^admin/', include(admin.site.urls)),
]
