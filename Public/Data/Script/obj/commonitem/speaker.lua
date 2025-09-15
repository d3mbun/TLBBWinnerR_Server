--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ğµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂĞúng½Å±¾ÑùÀı:


--Public\Data\Script\obj\commonitem\speaker.lua
------------------------------------------------------------------------------------------
--mµt °ãÎïÆ·toÕ ğµ Ä¬ÈÏ½Å±¾
--Ğ¡À®°È
--½Å±¾ºÅ
x330003_g_ScriptId	= 330003

--Ğ§¹ûtoÕ ğµ ID
x330003_g_Impact		= -1	--Ê¹ÓÃmµt cáiÌØ¶¨toÕ ğµ ÌØĞ§±àºÅ

--Tr· v«Öµ´¦Àí¼¯
x330003_g_WGCResult	=
{
	["SUC_SEND"]			= 36,		--Cái kèn nhö ğã phát thành công
	["FAL_SEND"]			= 37,		--Ğ¡À®°È·¢ËÍth¤t bÕi: Î´Öª
	["FAL_FULL"]			= 38,		--Ğ¡À®°È·¢ËÍth¤t bÕi: ÏûÏ¢³ØÒÑÂú
}


x330003_g_itemTabIdxList = { 30505107, 30505219 }

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x330003_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x330003_IsSkillLikeScript( sceneId, selfId )
	return 1	 --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x330003_CancelImpacts( sceneId, selfId )
	return 0	 --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x330003_OnConditionCheck( sceneId, selfId )

	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return 0
	end

	--¼ì²âÎïÆ·Ğúng·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x330003_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
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
function x330003_OnDeplete( sceneId, selfId )
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
function x330003_OnActivateOnce( sceneId, selfId )

	if( -1 ~= x330003_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x330003_g_Impact, 0 )
	end
	
	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return 0
	end
	
	--ºô½Ğ·¢ËÍ½çÃæ
	BeginUICommand( sceneId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 5422 )
	return 1

end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x330003_OnActivateEachTick( sceneId, selfId )
	return 1	 --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
--C++»Øµ÷½Ó¿Ú,ÑÏ½ûClientºô½Ğ: 
--Ğ¡À®°È·¢²¼Ç°¼ì²é
--**********************************
function x330003_CallBackSpeakerBefore( sceneId, selfId )

	--»ñÈ¡ÎïÆ·ID
	local ItemIndex = 0
	if LuaFnGetAvailableItemCount( sceneId, selfId, x330003_g_itemTabIdxList[2] ) > 0 then
		ItemIndex = x330003_g_itemTabIdxList[2]
		SetMissionData( sceneId, selfId, MD_SPEAKER_STATE, x330003_g_itemTabIdxList[2] )		
	else
		ItemIndex = x330003_g_itemTabIdxList[1]
		SetMissionData( sceneId, selfId, MD_SPEAKER_STATE, x330003_g_itemTabIdxList[1] )
	end
			
	local	itmId	= ItemIndex;
	if itmId <= 0 then
		x330003_MsgBox( sceneId, selfId, "T¯c ğµ truy«n tin cüa các hÕ quá nhanh!" )
		return 0
	end
	if LuaFnDelAvailableItem( sceneId, selfId, itmId, 1 ) == 0 then
		x330003_MsgBox( sceneId, selfId, "Không có v§t ph¦m, v§t ph¦m không th¬ sØ døng ho£c b¸ khóa!" )
		return 0
	end

	return 1
end

--**********************************
--C++»Øµ÷½Ó¿Ú,ÑÏ½ûClientºô½Ğ: 
--Ğ¡À®°È·¢²¼ºóTr· v«
--**********************************
function x330003_CallBackSpeakerAfter( sceneId, selfId, retType, retParam )

	--»ñÈ¡ÎïÆ·ID
	local ItemIndex = GetMissionData( sceneId, selfId, MD_SPEAKER_STATE )

	local ItemId = 0
	for i, ItemTabIdx in x330003_g_itemTabIdxList do
		if ItemIndex == ItemTabIdx then
			ItemId = ItemIndex
			break
		end
	end
	local	itmId	= ItemId;
	if itmId <= 0 then
		return 0
	end

	if retType == x330003_g_WGCResult["SUC_SEND"] then
		if retParam > 0 then
			nMin		= floor( retParam / 60 )
			nSec		= mod( retParam, 60 )
			szTim		= nil
			if nMin > 0 then
				szTim	= nMin.." phút"..nSec.." giây"
			else
				szTim	= nSec.." giây"
			end
			x330003_MsgBox( sceneId, selfId, "Cái kèn nhö ğã phát thành công, các hÕ c¥n ğşi khoäng"..szTim.."." )
		else
			x330003_MsgBox( sceneId, selfId, "Cái kèn nhö ğã phát thành công." )
		end
	elseif retType == x330003_g_WGCResult["FAL_SEND"] then
		x330003_MsgBox( sceneId, selfId, "Cái kèn nhö ğã phát th¤t bÕi!" )
	elseif retType == x330003_g_WGCResult["FAL_FULL"] then
		x330003_MsgBox( sceneId, selfId, "Tin tÑc cüa cái kèn nhö ğã ğ¥y, vui lòng ğşi 30 giây næa r°i hãy thØ lÕi!" )
		TryRecieveItem( sceneId, selfId, itmId, QUALITY_CREATE_DEFAULT )
	end

	return 1
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x330003_MsgBox( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
