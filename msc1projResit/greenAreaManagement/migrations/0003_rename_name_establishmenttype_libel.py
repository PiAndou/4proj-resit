# Generated by Django 3.2.6 on 2021-08-31 23:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('greenAreaManagement', '0002_rename_libel_establishmenttype_name'),
    ]

    operations = [
        migrations.RenameField(
            model_name='establishmenttype',
            old_name='name',
            new_name='libel',
        ),
    ]
