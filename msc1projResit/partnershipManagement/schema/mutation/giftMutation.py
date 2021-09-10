import graphene

from django.core.exceptions import ObjectDoesNotExist

from partnershipManagement.models import Gift, Partner
from partnershipManagement.schema.modelType import GiftNode


# Gift Create Class for Creation
class CreateGift(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        name = graphene.String(required=True)
        owner = graphene.Int(required=True)

    # The class attributes define the response of the mutation
    gift = graphene.Field(GiftNode)

    @classmethod
    def mutate(cls, root, info, name, owner):
        try:
            partner = Partner.objects.get(pk=owner)
            gift = Gift()
            gift.name = name
            gift.owner = partner

            gift.save()

            return CreateGift(message=f"Gift created for {partner.name}", result=True, gift=gift)
        except ObjectDoesNotExist:
            return CreateGift(message=f"An error occured, Please contact your Administrator", result=False)


# Gift update Class for Updates
class UpdateGift(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        giftID = graphene.Int(required=True)
        name = graphene.String(required=True)
        owner = graphene.Int(required=True)

    # The class attributes define the response of the mutation
    gift = graphene.Field(GiftNode)

    @classmethod
    def mutate(cls, root, info, giftID, name, owner):
        try:
            partner = Partner.objects.get(pk=owner)
            try:
                gift = Gift.objects.get(pk=giftID, owner=partner)
                gift.name = name

                gift.save()
                return UpdateGift(message=f"Gift Updated", gift=gift, result=True)

            except ObjectDoesNotExist:
                return UpdateGift(message=f"An error occured, Please contact your Administrator", result=False)
        except ObjectDoesNotExist:
            return UpdateGift(message=f"An error occured, Please contact your Administrator", result=False)


# Gift delete class for Removal
class DeleteGift(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        giftId = graphene.Int(required=True)

    @classmethod
    def mutate(cls, root, info, giftId):
        try:
            # Docs a ajouter
            gift = Gift.objects.get(pk=giftId)

            gift.delete()
            return DeleteGift(message=f"Gift {gift.name} Removed", result=True)

        except ObjectDoesNotExist:

            return DeleteGift(message=f"An error occured, Please contact your Administrator", result=False)