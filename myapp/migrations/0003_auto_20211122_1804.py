# Generated by Django 3.2.9 on 2021-11-22 12:04

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0002_auto_20211122_1658'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='homeimgs',
            name='home',
        ),
        migrations.RemoveField(
            model_name='homeisbooked',
            name='home',
        ),
        migrations.DeleteModel(
            name='Home',
        ),
        migrations.DeleteModel(
            name='HomeImgs',
        ),
        migrations.DeleteModel(
            name='HomeIsBooked',
        ),
    ]
