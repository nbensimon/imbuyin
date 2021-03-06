# -*- coding: utf-8 -*-
# Generated by Django 1.11.7 on 2017-11-16 17:55
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('date', '0002_date_category'),
    ]

    operations = [
        migrations.AddField(
            model_name='date',
            name='hot_date_meter',
            field=models.SmallIntegerField(default=1),
        ),
        migrations.AddField(
            model_name='date',
            name='interested',
            field=models.SmallIntegerField(default=0),
        ),
        migrations.AddField(
            model_name='user',
            name='about',
            field=models.TextField(default=''),
        ),
        migrations.AddField(
            model_name='user',
            name='age',
            field=models.SmallIntegerField(default=18),
        ),
        migrations.AddField(
            model_name='user',
            name='sex',
            field=models.CharField(default='', max_length=1),
        ),
    ]
