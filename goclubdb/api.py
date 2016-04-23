from tastypie.resources import ModelResource
from goclubdb.models import Layer, Club

class LayerResource(ModelResource):
    class Meta:
        queryset = Layer.objects.all()
        resource_name = 'layer'

class ClubResource(ModelResource):
    class Meta:
        queryset = Club.objects.all()
        resource_name = 'club'
