--Th�c H� C� Tr�nNPC....
--Ph߶ng ch� Tr�ng �i�u ph߶ng....

x001186_g_scriptId = 001186
x001186_g_shoptableindex = 27

x001186_g_MsgInfo = { "#{SHGZ_0612_08}",
											"#{SHGZ_0620_22}",
											"#{SHGZ_0620_23}",
											"#{SHGZ_0620_24}",
										}

--**********************************
--�¼��������
--**********************************
function x001186_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local msgidx = random(getn(x001186_g_MsgInfo))
		AddText( sceneId, x001186_g_MsgInfo[msgidx] )
		AddNumText( sceneId, x001186_g_scriptId, "Ng߽i mu�n mua g� n�o?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001186_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x001186_g_shoptableindex )
	end
end
