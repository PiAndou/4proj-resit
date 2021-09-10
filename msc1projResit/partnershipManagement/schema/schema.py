import graphene

from .modelType import *
from .mutation import CreatePartner, UpdatePartner, DeletePartner, CreateGift, UpdateGift, \
    DeleteGift
from ..models import Partner, Gift


class Query(graphene.ObjectType):

    # One resolver for all partners
    partners = graphene.List(PartnerNode)

    def resolve_partners(root, info, **kwargs):
        return Partner.objects.all()

    # One resolver for all gist for a partner
    gift_by_partner = graphene.List(GiftNode, partnerId=graphene.Int())

    def resolve_gift_by_partner(root, info, partnerId):
        return Gift.objects.filter(owner=partnerId)


class Mutation(graphene.ObjectType):
    # create
    create_partner = CreatePartner.Field()
    create_gift = CreateGift.Field()

    # Update
    update_partner = UpdatePartner.Field()
    update_gift = UpdateGift.Field()

    # delete
    delete_partner = DeletePartner.Field()
    delete_gift = DeleteGift.Field()
