from django.contrib import admin
from .models import NewUser, Host, Post, Comment, Home, HomeIsBooked


class StateUser(admin.ModelAdmin):
    list_display = ('username','full_name','mobile_num')
  
admin.site.register(NewUser, StateUser)

class StateHome(admin.ModelAdmin):
    list_display = ('title','address','IsHomeApproved', 'BookedStatus')
    #exclude = ('BookedStatus',)  
admin.site.register(Home, StateHome)

class hostdetails(admin.ModelAdmin):
    list_display = ('username', 'address')

admin.site.register(Host,hostdetails)

class postdetails(admin.ModelAdmin):
    list_display = ('title', 'date_added')

admin.site.register(Post,postdetails)

class isHomeBooked(admin.ModelAdmin):
   list_display = ('home', 'userid','hostid')
admin.site.register(HomeIsBooked,isHomeBooked)

admin.site.register(Comment)

