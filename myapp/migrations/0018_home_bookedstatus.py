# Generated by Django 3.2.9 on 2022-01-07 18:26

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0017_home_ishomeapproved'),
    ]

    operations = [
        migrations.AddField(
            model_name='home',
            name='BookedStatus',
            field=models.BooleanField(default=0),
            preserve_default=False,
        ),
    ]