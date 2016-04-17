from django.db import models
from django import forms
from django.forms import ModelForm
from django.utils.encoding import python_2_unicode_compatible

@python_2_unicode_compatible
class Layer(models.Model):
    # Table of map layers: each one should be an organisation, e.g. a country's clubs
    def __str__(self):
        return self.name
    def get_absolute_url(self):
        return reverse('layer-detail',kwargs={'name':self.name})
    name        = models.CharField('Layer name, normally ISO 3166-1 country code', max_length=100)
    description = models.TextField('Description of the layer')
    website     = models.URLField('Website of the organisation, if any')
    color       = models.CharField('Color of the marker; must be a valid HTML color name', max_length=25)

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
        fields = ['name', 'meettime', 'meetplace', 'postcode', 'contact', 'website', 'layer', 'clubstatus', 'clubtype', 'lat', 'lon']
        widgets = {
                'meetplace': forms.Textarea(attrs={'rows': 2}),
                'meettime':  forms.Textarea(attrs={'rows': 2}),
                'contact':   forms.Textarea(attrs={'rows': 2}),
        }
