--Ľ��NPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x009050_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_36}");
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
