--´óÀíNPC
--Ð¡îÎ
--·þ×°µê

x002055_g_scriptId = 002055
x002055_g_shoptableindex = 3

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002055_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    Trong ti®m bán r¤t nhi«u thß½ng ph¦m, hoan nghênh t¾i mua!" )
		AddNumText( sceneId, x002055_g_scriptId, "Ngß½i mu¯n mua gì nào?", 7, 0 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002055_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002055_g_shoptableindex )
	end
end
