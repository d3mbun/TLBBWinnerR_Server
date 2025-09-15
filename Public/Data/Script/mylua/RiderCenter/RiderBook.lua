--Script KÜ thu§t t±ng hþp

--*********************--
x045010_g_scriptId=045010
--*********************--
x045010_g_RiderRecipe = {}
x045010_g_RiderRecipe[31001224] = {RecipeId=1224, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001226] = {RecipeId=1226, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001227] = {RecipeId=1227, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001228] = {RecipeId=1228, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001229] = {RecipeId=1229, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001230] = {RecipeId=1230, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001231] = {RecipeId=1231, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001232] = {RecipeId=1232, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001233] = {RecipeId=1233, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001234] = {RecipeId=1234, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001235] = {RecipeId=1235, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001236] = {RecipeId=1236, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001237] = {RecipeId=1237, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001238] = {RecipeId=1238, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001239] = {RecipeId=1239, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001240] = {RecipeId=1240, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001241] = {RecipeId=1241, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001242] = {RecipeId=1242, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001244] = {RecipeId=1244, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001245] = {RecipeId=1245, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001246] = {RecipeId=1246, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001247] = {RecipeId=1247, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001248] = {RecipeId=1248, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001249] = {RecipeId=1249, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001250] = {RecipeId=1250, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001251] = {RecipeId=1251, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001252] = {RecipeId=1252, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001262] = {RecipeId=1262, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001263] = {RecipeId=1263, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001264] = {RecipeId=1264, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001265] = {RecipeId=1265, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001269] = {RecipeId=1269, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001270] = {RecipeId=1270, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001271] = {RecipeId=1271, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001272] = {RecipeId=1272, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001273] = {RecipeId=1273, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001274] = {RecipeId=1274, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001275] = {RecipeId=1275, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001277] = {RecipeId=1277, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001280] = {RecipeId=1280, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001284] = {RecipeId=1284, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001287] = {RecipeId=1287, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001292] = {RecipeId=1292, NeedLevel=1, Impact=18}
x045010_g_RiderRecipe[31001293] = {RecipeId=1293, NeedLevel=1, Impact=18}

--*********************--

--**********************************--
--*           Read Recipe          *--
--**********************************--
function x045010_ReadRecipe(sceneId,selfId,RecipeIndex)
	
	--*********************--
	local RecipeFlag = IsPrescrLearned(sceneId,selfId,RecipeIndex)
	--*********************--
	if RecipeFlag < 1 then
		SetPrescription(sceneId,selfId,RecipeIndex,1)
		x045010_NotifyFailTips(sceneId,selfId,"H÷c cách ði«u khi¬n thú cßÞi m¾i!")
		return 1
	else
		x045010_NotifyFailTips(sceneId,selfId,"Ðã h÷c ðßþc công thÑc này!")
		return 0
	end
	--*********************--
	return 0
	--*********************--
	
end
--**********************************--
--*      Is Skill Like Script      *--
--**********************************--
function x045010_IsSkillLikeScript(sceneId,selfId)

	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*         Cancel Impacts         *--
--**********************************--
function x045010_CancelImpacts(sceneId,selfId)

	--*********************--
	return 0
	--*********************--
	
end
--**********************************--
--*       On Condition Check       *--
--**********************************--
function x045010_OnConditionCheck(sceneId,selfId)

	--*********************--
	if LuaFnVerifyUsedItem(sceneId,selfId)~=1 then
		return 0
	end
	--*********************--
	local ItemIndex=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	local Recipe=x045010_g_RiderRecipe[ItemIndex]
	if not Recipe then
		return
	end
	--*********************--
	if LuaFnIsPrescrLearned(sceneId,selfId,Recipe.RecipeId)>0 then
		x045010_NotifyFailTips(sceneId,selfId,"Các hÕ ðã h÷c công thÑc này r°i!")
		return 0
	end
	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*           On Deplete           *--
--**********************************--
function x045010_OnDeplete(sceneId,selfId)

	--*********************--
	if LuaFnDepletingUsedItem(sceneId,selfId) > 0 then
		return 1
	end
	--*********************--
	return 0
	--*********************--
	
end
--**********************************--
--*        On Activate Once        *--
--**********************************--
function x045010_OnActivateOnce(sceneId,selfId)
	
	--*********************--
	local ItemIndex=LuaFnGetItemIndexOfUsedItem(sceneId,selfId)
	local Recipe=x045010_g_RiderRecipe[ItemIndex]
	if not Recipe then
		return 0
	end
	--*********************--
	x045010_ReadRecipe(sceneId,selfId,Recipe.RecipeId)
	--*********************--
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,Recipe.Impact,0)
	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*     On Activate Each Tick      *--
--**********************************--
function x045010_OnActivateEachTick(sceneId,selfId)

	--*********************--
	return 1
	--*********************--
	
end
--**********************************--
--*        Notify Fail Tips        *--
--**********************************--
function x045010_NotifyFailTips(sceneId,selfId,Tip)

	--*********************--
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	--*********************--
	
end