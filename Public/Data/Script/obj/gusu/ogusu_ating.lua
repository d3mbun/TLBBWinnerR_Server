--Ľ��NPC
--Ľ�ݵ���
--��ͨ

--**********************************
--�¼��������
--**********************************
function x009048_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_25}");
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
