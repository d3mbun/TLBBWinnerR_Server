
x045027_g_scriptId = 045027

--**********************************
--
--**********************************
function x045027_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{SZPR_091023_01}")
		AddNumText( sceneId, x045027_g_scriptId, "Nhßþm màu th¶i trang", 6, 1 )
		AddNumText( sceneId, x045027_g_scriptId, "V« nhßþm màu th¶i trang", 11, 8 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045027_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 1 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
			UICommand_AddInt(sceneId,1)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,0910281)
	end
	
	if key == 8 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SZPR_091023_10}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

end


--**********************************
--
--**********************************
function x045027_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end