--ÃÅÅÉÕÙ¼¯Áî½Å±¾.×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ğµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂĞúng½Å±¾ÑùÀı:


--340001.lua
------------------------------------------------------------------------------------------
--mµt °ãÎïÆ·toÕ ğµ Ä¬ÈÏ½Å±¾

--½Å±¾ºÅ
x340001_g_scriptId = 340001 --ÁÙÊ±Ğ´Cái này ,ÕæÕıÓÃtoÕ ğµ Ê±ºòmµt ¶¨Òª¸Ä.

--C¥n toÕ ğµ µÈc¤p

--Ğ§¹ûtoÕ ğµ ID
x340001_g_Impact1 = 340001 --ÁÙÊ±Ğ´Cái này 
x340001_g_Impact2 = -1 --²»ÓÃ

x340001_g_Impact_NotTransportList = { 5929 } -- ½ûÖ¹´«ËÍtoÕ ğµ Impact
x340001_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}" } -- ½ûÖ¹´«ËÍtoÕ ğµ ImpactÌáÊ¾ĞÅÏ¢

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x340001_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x340001_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x340001_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x340001_OnConditionCheck( sceneId, selfId )

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			strText = "Anh ğang trong trÕng thái Tào v§n, không th¬ sØ døng chÑc nång truy«n tin."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
	
	-- ¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ğµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Trên ngß¶i ngß½i có ngân phiªu, ğang chÕy hàng! không th¬ sØ døng chÑc nång truy«n tin." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x340001_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x340001_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
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
function x340001_OnDeplete( sceneId, selfId )

  local Level = GetLevel( sceneId, selfId )
  local MenPai = LuaFnGetMenPai( sceneId, selfId )
  
  if Level < 10 then
      return 0
  end
  
  if MenPai < 0 or MenPai >8 then           
 		  BeginEvent(sceneId)
			  strText = format("Không gia nh§p môn phái, không ğßşc sØ døng v§t ph¦m này")
			  AddText(sceneId,strText)
 		  EndEvent(sceneId)

 		  DispatchMissionTips(sceneId,selfId)
 		  
      return 0
  end
  
  if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent(sceneId)
			strText = "Anh ğang trong trÕng thái Tào v§n, không th¬ sØ døng chÑc nång truy«n tin."
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return 0
	end
  
  	-- ¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ğµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, 40002000)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "Trên ngß¶i ngß½i có ngân phiªu, ğang chÕy hàng! không th¬ sØ døng chÑc nång truy«n tin." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return 0
	end
  
  --¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x340001_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x340001_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
  
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end



function x340001_MenpaiTransfer( sceneId, selfId )
            
    local MenPai = LuaFnGetMenPai( sceneId, selfId )
    
    local TargetScene
    local x
    local z
    
    if( MenPai >= 0 and MenPai <=8 ) then
        if 0 == MenPai then      --Thiªu Lâm
            TargetScene = 9
            x = 93
            z = 72  
        end
        
        if 1 == MenPai then      --Minh Giáo
            TargetScene = 11
            x = 106
            z = 59          
        end

        if 2 == MenPai then      --Cái Bang
            TargetScene = 10
            x = 91
            z = 100          
        end

        if 3 == MenPai then      --Võ Ğang
            TargetScene = 12
            x = 80
            z = 87                  
        end

        if 4 == MenPai then      --Nga My
            TargetScene = 15
            x = 96
            z = 48                  
        end

        if 5 == MenPai then      --Tinh Túc
            TargetScene = 16
            x = 86
            z = 73                  
        end

        if 6 == MenPai then      --ĞÕi Lı
            TargetScene = 13
            x = 96
            z = 88                  
        end

        if 7 == MenPai then      --Thiên S½n
            TargetScene = 17
            x = 89
            z = 47                  
        end

        if 8 == MenPai then      --ÏûÒ£
            TargetScene = 14
            x = 122
            z = 141                  
        end        
        
       
       if sceneId == TargetScene then
           
           SetPos( sceneId, selfId, x, z )
           return
       end
       
        CallScriptFunction((400900), "TransferFunc",sceneId, selfId, TargetScene, x, z) 
		--Êı¾İÍ³¼Æ
		LuaFnAuditItemUseMenPaiZhaoJiLing(sceneId, selfId, MenPai)
        
    
    end        
    
    
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x340001_OnActivateOnce( sceneId, selfId )

	if(-1~=x340001_g_Impact1) then
		--LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x340001_g_Impact1, 0);
		x340001_MenpaiTransfer( sceneId, selfId )
	end
	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x340001_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end
