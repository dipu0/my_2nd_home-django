# Generated by Django 3.2.9 on 2021-12-06 05:34

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('myapp', '0004_home_homeimgs_homeisbooked'),
    ]

    operations = [
        migrations.AddField(
            model_name='newuser',
            name='profile_dp',
            field=models.ImageField(blank=True, null=True, upload_to='img/'),
        ),
        migrations.AlterField(
            model_name='newuser',
            name='mobile_num',
            field=models.PositiveIntegerField(blank=True, null=True),
        ),
    ]
