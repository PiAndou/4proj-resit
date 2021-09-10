from django.shortcuts import render, redirect
from django.views.decorators.http import require_http_methods


@require_http_methods(["GET"])
def index(request):
    if request.user.is_authenticated:
        return render(request, 'green-areas/index.html')
    return redirect('login')