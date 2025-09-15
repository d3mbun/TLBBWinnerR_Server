--Ð»ãp 2009-02-17

--²Î¿¼JiaoZi.lua


------------------------------------------------------------------------------------------
--mµt °ãÎïÆ·toÕ ðµ Ä¬ÈÏ½Å±¾

--½Å±¾ºÅ
x889031_g_scriptId = 889031

--bufftoÕ ðµ ÁÐ±í

x889031_g_Impact = {
					[38000006] = { 4849, 4843, 4853, 4852, 4837},
					[38000007] = { 4868, 4866, 4828, 4846, 5723},
					[38000008] = { 4860, 4861, 4872, 4873, 4847}
					}

x889031_g_GiveItem =
{
	30509057,
	30509023,
	30509024,
	30509016,
	30509020,
	30509015,
	30509017,
	30509018,
	30509019,
	30505040,
	30505035,
	30505037,
	30505038,
	30505039,
	30505034,
	30505041
}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x889031_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý
end

--**********************************
--Cái này ÎïÆ·toÕ ðµ Ê¹ÓÃ¹ý³ÌÐúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ÐÐ¿ªÊ¼Ê±¼ì²âCái này º¯ÊýtoÕ ðµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ðµ ÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ðµ ÎïÆ·,¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ£»Tr· v«0: ºöÂÔºóÃætoÕ ðµ ²Ù×÷.
--**********************************
function x889031_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böÐ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ð§¹û,²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»Tr· v«0: Ã»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û,¼ÌÐøÖ´ÐÐ.
--**********************************
function x889031_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: Ìõ¼þ¼ì²âÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: Ìõ¼þ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--**********************************
function x889031_OnConditionCheck( sceneId, selfId )

	--¼ì²éÐúng·ñ¿ÉÒÔ±»Ê¹ÓÃ
	if x889031_ItemCheckAndNotice( sceneId, selfId ) ~=1 then
		return 0
	end

	return 1;
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--×¢Òâ: Õâ²»¹â¸ºÔðÏûºÄtoÕ ðµ ¼ì²âÒ²¸ºÔðÏûºÄtoÕ ðµ Ö´ÐÐ.
--**********************************
function x889031_OnDeplete( sceneId, selfId )
	--²»ÏûºÄ,ÒòÎªºó±ß»¹ÒªÊ¹ÓÃ´æµ½ÎïÆ·ÉÏtoÕ ðµ ÐÅÏ¢
	return 1;
end

--**********************************
--Ö»»áÖ´ÐÐmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼þ¶¼Thöa mãntoÕ ðµ Ê±ºò),¶øÒýµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ðµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ÐÐÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x889031_OnActivateOnce( sceneId, selfId )

	--¼ì²éÐúng·ñ¿ÉÒÔ±»Ê¹ÓÃ
	if x889031_ItemCheckAndNotice( sceneId, selfId ) ~=1 then
		return
	end
	
	--¿ÛÎïÆ·
	if LuaFnDepletingUsedItem(sceneId, selfId) <= 0 then
		return
	end

	--¸øÑÌ»¨
	local rollItem = random( 1, getn( x889031_g_GiveItem ) )
	local itemIndex = x889031_g_GiveItem[rollItem]
	TryRecieveItem( sceneId, selfId, itemIndex, QUALITY_MUST_BE_CHANGE )
	
	--¼Ó×Ô¼º¼Ó±äÉíBUFF,²»Í¬toÕ ðµ ÎïÆ·¼Ó²»Í¬toÕ ðµ BUFF
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	
	local impactList = x889031_g_Impact[itemTblIndex]
	if impactList ~= nil then
		local rollImpact = random( 1, getn( impactList ) )
		local impactId = impactList[rollImpact]
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactId, 0);
	end
	
	--ÌáÊ¾
	x889031_ShowMsg( sceneId, selfId, "#{TWYRJ_090217_1}" )
	
	return 1;
end

--**********************************
--Òýµ¼ÐÄÌø´¦ÀíÈë¿Ú: 
--Òýµ¼¼¼ÄÜ»áTÕi Ã¿´ÎÐÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌÐøÏÂ´ÎÐÄÌø£»0: ÖÐ¶ÏÒýµ¼.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x889031_OnActivateEachTick( sceneId, selfId )
	return 1; --²»ÐúngÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end

function x889031_ItemCheckAndNotice( sceneId, selfId )
	
	--Ð£ÑéÊ¹ÓÃtoÕ ðµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	-- ði¬mµ½SØ døng v§t ph¦m toÕ ðµ trí tay näi
	local bagIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagIndex < 0 then
		return 0
	end
	
	--×Ô¼ºtoÕ ðµ ¶«Î÷²»ÄÜ¸ø×Ô¼ºÓÃ
	local ownGUID	= GetBagItemParam( sceneId, selfId, bagIndex, 4, 2 ) + 2147483648
	local selfGUID = LuaFnGetGUID( sceneId, selfId )
	
	if ownGUID == selfGUID then
		x889031_ShowMsg( sceneId, selfId, "#{TWYRJ_090217_13}" )
		return 0
	end
	
	return 1
end

--**********************************
--ÐÅÏ¢ÌáÊ¾
--**********************************
function x889031_ShowMsg( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent()
	DispatchMissionTips( sceneId, selfId )
	
end
