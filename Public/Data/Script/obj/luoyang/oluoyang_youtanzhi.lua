--L�c D߽ngNPC
--��̹֮
--��ͨ

--**********************************
--�¼��������
--**********************************
function x000017_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ti�u th� A T�, �p...�p nh� ti�n tr�i...th�t mu�n...mu�n ng�y n�o c�ng ���c g�p n�ng..")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
