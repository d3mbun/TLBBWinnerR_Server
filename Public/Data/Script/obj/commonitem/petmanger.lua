--petmanger.lua
------------------------------------------------------------------------------------------
--mµt °ãÎïÆ·toÕ ğµ Ä¬ÈÏ½Å±¾
--ÊŞÀ¸
--½Å±¾ºÅ
x335805_g_ScriptId	= 335805

--Ğ§¹ûtoÕ ğµ ID
x335805_g_Impact		= -1	--Ê¹ÓÃmµt cáiÌØ¶¨toÕ ğµ ÌØĞ§±àºÅ

--Ó¦ÓÃµ¥Ôª
x335805_g_UseMax		= 4
x335805_g_UseUnit		=
{
	[30509500]				= 1,	--ÊŞÀ¸1c¤p
	[30509501]				= 2,	--ÊŞÀ¸2c¤p
	[30509502]				= 3,	--ÊŞÀ¸3c¤p
	[30509503]				= 4,	--ÊŞÀ¸4c¤p
}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335805_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x335805_IsSkillLikeScript( sceneId, selfId )
	return 1	 --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x335805_CancelImpacts( sceneId, selfId )
	return 0	 --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x335805_OnConditionCheck( sceneId, selfId )
	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId			= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	numExtra	= x335805_g_UseUnit[ GetItemTableIndexByIndex( sceneId, selfId, bagId ) ]
	if numExtra == nil then
		return 0
	end

	--¼ì²âÎïÆ·Ğúng·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x335805_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end

	--ÅĞ¶ÏÍæ¼ÒÏÖTÕi Ê¹ÓÃÊŞÀ¸toÕ ğµ Çé¿ö
	if GetPetNumExtra( sceneId, selfId ) >= x335805_g_UseMax then
		x335805_MsgBox( sceneId, selfId, "Không gian ô Trân thú ğã ğÕt thßşng hÕn, không th¬ gia tång không gian." )
		return 0
	end
	
	--modify by xindefeng
	--modify by dun.liu 2008-04-11
	local curShouLanLevel = GetPetNumExtra( sceneId, selfId )
	if curShouLanLevel ~= (numExtra - 1) then
		local szMsg = format("Ngß½i ğã sØ døng thú lan c¤p %d, nªu mu¯n gia tång s¯ lßşng Trân thú mang theo, thïnh sØ døng Thú lan c¤p %d.", curShouLanLevel, curShouLanLevel+1)
		x335805_MsgBox( sceneId, selfId, szMsg)
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
function x335805_OnDeplete( sceneId, selfId )
--if( 0 < LuaFnDepletingUsedItem( sceneId, selfId ) ) then
--	return 1
--end
--return 0

	return 1
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335805_OnActivateOnce( sceneId, selfId )
	if( -1 ~= x335805_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x335805_g_Impact, 0 )
	end

	local	nBagIndex	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local	numExtra	= x335805_g_UseUnit[ GetItemTableIndexByIndex( sceneId, selfId, nBagIndex ) ]
	local	szTran		= GetBagItemTransfer( sceneId, selfId, nBagIndex )
	if numExtra ~= nil and EraseItem( sceneId, selfId, nBagIndex ) == 1 then
		if SetPetNumExtra( sceneId, selfId, numExtra ) == 1 then
			if numExtra == 1 then	--modify by xindefeng
				x335805_MsgBox( sceneId, selfId, "Không gian Trân thú mang theo gia tång lên "..GetPetNumMax(sceneId, selfId)..", nªu mu¯n gia tång thêm không gian c¥n sØ døng thú lan cao c¤p h½n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#HSØ døng #W#{_INFOMSG%s}#H, #Hcäi thi®n không gian trân thú, #Hkhä nång mang theo trân thú s¯ lßşng ğÕt t¾i #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 2 then
				x335805_MsgBox( sceneId, selfId, "Không gian Trân thú mang theo gia tång lên "..GetPetNumMax(sceneId, selfId)..", nªu mu¯n gia tång thêm không gian c¥n sØ døng thú lan cao c¤p h½n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#HSØ døng #W#{_INFOMSG%s}#H, #Hcäi thi®n không gian trân thú, #Hkhä nång mang theo trân thú s¯ lßşng ğÕt t¾i #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 3 then
				x335805_MsgBox( sceneId, selfId, "Không gian Trân thú mang theo gia tång lên "..GetPetNumMax(sceneId, selfId)..", nªu mu¯n gia tång thêm không gian c¥n sØ døng thú lan cao c¤p h½n." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#HSØ døng #W#{_INFOMSG%s}#H, #Hcäi thi®n không gian trân thú, #Hkhä nång mang theo trân thú s¯ lßşng ğÕt t¾i #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			elseif numExtra == 4 then
				x335805_MsgBox( sceneId, selfId, "Không gian Trân thú mang theo gia tång lên "..GetPetNumMax(sceneId, selfId)..", s¯ lß½ng không gian ğã ğÕt ğªn thßşng hÕn." )	--modify by xindefeng
				strMsg = format("#W#{_INFOUSR%s}#HSØ døng #W#{_INFOMSG%s}#H, #Hcäi thi®n không gian trân thú, #Hkhä nång mang theo trân thú s¯ lßşng ğÕt t¾i #W%d#H.", LuaFnGetName(sceneId, selfId), szTran, GetPetNumMax(sceneId, selfId))
			end
			-- AddGlobalCountNews( sceneId, strMsg )	--·¢H® th¯ng¹«¸æ
		end
	end
	
	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335805_OnActivateEachTick( sceneId, selfId )
	return 1	 --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x335805_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
