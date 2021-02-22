from django.contrib import admin
from . import models

# Register your models here.
@admin.register(models.Movie)
class MovieAdmin(admin.ModelAdmin):
    ordering = ("m_id",)
    list_display = ["m_name"]