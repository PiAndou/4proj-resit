from django.db import models


class EstablishmentType(models.Model):
    libel = models.CharField(max_length=100)

    def __str__(self):
        return self.libel
