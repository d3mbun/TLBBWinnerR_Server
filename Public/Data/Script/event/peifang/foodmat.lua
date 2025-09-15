-- Ê³²ÄÅä·½¡¢ºÏ³ÉÅä·½

-- ¸Ã½Å±¾ÓĞÒÔÏÂ¶şcái±Ø±¸¹¦ÄÜº¯Êı: 
-- x700901_AbilityCheck		- ¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
-- x700901_AbilityProduce	-  ºÏ³É³É¹¦,¸ºÔğÏûºÄÒÔ¼°²ú³ö²úÆ·

-- ½Å±¾ºÅ
x700901_g_ScriptId	= 700901

-- Ô­ÁÏ±í
x700901_g_Stuff			= {}
-- ³õc¤pÊ³²ÄÔ­ÁÏ
x700901_g_Stuff[1]	= { 20102001, 20102013, 20102002, 20102014, 20102003, 20102015, 20106001, 20106002, 20106003 }
-- ÖĞc¤pÊ³²ÄÔ­ÁÏ
x700901_g_Stuff[2]	= { 20102004, 20102016, 20102005, 20102017, 20102006, 20102018, 20106004, 20106005, 20106006 }
-- ¸ßc¤pÊ³²ÄÔ­ÁÏ
x700901_g_Stuff[3]	= { 20102007, 20102008, 20102009, 20102010, 20102011, 20102012, 20102019, 20102020, 20102021,20102022,20102023,20102024,20102040,20102041,20102042,20102043,20102044,20102045,20102046,20102047,20106007,20106008,20106009,20106010,20106011,20106012 }


-- Åä·½±í
-- Ë÷ÒıÎªÅä·½ ID
-- abilityId: Éú»î¼¼ÄÜºÅ
-- recipeLevel: Åä·½µÈc¤p
-- matTbl: ¸ÃÅä·½Ê¹ÓÃtoÕ ğµ ²ÄÁÏ×é±í
--		matList:Ä³cáiµµ´ÎtoÕ ğµ ²ÄÁÏÇåµ¥
--		count:Ê¹ÓÃ¸Ãµµ´ÎtoÕ ğµ ²ÄÁÏC¥n toÕ ğµ ÊıÁ¿
-- Product: ²úÆ·
x700901_g_CompoundInfo			= {}
-- ³õc¤pÊ³²Ä
x700901_g_CompoundInfo[558]	= {
	abilityId = ABILITY_PENGREN,
	recipeLevel = 1,
	matTbl = {
		{ matList = x700901_g_Stuff[1], count = 10 },
	},
	Product = 20102037,
}
-- ÖĞc¤pÊ³²Ä
x700901_g_CompoundInfo[559] = {
	abilityId = ABILITY_PENGREN,
	recipeLevel = 1,
	matTbl = {
		{ matList = x700901_g_Stuff[2], count = 10 },
	},
	Product = 20102038,
}
-- ¸ßc¤pÊ³²Ä
x700901_g_CompoundInfo[560] = {
	abilityId = ABILITY_PENGREN,
	recipeLevel = 1,
	matTbl = {
		{ matList = x700901_g_Stuff[3], count = 10 },
	},
	Product = 20102039,
}

-- ±³°üC¥n toÕ ğµ ¿Õ¼ä
x700901_g_BagSpace	= 1

