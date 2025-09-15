--********************--
x045061_g_scriptId = 045061
--********************--

--**********************************--
--*        On Default Event        *--
--**********************************--
function x045061_OnDefaultEvent(sceneId,selfId,bagIndex)

	--********************--
	--********************--

end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x045061_IsSkillLikeScript(sceneId,selfId)

	--********************--
	return 1
	--********************--

end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x045061_CancelImpacts(sceneId,selfId)

	--********************--
	return 0
	--********************--

end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x045061_OnConditionCheck(sceneId,selfId)

	--********************--
	if LuaFnVerifyUsedItem(sceneId,selfId) ~= 1 then
		return 0
	end
	--********************--
	local nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local ItemId = LuaFnGetItemTableIndexByIndex(sceneId,selfId,nIndex)
	if ItemId ~= 30130005 then
		x045061_Noitice(sceneId,selfId,"V§t ph¦m không hþp l®, vui lòng liên h® GM")
		return
	end
	
	local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,nIndex)
	if not szAuthor then
		x045061_Noitice(sceneId,selfId,"V§t ph¦m không hþp l®, vui lòng liên h® GM")
		return
	else
		local ValueYB = tonumber(szAuthor)
		if type(ValueYB) ~= "number" then
			x045061_Noitice(sceneId,selfId,"V§t ph¦m không hþp l®, vui lòng liên h® GM")
			return
		end
		
		YuanbaoMD(sceneId, selfId, 1, ValueYB)
		
		local MoneyValue = tonumber(ValueYB);
		local ValueLengh = strlen(MoneyValue);
		if MoneyValue >= 1000 and MoneyValue <= 999999 then
			MoneyValue = strsub(MoneyValue,1,ValueLengh-3).."."..strsub(MoneyValue,ValueLengh-2,ValueLengh-0)
		elseif MoneyValue >= 1000000 and MoneyValue <= 999999999 then
			MoneyValue = strsub(MoneyValue,1,ValueLengh-6).."."..strsub(MoneyValue,ValueLengh-5,ValueLengh-3).."."..strsub(MoneyValue,ValueLengh-2,ValueLengh-0)
		elseif MoneyValue >= 1000000000 and MoneyValue <= 999999999999 then
			MoneyValue = strsub(MoneyValue,1,ValueLengh-9).."."..strsub(MoneyValue,ValueLengh-8,ValueLengh-6).."."..strsub(MoneyValue,ValueLengh-5,ValueLengh-3).."."..strsub(MoneyValue,ValueLengh-2,ValueLengh-0)
		end
		
		x045061_Noitice(sceneId,selfId,"Các hÕ nh§n ðßþc "..MoneyValue.." KNB!")
	end
	
	--********************--
	return 1
	--********************--

end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x045061_OnDeplete(sceneId,selfId)
	--********************--
	if LuaFnDepletingUsedItem(sceneId,selfId) > 0 then
		return 1
	end
	--********************--
	return 0
	--********************--
end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function x045061_OnActivateOnce(sceneId,selfId)
	--********************--

	--********************--
	return 1
	--********************--
end
--**********************************--
--*        On Default Event        *--
--**********************************--
function x045061_OnActivateEachTick(sceneId,selfId)
	--********************--
	return 1
	--********************--
end

function x045061_Noitice(sceneId,selfId,str)
	BeginEvent(sceneId)
		AddText(sceneId,str)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end

