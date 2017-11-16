from django.shortcuts import render
from django.http import JsonResponse, HttpResponse, \
HttpResponseNotFound, HttpResponseBadRequest

from django.views.decorators.csrf import csrf_exempt, csrf_protect
from django.core import serializers
from django.db.models import Avg

import json

from .models import Date, User, Feedback, Comments

# Create your views here.
@csrf_exempt
def feedback(request):
    if (request.method =='POST'):
        #post feedback
        if create_feedback(request.body) is False:
            return HttpResponseBadRequest('ImBuyin -- Bad Feedback')
        return HttpResponse('ImBuyin -- Thanks for your feedback')
    elif (request.method == 'GET'):
        user = request.GET['email']
        star_avg = Feedback.objects.filter(user__exact=user).aggregate(Avg('stars'))
        print (star_avg)
        return JsonResponse(star_avg, safe=False)
def create_feedback(feedback_data):
    enc_data = json.loads(feedback_data)
    try:
        #Get User
        user = User.objects.get(pk=enc_data['email'])
        user.feedback_set.create(stars=enc_data['stars'])
    except Exception:
        return False

@csrf_exempt
def comments(request):
    if (request.method =='POST'):
        #post feedback
        if create_comments(request.body) is False:
            return HttpResponseBadRequest('ImBuyin -- Bad Comments')
        return HttpResponse('ImBuyin -- Thanks for your comments')

def create_comments(comment_data):
    enc_data = json.loads(comment_data)
    try:
        #Get User
        user = User.objects.get(pk=enc_data['email'])
        user.comments_set.create(comments=enc_data['comments'])
    except Exception:
        return False

@csrf_exempt
def date(request):
    if (request.method =='POST'):
    	#create a date for the loser
        print (request.body)
    	if create_date(request.body) is False:
            return HttpResponseBadRequest('ImBuyin -- Date Not Created')
    	return HttpResponse('ImBuyin -- Date Created')
    elif (request.method == 'GET'):
        #get filtered dates
        if (request.GET):
          user = request.GET['email']
          print user
          if (user):
            dates_for_email = serializers.serialize("json", 
            Date.objects.filter(user__exact=user))
            my_dates = {}
            my_dates['my_dates'] = []
            for date in json.loads(dates_for_email):
                my_dates['my_dates'].append(date['fields'])
            return JsonResponse(my_dates, safe=False)
    	
        #Get all the dates!!!
        all_dates = serializers.serialize("json", Date.objects.all())
        #clean up the data
        json_potential_dates = {}
        json_potential_dates['potential_dates'] = []
        for date in json.loads(all_dates):
            json_potential_dates['potential_dates'].append(date['fields'])
        return JsonResponse(json_potential_dates, safe=False)
    elif (request.method == 'PUT'):
        #Update Accept field
        if update_date(request.body) is False:
            return HttpResponseNotFound('ImBuyin -- Email does not exist')
        return HttpResponse("ImBuyin -- Date Updated")

def create_date(date_data):
    enc_data = json.loads(date_data)
    try:
        new_user = User(email=enc_data['email'])
        new_user.save()
        new_user.date_set.create(
            date_place = enc_data['place'],
            create_date = enc_data['when'],
            category = enc_data['category'],
            accepted = enc_data['accepted'])
    except Exception as e:
        print (e.message)
        return False

def update_date(date_data):
    enc_data = json.loads(date_data)
    try:
        get_date_to_update = Date.objects.get(date_email=enc_data['email'])
    except Exception:
        return False 
    if (get_date_to_update):
        get_date_to_update.accepted = enc_data['accepted']
    get_date_to_update.save()


