from django.urls import path 
from unidepApp import views

urlpatterns = [
    path('', views.inicio, name='inicio'),
]
