--NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  B� nh�n Ti�u Dao lo�i F-16 �� ���c kh�i ph�c l�i t� l�i nghi�m tr�ng c�a h� th�ng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
