from __future__ import unicode_literals

from django.db import models


class User(models.Model):
	email = models.EmailField(primary_key=True, 
		default='test@test.com')
	sex = models.CharField(max_length=1, default='')
	age = models.SmallIntegerField(default=18)
	#TODO: To add this we need to add Pillow -- pip install Pillow
	#profile_pic = models.ImageField()
	about = models.TextField(default='')

class Date(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE, 
		default='test@test.com')
	where = models.TextField()
	when = models.DateTimeField('date created')
	accepted = models.BooleanField(default=False)
	category = models.CharField(max_length=50, default='General')
	interested_users = models.CharField(max_length=1000, default='')
	confirmed_user = models.CharField(max_length=50, default='')

class Feedback(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE,
      default='test@test.com')
	stars = models.SmallIntegerField()

class Comments(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE, 
		default='test@test.com')
	comments = models.TextField()