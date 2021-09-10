import graphene

from django.core.exceptions import ObjectDoesNotExist

from greenAreaManagement.models import GreenSpace, EstablishmentType
from greenAreaManagement.schema.modelType import GreenSpaceNode


# GreenSpace Class for Creation
class CreateGreenSpace(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        name = graphene.String(required=True)
        establishmentTypeId = graphene.Int(required=True)
        positionLtd = graphene.Decimal()
        positionLgt = graphene.Decimal()

    # The class attributes define the response of the mutation
    greenSpace = graphene.Field(GreenSpaceNode)

    @classmethod
    def mutate(cls, root, info, name, establishmentTypeId, positionLtd, positionLgt):
        try:
            establishmentType = EstablishmentType.objects.get(pk=establishmentTypeId)

            greenSpace = GreenSpace()
            greenSpace.name = name
            greenSpace.positionLtd = positionLtd
            greenSpace.positionLgt = positionLgt
            greenSpace.establishmentType = establishmentType

            greenSpace.save()
            return CreateGreenSpace(message=f"Green Area registered", greenSpace=greenSpace, result=True)
        except ObjectDoesNotExist:

            return CreateGreenSpace(message=f"An error occurred, please Contact your administrator", result=False)


# GreenSpace Class for Updates
class UpdateGreenSpace(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        greenSpaceId = graphene.Int(required=True)
        name = graphene.String(required=True)
        positionLtd = graphene.Decimal()
        positionLgt = graphene.Decimal()
        establishmentTypeId = graphene.Int(required=True)

    # The class attributes define the response of the mutation
    greenSpace = graphene.Field(GreenSpaceNode)

    @classmethod
    def mutate(cls, root, info, greenSpaceId, name, establishmentTypeId, positionLtd, positionLgt):
        try:
            establishmentType = EstablishmentType.objects.get(pk=establishmentTypeId)
            try:
                greenSpace = GreenSpace.objects.get(pk=greenSpaceId)
                greenSpace.name = name
                greenSpace.positionLtd = positionLtd
                greenSpace.positionLgt = positionLgt
                greenSpace.establishmentType = establishmentType

                greenSpace.save()
                return UpdateGreenSpace(message=f"Green Area Updated", greenSpace=greenSpace, result=True)

            except ObjectDoesNotExist:
                return UpdateGreenSpace(message=f"An error occurred, Please contact your Administrator", result=False)
        except ObjectDoesNotExist:
            return UpdateGreenSpace(message=f"An error occurred, Please contact your Administrator", result=False)


# GreenSpace for Removal
class DeleteGreenSpace(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        greenSpaceId = graphene.Int(required=True)

    @classmethod
    def mutate(cls, root, info, greenSpaceId):
        try:
            greenSpace = GreenSpace.objects.get(pk=greenSpaceId)
            greenSpace.delete()
            return DeleteGreenSpace(message=f"Deletion Successful", result=True)
        except ObjectDoesNotExist:
            return DeleteGreenSpace(message=f"An error occurred, Please contact your Administrator", result=False)
