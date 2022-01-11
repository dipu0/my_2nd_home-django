from django.contrib import messages
from django.contrib.auth.forms import PasswordChangeForm
from django.views.generic import(ListView,DetailView,CreateView,UpdateView,DeleteView)
from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate, update_session_auth_hash
from django.http import HttpResponseRedirect
from django.shortcuts import get_object_or_404
from django.db.models import Q
from .forms import SignUpForm,HostForm,HostedHomeDetails, CommentForm
from .models import NewUser, Host, Home, HomeIsBooked, Post, Comment


def home_view(request):
    gethost = Host.objects.all()
    gethome = Home.objects.all()
    getPost = Post.objects.all()
    context = {'host': gethost, 'home': gethome, 'post': getPost,}
    if request.method == 'GET':
        return render(request, 'home.html', {'context': context})
    return render(request, 'home.html')


def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST,request.FILES)
        if form.is_valid():
            user = form.save()
            user.save()
            raw_password = form.cleaned_data.get('password1')
            user = authenticate(username=user.username, password=raw_password)
            login(request, user)
            return redirect('home')
    else:
        form = SignUpForm()
    return render(request, 'signup.html', {'form': form})

def HostSignUp(request, userid):
    getuser = NewUser.objects.get(id=userid)
    if request.method == 'GET':
        return render(request, 'host_signup.html', {'data': getuser})

    elif request.method == 'POST':
        try:
            host = Host()
            host.username = getuser
            host.address = request.POST.get('address')
            host.save()
            messages.success(request, "Registered Successfully")
        except Exception as e:
            messages.success(request, " Failed to Register Try Again")
    return render(request, 'host_signup.html')
   


def HostProfile(request, hostid):
    getUser = NewUser.objects.get(id=hostid)
    getHost = Host.objects.get(username=hostid)
    getHome = Home.objects.all()
    context = {'data': getHost, 'home': getHome, 'user':getUser}
    if request.method == 'GET':
        return render(request, 'hostProfile.html', {'context': context})
    return render(request, 'hostProfile.html')


def UserProfile(request, userid):
    getUser = NewUser.objects.get(id=userid)
    try:
        getHost = Host.objects.get(username=userid)
    except Host.DoesNotExist:
        getHost = None
    getBookedHome = HomeIsBooked.objects.all()
    getHome = Home.objects.all()
    context = {'BookedHome': getBookedHome, 'user': getUser, 'host': getHost, 'home':getHome,}
    if request.method == 'GET':
        return render(request, 'userProfile.html', {'context': context})
    return render(request, 'userProfile.html')

def HostHomeNow(request,hostid):
    getHost = Host.objects.get(username_id=hostid)
    getUser = NewUser.objects.get(id=hostid)
    getHome = Home.objects.all()
    context = {'data': getHost, 'home': getHome, 'user':getUser}
    if request.method == 'GET':
        return render(request, 'hostHome.html', {'data': getHost})
    elif request.method == 'POST':
        title1 = request.POST['title']
        coverImg1 = request.FILES['coverImg']
        photofile11 = request.FILES['photofile1']
        photofile22 = request.FILES['photofile2']
        photofile33 = request.FILES['photofile3']
        photofile44 = request.FILES['photofile4']
        noOfRoom1 = request.POST['noOfRoom']
        noOfBed1 = request.POST['noOfBed']
        noOfBath1 = request.POST['noOfBath']
        address1 = request.POST['address']
        pricePerMonth1 = request.POST['pricePerNight']
        aboutHome1 = request.POST['aboutHome']        
        Home(host=getHost, title=title1, coverImg=coverImg1, photofile1=photofile11, photofile2=photofile22, photofile3=photofile33, photofile4=photofile44, noOfRoom=noOfRoom1, noOfBed=noOfBed1, noOfBath=noOfBath1, address=address1, pricePerMonth=pricePerMonth1, aboutHome=aboutHome1,IsHomeApproved=0, BookedStatus=0, ).save()
        messages.success(request, "Host Home Successfully")
    return render(request, 'hostProfile.html', {'context': context })


def AllHomes(request):
    getHome = Home.objects.all()
    getBookedHome = HomeIsBooked.objects.all()
    context = {'home': getHome, 'bookedInfo':getBookedHome}
    return render(request, 'hostedAllHome.html', {'context': context})

def AllBookedHomes(request):
    getHome = Home.objects.all()
    getBookedHome = HomeIsBooked.objects.all()
    context = {'home': getHome, 'bookedInfo':getBookedHome}
    return render(request, 'hostedAllHome.html', {'context': context})


def AllHomesSearch(request):
    if 'q' in request.GET:
        q = request.GET['q']
        #data = Home.objects.filter(address__icontains=q)
        multiple_q = Q(Q(title__icontains=q) | Q(address__icontains=q))
        data = Home.objects.filter(multiple_q)
    else:      
        data = Home.objects.all()
    getBookedHome = HomeIsBooked.objects.all()
    context = {'home': data, 'bookedInfo':getBookedHome}
    return render(request, 'hostedAllHomeSearch.html', {'context': context})

