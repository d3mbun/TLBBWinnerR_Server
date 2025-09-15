--Tô ChâuNPC
--Ð¡¸ß

x001070_g_ScriptId	= 001070

--Åä·½µê
x001070_g_shoptableindex= 168
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001070_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "#{PFBQ_20070926_001}" )
		AddNumText( sceneId, x001070_g_ScriptId, "Trùng c¤u ph¯i phß½ng", 7, 100 )
		AddNumText( sceneId, x001070_g_ScriptId, "Liên quan mua ph¯i phß½ng", 11, 101 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001070_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	if key == 100 then
		DispatchShopItem( sceneId, selfId, targetId, x001070_g_shoptableindex )
	elseif key == 101 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{CGPF_2007_0109}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end
