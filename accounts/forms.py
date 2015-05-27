#encoding_utf-8
from .models import MyProfile
from django.forms import ModelForm

class MyProfileForm(ModelForm):
    class Meta:
        model = MyProfile
        exclude = ('mugshot', 'privacy', 'user')