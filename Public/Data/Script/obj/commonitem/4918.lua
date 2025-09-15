--×¢Òâ£º

--ÎïÆ·¼¼ÄÜµÄÂß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ


--½Å±¾:

--ÒÔÏÂÊÇ½Å±¾ÑùÀı:


--4918.lua
------------------------------------------------------------------------------------------
--Ò»°ãÎïÆ·µÄÄ¬ÈÏ½Å±¾

--½Å±¾ºÅ
x334918_g_scriptId = 334918 --ÁÙÊ±Ğ´Õâ¸ö,ÕæÕıÓÃµÄÊ±ºòÒ»¶¨Òª¸Ä.

--ĞèÒªµÄµÈ¼¶
x334918_g_levelRequire = 1
--AE·¶Î§°ë¾¶
x334918_g_radiusAE = 3.0
--AEµÄÄ¿±ê¹ØÏµ±ê¼Ç
x334918_g_standFlag = 1 -- 2:¶ÓÓÑ£¬ 1£ºÓÑ¾ü£¬ -1£ºµĞ¾ü
--AEÓ°ÏìÊıÄ¿ÏŞÖÆ
x334918_g_effectCount = 4 -- -1:²»ÏŞÖÆ
--Ğ§¹ûµÄID
x334918_g_Impact1 = 4918 --ÁÙÊ±Ğ´Õâ¸ö
x334918_g_Impact2 = -1 --²»ÓÃ

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x334918_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ı³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ĞĞ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊıµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ĞĞ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜµÄÖ´ĞĞ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x334918_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ĞèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûĞ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ğ§¹û£¬²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»·µ»Ø0£ºÃ»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û£¬¼ÌĞøÖ´ĞĞ¡£
--**********************************
function x334918_CancelImpacts( sceneId, selfId )
	return 0; --²»ĞèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÌõ¼ş¼ì²âÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÌõ¼ş¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--**********************************
function x334918_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if(0<=targetId) then
		-- Ä¿±ê±ØĞëÊÇÓÑ¾üµÄ¼ì²â
		if LuaFnIsFriend(sceneId, targetId, selfId) ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0;
		end
		
		if LuaFnIsFriend(sceneId, selfId, targetId ) ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0;
		end
		
    local SelfSex = LuaFnGetSex(sceneId, selfId)
    local TargetSex = LuaFnGetSex(sceneId, targetId)                
    if( SelfSex == TargetSex ) then
      LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
      
      return 0;                                            
    end 
       
		-- Ä¿±ê±ØĞëÊÇµĞ¾üµÄ¼ì²â
