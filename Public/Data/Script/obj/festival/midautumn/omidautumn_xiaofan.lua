-- ����NPC
-- С��

x050007_g_scriptId = 050007

x050007_g_shoptableindex = 9

--**********************************
--�¼��������
--**********************************
function x050007_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    ��i hi�p, �n mua m�t c�y ph�o b�ng ch�i �i!" )
		AddNumText( sceneId, x050007_g_scriptId, "Mua ph�o hoa Trung thu", -1, 1 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x050007_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		DispatchShopItem( sceneId, selfId, targetId, x050007_g_shoptableindex )
	end
end