"""my_2nd_home URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from django.contrib.auth import views as auth_views

from myapp import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns = [
    path('', views.home_view, name='home'),
    path('login/', auth_views.LoginView.as_view(template_name='login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(), name='logout'),
    path('signup/', views.signup, name='signup'),
    path('userProfile/<int:userid>', views.UserProfile, name='UserProfile'),
    path('hostedAllHome/', views.AllHomes, name='AllHomes'),
    path('Search/', views.AllHomesSearch, name='AllHomesSearch'),
    path('about/', views.about, name='about'),
    path('contact/', views.contact, name='contact'),
    path('hostsignup/<int:userid>', views.HostSignUp, name='HostSignUp'),
    path('hostProfile/<int:hostid>', views.HostProfile, name='HostProfile'),   
    path('userProfile/<int:userid>', views.UserProfile, name='UserProfile'),
    path('hostHome/<int:hostid>', views.HostHomeNow, name='HostHomeNow'),
    path('homeDetails/<int:hostid>:<int:homeid>', views.HomeDetails, name='HomeDetails'),
    path('deleteHome/<int:userid>:<int:homeid>', views.deleteHome, name='deleteHome'),
    path('bookNow/<int:hostid>:<int:homeid>:<int:id>', views.BookHomeNow, name='BookHomeNow'),
    path('removeBooking/<int:userid>:<int:homeid>', views.removeBooking, name='RemoveBooking'),
    path('RequestHome/',views.requestHome, name='requestHome'),
    path('RequestHome/<slug:slug>/', views.post_detail, name='post_detail'),
    path('changePassword/', views.change_password, name='changePassword'),    
    path('adminHomeApproval/<int:userid>', views.AdminHomeApproval, name='AdminHomeApproval'),
    path('HomeApproved/<int:userid>:<int:homeid>', views.HomeApproved, name='HomeApproved'),
    path('admin/', admin.site.urls),

]


if settings.DEBUG:
        urlpatterns += static(settings.MEDIA_URL,
                              document_root=settings.MEDIA_ROOT)

urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
