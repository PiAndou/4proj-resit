# Generated by Django 3.2.6 on 2021-08-19 21:16

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('memberManagement', '0002_auto_20210819_2255'),
    ]

    operations = [
        migrations.RenameField(
            model_name='member',
            old_name='barcodeImg',
            new_name='barcode',
        ),
        migrations.RenameField(
            model_name='member',
            old_name='qr_codeImg',
            new_name='qr_code',
        ),
    ]