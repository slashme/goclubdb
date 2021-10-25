from django.db import models, transaction
from django import forms
from django.forms import ModelForm
from django.utils.translation import ugettext_lazy as _
#from reversion import revisions as reversion
#from reversion.admin import VersionAdmin
from django.contrib import admin
from django.contrib.auth.models import User
from django.shortcuts import redirect
#from reversion.models import Revision
import allauth

class Layer(models.Model):
    # Table of map layers: each one should be an organisation, e.g. a country's clubs
    def __str__(self):
        return self.name
    class Meta:
        ordering = ["name"]
    def get_absolute_url(self):
        return "/layer/%i/" % self.id
    name        = models.CharField('Layer name, normally ISO 3166-1 country code', max_length=100, unique=True)
    description = models.TextField('Description of the layer')
    website     = models.URLField('Website of the organisation, if any')
    color       = models.CharField('Color of the marker; must be a valid HTML color name', max_length=25)

    def as_json(self):
        layerdict = dict(name = self.name, description = self.description, website = self.website, color = self.color)
        return layerdict

#reversion.register(Layer)

class LayerAdmin(VersionAdmin):
    pass

admin.site.register(Layer, LayerAdmin)

class Clubtype(models.Model):
    # List of known club types with marker types
    def __str__(self):
        return self.name
    name        = models.CharField('What we call the type (e.g. "club" or "individual")', max_length=100)
    description = models.TextField('What does this type include')
    iconurl     = models.CharField('What icon picture to use for this type of club', blank=True, null=True, max_length=200)

class Clubstatus(models.Model):
    # List of known club statuses with marker types
    def __str__(self):
        return self.name
    name        = models.CharField('What we call the status (e.g. "active")', max_length=100)
    description = models.TextField('What does this status mean?')
    iconclass   = models.CharField('What marker shape to use for this status', blank=True, null=True, max_length=200)

class Club(models.Model):
    def __str__(self):
        return self.name
    def get_absolute_url(self):
        return "/club/%i/" % self.id
    name        = models.CharField('A uniquely defining name for the club', max_length=1000)
    meettime    = models.TextField('Meeting times of the club (as text for now)', null=True, blank=True)
    meetplace   = models.TextField('Meeting place of the club (as text address)', null=True, blank=True)
    #Adding this because some countries like Germany like to refer to clubs by postal code
    postcode    = models.CharField('Postal code', max_length=32, null=True, blank=True)
    contact     = models.TextField('Contact details (free-form text)', null=True, blank=True)
    website     = models.URLField('Website of the club, if any', null=True, blank=True)
    layer       = models.ForeignKey(Layer,      on_delete=models.CASCADE)
    clubstatus  = models.ForeignKey(Clubstatus, on_delete=models.CASCADE, null=True, blank=True)
    clubtype    = models.ForeignKey(Clubtype,   on_delete=models.CASCADE, null=True, blank=True)
    lat         = models.FloatField('Decimal latitude')
    lon         = models.FloatField('Decimal longitude')
    province    = models.CharField('Province or state', max_length=100, null=True, blank=True)

    def as_json(self):
        clubdict = dict(geometry = dict(type='Point', coordinates = [self.lon, self.lat]), layer = self.layer.name, type='Feature', properties = dict(description = ' , '.join(filter(None,[self.website, self.meetplace, self.meettime, self.contact, 'edit: https://goclubdb.herokuapp.com'+self.get_absolute_url()])), name = self.name))
        if (self.clubtype is not None) and self.clubtype.name=="individual":
            clubdict['properties']['_storage_options']=dict(iconClass='Ball')
        elif (self.clubstatus is not None) and self.clubstatus.name=="inactive":
            clubdict['properties']['_storage_options']=dict(iconClass='Circle')
        return clubdict

class ClubAdmin(VersionAdmin):
    pass

admin.site.register(Club, ClubAdmin)

#class RevisionAdmin(admin.ModelAdmin):
#    list_display = ('user', 'comment', 'date_created')
#    search_fields = ('=user__username', '=user__email')
#    date_hierarchy = ('date_created')
#
#    def change_view(self, request, obj=None):
#        self.message_user(request, 'You cannot change history.')
#        return redirect('admin:reversion_revision_changelist')
#
#admin.site.register(Revision, RevisionAdmin)

class LayerForm(ModelForm):
    class Meta:
        model = Layer
        fields = ['name', 'description', 'website', 'color']

class ClubtypeForm(ModelForm):
    class Meta:
        model = Clubtype
        fields = ['name', 'description', 'iconurl']

class ClubstatusForm(ModelForm):
    class Meta:
        model = Clubstatus
        fields = ['name', 'description', 'iconclass']

class ClubForm(ModelForm):
    class Meta:
        model = Club
        fields = ['name', 'meettime', 'meetplace', 'postcode', 'province',  'contact', 'website', 'layer', 'clubstatus', 'clubtype', 'lat', 'lon']
        labels  = {
                'clubstatus': _('Club status'),
                'clubtype':   _('Club type'),
        }
        widgets = {
                'meetplace': forms.Textarea(attrs={'rows': 2}),
                'meettime':  forms.Textarea(attrs={'rows': 2}),
                'contact':   forms.Textarea(attrs={'rows': 2}),
        }
