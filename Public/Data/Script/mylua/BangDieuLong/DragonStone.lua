x045031_g_ScriptId = 045031
x045031_g_CuocKhaiKhoang = 10102012

function x045031_OnCreate( sceneId, growPointType, x, y )

	
end


function x045031_OnOpen( sceneId, selfId, targetId )
	--LuaFnAddGlobalCountNews(sceneId,GetName(sceneId,targetId))
	
	local AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_CAIKUANG )
	if AbilityLevel < 1 then
		x045031_NotifyFailTips( sceneId, selfId, "C¥n có kÛ nång khai khoáng c¤p 1")
		return OR_NO_LEVEL
	end
	
	local CuocKhaiKhoang = 0
	for i = 0, 29 do
		if LuaFnGetItemTableIndexByIndex(sceneId,selfId,i) == x045031_g_CuocKhaiKhoang then
			CuocKhaiKhoang = 1
		end
	end
	
	if LuaFnGetItemTableIndexByIndex(sceneId,selfId,100) == x045031_g_CuocKhaiKhoang then
		CuocKhaiKhoang = 1
	end
	
	if CuocKhaiKhoang == 0 then
		x045031_NotifyFailTips( sceneId, selfId, "C¥n có "..GetItemName(sceneId, x045031_g_CuocKhaiKhoang).."!")
		return -1
	end
	
	return OR_OK
end

function x045031_OnProcOver( sceneId, selfId, targetId )
	--LuaFnAddGlobalCountNews(sceneId,"OnProcOver")

	return OR_OK
end


function x045031_OnRecycle( sceneId, selfId, targetId)
	--LuaFnAddGlobalCountNews(sceneId,"OnRecycle")

	return 1
end

function x045031_OnTickCreateFinish( sceneId, growPointType, tickCount )
	--LuaFnAddGlobalCountNews(sceneId,"OnTickCreateFinish")
	
end

function x045031_OnPickupItem( sceneId, selfId, pos )
	local ItemID = LuaFnGetItemTableIndexByIndex(sceneId,selfId,pos)
	
	if ItemID < 32001021 or ItemID > 32001025 then
		LuaFnItemBind(sceneId, selfId, pos)
	end
	
	local ItemInfo = GetBagItemTransfer( sceneId, selfId, pos )
	local PlayerName = GetName(sceneId, selfId)
	
	if random(1,100) > 50 then
		local strText = format("#{_INFOUSR%s} #R· Ngân Ngai Tuyªt Nguyên, trong lúc ðào b¾i ThÕch Lâu Loài R°ng, b²ng r½i ra #{_INFOMSG%s}#R.", PlayerName, ItemInfo)
		BroadMsgByChatPipe(sceneId,selfId, strText, 4)
	end
end

function x045031_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end