from django.db import models

from .partner import Partner


class Gift(models.Model):
    name = models.CharField(max_length=100)
    owner = models.ForeignKey(Partner, on_delete=models.CASCADE)

    def __str__(self):
        return self.name
