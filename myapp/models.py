from django.db import models
from django.contrib.auth.models import AbstractUser

# Create your models here.

class NewUser(AbstractUser):
    full_name = models.CharField(max_length=100, blank=False)
    profile_dp = models.ImageField(upload_to='assets/uploadedimg', null=True, blank=True)
    mobile_num = models.PositiveIntegerField(null=True, blank= True)
    

class Host(models.Model):
    username = models.OneToOneField(NewUser, on_delete=models.CASCADE, primary_key=True,)
    address = models.CharField( max_length=200)

    def __str__(self):
        return '%s' % self.username

class Home(models.Model):
    host = models.ForeignKey(Host, null=True, on_delete= models.SET_NULL)
    title = models.CharField(max_length= 100)
    coverImg = models.ImageField(upload_to='assets/uploadedimg', null=True, blank=True)
    photofile1 = models.ImageField(upload_to='assets/uploadedimg', null=True, blank=True)
    photofile2 = models.ImageField(upload_to='assets/uploadedimg', null=True, blank=True)
    photofile3 = models.ImageField(upload_to='assets/uploadedimg', null=True, blank=True)
    photofile4 = models.ImageField(upload_to='assets/uploadedimg', null=True, blank=True)
    noOfRoom = models.IntegerField()
    noOfBed = models.IntegerField()
    noOfBath = models.IntegerField()
    address = models.CharField(max_length= 50)
    pricePerMonth = models.IntegerField()
    aboutHome = models.CharField(max_length= 1000)
    IsHomeApproved = models.BooleanField()
    BookedStatus = models.BooleanField()

    def __str__(self):
        return '%s' %  self.host+ " " + self.title

class HomeIsBooked(models.Model):
    home = models.OneToOneField(Home, on_delete=models.CASCADE, primary_key=True,)
    userid = models.IntegerField(null=False)
    hostid = models.IntegerField(null=False)
    isBooked = models.BooleanField()

    def __str__(self):
        return '%s' %  self.home



class Post(models.Model):
    title = models.CharField(max_length=255)
    slug = models.SlugField()
    intro = models.TextField()
    body = models.TextField()
    date_added = models.DateTimeField(auto_now_add=True)

    class Meta:
    	ordering = ['-date_added']
    
    def __str__(self):
        return '%s' % self.title


class Comment(models.Model):
    post = models.ForeignKey(Post, related_name='comments', on_delete=models.CASCADE)
    name = models.CharField(max_length=255)
    email = models.EmailField()
    body = models.TextField()
    date_added = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return '%s' % self.post + " Commented by " +self.name



