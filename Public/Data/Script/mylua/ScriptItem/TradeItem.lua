
x045500_g_scriptId = 045500
x045500_g_ItemList = {}
x045500_g_ItemList[32001060] = {10162404}
x045500_g_ItemList[32001061] = {10158504}
x045500_g_ItemList[32001062] = {10161954}
x045500_g_ItemList[32001063] = {10158334}

function x045500_OnDefaultEvent( sceneId, selfId, bagIndex )
	local ItemID = LuaFnGetItemTableIndexByIndex(sceneId,selfId,bagIndex)
	local ItemRC = x045500_g_ItemList[ItemID][1]
	
	LuaFnDelAvailableItem(sceneId,selfId,ItemID,1)
	
	local NewItem = TryRecieveItem(sceneId,selfId,ItemRC,1)
	LuaFnItemBind(sceneId,selfId,NewItem)
	
	x045500_ShowMsg( sceneId, selfId, "Các hÕ ðã nh§n ðßþc "..GetItemName(sceneId,ItemRC))
end

function x045500_IsSkillLikeScript( sceneId, selfId)
	return 0
end

function x045500_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end