from django.db import models

from .establishmentType import EstablishmentType


class GreenSpace(models.Model):
    name = models.CharField(max_length=100)
    establishmentType = models.ForeignKey(EstablishmentType, on_delete=models.CASCADE)
    positionLtd = models.FloatField(blank=True, null=True)
    positionLgt = models.FloatField(blank=True, null=True)

    def __str__(self):
        return self.name
