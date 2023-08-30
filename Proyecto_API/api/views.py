from typing import Any
from django import http
from django.shortcuts import render
from django.http import JsonResponse
from django.views import View
from .models import Species
from django.core.exceptions import ObjectDoesNotExist
from django.utils.decorators import method_decorator
from django.views.decorators.csrf import csrf_exempt

# Create your views here.
class SpeciesView(View):
    @method_decorator(csrf_exempt)
    def dispatch(self, request, *args: Any, **kwargs: Any):
        return super().dispatch(request, *args, **kwargs)
    
    def get(self, request, species_id=None):
        if species_id is None:
            species = Species.objects.all()
            if species.exists():
                data = {'message': 'Success', 'species': list(species.values())}
            else:
                data = {'message': 'Species not found'}
        else:
            try:
                species = Species.objects.get(id=species_id)
                data = {'message': 'Success', 'species': species.to_dict()}
            except ObjectDoesNotExist:
                data = {'message': 'Species not found'}

        return JsonResponse(data)
    def post(self, request):
        data = {'message': 'Species not found'}
        return JsonResponse(data)
    def put(self, request):
        pass
    def delete(self, request):
        pass