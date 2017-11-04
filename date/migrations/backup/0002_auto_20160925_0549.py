# -*- coding: utf-8 -*-
# Generated by Django 1.10.1 on 2016-09-25 05:49
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('date', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='User',
            fields=[
                ('email', models.EmailField(max_length=254, primary_key=True, serialize=False)),
            ],
        ),
        migrations.RemoveField(
            model_name='comments',
            name='date',
        ),
        migrations.RemoveField(
            model_name='date',
            name='date_email',
        ),
        migrations.RemoveField(
            model_name='feedback',
            name='date',
        ),
        migrations.AddField(
            model_name='comments',
            name='user',
            field=models.ForeignKey(default='test@test.com', on_delete=django.db.models.deletion.CASCADE, to='date.User'),
        ),
        migrations.AddField(
            model_name='date',
            name='user',
            field=models.ForeignKey(default='test@test.com', on_delete=django.db.models.deletion.CASCADE, to='date.User'),
        ),
        migrations.AddField(
            model_name='feedback',
            name='user',
            field=models.ForeignKey(default='test@test.com', on_delete=django.db.models.deletion.CASCADE, to='date.User'),
        ),
    ]
