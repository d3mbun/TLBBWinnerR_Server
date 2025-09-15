-- ·ìÈÒÅä·½½Å±¾ ÓÃÓÚÊ¹ÓÃ¼¼ÄÜÖÆÔìÎïÆ·
-- *******
-- ·ìÈÒ 1 c¤p
-- ¸Ã½Å±¾ÓĞÒÔÏÂÈıcái±Ø±¸¹¦ÄÜº¯Êı: 
-- x700909_AbilityCheck ¡ª¡ª¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
-- x700909_AbilityConsume ¡ª¡ªºÏ³É½áÊø,½øĞĞÏà¹ØÏûºÄ
-- x700909_AbilityProduce ¡ª¡ªºÏ³É³É¹¦,²ú³ö²úÆ·

--------------------------------------------------------------------------------
-- ÒÔÏÂ²¿·ÖC¥n ¸ÄĞ´
--------------------------------------------------------------------------------
--½Å±¾ÖĞÎÄÃû
--2c¤pÃ±Åä·½ ÖÆÔìÎïÆ·

-- ½Å±¾ºÅ
x700909_g_ScriptId = 700909

-- Éú»î¼¼ÄÜºÅ
x700909_g_AbilityID = ABILITY_FENGREN

-- ¸ÃÏîÉú»î¼¼ÄÜtoÕ ğµ ×î´óc¤p±ğ
x700909_g_AbilityMaxLevel = 12

-- Åä·½ºÅ
x700909_g_RecipeID = 63

-- Åä·½µÈc¤p(ĞèÇó¼¼ÄÜtoÕ ğµ µÈc¤p)
x700909_g_RecipeLevel = 1

-- ²ÄÁÏ±í
x700909_g_CaiLiao = {
	{ID = 20105001, Count = 5},
	{ID = 20107001, Count = 7},
	{ID = 20108085, Count = 3},
	{ID = 20308081, Count = 1},
}

-- ²úÆ·±í
x700909_g_ChanPin = {
	{ID = 10212001, Odds = 3333},
	{ID = 10212002, Odds = 6666},
	{ID = 10212003, Odds = 10000},
}
--------------------------------------------------------------------------------
-- ÒÔÉÏ²¿·ÖC¥n ¸ÄĞ´
--------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--	¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
----------------------------------------------------------------------------------------
function x700909_AbilityCheck(sceneId, selfId)

	-- ¼ì²â±³°üĞúng²»ĞúngÓĞ¿Õ¸ñ,Ã»ÓĞ¿Õ¸ñ¾Í²»ÄÜ½øĞĞ
	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
		return OR_BAG_OUT_OF_SPACE
	end

	-- ¼ì²éÆäËûÏûºÄ
	VigorValue = x700909_g_RecipeLevel * 2 + 1
	if GetHumanVigor(sceneId, selfId) < VigorValue then
		return OR_NOT_ENOUGH_VIGOR
	end

	-- ¼ì²éĞúng·ñ²ÄÁÏ×ã¹»

	for idx, Mat in x700909_g_CaiLiao do
		nCount = Mat.Count

		ret = LuaFnGetAvailableItemCount(sceneId, selfId, Mat.ID)
		if ret < nCount then
			return OR_STUFF_LACK
		end
	end

	return OR_OK
end

----------------------------------------------------------------------------------------
--	ºÏ³É½áÊø,½øĞĞÏà¹ØÏûºÄ
----------------------------------------------------------------------------------------
function x700909_AbilityConsume(sceneId, selfId)
	-- Ê×ÏÈ½øĞĞÆäËûÏûºÄ
	VigorCost = x700909_g_RecipeLevel * 2 + 1
	VigorValue = GetHumanVigor(sceneId, selfId) - VigorCost
	SetHumanVigor(sceneId, selfId, VigorValue)

	-- È»ºó½øĞĞ²ÄÁÏÏûºÄ

	for idx, Mat in x700909_g_CaiLiao do
		nCount = Mat.Count

		ret = LuaFnDelAvailableItem(sceneId, selfId, Mat.ID, nCount)
		if ret ~= 1 then
			return 0
		end
	end

	return 1
end

----------------------------------------------------------------------------------------
--	ºÏ³É³É¹¦,²ú³ö²úÆ·
----------------------------------------------------------------------------------------
function x700909_AbilityProduce(sceneId, selfId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x700909_g_AbilityID)

	-- Ëæ»ú³ömµt cáiÊı [1, 10000]
	rand = random(10000)

	for i, item in x700909_g_ChanPin do
		if item.Odds >= rand then
			Quality = CallScriptFunction( ABILITYLOGIC_ID, "CalcQuality", sceneId, x700909_g_RecipeLevel, AbilityLevel, x700909_g_AbilityMaxLevel,item.ID )

			local pos = LuaFnTryRecieveItem(sceneId, selfId, item.ID, QUALITY_MUST_BE_CHANGE)
			if pos ~= -1 then
				LuaFnSetItemCreator( sceneId, selfId, pos, LuaFnGetName( sceneId, selfId ) )
			else
				return OR_ERROR
			end

			LuaFnAuditAbility( sceneId, selfId, x700909_g_AbilityID, x700909_g_RecipeID, Quality )
			LuaFnSendAbilitySuccessMsg( sceneId, selfId, x700909_g_AbilityID, x700909_g_RecipeID, item.ID )
			return OR_OK
		end
		LuaFnAuditAbility( sceneId, selfId, x700909_g_AbilityID, x700909_g_RecipeID, 0 )
	end

	return OR_ERROR
end
