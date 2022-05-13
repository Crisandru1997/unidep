from django.http import HttpRequest, HttpResponse
from django.shortcuts import render

# Create your views here.

def inicio(request):
    return HttpResponse('inicio') 
