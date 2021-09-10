from graphene_django import DjangoObjectType

from partnershipManagement.models import Partner, Gift


class PartnerNode(DjangoObjectType):
    class Meta:
        model = Partner
        fields = ('id', 'name')


class GiftNode(DjangoObjectType):
    class Meta:
        model = Gift
        fields = ('id', 'name', 'owner')
