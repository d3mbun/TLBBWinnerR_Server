-- ·ìÈÒÅä·½½Å±¾ ÓÃÓÚÊ¹ÓÃ¼¼ÄÜÖÆÔìÎïÆ·
-- *******
-- ·ìÈÒ 10 c¤p
-- ¸Ã½Å±¾ÓĞÒÔÏÂÈıcái±Ø±¸¹¦ÄÜº¯Êı: 
-- x700946_AbilityCheck ¡ª¡ª¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
-- x700946_AbilityConsume ¡ª¡ªºÏ³É½áÊø,½øĞĞÏà¹ØÏûºÄ
-- x700946_AbilityProduce ¡ª¡ªºÏ³É³É¹¦,²ú³ö²úÆ·

--------------------------------------------------------------------------------
-- ÒÔÏÂ²¿·ÖC¥n ¸ÄĞ´
--------------------------------------------------------------------------------
--½Å±¾ÖĞÎÄÃû
--2c¤pÃ±Åä·½ ÖÆÔìÎïÆ·

-- ½Å±¾ºÅ
x700946_g_ScriptId = 700946

-- Éú»î¼¼ÄÜºÅ
x700946_g_AbilityID = ABILITY_FENGREN

-- ¸ÃÏîÉú»î¼¼ÄÜtoÕ ğµ ×î´óc¤p±ğ
x700946_g_AbilityMaxLevel = 12

-- Åä·½ºÅ
x700946_g_RecipeID = 120

-- Åä·½µÈc¤p(ĞèÇó¼¼ÄÜtoÕ ğµ µÈc¤p)
x700946_g_RecipeLevel = 10

-- ²ÄÁÏ±í
x700946_g_CaiLiao = {
	{ID = 20105010, Count = 18},
	{ID = 20107013, Count = 20},
	{ID = 20108118, Count = 30},
	{ID = 20308099, Count = 1},
}

-- ²úÆ·±í
x700946_g_ChanPin = {
	{ID = 10211036, Odds = 2000},
	{ID = 10211037, Odds = 4000},
	{ID = 10211038, Odds = 6000},
	{ID = 10211039, Odds = 8000},
	{ID = 10211040, Odds = 10000},
}
--------------------------------------------------------------------------------
-- ÒÔÉÏ²¿·ÖC¥n ¸ÄĞ´
--------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
--	¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
----------------------------------------------------------------------------------------
function x700946_AbilityCheck(sceneId, selfId)

	-- ¼ì²â±³°üĞúng²»ĞúngÓĞ¿Õ¸ñ,Ã»ÓĞ¿Õ¸ñ¾Í²»ÄÜ½øĞĞ
	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
		return OR_BAG_OUT_OF_SPACE
	end

	-- ¼ì²éÆäËûÏûºÄ
	VigorValue = x700946_g_RecipeLevel * 2 + 1
	if GetHumanVigor(sceneId, selfId) < VigorValue then
		return OR_NOT_ENOUGH_VIGOR
	end

	-- ¼ì²éĞúng·ñ²ÄÁÏ×ã¹»

	for idx, Mat in x700946_g_CaiLiao do
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
function x700946_AbilityConsume(sceneId, selfId)
	-- Ê×ÏÈ½øĞĞÆäËûÏûºÄ
	VigorCost = x700946_g_RecipeLevel * 2 + 1
	VigorValue = GetHumanVigor(sceneId, selfId) - VigorCost
	SetHumanVigor(sceneId, selfId, VigorValue)

	-- È»ºó½øĞĞ²ÄÁÏÏûºÄ

	for idx, Mat in x700946_g_CaiLiao do
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
function x700946_AbilityProduce(sceneId, selfId)
	AbilityLevel = QueryHumanAbilityLevel(sceneId, selfId, x700946_g_AbilityID)

	-- Ëæ»ú³ömµt cáiÊı [1, 10000]
	rand = random(10000)

	for i, item in x700946_g_ChanPin do
		if item.Odds >= rand then
			Quality = CallScriptFunction( ABILITYLOGIC_ID, "CalcQuality", sceneId, x700946_g_RecipeLevel, AbilityLevel, x700946_g_AbilityMaxLevel,item.ID )

			local pos = LuaFnTryRecieveItem(sceneId, selfId, item.ID,QUALITY_MUST_BE_CHANGE)
			if pos ~= -1 then
				LuaFnSetItemCreator( sceneId, selfId, pos, LuaFnGetName( sceneId, selfId ) )
			else
				return OR_ERROR
			end

			LuaFnAuditAbility( sceneId, selfId, x700946_g_AbilityID, x700946_g_RecipeID, Quality )
			LuaFnSendAbilitySuccessMsg( sceneId, selfId, x700946_g_AbilityID, x700946_g_RecipeID, item.ID )
			return OR_OK
		end
		LuaFnAuditAbility( sceneId, selfId, x700946_g_AbilityID, x700946_g_RecipeID, 0 )
	end

	return OR_ERROR
end
