from django.shortcuts import render, HttpResponse, redirect
from . import models
import json
# Create your views here.
def home(request):
    #通过模型层获取所以电影对象
    movies = models.Movie.objects.all()
    #将电影集合制作键值对，渲染到前端页面上
    try:
       username = request.COOKIES['USERNAME']
    except:
        username = ""
    content = {"movies" : movies,"username": username}
    return render(request,"index.html",content)

def search(request):
    keywords = request.GET.get("keywords")
    movies = models.Movie.objects.filter(m_name__icontains=keywords)or models.Movie.objects.filter(m_actors__icontains=keywords)or models.Movie.objects.filter(m_directors__icontains=keywords)
    content = {"movies": movies,}
    return render(request , "movie_list.html" , content)

def classify(request):
    type = request.GET.get("type")
    movies = models.Movie.objects.filter(m_type__icontains=type)
    content = {"movies": movies, }
    return render(request, "movie_list.html", content)

def regest(request):
    username0 = request.GET.get("username0")
    password0 = request.GET.get("password0")
    password1 = request.GET.get("password1")
    email = request.GET.get("email")
    tel = request.GET.get("tel")
    user_list = models.User.objects.filter(u_username=username0)
    if username0 =="":
        return HttpResponse("用户名不能为空")
    elif user_list!="":
        return HttpResponse("用户名已注册，请修改用户名")
    elif password0 =="":
        return HttpResponse("密码不能为空")
    elif password0 != password1 :
        return HttpResponse("请确认密码正确")
    else:
        models.User.objects.create(u_username=username0, u_password=password0, u_email=email, u_tel=tel)
        return HttpResponse("注册成功")


def login(request):
    username = request.GET.get("username")
    password = request.GET.get("password")
    user_list = models.User.objects.filter(u_username=username)
    if len(user_list) == 0:
        return HttpResponse("用户不存在")
    else:
        if user_list[0].u_password == password:
            return HttpResponse("登录成功")
        else:
            return HttpResponse("密码有误")

def logout(request):
    response = redirect("/movie/all")
    response.set_cookie('USERNAME', '')
    return response

def info(request):
    m_id = request.GET.get("m_id")
    try:
        username = request.COOKIES["USERNAME"]
    except:
        username = ""
    movie = models.Movie.objects.filter(m_id=m_id)[0]
    content = {"movie": movie,"username": username}
    return render(request, "movie_info.html", content)

def play(request):
    m_id = request.GET.get("m_id")
    movie = models.Movie.objects.filter(m_id=m_id)[0]
    content = {"movie":movie}
    return render(request, "play.html", content)

def sendBullet(request):
    m_id = int(request.GET.get("m_id"))
    second = int(request.GET.get("second"))
    content = request.GET.get("content")
    username = request.COOKIES["USERNAME"]
    u_id = models.User.objects.filter(u_username=username)[0].u_id
    models.Comment.objects.create(c_m_id=m_id, c_u_id=u_id, c_content=content, c_playtime=second)
    return HttpResponse("添加成功")

def getBullet(request):
    m_id = int(request.GET.get("m_id"))
    second = int(request.GET.get("second"))
    try:
        comments = list(models.Comment.objects.filter(c_m_id=m_id, c_playtime=second).values())
    except:
        comments = []
    return HttpResponse(json.dumps(comments), content_type='application/json')
