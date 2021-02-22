from django.db import models

# Create your models here.
class Collect(models.Model):
    col_id = models.AutoField(primary_key=True)
    col_m = models.ForeignKey('Movie', models.DO_NOTHING)
    col_u = models.ForeignKey('User', models.DO_NOTHING)
    col_status = models.CharField(max_length=1)

    class Meta:
        managed = False
        db_table = 'collect'


class Comment(models.Model):
    c_id = models.AutoField(primary_key=True)
    c_m = models.ForeignKey('Movie', models.DO_NOTHING)
    c_u = models.ForeignKey('User', models.DO_NOTHING)
    c_ctime = models.DateTimeField()
    c_playtime = models.IntegerField()
    c_content = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'comment'


class History(models.Model):
    h_id = models.AutoField(primary_key=True)
    h_m = models.ForeignKey('Movie', models.DO_NOTHING)
    h_u = models.ForeignKey('User', models.DO_NOTHING)
    h_viewingtime = models.DateTimeField()
    h_duration = models.IntegerField()

    class Meta:
        managed = False
        db_table = 'history'


class Movie(models.Model):
    m_id = models.AutoField(primary_key=True)
    m_name = models.CharField(max_length=50)
    m_actors = models.CharField(max_length=50, blank=True, null=True)
    m_directors = models.CharField(max_length=50, blank=True, null=True)
    m_nation = models.CharField(max_length=50, blank=True, null=True)
    m_releasedate = models.DateField(db_column='m_releaseDate', blank=True, null=True)  # Field name made lowercase.
    m_duration = models.IntegerField(blank=True, null=True)
    m_introduce = models.CharField(max_length=255, blank=True, null=True)
    m_scenario = models.CharField(max_length=255, blank=True, null=True)
    m_poster = models.CharField(max_length=50, blank=True, null=True)
    m_score = models.FloatField(blank=True, null=True)
    m_link = models.CharField(max_length=255, blank=True, null=True)
    m_type = models.CharField(max_length=50)

    class Meta:
        managed = False
        db_table = 'movie'


class User(models.Model):
    u_id = models.AutoField(primary_key=True)
    u_username = models.CharField(unique=True, max_length=20)
    u_password = models.CharField(max_length=20)
    u_tel = models.CharField(max_length=20, blank=True, null=True)
    u_email = models.CharField(max_length=20, blank=True, null=True)
    u_gender = models.CharField(max_length=2, blank=True, null=True)
    u_age = models.IntegerField(blank=True, null=True)
    u_nickname = models.CharField(max_length=20, blank=True, null=True)
    u_head_url = models.CharField(max_length=50, blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'user'