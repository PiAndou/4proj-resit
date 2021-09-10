from django.core.exceptions import ObjectDoesNotExist
from django.shortcuts import render, redirect
from django.views.decorators.http import require_http_methods

from memberManagement.models import Member


@require_http_methods(["GET"])
def index(request):
    if request.user.is_authenticated:
        return render(request, 'member_management/index.html')
    return redirect('login')


@require_http_methods(["GET"])
def details(request, code):
    if request.user.is_authenticated:
        try:
            member = Member.objects.get(code=code)
            return render(request, 'member_management/details.html', {'member': member})
        except ObjectDoesNotExist:
            return redirect('memberManagement_index')
    return redirect('login')
