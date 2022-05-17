from django.db import models

'''
    name
    component
    effect
    dosage
    adverse_reaction
    note
'''


class Msg(models.Model):
    name = models.TextField(max_length=255)
    component = models.TextField(max_length=255, blank=True)
    effect = models.TextField(max_length=255, blank=True)
    dosage = models.TextField(max_length=255, blank=True)
    adverse_reaction = models.TextField(max_length=255, blank=True)
    note = models.TextField(max_length=255, blank=True)
