from django.db import models

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
    medicinal_properties = models.ManyToManyField(MedicinalProperty)
    
    # Campos informativos y descriptivos
    general_information = models.TextField()
    species_information = models.TextField()
    morphological_characteristics = models.TextField()

    # ... otros campos relacionados con la especie

    def __str__(self):
        return self.name


class MushroomImage(models.Model):
    species = models.ForeignKey(Species, on_delete=models.CASCADE)
    image = models.ImageField(upload_to='mushrooms/')

    def __str__(self):
        return f"Image of {self.species.name}"