def HomeDetails(request, hostid, homeid):
    getUser = NewUser.objects.get(id=hostid)
    getHost = Host.objects.get(username=hostid)
    getHome = Home.objects.get(id=homeid)
    context = {'data': getHost, 'home': getHome, 'user':getUser}
    if request.method == 'GET':
        return render(request, 'home_details.html', {'context': context})
    return render(request, 'home_details.html')


def deleteHome(request, userid, homeid):
    getUser = NewUser.objects.get(id=userid)
    getHost = Host.objects.get(username=userid)
    getHome = Home.objects.all()
    try:
        delHome = Home.objects.get(id=homeid) 
        delHome.delete()
    except:
        delHome = None 
        
    context = {'data': getHost, 'home': getHome, 'user':getUser}
    messages.success(request, "Home Deleted Successfully")    
    if request.method == 'GET':
        return render(request, 'hostProfile.html', {'context': context})
    return render(request, 'hostProfile.html')

def BookHomeNow(request, hostid, homeid, id):
    getUser = NewUser.objects.get(id=id)
    getHost = Host.objects.get(username=hostid)
    getHome = Home.objects.get(id=homeid)

    getUser2 = NewUser.objects.get(id=hostid)
    getHost2 = Host.objects.get(username=hostid)
    getHome2 = Home.objects.get(id=homeid)
    context = {'user': getUser,'host':getHost, 'home': getHome}
    context2 = {'user': getUser2,'host':getHost2, 'home': getHome2}
    if request.method == 'GET':
        return render(request, 'bookNow.html', {'context': context})
    elif request.method == 'POST':
        booked = HomeIsBooked()
        booked.home = getHome
        booked.userid = getUser.id
        booked.hostid = getHost.username_id   
        booked.isBooked = 1
        getHome.BookedStatus = 1
        getHome.save()
        booked.save()
        messages.success(request, "Booked Successfully")
    return render(request, 'home_details.html', {'context': context2})

def removeBooking(request,userid, homeid):
    getUser = NewUser.objects.get(id=userid)
    try:
        getHost = Host.objects.get(username=userid)
    except Host.DoesNotExist:
        getHost = None
    getBookedHome = HomeIsBooked.objects.all()
    getHome = Home.objects.all()
    try:
        updateHome = Home.objects.get(id=homeid)
        delBooking = HomeIsBooked.objects.get(home=homeid)
        updateHome.BookedStatus = 0
        updateHome.save()
        delBooking.delete()
    except:
         updateHome = None
         delBooking = None        

    context = {'BookedHome': getBookedHome, 'user': getUser, 'host': getHost, 'home':getHome,}
    messages.success(request, "Deleted Successfully")    
    if request.method == 'GET':
        return render(request, 'userProfile.html', {'context': context})
    return render(request, 'userProfile.html')
    

def requestHome(request):
	posts = Post.objects.all()
	return render(request, 'allPost.html', {'posts': posts})

def post_detail(request, slug):
    post = Post.objects.get(slug=slug)

    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.post = post
            comment.save()
            return redirect('post_detail', slug=post.slug)
    else:
        form = CommentForm()

    return render(request, 'post_detail.html', {'post': post, 'form': form})
    
def about(request):
    return render(request, 'about.html')

def contact(request):
    return render(request, 'contact.html')

def AdminHomeApproval(request, userid):
    getUser = NewUser.objects.get(id=userid)
    try:
        getHost = Host.objects.get(username=userid)
    except Host.DoesNotExist:
        getHost = None
    getBookedHome = HomeIsBooked.objects.all()
    getHome = Home.objects.all()
    context = {'BookedHome': getBookedHome, 'user': getUser, 'host': getHost, 'home':getHome,}
    if request.method == 'GET':
        return render(request, 'adminHomeApproval.html', {'context': context})
    return render(request, 'adminHomeApproval.html')

def HomeApproved(request, userid, homeid):
    getUser = NewUser.objects.get(id=userid)
    try:
        getHost = Host.objects.get(username=userid)
    except Host.DoesNotExist:
        getHost = None
    getBookedHome = HomeIsBooked.objects.all()
    getHome = Home.objects.all()
    approveHome = Home.objects.get(id=homeid)
    approveHome.IsHomeApproved = 1
    approveHome.save()
    context = {'BookedHome': getBookedHome, 'user': getUser, 'host': getHost, 'home':getHome,}
    messages.success(request, "Home Approved Successfully")
    if request.method == 'GET':
        return render(request, 'adminHomeApproval.html', {'context': context})
    return render(request, 'adminHomeApproval.html')

def change_password(request):
    if request.method == 'POST':
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)
            messages.success(request, 'Your password was successfully updated!')
            return redirect('/')
        else:
            messages.error(request, 'Please correct the error above.')
    else:
        form = PasswordChangeForm(request.user)
    return render(request, 'changePassword.html', {
        'form': form
    })