----------------------------------------------------------------------------------------
--	¼¼ÄÜÊ¹ÓÃ¼ì²éº¯Êı
----------------------------------------------------------------------------------------
function x700901_AbilityCheck( sceneId, selfId, recipeId )
	local CompoundInfo = x700901_g_CompoundInfo[recipeId]
	if not CompoundInfo then
		return OR_ERROR
	end

	-- ¼ì²â±³°üĞúng²»ĞúngÓĞ¿Õ¸ñ,Ã»ÓĞ¿Õ¸ñ¾Í²»ÄÜ½øĞĞ
	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < x700901_g_BagSpace then
		return OR_BAG_OUT_OF_SPACE
	end

	local abilityLevel = QueryHumanAbilityLevel( sceneId, selfId, CompoundInfo.abilityId )
	if abilityLevel < CompoundInfo.recipeLevel then
		return OR_NO_LEVEL
	end

	-- ÅĞ¶ÏÉíÉÏtoÕ ğµ ²ÄÁÏĞúng·ñ×ã¹»
	local i, matInfo, tblCount, bMatEnoughFlag, idx, MatSN, Count

	tblCount = getn( CompoundInfo.matTbl )
	bMatEnoughFlag = 0

	for i = 1, tblCount do
		Count = 0
		matInfo = CompoundInfo.matTbl[i]
		if not matInfo then
			print( "Exception: An unexpected value of the variable [i] in function [x700901_AbilityCheck], the value is ", i )
			return OR_STUFF_LACK
		end

		if not matInfo.matList then
			print( "Exception: An unexpected value of the variable [matInfo] in function [x700901_AbilityCheck], the value is ", matInfo )
			return OR_STUFF_LACK
		end

		for idx, MatSN in matInfo.matList do
			Count = Count + LuaFnGetAvailableItemCount( sceneId, selfId, MatSN )

			-- TÕi ÕâÀï½øĞĞÅĞ¶Ï,ÒÔ¼õÉÙÑ­»·´ÎÊı(ÌØ±ğĞúngµ±²ÄÁÏ³äÔ£Ê±)
			if Count >= matInfo.count then
				bMatEnoughFlag = 1
				break
			end
		end

		if bMatEnoughFlag == 1 then
			break
		end
	end

	if bMatEnoughFlag == 1 then
		return OR_OK
	end

	return OR_STUFF_LACK
end

----------------------------------------------------------------------------------------
--	²ú³ö²úÆ·
----------------------------------------------------------------------------------------
function x700901_AbilityProduce( sceneId, selfId, recipeId )
	local CompoundInfo = x700901_g_CompoundInfo[recipeId]
	if not CompoundInfo then
		return OR_ERROR
	end

	-- ÏûºÄ²ÄÁÏ
	local i, matInfo, tblCount, bMatEnoughFlag, idx, MatSN, Count, DelCount

	tblCount = getn( CompoundInfo.matTbl )
	bMatEnoughFlag = 0
	DelCount = 0

	for i = 1, tblCount do
		Count = 0
		matInfo = CompoundInfo.matTbl[i]
		if not matInfo then
			print( "Exception: An unexpected value of the variable [i] in function [x700901_AbilityCheck], the value is ", i )
			return OR_STUFF_LACK
		end

		if not matInfo.matList then
			print( "Exception: An unexpected value of the variable [matInfo] in function [x700901_AbilityCheck], the value is ", matInfo )
			return OR_STUFF_LACK
		end

		for idx, MatSN in matInfo.matList do
			Count = Count + LuaFnGetAvailableItemCount( sceneId, selfId, MatSN )

			-- TÕi ÕâÀï½øĞĞÅĞ¶Ï,ÒÔ¼õÉÙÑ­»·´ÎÊı(ÌØ±ğĞúngµ±²ÄÁÏ³äÔ£Ê±)
			if Count >= matInfo.count then
				bMatEnoughFlag = 1
				break
			end
		end

		if bMatEnoughFlag == 1 then
			Count = matInfo.count

			for idx, MatSN in matInfo.matList do
				DelCount = LuaFnGetAvailableItemCount( sceneId, selfId, MatSN )

				if DelCount > 0 then
					if DelCount > Count then
						DelCount = Count
					end

					LuaFnDelAvailableItem( sceneId, selfId, MatSN, DelCount )
					Count = Count - DelCount

					-- TÕi ÕâÀï½øĞĞÅĞ¶Ï,ÒÔ¼õÉÙÑ­»·´ÎÊı(ÌØ±ğĞúngµ±²ÄÁÏ³äÔ£Ê±)
					if Count < 1 then
						bMatEnoughFlag = 2
						break
					end
				end
			end
		end

		if bMatEnoughFlag == 1 then
			return OR_ERROR
		elseif bMatEnoughFlag == 2 then
			break
		end
	end

	if bMatEnoughFlag ~= 2 then
		return OR_STUFF_LACK
	end

	if LuaFnTryRecieveItem( sceneId, selfId, CompoundInfo.Product, QUALITY_MUST_BE_CHANGE ) < 0 then
		LuaFnAuditAbility(sceneId, selfId, CompoundInfo.abilityId, recipeId, 0)
		return OR_ERROR
	end

	LuaFnSendAbilitySuccessMsg( sceneId, selfId, CompoundInfo.abilityId, recipeId, CompoundInfo.Product )
	LuaFnAuditAbility(sceneId, selfId, CompoundInfo.abilityId, recipeId, 1)
	return OR_OK
end
