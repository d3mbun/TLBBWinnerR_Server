--����NPC
--������
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  ̫��׌�҂����γ��ú��M����ϱ�ِ��")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
