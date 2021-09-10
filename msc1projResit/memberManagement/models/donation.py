from django.db import models

from .member import Member


class Subscription(models.Model):
    amount = models.FloatField()
    subscriptionDate = models.DateField()
    validityDate = models.DateField()
    member = models.ForeignKey(Member, on_delete=models.CASCADE)