--		if(1~=LuaFnUnitIsEnemy(sceneId, selfId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
		-- Ä¿±ê±ØĞëÊÇ¶ÓÓÑµÄ¼ì²â
--		if(1~=LuaFnUnitIsPartner(sceneId, selfId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
		-- Ä¿±ê¼¶±ğµÄ¼ì²â
--		if(g_LevelRequire<=LuaFnGetLevel(sceneId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end
--		if(g_LevelRequire>=LuaFnGetLevel(sceneId, targetId)) then
--			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
--			return 0;
--		end

	end
	
	return 1; --²»ĞèÒªÈÎºÎÌõ¼ş£¬²¢ÇÒÊ¼ÖÕ·µ»Ø1¡£
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾İÕâ¸öº¯ÊıµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ĞĞ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ı£¬¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖĞ¶ÏºóĞøÖ´ĞĞ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔğÏûºÄµÄ¼ì²âÒ²¸ºÔğÏûºÄµÄÖ´ĞĞ¡£
--**********************************
function x334918_OnDeplete( sceneId, selfId )
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
--		x334918_MsgBox( sceneId, selfId, "ÄãÃ»ÓĞ×ã¹»µÄ±³°ü¿Õ¼ä" )
--		return 0
	end

	if LuaFnGetPropertyBagSpace( sceneId, targetId ) < 1 then
		x334918_MsgBox( sceneId, selfId, "Tay näi cüa ğ¯i phß½ng không ğü ch²!" )
		return 0
	end
	
	local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 30509011);
	local szTransfer = GetBagItemTransfer(sceneId,selfId, nItemBagIndex);

	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	local szNameSelf = GetName( sceneId, selfId );
	local szNameTarget = GetName( sceneId, targetId );
	
	local randMessage = random(3);
	local message;

	if randMessage == 1 then
		message = format("@*;SrvMsg;SCA:#{_INFOUSR%s}#{GiveRose_00}#{_INFOMSG%s}#{GiveRose_01}#{_INFOUSR%s}#{GiveRose_02}", szNameSelf, szTransfer, szNameTarget );
	elseif randMessage == 2 then		
		message = format("@*;SrvMsg;SCA:#{_INFOUSR%s}#{GiveRose_03}#{_INFOMSG%s}#{GiveRose_04}#{_INFOUSR%s}#{GiveRose_05}", szNameSelf, szTransfer, szNameTarget );
	else		
		message = format("@*;SrvMsg;SCA:#{_INFOUSR%s}#{GiveRose_03}#{_INFOMSG%s}#{GiveRose_06}#{_INFOUSR%s}#{GiveRose_07}", szNameSelf, szTransfer, szNameTarget );
	end
	
	AddGlobalCountNews( sceneId, message )
			
	if(LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--Ö»»áÖ´ĞĞÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒıµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x334918_OnActivateOnce( sceneId, selfId )
	if(-1~=x334918_g_Impact1) then
		--¸ø×Ô¼º¼ÓĞ§¹û
--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x334918_g_Impact1, 0);
		--¸øÄ¿±ê¼ÓĞ§¹û
		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
		if(0<=targetId) then
			if LuaFnIsFriend(sceneId, targetId, selfId) > 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, x334918_g_Impact1, 0);
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, 66, 0);
				
				local nFriendPoint = LuaFnGetFriendPoint( sceneId, selfId, targetId );
				if nFriendPoint >= 9999 then
			
					BeginEvent(sceneId)
						AddText(sceneId, "Ğµ häo hæu cüa các hÕ và ğ¯i phß½ng ğã ğÕt mÑc cñc hÕn.");
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)	
				
				else
				
					BeginEvent(sceneId)
					AddText(sceneId, "Ğµ thân thi®n giæa các hÕ và ğ¯i phß½ng tång 5000");
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					
				end
			  
			  local	namSelf		= GetName( sceneId, selfId )
			  local	namTarget	= GetName( sceneId, targetId )
			

			--¸ø¶Ô·½ÓÃ¹âĞ§
			LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 18, 0);			

					  
			  --½±Àø
				local	lstBounty	=
				{
					[0]	= { 10160126,	228, "Mai Quª Tiên TØ" },		--Å®×°
					[1]	= { 10160126,	227, "Tình Thánh" },				--ÄĞ×°
				}
			  local	untBounty
			  if GetSex( sceneId, selfId ) == 0 then
			  	untBounty	= lstBounty[0]
			  else
			  	untBounty	= lstBounty[1]
			  end
			  if TryRecieveItem( sceneId, selfId, untBounty[1], 1 ) >= 0 then
			  	x334918_MsgBox( sceneId, selfId, "Các hÕ nh§n ğßşc mµt "..GetItemName( sceneId, untBounty[1] ) )
			  end
				AwardTitle( sceneId, selfId, 8, untBounty[2] )
				LuaFnDispatchAllTitle( sceneId, selfId )		--¸üĞÂËùÓĞ³ÆºÅµ½CLIENT
			  x334918_MsgBox( sceneId, selfId, "Các hÕ nh§n ğßşc ["..untBounty[3].."] danh hi®u." )

			  if GetSex( sceneId, targetId ) == 0 then
			  	untBounty	= lstBounty[0]
			  else
			  	untBounty	= lstBounty[1]
			  end
			  if TryRecieveItem( sceneId, targetId, untBounty[1], 1 ) >= 0 then
			  	x334918_MsgBox( sceneId, targetId, "Các hÕ nh§n ğßşc mµt "..GetItemName( sceneId, untBounty[1] ) )
			  end
			  AwardTitle( sceneId, targetId, 8, untBounty[2] )
			  LuaFnDispatchAllTitle( sceneId, targetId )	--¸üĞÂËùÓĞ³ÆºÅµ½CLIENT
			  x334918_MsgBox( sceneId, targetId, "Các hÕ nh§n ğßşc ["..untBounty[3].."] danh hi®u." )

			end
		end
		--×Ô¼ºÖÜÎ§AE
--		local posX,posZ = LuaFnGetUnitPosition(sceneId, selfId)
--		LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x334918_g_radiusAE, x334918_g_standFlag, x334918_g_levelRequire, x334918_g_effectCount, x334918_g_Impact1, 0)
		--Ö¸¶¨µØµãÖÜÎ§AE
--		local posX,posZ = LuaFnGetTargetPosition(sceneId, selfId)
--		LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x334918_g_radiusAE, x334918_g_standFlag, x334918_g_levelRequire, x334918_g_effectCount, x334918_g_Impact1, 0)
		--Ä¿±ê¸öÌåÖÜÎ§AE
--		local targetId = LuaFnGetTargetObjID(sceneId, selfId)
--		if(0<=targetId) then
--			local posX,posZ = LuaFnGetUnitPosition(sceneId, targetId)
--			LuaFnSendImpactAroundPosition(sceneId, selfID, posX, posZ, x334918_g_radiusAE, x334918_g_standFlag, x334918_g_levelRequire, x334918_g_effectCount, x334918_g_Impact1, 0)
--		end

	end
	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú£º
--Òıµ¼¼¼ÄÜ»áÔÚÃ¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌĞøÏÂ´ÎĞÄÌø£»0£ºÖĞ¶ÏÒıµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúĞ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x334918_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x334918_MsgBox( sceneId, selfId, Msg )
	if Msg == nil then
		return
	end
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
