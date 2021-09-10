from django.urls import path
from . import views
urlpatterns = [
    path('', views.index, name='memberManagement_index'),
    path('details/<int:code>', views.details, name='memberManagement_details'),
]
