--´´½¨ÈË:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]

--Rùa-Thö thi chÕy»î¶¯¹¥»÷µÀ¾ßÊ¹ÓÃ½Å±¾


--½Å±¾ºÅ
x808087_g_scriptId = 808087

--C¥n toÕ ğµ µÈc¤p
--C¥n toÕ ğµ ÈÎÎñID
x808087_g_MissionID = 1000

--C¥n toÕ ğµ Ğ§¹ûID	»ğ°ÑÊ¹Õß
x808087_g_ImpactID 	= 5929

--Ğ§¹ûtoÕ ğµ ID	Èç¹ûÍæ¼ÒÉíÉÏÓĞ SelfimpactID,ÔòÊ¹ÓÃ impactId01,·ñÔòÊ¹ÓÃ impactId02
x808087_g_itemList = {}
x808087_g_itemList[30505210] = { SelfimpactID=5934, impactId01=5939, impactId02=0		 }			-- î§Ë¯³æ
x808087_g_itemList[30505212] = { SelfimpactID=5933, impactId01=0, 	 impactId02=5938 }			-- Íæ¾ßòÚò¼


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x808087_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x808087_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x808087_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x808087_OnConditionCheck( sceneId, selfId )

	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	--¼ì²âÊ¹ÓÃÕßÓĞÃ»ÓĞNhi®m vø Rùa-Thö thi chÕy
	if IsHaveMission( sceneId, selfId, x808087_g_MissionID ) <= 0 then
		x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_011}" )
		return 0
	end
	
	--¼ì²âÊ¹ÓÃÕßµÀ¾ßÊ¹ÓÃÌõ¼ş
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808087_g_ImpactID) == 0 then
		x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808087_g_itemList[itemTblIndex];
	if not itemCur then
		x808087_NotifyFailTips(sceneId, selfId, "Chßa m· ğÕo cø, không th¬ sØ døng.");
		return 0;
	end

	--¼ìÑé¹¥»÷Ä¿±êÊ¹ÓÃÌõ¼ş
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then				--´òtoÕ ğµ ĞúngÍæ¼Ò....

		-- î§Ë¯³æ,Íæ¾ßòÚò¼²»ÄÜ¶Ô×Ô¼ºÊ¹ÓÃ....
		if itemTblIndex == 30505210 or itemTblIndex == 30505212 then
			if selfId == targetId then
				LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
				return 0
			end
		end

		--¼ì²â±»¹¥»÷ÕßÓĞÃ»ÓĞNhi®m vø Rùa-Thö thi chÕy
		if IsHaveMission( sceneId, targetId, x808087_g_MissionID ) <= 0 then
			x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_061}" )
			return 0
		end
		
		--¼ì²â±»¹¥»÷ÕßµÀ¾ßÊ¹ÓÃÌõ¼ş
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, targetId, x808087_g_ImpactID) == 0 then
			x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_061}" )
			return 0
		end
	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 0

	end

	return 1

end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x808087_OnDeplete( sceneId, selfId )
	if(LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x808087_OnActivateOnce( sceneId, selfId )
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808087_g_itemList[itemTblIndex];
	if not itemCur then
		x808087_NotifyFailTips(sceneId, selfId, "Chßa m· ğÕo cø, không th¬ sØ døng.");
		return 0;
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--´òtoÕ ğµ ĞúngÆäËûÍæ¼Ò....
		-- ¼ì²â±»¹¥»÷ÕßImpact
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, targetId, itemCur.SelfimpactID) ~= 0 then
			if itemCur.impactId01 ~= 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, itemCur.impactId01, 0);
			end
		else
			if itemCur.impactId02 ~= 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, itemCur.impactId02, 0);
			end
		end
		
	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 1

	end

	return 1;

end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x808087_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
-- ĞÑÄ¿ÌáÊ¾
--**********************************
function x808087_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
