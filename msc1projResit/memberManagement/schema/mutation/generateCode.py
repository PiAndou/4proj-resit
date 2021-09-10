import random

from django.core.exceptions import ObjectDoesNotExist

from memberManagement.models import Member

checkOk = False


def randomNumber():
    minimum = 100000000000
    maximum = 999999999999
    return random.randint(minimum, maximum)


def generateCode():
    global checkOk
    code = randomNumber()
    while not checkOk:
        try:
            member = Member.objects.get(code=code)
        except ObjectDoesNotExist:
            checkOk = True

    return code
