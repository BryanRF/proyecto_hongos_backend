# Generated by Django 4.2.4 on 2023-08-30 21:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Class',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Family',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Genus',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Kingdom',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='MedicinalProperty',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Order',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Phylum',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='Species',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('scientific_name', models.CharField(max_length=100)),
                ('general_information', models.TextField()),
                ('species_information', models.TextField()),
                ('morphological_characteristics', models.TextField()),
                ('class_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.class')),
                ('family', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.family')),
                ('genus', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.genus')),
                ('kingdom', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.kingdom')),
                ('medicinal_properties', models.ManyToManyField(to='api.medicinalproperty')),
                ('order', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.order')),
                ('phylum', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.phylum')),
            ],
        ),
        migrations.CreateModel(
            name='MushroomImage',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('image', models.ImageField(upload_to='mushrooms/')),
                ('species', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='api.species')),
            ],
        ),
    ]