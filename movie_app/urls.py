from django.urls import path
from . import views

urlpatterns = [
    path('all/', views.home),
    path('search/', views.search),
    path('classify/', views.classify),
    path('regest/', views.regest),
    path('login/', views.login),
    path('logout/', views.logout),
    path('info/', views.info),
    path('play/', views.play),
    path('getBullet/', views.getBullet),
    path('sendBullet/', views.sendBullet)
]
