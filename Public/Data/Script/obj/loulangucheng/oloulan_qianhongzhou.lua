
x001154_g_scriptId = 001154

x001154_g_IceStone = 20310113
x001154_g_IceStoneBind = 20310114

x001154_g_IceStoneX = 30008069
x001154_g_IceStoneXBind = 30008070

x001154_g_IceNum = 20
--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001154_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  #{AQSJ_090709_01}")
		AddNumText( sceneId, x001154_g_scriptId, "#{AQSJ_XML_090709_25}", 6, 1 )
		AddNumText( sceneId, x001154_g_scriptId, "#{AQSJ_090709_03}", 6, 2 )
		AddNumText( sceneId, x001154_g_scriptId, "#{AQSJ_090709_04}", 11, 3 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x001154_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 070825 )
	end
	
	if key == 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{AQSJ_090709_13}")
			AddNumText( sceneId, x001154_g_scriptId, "#{AQSJ_090709_14}", 6, 21 )
			AddNumText( sceneId, x001154_g_scriptId, "#{AQSJ_090709_15}", 8, 22 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 21 then
		local IceStone = LuaFnGetAvailableItemCount(sceneId,selfId,x001154_g_IceStone)
		local IceStoneB = LuaFnGetAvailableItemCount(sceneId,selfId,x001154_g_IceStoneBind)
		
		if IceStone + IceStoneB < 20 then
			x001154_ShowMsg( sceneId, selfId, "#{AQSJ_090709_16}")
			return
		end
		
		if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			x001154_ShowMsg(sceneId,selfId,"Yêu c¥u 1 ô tr¯ng trong túi ÐÕo Cø")
			return
		end
		
		if IceStoneB >= 20 then
			LuaFnDelAvailableItem(sceneId,selfId,x001154_g_IceStoneBind,20)
		else
			LuaFnDelAvailableItem(sceneId,selfId,x001154_g_IceStoneBind,IceStoneB)
			LuaFnDelAvailableItem(sceneId,selfId,x001154_g_IceStone,20-IceStoneB)
		end
		
		local NewStone = -1
		if IceStoneB > 0 then
			NewStone = TryRecieveItem(sceneId,selfId,x001154_g_IceStoneXBind,1)
		else
			NewStone = TryRecieveItem(sceneId,selfId,x001154_g_IceStoneX,1)
		end
		
		x001154_ShowMsg( sceneId, selfId, "#{AQSJ_090709_18}")
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
	end
	
	if key == 22 then
		x001154_OnDefaultEvent( sceneId, selfId,targetId )
	end
	
	if key == 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{AQSJ_090709_19}")
			AddNumText( sceneId, x001154_g_scriptId, "#{AQSJ_090709_15}", 8, 22 )
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
function x001154_OnMissionSubmit(sceneId,selfId,targetId,x001154_g_scriptId,ItemID)
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
function x001154_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end