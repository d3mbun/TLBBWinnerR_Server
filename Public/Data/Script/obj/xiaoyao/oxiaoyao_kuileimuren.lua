--NPC
--����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014009_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  B� nh�n Ti�u Dao lo�i F-874 �ang ti�n h�nh x� l� d� li�u �ng t�c: #r#r10: Du�i c�nh tay b�n ph�i. #r#r20: V�y v� ph�a tr�i. #r#r30: V�y v� ph�a ph�i. #r#rQuay l�i 20, B�t �u tu�n ho�n...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
