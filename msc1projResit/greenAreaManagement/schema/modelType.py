from graphene_django import DjangoObjectType

from greenAreaManagement.models import GreenSpace, EstablishmentType


class GreenSpaceNode(DjangoObjectType):
    class Meta:
        model = GreenSpace
        fields = ('id', 'name', 'establishmentType', 'positionLtd', 'positionLgt')


class EstablishmentTypeNode(DjangoObjectType):
    class Meta:
        model = EstablishmentType
        fields = ('id', 'libel')
