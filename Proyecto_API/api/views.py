import io
import json
from pathlib import Path
from typing import Any
import numpy as np
from django.http import JsonResponse
from django.views import View
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt
from .machine_learning.proccess import MushroomClassifier
from .models import Species
from django.shortcuts import get_object_or_404
class SpeciesView(View):
    def __init__(self):
        super().__init__()
        self.train_generator = None  # Inicializa train_generator como None en el constructor
        self.model = None  # Inicializa model como None en el constructor
    
    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args: Any, **kwargs: Any):
        return super().dispatch(request, *args, **kwargs)
    def put(self, request):
        epochs = 10
        model_filename = "C:/xampp/htdocs/proyecto_hongos/Proyecto_API/api/machine_learning/entrenamiento/mushroom_classifier_model.h5"
        classifier = MushroomClassifier()
        # Carga los datos y entrena el modelo
        train_generator, validation_generator = classifier.load_data()
        self.model = classifier.create_model(input_shape=(150, 150, 3), num_classes=3)
        classifier.train_model(self.model, train_generator, validation_generator, epochs)
        # Guarda el modelo entrenado
        classifier.save_model(self.model, model_filename)
        return JsonResponse({'mensaje':'Modelo entrenado correctamente'}, safe=False)
    
    def get(self, request):
        # Consulta todas las especies en la base de datos
        all_species = Species.objects.all()
        # Crea una lista para almacenar los datos de las especies
        species_list = []
        # Itera sobre todas las especies y agrega sus datos a la lista
        for species in all_species:
            species_data = {
                'name': species.name,
                'scientific_name': species.scientific_name,
                'kingdom': species.kingdom.name,
                'phylum': species.phylum.name,
                'class_name': species.class_name.name,
                'order': species.order.name,
                'family': species.family.name,
                'genus': species.genus.name,
                'general_information': species.general_information,
                'species_information': species.species_information,
                'morphological_characteristics': species.morphological_characteristics,
                'medicinal_properties': [prop.name for prop in species.medicinal_properties.all()],
                'slug': species.slug,
                # Agrega más campos según sea necesario
            }
            species_list.append(species_data)
        # Retorna la lista de especies como una respuesta JSON
        return JsonResponse({'species': species_list}, safe=False)
    
    def post(self, request):
        epochs = 10
        model_filename = "C:/xampp/htdocs/proyecto_hongos/Proyecto_API/api/machine_learning/entrenamiento/mushroom_classifier_model.h5"
        
        # Verifica si ya existe un modelo entrenado
        if Path(model_filename).is_file():
            # Si existe, carga el modelo entrenado
            classifier = MushroomClassifier()
            self.model = classifier.load_model(model_filename)
            
            # Inicializa train_generator si no lo está
            if self.train_generator is None:
                self.train_generator, _ = classifier.load_data()  # Usamos _ para descartar validation_generator
        else:
            # Si no existe, crea una nueva instancia de MushroomClassifier
            classifier = MushroomClassifier()

            # Carga los datos y entrena el modelo
            train_generator, validation_generator = classifier.load_data()
            self.model = classifier.create_model(input_shape=(150, 150, 3), num_classes=3)
            classifier.train_model(self.model, train_generator, validation_generator, epochs)

            # Guarda el modelo entrenado
            classifier.save_model(self.model, model_filename)
            
            # Asigna train_generator a la instancia para futuros usos
            self.train_generator = train_generator
        
        # Continúa con la lógica para procesar la imagen y hacer la predicción
        uploaded_file = request.FILES['image']
        file_content = uploaded_file.read()
        image_io = io.BytesIO(file_content)
        predicted_class = classifier.predict_mushroom(self.model, image_io)
        class_names = list(self.train_generator.class_indices.keys())  # Usamos self.train_generator
        predicted_species_slug = class_names[predicted_class]
        species =Species.objects.filter(slug=predicted_species_slug)
        print(predicted_species_slug)
        especie = species.first()
        if species.exists():
            # Ahora, puedes acceder a los datos de la especie
            species_data = {
                'name': especie.name,
                'scientific_name': especie.scientific_name,
                'kingdom': especie.kingdom.name,
                'phylum': especie.phylum.name,
                'class_name': especie.class_name.name,
                'order': especie.order.name,
                'family': especie.family.name,
                'genus': especie.genus.name,
                'general_information': especie.general_information,
                'species_information': especie.species_information,
                'morphological_characteristics': especie.morphological_characteristics,
                'medicinal_properties': [prop.name for prop in especie.medicinal_properties.all()],
            }
        else:    
            return JsonResponse({'mensaje':'no se encontro ninguna especie con esas caracteristicas', 'data':predicted_species_slug})
        return JsonResponse(species_data, safe=False)
