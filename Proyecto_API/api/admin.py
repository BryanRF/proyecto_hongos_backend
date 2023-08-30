from django.contrib import admin
from .models import Kingdom, Phylum, Class, Order, Family, Genus, Species, MushroomImage,MedicinalProperty

# Registra los modelos en el panel de administración
admin.site.register(Kingdom)
admin.site.register(MedicinalProperty)
admin.site.register(Phylum)
admin.site.register(Class)
admin.site.register(Order)
admin.site.register(Family)
admin.site.register(Genus)
admin.site.register(Species)
admin.site.register(MushroomImage)

