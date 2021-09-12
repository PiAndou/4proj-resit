from io import BytesIO

import graphene
import qrcode
from PIL import Image

from barcode import EAN13
from barcode.writer import ImageWriter
from django.core.exceptions import ObjectDoesNotExist
from django.core.files import File

from memberManagement.models import Member
from memberManagement.schema.modelType import MemberNode

from .generateCode import generateCode


# Member Class for Creation
class CreateMember(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        name = graphene.String(required=True)
        phoneNumber = graphene.String(required=True)
        address = graphene.String(required=True)
        mail = graphene.String(required=True)

    # The class attributes define the response of the mutation
    member = graphene.Field(MemberNode)

    @classmethod
    def mutate(cls, root, info, name, phoneNumber, address, mail):
        try:
            member = Member.objects.get(mail=mail)
            return CreateMember(message=f"An error occured, This email address '{mail}', is already associated to "
                                        f"another member", result=False)
        except ObjectDoesNotExist:
            member = Member()
            member.name = name
            member.phoneNumber = phoneNumber
            member.address = address
            member.mail = mail
            member.code = generateCode()

            # Generate Barcode
            ean = EAN13(str(member.code), writer=ImageWriter())
            buffer = BytesIO()
            ean.write(buffer)
            member.barcodeImg.save(f'barcode-{member.code}.png', File(buffer), save=False)

            # Generate Qr code
            qrcode_img = qrcode.make(member.code)
            canvas = Image.new('RGB', (290, 290), 'white')
            canvas.paste(qrcode_img)
            buffer = BytesIO()
            canvas.save(buffer, 'PNG')
            member.qr_code.save(f'qr_code-{member.code}.png', File(buffer), save=False)
            canvas.close()

            member.save()
            return CreateMember(message=f"Member : {member.name} added to Member List.", member=member, result=True)


# Member Class for Updates
class UpdateMember(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        memberID = graphene.Int(required=True)
        name = graphene.String(required=True)
        phoneNumber = graphene.String(required=True)
        address = graphene.String(required=True)
        mail = graphene.String(required=True)

    # The class attributes define the response of the mutation
    member = graphene.Field(MemberNode)

    @classmethod
    def mutate(cls, root, info, memberID, name, phoneNumber, address, mail):
        try:
            member = Member.objects.get(pk=memberID)
            member.name = name
            member.phoneNumber = phoneNumber
            member.address = address
            member.mail = mail

            member.save()
            return UpdateMember(message=f"Member : {member.name} Updated", member=member, result=True)

        except ObjectDoesNotExist:
            return UpdateMember(message=f"This Member doesn't exist", result=False)


# Member for Removal
class DeleteMember(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        memberId = graphene.Int(required=True)
        mail = graphene.String(required=True)

    @classmethod
    def mutate(cls, root, info, memberId, mail):
        try:
            # Docs a ajouter
            member = Member.objects.get(pk=memberId, mail=mail)

            member.delete()
            member.barcodeImg.delete(save=True)
            member.qr_code.delete(save=True)
            return DeleteMember(message=f"{member.name} Removed from list of members", result=True)

        except ObjectDoesNotExist:

            return DeleteMember(message=f"An error occured, Please contact your Administrator", result=False)


# Member Class for Creation
class ResetMemberCode(graphene.Mutation):
    result = graphene.Boolean()
    message = graphene.String()

    class Arguments:
        # The input arguments for this mutation
        memberId = graphene.Int(required=True)
        mail = graphene.String(required=True)

    # The class attributes define the response of the mutation
    member = graphene.Field(MemberNode)

    @classmethod
    def mutate(cls, root, info, memberId, mail):
        try:
            member = Member.objects.get(pk=memberId, mail=mail)
            member.code = generateCode()

            # Generate Barcode
            ean = EAN13(str(member.code), writer=ImageWriter())
            buffer = BytesIO()
            ean.write(buffer)
            member.barcodeImg.delete(save=True)
            member.barcodeImg.save(f'barcode-{member.code}.png', File(buffer), save=False)

            # Generate Qr code
            qrcode_img = qrcode.make(member.code)
            canvas = Image.new('RGB', (290, 290), 'white')
            canvas.paste(qrcode_img)
            buffer = BytesIO()
            canvas.save(buffer, 'PNG')
            member.qr_code.delete(save=True)
            member.qr_code.save(f'qr_code-{member.code}.png', File(buffer), save=False)
            canvas.close()

            member.save()
            return CreateMember(message=f"{member.name}'s code resetted.", member=member, result=True)

        except ObjectDoesNotExist:
            return CreateMember(message=f"An error occured, Please contact your administrator", result=False)
