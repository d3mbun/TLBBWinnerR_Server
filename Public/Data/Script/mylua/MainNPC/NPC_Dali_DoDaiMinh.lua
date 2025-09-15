
x045022_g_scriptId = 045022

function x045022_OnDefaultEvent( sceneId, selfId, targetId )	
	BeginEvent(sceneId)
		AddText(sceneId,"Chào m×ng các hÕ ðªn v¾i thª gi¾i Thiên Long Bát Bµ, ta là sÑ giä do GM gØi ðªn ð¬ tri¬n khai các sñ ki®n.")
		-- AddNumText( sceneId, x045020_g_scriptId, "Quy Ð±i Nguyên Bäo", 2, 1 )
		AddNumText( sceneId, x045022_g_scriptId, "R¶i ði", 8, 0 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045022_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 0 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--
--**********************************
function x045022_OnMissionSubmit(sceneId,selfId,targetId,x045022_g_scriptId,ItemID)
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Hãy s¡p xªp 1 ô tr¯ng trong túi ðÕo cø.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,"Chúc m×ng ngß½i ðã nh§n ðßþc #G"..GetItemName(sceneId,ItemID).."#W.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
end

--**********************************
--
--**********************************
function x045022_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end