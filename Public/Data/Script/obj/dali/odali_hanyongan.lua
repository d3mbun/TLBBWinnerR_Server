--����NPC
--������
--��ͨ

x002029_g_shoptableindex_1=8


--**********************************
--�¼��������
--**********************************
function x002029_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ti�m c�m � c�a ta l� ti�m l�n nh�t � ��i L� th�nh")
		--AddNumText(sceneId,g_scriptId,"������ͨ����",7,0)
		EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x002029_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText() == 0	then
		DispatchShopItem( sceneId, selfId,targetId, x002029_g_shoptableindex_1 )
	end
end
