# Generated by Django 4.2.4 on 2023-08-30 22:06

import api.models
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('api', '0002_class_description_family_description_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='mushroomimage',
            name='image',
            field=models.ImageField(upload_to=api.models.species_image_path),
        ),
    ]
