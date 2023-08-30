from django.db import models
import os
import uuid
from django.utils.text import slugify

class Kingdom(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(null=True)
    def __str__(self):
        return self.name

class Phylum(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(null=True)
    def __str__(self):
        return self.name

class Class(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(null=True)
    def __str__(self):
        return self.name

class Order(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(null=True)
    def __str__(self):
        return self.name

class Family(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(null=True)
    def __str__(self):
        return self.name

class Genus(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(null=True)
    def __str__(self):
        return self.name

class MedicinalProperty(models.Model):
    name = models.CharField(max_length=100)
    description = models.TextField(null=True)

    def __str__(self):
        return self.name
    
class Species(models.Model):
    name = models.CharField(max_length=100)
    scientific_name = models.CharField(max_length=100)
    kingdom = models.ForeignKey(Kingdom, on_delete=models.CASCADE)
    phylum = models.ForeignKey(Phylum, on_delete=models.CASCADE)
    class_name = models.ForeignKey(Class, on_delete=models.CASCADE)
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    family = models.ForeignKey(Family, on_delete=models.CASCADE)
    genus = models.ForeignKey(Genus, on_delete=models.CASCADE)
    
    # Campos relacionados con las propiedades curativas
    medicinal_properties = models.ManyToManyField(MedicinalProperty,null=True)
    
    # Campos informativos y descriptivos
    general_information = models.TextField(null=True)
    species_information = models.TextField(null=True)
    morphological_characteristics = models.TextField(null=True)
    slug = models.SlugField(unique=True, blank=True,null=True)

    def __str__(self):
        return self.name

    def save(self, *args, **kwargs):
        self.slug = slugify(self.scientific_name)
        super().save(*args, **kwargs)



def species_image_path(instance, filename):
    # Genera la ruta de la imagen basada en el nombre de la especie
    unique_filename = f"{uuid.uuid4().hex}{os.path.splitext(filename)[1]}"
    species_slug = slugify(instance.species.name)
    return os.path.join('mushrooms', species_slug, unique_filename)

class MushroomImage(models.Model):
    species = models.ForeignKey(Species, on_delete=models.CASCADE)
    image = models.ImageField(upload_to=species_image_path)

    def __str__(self):
        return f"Image of {self.species.name}"