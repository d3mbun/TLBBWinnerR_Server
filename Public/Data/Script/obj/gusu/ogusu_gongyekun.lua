--Ä½ÈÝNPC
--¹«Ò±À¤
--ÆÕÍ¨

x009044_g_scriptId = 009044

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009044_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_27}")
		AddNumText(sceneId,x009044_g_scriptId,"Tàng Thß Thüy Các",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x009044_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<81  then	
			BeginEvent( sceneId )
			local strText = "Không ðßþc coi thß¶ng lû khï ðó, ta th¤y ngß½i nên ðþi vßþt qua c¤p 81 hÇng quay lÕi tìm ta"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 200,31,158)
		end
	end
end