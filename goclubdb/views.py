from django.shortcuts import render, get_object_or_404, redirect
from django.http import Http404
from django.http import HttpResponse
from django.views.generic.edit import CreateView, UpdateView, DeleteView
from django.views.generic.list import ListView
from django.views.generic import DetailView
from django.core.urlresolvers import reverse_lazy
from reversion import revisions as reversion
from django.db import models, transaction
from django.contrib.auth.mixins import LoginRequiredMixin
import json

from .models import Layer, Club, Clubtype, Clubstatus, ClubForm, LayerForm, ClubtypeForm, ClubstatusForm

#mixin to log revisions: see https://github.com/etianen/django-reversion/issues/461
class RevisionMixin(object):
    @reversion.create_revision()
    def dispatch(self, request, *args, **kwargs):
        if request.method in ("POST", "PATCH", "PUT") and request.user.is_authenticated():
            reversion.set_user(request.user)
        return super(RevisionMixin, self).dispatch(request, *args, **kwargs)

#Static info page
def info(request):
    return render(request, 'info.html')

#Custom login page
def login(request):
    return render(request, 'login.html')

def index(request):
    layers = Layer.objects.all()
    return render(request, 'layerlist.html', {'layers': layers})

def clublistjson(request, layername):
    clubs = Club.objects.filter(layer__name=layername).order_by("name")
    results = dict(type = "FeatureCollection", features = [ob.as_json() for ob in clubs])
    return HttpResponse(json.dumps(results, indent=2, ensure_ascii=False, encoding='utf8', sort_keys=True), content_type="application/json")

class ClubList(ListView):
    model = Club
    form_class = ClubForm

    def get_queryset(self):
        self.layer = get_object_or_404(Layer, name=self.args[0])
        return Club.objects.filter(layer=self.layer)

    def get_context_data(self, **kwargs):
        context = super(ClubList, self).get_context_data(**kwargs)
        context['layer'] = self.layer
        return context

def clubdetail(request, clubid):
    club = Club.objects.filter(id=clubid)
    if len(club) != 1: #Must be one and only one club with this name.
        layers = Layer.objects.all()
        return render(request, 'layerlist.html', {'layers': layers}) #Redirect to layer list
    clublayer = Layer.objects.filter(id=club[0].layer_id)
    return render(request, 'clubdetail.html', {'club': club[0], 'layer': clublayer[0]})

class LayerDetail(DetailView):
    model = Layer
    form_class = LayerForm

class LayerList(ListView):
    model = Layer
    form_class = LayerForm

class LayerCreate(RevisionMixin, LoginRequiredMixin, CreateView):
    model = Layer
    form_class = LayerForm

class LayerUpdate(RevisionMixin, LoginRequiredMixin, UpdateView):
    model = Layer
    form_class = LayerForm

class ClubCreate(RevisionMixin, LoginRequiredMixin, CreateView):
    model = Club
    form_class = ClubForm

#Create club with layer pre-populated
class ClubCreateLayer(RevisionMixin, LoginRequiredMixin, CreateView):
    model = Club
    form_class = ClubForm
    def get_initial(self):
        layer = get_object_or_404(Layer, name=self.kwargs.get('name'))
        return { 'layer':layer }

class ClubUpdate(RevisionMixin, LoginRequiredMixin, UpdateView):
    model = Club
    form_class = ClubForm

class ClubDelete(RevisionMixin, LoginRequiredMixin, DeleteView):
    model = Club
    form_class = ClubForm

