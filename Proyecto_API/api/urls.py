from django.urls import path
from .views import SpeciesView
from django.conf import settings
from django.conf.urls.static import static
urlpatterns =[
    path('especies', SpeciesView.as_view(),name='species_list')

]
if settings.DEBUG:
    urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)