
x001085_g_scriptId = 001085

--**********************************
--
--**********************************

function x001085_OnDefaultEvent( sceneId, selfId, targetId )	
	BeginEvent(sceneId)
		AddText(sceneId,"Ð×ng chï th¤y ðÕi ca Âu Dã TØ ðúc tÕo ra vô s¯ th¥n binh lþi khí, ta cûng có tuy®t kÛ cüa ta")
		AddText(sceneId,"Các hÕ biªt ð¤y, th¥n khí trên thª gian ð«u có linh h°n cüa nó, ta có th¬ luy®n th¥n khí khiªn linh h°n cüa nó l¾n mÕnh, thuµc tính cüa nó cûng theo ðó là tång lên.")
		AddNumText( sceneId, x001085_g_scriptId, "Th¥n Khí Luy®n H°n", 6, 1 )
		AddNumText( sceneId, x001085_g_scriptId, "Tôi Luy®n Th¥n Khí", 6, 2 )
		AddNumText( sceneId, x001085_g_scriptId, "Ðúc #GThßþng C± Th¥n Khí", 6, 3 )
		AddNumText( sceneId, x001085_g_scriptId, "#GT¦y M¾i Thuµc Tính Th¥n Khí", 6, 4 )
		AddNumText( sceneId, x001085_g_scriptId, "#GTh¥n Khi Thay Ð±i NgoÕi Hình", 6, 5 )
		AddNumText( sceneId, x001085_g_scriptId, "V« Th¥n Khí Luy®n H°n", 11, 9 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x001085_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
	
	if key == 2 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
	
	if key == 3 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 3 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
	
	if key == 4 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 4 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
	
	if key == 5 then
		BeginUICommand( sceneId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1020001 )
	end
	
	if key == 9 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SQSJ_0708_01}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
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
function x001085_OnMissionSubmit(sceneId,selfId,targetId,x001085_g_scriptId,ItemID)
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
function x001085_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end