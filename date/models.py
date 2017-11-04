from __future__ import unicode_literals

from django.db import models


class User(models.Model):
	email = models.EmailField(primary_key=True, 
		default='test@test.com')

class Date(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE,
    	default='test@test.com')
    date_place = models.TextField()
    create_date = models.DateTimeField('date created')
    accepted = models.BooleanField(default=False)
    category = models.CharField(max_length=50, default='General')

class Feedback(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE,
		default='test@test.com')
	stars = models.SmallIntegerField()

class Comments(models.Model):
	user = models.ForeignKey(User, on_delete=models.CASCADE, 
		default='test@test.com')
	comments = models.TextField()