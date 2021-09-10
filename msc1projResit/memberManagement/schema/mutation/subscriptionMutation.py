from datetime import date

import graphene

from django.core.exceptions import ObjectDoesNotExist

from memberManagement.models import Member, Subscription
from memberManagement.schema.modelType import SubscriptionNode


# Subscription Class for Creation
class CreateSubscription(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        amount = graphene.Float(required=True)
        validityDate = graphene.Date(required=True)
        memberCode = graphene.Int(required=True)

    # The class attributes define the response of the mutation
    subscription = graphene.Field(SubscriptionNode)

    @classmethod
    def mutate(cls, root, info, amount, validityDate, memberCode):
        if validityDate <= date.today():
            return CreateSubscription(message=f"An error occured with the validity Date", result=False)
        else:
            try:
                member = Member.objects.get(pk=memberCode)
                try:
                    subscription = Subscription.objects.get(validityDate=validityDate, member=member)
                    return CreateSubscription(message=f"There is a current subscription which is valid until "
                                                      f"{subscription.validityDate}", result=False)
                except ObjectDoesNotExist:
                    subscription = Subscription()
                    subscription.amount = amount
                    subscription.subscriptionDate = date.today()
                    subscription.validityDate = validityDate
                    subscription.member = member

                    subscription.save()
                    return CreateSubscription(message=f"Subscription for '{member.name}'", subscription=subscription,
                                              result=True)
            except ObjectDoesNotExist:
                return CreateSubscription(message=f"An error occured, Please contact your Administrator", result=False)


# Subscription Class for Updates
class UpdateSubscription(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        subscriptionID = graphene.Int(required=True)
        amount = graphene.Float(required=True)
        validityDate = graphene.Date(required=True)
        memberId = graphene.Int(required=True)

    # The class attributes define the response of the mutation
    subscription = graphene.Field(SubscriptionNode)

    @classmethod
    def mutate(cls, root, info, subscriptionID, amount, validityDate, memberId):
        try:
            member = Member.objects.get(pk=memberId)
            try:
                subscription = Subscription.objects.get(pk=subscriptionID, member=member)
                subscription.amount = amount
                subscription.validityDate = validityDate

                subscription.save()
                return UpdateSubscription(message=f"Subscription Updated", subscription=subscription, result=True)

            except ObjectDoesNotExist:
                return UpdateSubscription(message=f"An error occured, Please contact your Administrator", result=False)
        except ObjectDoesNotExist:
            return UpdateSubscription(message=f"An error occured, Please contact your Administrator", result=False)


# Subscription for Removal
class DeleteSubscription(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        subscriptionID = graphene.Int(required=True)
        memberId = graphene.Int(required=True)

    @classmethod
    def mutate(cls, root, info, subscriptionID, memberId):
        try:
            member = Member.objects.get(pk=memberId)
            try:
                subscription = Subscription.objects.get(pk=subscriptionID, member=member)

                subscription.delete()
                return DeleteSubscription(message=f"Subscription Removed successfully from list", result=True)
            except ObjectDoesNotExist:
                return UpdateSubscription(message=f"An error occurred, Please contact your Administrator", result=False)
        except ObjectDoesNotExist:
            return DeleteSubscription(message=f"An error occurred, Please contact your Administrator", result=False)
