--ÇéÈË½Ú»î¶¯

--°®ÉñÖ®¼ıÊ¹ÓÃ½Å±¾


--½Å±¾ºÅ
x300071_g_scriptId = 300071

--×î´óÊ¹ÓÃ´ÎÊı
x300071_UseMaxCount = 3

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300071_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x300071_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x300071_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300071_OnConditionCheck( sceneId, selfId )
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
			x300071_MsgBox( sceneId, selfId, "#{QRJ_81009_19}" )
			return 0
		end
		
			--ÅĞ¶ÏÁ½ÈËtoÕ ğµ ĞÔ±ğ
			
		if (LuaFnGetSex(sceneId,selfId) == LuaFnGetSex(sceneId,targetId)) then
			x300071_MsgBox( sceneId, selfId, "#{QRJ_81009_20}")
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
function x300071_OnDeplete( sceneId, selfId )
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
function x300071_OnActivateOnce( sceneId, selfId )
	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--´òtoÕ ğµ ĞúngÆäËûÍæ¼Ò....
		
			--±³°üÖĞtoÕ ğµ Î»ÖÃ
		local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
		if bagId < 0 then
			return 1
		end 
			--¼ì²âÎïÆ·Ğúng·ñ¼ÓËø
		if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
			x300071_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
			return 1
		end
		
		local	CurUseCount			--°®ÉñÖ®¼ıtoÕ ğµ Ê£ÓàÊ¹ÓÃ´ÎÊı
		CurUseCount		= GetBagItemParam( sceneId, selfId, bagId, 8, 2 )	--»ñÈ¡Ê£ÓàÊ¹ÓÃ´ÎÊı	
		if(CurUseCount == 0)then	--µÚmµt ´ÎÊ¹ÓÃ
			CurUseCount = x300071_UseMaxCount		
		end
		
		if (CurUseCount>0) then
			CurUseCount = CurUseCount - 1
			if(CurUseCount <= 0) then
				local ret = EraseItem( sceneId, selfId, bagId )		
				if ret ~= 1 then
					return 0--É¾³ıth¤t bÕi
				end
			end
			--±£´æmµt ÏÂÊı¾İ
			SetBagItemParam( sceneId, selfId, bagId, 4, 2, x300071_UseMaxCount )--±£´æ×î´óÊ¹ÓÃ´ÎÊı
			SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurUseCount )--±£´æ»¹¿ÉÒÔÊ¹ÓÃ´ÎÊı
			
			--Ë¢ĞÂClient¶ËtoÕ ğµ ±³°üÎïÆ·ĞÅÏ¢
			LuaFnRefreshItemInfo( sceneId, selfId, bagId )
			
			LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 74, 1500) 
			x300071_MsgBox( sceneId, targetId, LuaFnGetName(sceneId,selfId).."#{QRJ_81009_22}" )
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
function x300071_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x300071_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
