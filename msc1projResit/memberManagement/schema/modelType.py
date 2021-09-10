from graphene_django import DjangoObjectType

from memberManagement.models import Subscription, Member


class MemberNode(DjangoObjectType):
    class Meta:
        model = Member
        fields = ('id', 'name', 'phoneNumber', 'address', 'mail', 'code', 'barcodeImg', 'qr_code')


class SubscriptionNode(DjangoObjectType):
    class Meta:
        model = Subscription
        fields = ('id', 'subscriptionDate', 'amount', 'validityDate', 'member')
