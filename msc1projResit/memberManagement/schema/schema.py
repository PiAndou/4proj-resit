import graphene

from .modelType import *
from .mutation import CreateMember, UpdateMember, DeleteMember, CreateSubscription, UpdateSubscription, \
    DeleteSubscription, ResetMemberCode
from ..models import Member


class Query(graphene.ObjectType):
    # One resolver for querying 1 Member
    member = graphene.Field(MemberNode, code=graphene.String())

    def resolve_member(root, info, code):
        # Querying an object
        return Member.objects.get(code=code)

    # One resolver for all members
    members = graphene.List(MemberNode)

    def resolve_members(root, info, **kwargs):
        return Member.objects.all()

    # One resolver for all subscriptions of one member
    subscriptions_by_member = graphene.List(SubscriptionNode, memberID=graphene.Int())

    def resolve_subscriptions_by_member(root, info, memberID):
        return Subscription.objects.filter(member=memberID)


class Mutation(graphene.ObjectType):
    # create
    create_member = CreateMember.Field()
    create_subscription = CreateSubscription.Field()

    # Update
    update_member = UpdateMember.Field()
    update_subscription = UpdateSubscription.Field()

    # delete
    delete_member = DeleteMember.Field()
    delete_subscription = DeleteSubscription.Field()

    # Reset Member's Code
    reset_member_code = ResetMemberCode.Field()
