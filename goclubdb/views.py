from django.shortcuts import render
from django.http import Http404
from django.http import HttpResponse

from .models import Layer, Club, Clubtype, Clubstatus

#Static greeting page
def index(request):
    return render(request, 'index.html')


def layerlist(request):
    layers = Layer.objects.all()
    return render(request, 'layerlist.html', {'layers': layers})

def clublist(request, layername):
    layer = Layer.objects.filter(name=layername)
    if len(layer) != 1: #Must be one and only one layer with this name.
        layers = Layer.objects.all()
        return render(request, 'layerlist.html', {'layers': layers}) #Redirect to layer list
    clubs = Club.objects.filter(layer__name=layername)
    return render(request, 'clublist.html', {'clubs': clubs, 'layer': layer[0]})

def clubdetail(request, clubid):
    club = Club.objects.filter(id=clubid)
    if len(club) != 1: #Must be one and only one club with this name.
        layers = Layer.objects.all()
        return render(request, 'layerlist.html', {'layers': layers}) #Redirect to layer list
    return render(request, 'clubdetail.html', {'club': club[0]})
