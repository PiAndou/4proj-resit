from django.contrib import messages
from django.contrib.auth import authenticate, login, logout
from django.shortcuts import render, redirect
from django.views.decorators.http import require_http_methods


@require_http_methods(["GET"])
def home(request):
    if request.user.is_authenticated:
        return render(request, 'base.html')
    return redirect('login')


@require_http_methods(["GET", "POST"])
def login_request(request):
    if request.method == "POST":
        user = authenticate(username=request.POST['email'], password=request.POST['password'])
        if user is not None:
            login(request, user)
            return redirect('home')
        else:
            messages.error(request, "Invalid username or password.")

    return render(request, 'login.html')


@require_http_methods(["GET"])
def logout_request(request):
    logout(request)
    messages.info(request, "You have successfully logged out.")
    return redirect("login")
