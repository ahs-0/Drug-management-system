from django.urls import path, include

from . import views


urlpatterns = [
    path('getMsg', views.getMsg),
]