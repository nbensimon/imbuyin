from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^$', views.date, name='date'),
    url(r'^feedback', views.feedback, name='feedback'),
    url(r'^comments', views.comments, name='comments')
]