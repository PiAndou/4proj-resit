import graphene

from django.core.exceptions import ObjectDoesNotExist

from partnershipManagement.models import Partner
from partnershipManagement.schema.modelType import PartnerNode


# Partner Create Class for Creation
class CreatePartner(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        name = graphene.String(required=True)

    # The class attributes define the response of the mutation
    partner = graphene.Field(PartnerNode)

    @classmethod
    def mutate(cls, root, info, name):
        partner = Partner()
        partner.name = name

        partner.save()

        return CreatePartner(message=f"Partner {partner.name} created", result=True, partner=partner)


# Partner update Class for Updates
class UpdatePartner(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        partnerID = graphene.Int(required=True)
        name = graphene.String(required=True)

    # The class attributes define the response of the mutation
    partner = graphene.Field(PartnerNode)

    @classmethod
    def mutate(cls, root, info, partnerID, name):
        try:
            partner = Partner.objects.get(pk=partnerID)
            partner.name = name

            partner.save()
            return UpdatePartner(message=f"Partner Updated", partner=partner, result=True)
        except ObjectDoesNotExist:
            return UpdatePartner(message=f"An error occured, Please contact your Administrator", result=False)


# Partner delete class for Removal
class DeletePartner(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        partnerId = graphene.Int(required=True)

    @classmethod
    def mutate(cls, root, info, partnerId):
        try:
            # Docs a ajouter
            partner = Partner.objects.get(pk=partnerId)

            partner.delete()
            return DeletePartner(message=f"Partner '{partner.name}' Removed", result=True)

        except ObjectDoesNotExist:

            return DeletePartner(message=f"An error occured, Please contact your Administrator", result=False)