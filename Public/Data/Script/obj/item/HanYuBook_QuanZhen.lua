--È«ÕæĞĞ¹¦Yªu Quyªt

--º®Óñ´²¹mµt úÓÃtoÕ ğµ Êé....RMBÊé....

x300067_g_scriptId = 300067

x300067_g_NoRMBBuffID = 5901	--·ÇRMB¹mµt útoÕ ğµ bufftoÕ ğµ ID....
x300067_g_RMBBuffID = 5902		--RMB¹mµt útoÕ ğµ bufftoÕ ğµ ID....

x300067_g_SpouseBuffID = 5704

x300067_g_MaxUseCount = 10
x300067_g_SkillBook30_OneTime_id = 30700203; -- zchw

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300067_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x300067_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x300067_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300067_OnConditionCheck( sceneId, selfId )

	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local BagIndex = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local BookId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, BagIndex)
	local PlayerLevel = GetLevel( sceneId, selfId )
	if 30700201 == BookId then
		if PlayerLevel < 90 then
			x300067_ShowTips( sceneId, selfId, "Này yªu quyªt chï thích hşp c¤p 90 tr· lên (bao g°m c¤p 90) tu luy®n" )
			return 0
		end
	elseif 30700202 == BookId then
		if PlayerLevel >= 90 then
			x300067_ShowTips( sceneId, selfId, "Này yªu quyªt chï thích hşp c¤p 90 tr· xu¯ng (không bao g°m c¤p 90) tu luy®n" )
			return 0
		end
	elseif x300067_g_SkillBook30_OneTime_id == BookId or 30504039 == BookId then
	else
		return 0
	end

	--Này yªu quyªt · cänh tßşng phø bän sØ døng không có hi®u quä....
	if sceneId ~= 194 then
		x300067_ShowTips( sceneId, selfId, "Này yªu quyªt · cänh tßşng phø bän sØ døng không có hi®u quä" )
		return 0
	end
	
	--Äã½ñÌìÒÑ¾­Ê¹ÓÃ¹ıº®Óñ´²ĞĞ¹¦Yªu Quyªt....
	local lastDayTime = GetMissionData( sceneId, selfId, MD_HANYUBED_USEBOOK_LASTDAY )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		x300067_ShowTips( sceneId, selfId, "Ngß½i hôm nay ğã sØ døng quá Hàn Ng÷c C¯c hành công yªu quyªt" )
		return 0
	end

	--µ±Ç°Ğúng·ñÒÑÓĞ¹mµt úbuff....
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300067_g_NoRMBBuffID ) == 1 then
		x300067_ShowTips( sceneId, selfId, "Ngß½i ğã tu luy®n" )
		return 0
	end

	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300067_g_RMBBuffID ) == 1 
	 	or LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300067_g_SpouseBuffID ) == 1 then
		x300067_ShowTips( sceneId, selfId, "Ngß½i ğã tu luy®n" )
		return 0
	end

	return 1; --²»C¥n ÈÎºÎÌõ¼ş,²¢ÇÒÊ¼ÖÕTr· v«1.

end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x300067_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
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
function x300067_OnActivateOnce( sceneId, selfId )
    
  local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
  -- zchw
  local BookId = LuaFnGetItemTableIndexByIndex(sceneId, selfId, bagId) 
  if BookId == x300067_g_SkillBook30_OneTime_id or 30504039 == BookId then
  else
  
	  local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
	  local ValidValue = x300067_g_MaxUseCount - UseValue
	
		if UseValue >= x300067_g_MaxUseCount then   --¼ÇÂ¼toÕ ğµ Ê¹ÓÃ´ÎÊı´óÓÚµÈÓÚ×î´ó¿ÉÓÃ´ÎÊı,ÀíÂÛÉÏ²»¿ÉÄÜ³öÏÖ.
		    return 0
		end
	
		local CurValue = UseValue + 1
		SetBagItemParam( sceneId, selfId, bagId, 4, 2, x300067_g_MaxUseCount ) --ÉèÖÃ×î´ó´ÎÊı
		SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --ÉèÖÃÒÑÓÃ´ÎÊı
		LuaFnRefreshItemInfo( sceneId, selfId, bagId )
		    
		if CurValue >= x300067_g_MaxUseCount then  --µ±Ê¹ÓÃ´ÎÊı´ïµ½×î´ó´ÎÊıÊ±,½«É¾³ı´ËÎïÆ·
			local ret = EraseItem( sceneId, selfId, bagId )
			if ret < 0 then	 --Èç¹ûÉ¾³ıth¤t bÕi,½«²»»á¸øÍæ¼Òbuff
					return 0
			end
		end
		
	end

	--¸øÍæ¼Òº®Óñ´²¹mµt úbuff....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300067_g_RMBBuffID, 0)

	CallScriptFunction( 808072, "OnPlayerUseHanYuBook", sceneId, selfId )

	--¼ÇÂ¼½ñÌìÓÃ¹ıÊéÁË....
	local CurDayTime = GetDayTime()
	SetMissionData( sceneId, selfId, MD_HANYUBED_USEBOOK_LASTDAY, CurDayTime )

	return 1

end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x300067_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end


function x300067_ShowTips( sceneId, selfId, msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
