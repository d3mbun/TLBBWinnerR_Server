--Ti�u DaoNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014031_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta l� � t� c�a ph�i ti�u dao")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
