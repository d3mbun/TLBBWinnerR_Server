-- ·ìÈÒÅä·½½Å±¾ ÓÃÓÚÊ¹ÓÃ¼¼ÄÜÖÆÔìÎïÆ·
-- *******
-- ·ìÈÒ 8 c¤p
-- ¸Ã½Å±¾ÓĞÒÔÏÂÈıcái±Ø±¸¹¦ÄÜº¯Êı: 
-- x700953_AbilityCheck ¡ª¡ª¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
-- x700953_AbilityConsume ¡ª¡ªºÏ³É½áÊø,½øĞĞÏà¹ØÏûºÄ
-- x700953_AbilityProduce ¡ª¡ªºÏ³É³É¹¦,²ú³ö²úÆ·

--------------------------------------------------------------------------------
-- ÒÔÏÂ²¿·ÖC¥n ¸ÄĞ´
--------------------------------------------------------------------------------
--½Å±¾ÖĞÎÄÃû
--2c¤pÃ±Åä·½ ÖÆÔìÎïÆ·

-- ½Å±¾ºÅ
x700953_g_ScriptId = 700953

-- Éú»î¼¼ÄÜºÅ
x700953_g_AbilityID = ABILITY_FENGREN

-- ¸ÃÏîÉú»î¼¼ÄÜtoÕ ğµ ×î´óc¤p±ğ
x700953_g_AbilityMaxLevel = 12

-- Åä·½ºÅ
x700953_g_RecipeID = 127

-- Åä·½µÈc¤p(ĞèÇó¼¼ÄÜtoÕ ğµ µÈc¤p)
x700953_g_RecipeLevel = 12

-- ²ÄÁÏ±í
x700953_g_CaiLiao = {
	{ID = 20105012, Count = 21},
	{ID = 20107017, Count = 23},
	{ID = 20108096, Count = 35},
	{ID = 20308090, Count = 1},
}

-- ²úÆ·±í
x700953_g_ChanPin = {
	{ID = 10212045, Odds = 3333},
	{ID = 10212046, Odds = 6666},
	{ID = 10212047, Odds = 10000},
}
--------------------------------------------------------------------------------
-- ÒÔÉÏ²¿·ÖC¥n ¸ÄĞ´
--------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--	¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
----------------------------------------------------------------------------------------
function x700953_AbilityCheck(sceneId, selfId)

	-- ¼ì²â±³°üĞúng²»ĞúngÓĞ¿Õ¸ñ,Ã»ÓĞ¿Õ¸ñ¾Í²»ÄÜ½øĞĞ
	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
		return OR_BAG_OUT_OF_SPACE
	end

	-- ¼ì²éÆäËûÏûºÄ
	VigorValue = x700953_g_RecipeLevel * 2 + 1
	if GetHumanVigor(sceneId, selfId) < VigorValue then
		return OR_NOT_ENOUGH_VIGOR
	end

	-- ¼ì²éĞúng·ñ²ÄÁÏ×ã¹»

	for idx, Mat in x700953_g_CaiLiao do
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
function x700953_AbilityConsume(sceneId, selfId)
	-- Ê×ÏÈ½øĞĞÆäËûÏûºÄ
	VigorCost = x700953_g_RecipeLevel * 2 + 1
	VigorValue = GetHumanVigor(sceneId, selfId) - VigorCost
	SetHumanVigor(sceneId, selfId, VigorValue)

	-- È»ºó½øĞĞ²ÄÁÏÏûºÄ

	for idx, Mat in x700953_g_CaiLiao do
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
function x700953_AbilityProduce(sceneId, selfId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x700953_g_AbilityID)

	-- Ëæ»ú³ömµt cáiÊı [1, 10000]
	rand = random(10000)

	for i, item in x700953_g_ChanPin do
		if item.Odds >= rand then
			Quality = CallScriptFunction( ABILITYLOGIC_ID, "CalcQuality", sceneId, x700953_g_RecipeLevel, AbilityLevel, x700953_g_AbilityMaxLevel,item.ID )

			local pos = LuaFnTryRecieveItem(sceneId, selfId, item.ID, QUALITY_MUST_BE_CHANGE)
			if pos ~= -1 then
				LuaFnSetItemCreator( sceneId, selfId, pos, LuaFnGetName( sceneId, selfId ) )
			else
				return OR_ERROR
			end

			LuaFnAuditAbility( sceneId, selfId, x700953_g_AbilityID, x700953_g_RecipeID, Quality )
			LuaFnSendAbilitySuccessMsg( sceneId, selfId, x700953_g_AbilityID, x700953_g_RecipeID, item.ID )
			return OR_OK
		end
		LuaFnAuditAbility( sceneId, selfId, x700953_g_AbilityID, x700953_g_RecipeID, 0 )
	end

	return OR_ERROR
end
