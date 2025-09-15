--07Ê¥µ®Ôªµ©

--ĞÒ¸£Ñ©ÇòÊ¹ÓÃ½Å±¾


--½Å±¾ºÅ
x300064_g_scriptId = 300064

x300064_g_GiftTbl = {

	30501101,
	30501102,
	30501015,
	30008022,
	30008023,
	30008024,
	30505034,
	30505035,
	30505036,
	30505037

}


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300064_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x300064_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x300064_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300064_OnConditionCheck( sceneId, selfId )

	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--´òtoÕ ğµ ĞúngÍæ¼Ò....

			--²»ÄÜ¶Ô×Ô¼ºÊ¹ÓÃ....
		if selfId == targetId then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0
		end

	elseif objType == 2 then--´òtoÕ ğµ ĞúngNPC....

		--Èç¹ûĞúng¶ÔNPCÊ¹ÓÃtoÕ ğµ »°....¼ì²âËüĞúng·ñĞúngÑ©ÈË....
		local ret = CallScriptFunction( 050023, "CanThrowSnowBall", sceneId, selfId, targetId )
		if ret ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
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
function x300064_OnDeplete( sceneId, selfId )
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
function x300064_OnActivateOnce( sceneId, selfId )
	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--´òtoÕ ğµ ĞúngÆäËûÍæ¼Ò....

		--1/12¸ÅÂÊ(9%)´òÖĞ¶Ô·½....¸ø¶Ô·½mµt cáiÌØĞ§....²¢ĞÑÄ¿ÌáÊ¾....
		local rand = random(100)
		if rand < 9 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 10482, 0)
				BeginEvent( sceneId )
					AddText( sceneId, "Ngß½i b¸ "..LuaFnGetName(sceneId,selfId).."hÕnh phúc tuyªt c¥u ném trúng!" )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, targetId )
		end

	elseif objType == 2 then--´òtoÕ ğµ ĞúngÑ©ÈË....

		local ret = CallScriptFunction( 050023, "OnHitBySnowBall", sceneId, selfId, targetId )
		if ret == 1 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 10481, 0)
		else
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 1
		end

	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 1

	end

	--40c¤p(º¬)Ê¹ÓÃ±¾ÎïÆ·ÓĞmµt ¶¨¼¸ÂÊ»á ğÕt ğßşc½±Æ·....
	if GetLevel(sceneId, selfId) < 40 then
		return 1
	end

	--1/500 ğÕt ğßşc¶«Î÷....
	local GoodLuck = random(5000)
	if GoodLuck > 10 then
		return 1
	end

	local idx = random( getn(x300064_g_GiftTbl) )
	local ItemId = x300064_g_GiftTbl[idx]
	local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then

		local playerName = GetName(sceneId, selfId)
		local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)

		msg = format("#{_INFOUSR%s}#P ğem hÕnh phúc tuyªt c¥u ném ği ra ngoài, #{_INFOMSG%s}#P t× trên tr¶i r¾t xu¯ng, mµt #{_INFOUSR%s}#P.", playerName, transfer, playerName )
		BroadMsgByChatPipe(sceneId, selfId, msg, 4)

	end

	return 1;

end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x300064_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end
