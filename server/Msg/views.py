import json
from django.http import HttpResponse
from .models import Msg
from medicine.models import Medicine


'''
    name
    component
    effect
    dosage
    adverse_reaction
    note
'''


def getMsg(request):
    id=request.GET.get('id')
    name = Medicine.objects.get(id=id).name
    result=Msg.objects.get(name=name)
    datas={}
    data={}
    if result:
        data={
            'name':result.name,
            'component':result.component,
            'effect':result.effect,
            'dosage':result.dosage,
            'adverse_reaction':result.adverse_reaction,
            'note':result.note
        }
        datas={
            'status': 200,
            'data': data
        }
    else:
        datas = {
            'status': 404,
            'data': "null"
        }
    return HttpResponse(json.dumps(datas, ensure_ascii=False), content_type='application/json', charset='utf-8')