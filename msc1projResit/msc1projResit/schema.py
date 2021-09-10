import graphene
import memberManagement.schema.schema
import greenAreaManagement.schema.schema
import partnershipManagement.schema.schema


class Query(
    memberManagement.schema.schema.Query,
    greenAreaManagement.schema.schema.Query,
    partnershipManagement.schema.schema.Query,
    graphene.ObjectType
):
    pass


class Mutation(
    memberManagement.schema.schema.Mutation,
    greenAreaManagement.schema.schema.Mutation,
    partnershipManagement.schema.schema.Mutation,
    graphene.ObjectType
):
    pass


schema = graphene.Schema(query=Query, mutation=Mutation)
