from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from django.forms import CharField
from .models import NewUser,Host,Home, Comment


class SignUpForm(UserCreationForm):
    full_name = forms.CharField(max_length=100, help_text='Required. 100 charaters of fewer.',
                                widget=forms.TextInput(attrs={'autocomplete': 'off'}))

    class Meta:
        model = NewUser
        fields = UserCreationForm.Meta.fields + ('full_name', 'profile_dp','mobile_num', 'email',)

class HostForm(forms.ModelForm):
    class Meta:
        model = Host
        fields = ['address',]


class HostedHomeDetails(forms.ModelForm):
    class Meta:
        model = Home
        fields = ['host','title','coverImg', 'photofile1', 'photofile2', 'photofile3','photofile4', 'noOfRoom','noOfBed','noOfBath', 'address', 'pricePerMonth','aboutHome',]

class CommentForm(forms.ModelForm):
	class Meta:
		model = Comment
		fields = ['name', 'email', 'body']