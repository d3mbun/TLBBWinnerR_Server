--NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  B� nh�n Ti�u Dao lo�i F-17173 tr߾c m�t l�m vi�c b�nh th߶ng... T�t... �u t�... Ki�t xu�t... Ho�n m�... �la...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
