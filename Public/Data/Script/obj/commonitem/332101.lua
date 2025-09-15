--µÀ¾ß: ÏÉµ¤ºùÂ«<ID:31000001>
--½Å±¾ºÅ 332101
--Author: Steven.Han 17:20 2007-5-17

x332101_g_scriptId = 332101
x332101_g_MaxValue = 125000
x332101_g_IncPerAct = 5000

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x332101_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x332101_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x332101_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x332101_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
	local PlayerHP = GetHp(sceneId, selfId)
    local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
    
    --PrintStr( ""..UseValue.."/"..ValidValue.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
    
    if PlayerHP == PlayerMaxHP then
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
function x332101_OnDeplete( sceneId, selfId )
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
function x332101_OnActivateOnce( sceneId, selfId )

    local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
    local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    local ValidValue = x332101_g_MaxValue - UseValue
    
    local PlayerHP = GetHp(sceneId, selfId)
    local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
    local NeedHP = PlayerMaxHP - PlayerHP   --C¥n »Ö¸´toÕ ğµ HPÁ¿
    
    if x332101_g_IncPerAct < NeedHP then
        NeedHP = x332101_g_IncPerAct
    end
    
    --PrintStr( ""..ValidValue.."/"..x332101_g_MaxValue.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
    
    if PlayerHP == PlayerMaxHP then
        LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
    else
		local nCB = ValidValue   --SØ døng trß¾c ÈİÁ¿
		local nHPB = PlayerHP    --SØ døng trß¾c Íæ¼Òhp
		local bErased = -1       --ÎïÆ·Ğúng·ñ±»É¾³ı
		    
        if NeedHP >= ValidValue then  --¿ÉÌá¹©toÕ ğµ HP²»×ã»Ö¸´Íæ¼Ò¶¨Á¿HP
            --IncreaseHp
            IncreaseHp(sceneId, selfId, ValidValue ) --»Ö¸´¿ÉÌá¹©toÕ ğµ HP
            SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332101_g_MaxValue ) --ÉèÖÃ×î´óÈİÁ¿
            SetBagItemParam( sceneId, selfId, bagId, 8, 2, x332101_g_MaxValue ) --ÉèÖÃÒÑÓÃÈİÁ¿
            bErased = EraseItem( sceneId, selfId, bagId )
        else
            IncreaseHp(sceneId, selfId, NeedHP ) --»Ö¸´C¥n toÕ ğµ HP,´ËÊ±,Íæ¼ÒÓ¦¸ÃÉúÃüÈ«Âú
            SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332101_g_MaxValue ) --ÉèÖÃ×î´óÈİÁ¿
            SetBagItemParam( sceneId, selfId, bagId, 8, 2, UseValue + x332101_g_IncPerAct ) --ÉèÖÃÒÑÓÃÈİÁ¿
            
            if( x332101_g_MaxValue == ( UseValue + x332101_g_IncPerAct ) ) then
                bErased = EraseItem( sceneId, selfId, bagId )
            end
            
            --SetBagItemParam( sceneId, selfId, bagId, 8, 2, UseValue + NeedHP ) --ÉèÖÃÒÑÓÃÈİÁ¿
        end
        
		local szName = GetName( sceneId, selfId )
		local nGuid = LuaFnGetGUID( sceneId, selfId )
		local nHPA = GetHp(sceneId, selfId)             --sØ døng sau Íæ¼Òhp
		        
        if bErased < 0 then
			--local szLog = "Use31000001, Name=%s, Guid=%d, CB=%d, CA=%d, HPB=%d, HPA=%d, BIDX=%d"
			local szLog = "Use31000001, Tên=%s, Guid=%d, Lßşng dßşc sØ døng trß¾c=%d, Lßşng dßşc sØ døng sau=%d, SØ døng trß¾c HP=%d, sØ døng sau HP=%d, v¸ trí tay näi=%d"
			local UseValue_log = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
			local nCA = x332101_g_MaxValue - UseValue_log   --sØ døng sau ÈİÁ¿
			
			local szDebugLog = format( szLog, szName, nGuid, nCB, nCA, nHPB, nHPA, bagId )
			WriteDebugLog( sceneId, selfId, szDebugLog )
        else
			local szLog = "Use31000001, Tên=%s, Guid=%d, Lßşng dßşc sØ døng trß¾c=%d, Ğã b¸ c¡t bö, SØ døng trß¾c HP=%d, sØ døng sau HP=%d, v¸ trí tay näi=%d"
			local szDebugLog = format( szLog, szName, nGuid, nCB, nHPB, nHPA, bagId )
			WriteDebugLog( sceneId, selfId, szDebugLog )
        end
        --LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 1000 )
        
    end
    
    LuaFnRefreshItemInfo( sceneId, selfId, bagId )

	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x332101_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

function x332101_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
