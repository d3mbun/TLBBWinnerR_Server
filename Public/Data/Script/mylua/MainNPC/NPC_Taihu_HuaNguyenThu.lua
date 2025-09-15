
x045025_g_scriptId = 045025

--**********************************
--
--**********************************
function x045025_OnDefaultEvent( sceneId, selfId, targetId )
	-- BeginEvent(sceneId)
		-- AddText(sceneId,"TLHUB")
		-- AddText(sceneId,"ThienLongHub.Com")
	-- DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045025_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()

end


--**********************************
--
--**********************************
function x045025_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end