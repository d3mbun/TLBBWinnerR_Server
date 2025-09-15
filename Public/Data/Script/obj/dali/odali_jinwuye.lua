--´óÀíNPC
--½ğÎåÒ¯
--Ôª±¦ÉÌÈË
x002059_g_scriptId = 002059
x002059_g_shoptableindex = 210

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002059_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ"
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  "..PlayerName..PlayerSex.." Hành t¦u giang h°, ğß½ng nhiên n¡m ğ¤m ai to ngß¶i ğó là ğÕi gia, nhßng tøc ngæ cûng nói, có ti«n sai khiªn ğßşc quÖ th¥n, trong tay có ti«n vàng, vi®c khó làm cûng thành ra ğ½n giän")
		AddNumText( sceneId, x002059_g_scriptId, "Ngß½i mu¯n mua KNB?", 7, 0 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x002059_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 0 then
		DispatchShopItem( sceneId, selfId, targetId, x002059_g_shoptableindex )
	end
end
