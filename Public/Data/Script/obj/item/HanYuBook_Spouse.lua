--·òÆŞĞĞ¹¦Yªu Quyªt

x889024_g_scriptId = 889024

x889024_g_NoRMBBuffID = 5901  --·ÇRMB
x889024_g_RMBBuffID = 5902		--RMB¹mµt útoÕ ğµ bufftoÕ ğµ ID....
x889024_g_SpouseBuffID = 5704


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x889024_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x889024_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x889024_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x889024_OnConditionCheck( sceneId, selfId )

	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local lastDayTime = GetMissionData( sceneId, selfId, MD_TW_HANYU_SPOUSEBOOK_LASTUSEDAY )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_2}" )
		return 0
	end
	
	if LuaFnIsMarried(sceneId, selfId) == 0 then
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_3}" )
		return 0
	end

	if sceneId ~= 194 then
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_4}" )
		return 0
	end
	
	local spouseGuid = LuaFnGetSpouseGUID(sceneId, selfId);
	if LuaFnGuid2ObjId(sceneId, spouseGuid) == -1 then		
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_5}" )
		return 0
	end

	--µ±Ç°Ğúng·ñÒÑÓĞ¹mµt úbuff....
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x889024_g_NoRMBBuffID ) == 1 
		or LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x889024_g_RMBBuffID ) == 1 
		or LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x889024_g_SpouseBuffID ) == 1 then		
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_6}" )
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
function x889024_OnDeplete( sceneId, selfId )
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
function x889024_OnActivateOnce( sceneId, selfId )

	--¸øÍæ¼Òº®Óñ´²¹mµt úbuff....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x889024_g_SpouseBuffID, 0)

	CallScriptFunction( 808072, "OnPlayerUseHanYuBook", sceneId, selfId )

	--¼ÇÂ¼½ñÌìÓÃ¹ıÊéÁË....
	local CurDayTime = GetDayTime()
	SetMissionData( sceneId, selfId, MD_TW_HANYU_SPOUSEBOOK_LASTUSEDAY, CurDayTime )

	return 1

end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x889024_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end


function x889024_ShowTips( sceneId, selfId, msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
