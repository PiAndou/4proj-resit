from django.db import models


class Member(models.Model):
    name = models.CharField(max_length=100)
    phoneNumber = models.CharField(max_length=30, blank=True, null=True, unique=True)
    address = models.CharField(max_length=100, blank=True, null=True)
    mail = models.EmailField(max_length=100, blank=False, null=False, default="myname@default.com", unique=True)
    code = models.CharField(max_length=13, blank=False, null=False, unique=True)
    barcodeImg = models.ImageField(upload_to='barcodes/', blank=True)
    qr_code = models.ImageField(upload_to='qr_codes/', blank=True)

    def __str__(self):
        return self.name
