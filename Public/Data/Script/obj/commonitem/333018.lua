-- ´´½¨ÈË[ QUFEI 2007-11-07 09:53 UPDATE BugID 24671 ]

-- ÈËÃñ±ÒµÀ¾ß_Tiên thiên quy tâm ğan (¸Ä³ÉÕıÈ·Tên)
-- ItemID = 31000004
-- ½Å±¾ºÅ	333018
-- °´°Ù·Ö±ÈÔö¼ÓÍæ¼ÒÉúÃüÖµ
-- ÎïÆ·¿ÉÒÔÊ¹ÓÃ20´Î
-- ÒÔºóÃ¿´ÎÊ¹ÓÃ¿Ûmµt ´Î,¿ÛÍê¾ÍÉ¾³ıÎïÆ·

x333018_g_scriptId = 333018
x333018_g_MinValue = 1000			-- HP×îĞ¡Ôö¼ÓÖµ
x333018_g_MaxHPValue = 0			-- HPÉÏÏŞÔö¼ÓÖµ
x333018_g_MaxUseCount = 20		-- ×î´óÊ¹ÓÃ´ÎÊı20´Î
x333018_g_HPValuePer = 0.1		-- HP»Ö¸´°Ù·Ö±È

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x333018_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x333018_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x333018_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x333018_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
	local PlayerHP = GetHp(sceneId, selfId)
  local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
    
  --PrintStr( ""..UseValue.."/"..ValidValue.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
  
  if PlayerHP >= PlayerMaxHP then
      LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
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
function x333018_OnDeplete( sceneId, selfId )
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
function x333018_OnActivateOnce( sceneId, selfId )

   local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
   local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
   local ValidValue = x333018_g_MaxUseCount - UseValue      
   local PlayerHP = GetHp(sceneId, selfId)
   local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
   local NeedHP = floor(PlayerMaxHP * x333018_g_HPValuePer)   --C¥n »Ö¸´toÕ ğµ HPÁ¿
   local IsDelete = 0		-- ÎïÆ·Ğúng·ñÉ¾³ı
   
   if NeedHP < x333018_g_MinValue then
       NeedHP = x333018_g_MinValue
   end
   
   --PrintStr( ""..ValidValue.."/"..x333018_g_MaxUseCount.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
   
   if PlayerHP >= PlayerMaxHP then
       LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
       return 0
   end
   
   --ÏûºÄmµt ´ÎTiên thiên quy tâm ğan
	if bagId >= 0 then		
		
		if UseValue >= x333018_g_MaxUseCount then   --¼ÇÂ¼toÕ ğµ Ê¹ÓÃ´ÎÊı´óÓÚµÈÓÚ×î´ó¿ÉÓÃ´ÎÊı,ÀíÂÛÉÏ²»¿ÉÄÜ³öÏÖ.
	    return 0
		end

		local CurValue = UseValue + 1
		
    IncreaseHp(sceneId, selfId, NeedHP ) --»Ö¸´C¥n toÕ ğµ HP
    SetBagItemParam( sceneId, selfId, bagId, 4, 2, x333018_g_MaxUseCount ) --ÉèÖÃ×î´óÈİÁ¿
    SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --ÉèÖÃÒÑÓÃÈİÁ¿
     
    --------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áth¤t bÕi
		local CheckParam1 = GetBagItemParam( sceneId, selfId, bagId, 4, 2 )   
		local CheckParam2 = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    
    if CheckParam1 ~= x333018_g_MaxUseCount then
	    return 0
		end
		if CheckParam2 ~= CurValue then
	    return 0
		end
     --------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áth¤t bÕi      
     
    LuaFnRefreshItemInfo( sceneId, selfId, bagId )	--Ë¢ĞÂ±³°üĞÅÏ¢
     
    if CurValue >= x333018_g_MaxUseCount then		--µ±Ê¹ÓÃ´ÎÊı´ïµ½×î´ó´ÎÊıÊ±,½«É¾³ı´ËÎïÆ·
        local bErased = EraseItem( sceneId, selfId, bagId )
        IsDelete = 1
         
      if bErased < 0 then      --Èç¹ûÉ¾³ıth¤t bÕi,½«²»»á²úÉúÈÎºÎĞ§¹û
		 		local strMsg = "C¥n Tiên thiên quy tâm ğan"
				x333018_ShowNotice( sceneId, selfId, strMsg)
				return 0
			end
		
   	end
   	
   	local szName = GetName( sceneId, selfId )
		local nGuid = LuaFnGetGUID( sceneId, selfId )
		
   	local szLog = "Use31000004, Tên=%s, Guid=%0X, Lßşng dßşc sØ døng trß¾c=%d, Lßşng dßşc còn th×a=%d, SØ døng trß¾c HP=%d, sØ døng sau HP=%d, v¸ trí tay näi=%d, Có hay không ğã b¸ c¡t bö=%d"
		local UseValue_log = x333018_g_MaxUseCount - CurValue	-- Lßşng dßşc còn th×a
		local PlayerNowHP = GetHp(sceneId, selfId)	-- ¼ÓÑªºóÍæ¼ÒtoÕ ğµ HP
		
		local szDebugLog = format( szLog, szName, nGuid, ValidValue, UseValue_log, PlayerHP, PlayerNowHP, bagId, IsDelete )
		WriteDebugLog( sceneId, selfId, szDebugLog )  
   	
  else
		local strMsg = "C¥n Tiên thiên quy tâm ğan"
		x333018_ShowNotice( sceneId, selfId, strMsg)
		return 0
	end

	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x333018_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

function x333018_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
