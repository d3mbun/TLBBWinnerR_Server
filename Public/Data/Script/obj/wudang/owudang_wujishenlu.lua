--V� �angNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x012013_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"<H�c minh c�u cao, thanh v�n vu thi�n>")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
