import graphene

from .modelType import *
from .mutation import CreateGreenSpace, UpdateGreenSpace, DeleteGreenSpace
from ..models import GreenSpace, EstablishmentType


class Query(graphene.ObjectType):
    # One resolver for querying 1 Member
    greenSpace = graphene.Field(GreenSpaceNode, greenSpaceId=graphene.Int())

    def resolve_greenSpace(root, info, greenSpaceId):
        # Querying an object
        return GreenSpace.objects.get(pk=greenSpaceId)

    # One resolver for all members
    greenSpaces = graphene.List(GreenSpaceNode)

    def resolve_greenSpaces(root, info, **kwargs):
        return GreenSpace.objects.all()

    # One resolver for all establishmentTypes
    establishmentTypes = graphene.List(EstablishmentTypeNode)

    def resolve_establishmentTypes(root, info, **kwargs):
        return EstablishmentType.objects.all()


class Mutation(graphene.ObjectType):
    # create
    create_greenSpace = CreateGreenSpace.Field()

    # Update
    update_greenSpace = UpdateGreenSpace.Field()

    # delete
    delete_greenSpace = DeleteGreenSpace.Field()
