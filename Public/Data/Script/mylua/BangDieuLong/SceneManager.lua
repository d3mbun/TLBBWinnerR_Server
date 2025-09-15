x045030_g_ScriptId = 045030

function x045030_OnDefaultEvent(sceneId, actId, iNoticeType, param2, param3, param4, param5)
	LuaFnAddGlobalCountNews(sceneId,"#GNgân Ngai Tuyªt Nguyên #Yt× lâu giá lÕnh, hôm nay b²ng dßng xu¤t hi®n r¤t nhi«u #GThÕch Lâu Cüa Loài R°ng#Y, các nhân sî m÷i n½i hãy cùng kéo ðªn tìm hi¬u!")
	local ItemGift = {30502000, 30502001, 30502002, 30509500, 30502000, 30502001, 30502002, 30509500, 50201001, 50201002, 50213006, 50214001, 30008002, 30008003, 30008007, 30003100, 30003101, 20309009, 30008002, 30008003, 30008007, 30003100, 30003101, 20309009}
	local ItemDragon = {32001021, 32001022, 32001023, 32001024, 32001025, 32001021, 32001022, 32001023, 32001024, 32001025}
	local BoxID = {1001, 1002, 1003, 1004, 1005, 1001, 1002, 1003, 1004, 1005}
	local LocationStone = {}
		LocationStone[1] = 	{random(35,230),random(35,220)} --{210,220}
		LocationStone[2] = 	{random(35,230),random(35,220)} --{228,122}
		LocationStone[3] = 	{random(35,230),random(35,220)} --{235,45}
		LocationStone[4] = 	{random(35,230),random(35,220)} --{163,24}
		LocationStone[5] = 	{random(35,230),random(35,220)} --{110,30}
		LocationStone[6] = 	{random(35,230),random(35,220)} --{51,27}
		LocationStone[7] = 	{random(35,230),random(35,220)} --{30,138}
		LocationStone[8] = 	{random(35,230),random(35,220)} --{142,112}
		LocationStone[9] = 	{random(35,230),random(35,220)} --{175,190}
		LocationStone[10] = {random(35,230),random(35,220)} --{105,175}
		
	local DragonSlot = random(1,10)	
	for i = 1, 10 do
		if i == DragonSlot then
			local ItemBoxId = LuaFnItemBoxEnterSceneEx(sceneId, LocationStone[i][1], LocationStone[i][2], BoxID[DragonSlot], 7200000)
			AddItemToBox(sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, ItemDragon[DragonSlot])
			AddItemToBox(sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, ItemGift[random(1,getn(ItemGift))])
			if random(1,100) > 50 then
				AddItemToBox(sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, ItemGift[random(1,getn(ItemGift))])
			end
		else
			local ItemBoxId = LuaFnItemBoxEnterSceneEx(sceneId, LocationStone[i][1], LocationStone[i][2], BoxID[random(1,10)], 7200000)
			AddItemToBox(sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, ItemGift[random(1,getn(ItemGift))])
			AddItemToBox(sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, ItemGift[random(1,getn(ItemGift))])
			if random(1,100) > 50 then
				AddItemToBox(sceneId, ItemBoxId, QUALITY_MUST_BE_CHANGE, 1, ItemGift[random(1,getn(ItemGift))])
			end
		end
	end
end

function x045030_OnTimer(sceneId,actId,uTime)

	
end