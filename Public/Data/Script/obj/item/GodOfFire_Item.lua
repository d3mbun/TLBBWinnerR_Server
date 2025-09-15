-- ´´½¨ÈË:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]
-- »ğ°ÑÊ¹Õß ItemID 40004444

-- ½Å±¾ºÅ
x808084_g_scriptId = 808084

x808084_g_event = 808080				-- Nhi®m vø Rùa-Thö thi chÕy½Å±¾
--ÈÎÎñºÅ
x808084_g_MissionId			= 1000

--ÈÎÎñÃ¿Ìì»·Êı±ê¼Ç
x808084_g_Mission_RoundNum	 = 7		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ7Î»

-- ÈÎÎñÎïÆ·²ÎÊı±ê¼Ç
x808084_g_LuoYangLighten_Cnt 	= 5	--¿×Ã÷µÆLÕc Dß½ngM· ra ÊıÁ¿Ë÷Òı
x808084_g_SuZhouLighten_Cnt		= 7	--¿×Ã÷µÆTô ChâuM· ra ÊıÁ¿Ë÷Òı
x808084_g_DaLiLighten_Cnt		= 9		--¿×Ã÷µÆĞÕi LıM· ra ÊıÁ¿Ë÷Òı

--¿×Ã÷µÆÍê³ÉÊıÁ¿±ê¼Ç
x808084_g_KongMing_Lighten				= 4		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ4Î»

x808084_g_KongMingLighten_Count		=	8		-- Ã¿¶ÎÂ·ÖĞC¥n  ği¬mÈ¼toÕ ğµ ¿×Ã÷µÆÊıÁ¿
x808084_g_KongMingLighten_MaxCnt	=	24	-- Rùa-Thö thi chÕy»î¶¯C¥n  ği¬mÈ¼toÕ ğµ ¿×Ã÷µÆ×ÜÊı

-- Ã¿ÌìRùa-Thö thi chÕy»î¶¯M· ra Ê±¼ä
x808084_g_ActivityTime						= { {tstart=1230, tend=1330},
																		  {tstart=1930, tend=2030},
																		  {tstart=2130, tend=2230} }

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x808084_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end


--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x808084_IsSkillLikeScript( sceneId, selfId )
	return 1	 --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end


--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x808084_CancelImpacts( sceneId, selfId )
	return 0	 --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x808084_OnActivateEachTick( sceneId, selfId )
	return 1	 --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end


--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x808084_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x808084_OnConditionCheck( sceneId, selfId )
	
	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	BagPos	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )

	if BagPos < 0 then
		return 0
	end
	
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·Ğúng·ñ´æTÕi 
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end
	
	--¼ì²âÓĞÃ»ÓĞNhi®m vø Rùa-Thö thi chÕy
	if IsHaveMission( sceneId, selfId, x808084_g_MissionId ) <= 0 then
		x808084_MsgBox( sceneId, selfId, "#{GodFire_Info_011}" )
		return 0
	end

	--¼ì²âĞúng·ñ´¦ÓÚ»î¶¯Ê±¼äÄÚ
	if x808084_CheckHuoDongTime() == 0 then
		x808084_MsgBox( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x808084_g_MissionId)
	
	-- ğÕt ğßşc¿×Ã÷µÆÍê³ÉĞÅÏ¢
	local LuoYangCnt = GetBagItemParam(sceneId, selfId, BagPos, x808084_g_LuoYangLighten_Cnt, 1)
	local SuZhouCnt = GetBagItemParam(sceneId, selfId, BagPos, x808084_g_SuZhouLighten_Cnt, 1)
	local DaLiCnt = GetBagItemParam(sceneId, selfId, BagPos, x808084_g_DaLiLighten_Cnt, 1)
	local	nAllCount = GetMissionParam(sceneId, selfId, misIndex, x808084_g_KongMing_Lighten)
		
	BeginEvent(sceneId)
		AddText(sceneId, "#{GodFire_Info_001}")
		local str01 = format("#{GodFire_Info_021} %d/%d", LuoYangCnt, x808084_g_KongMingLighten_Count)
		local str02 = format("#{GodFire_Info_022} %d/%d", SuZhouCnt, x808084_g_KongMingLighten_Count)
		local str03 = format("#{GodFire_Info_023} %d/%d", DaLiCnt, x808084_g_KongMingLighten_Count)
		local str04 = format("#{GodFire_Info_035} %d/%d", nAllCount, x808084_g_KongMingLighten_MaxCnt)
		AddText(sceneId, str01)
		AddText(sceneId, str02)
		AddText(sceneId, str03)
		AddText(sceneId, str04)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
	return 1
	
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x808084_OnDeplete( sceneId, selfId )	
	--
	--TÕi ´Ë»¹ÒªÔÙ´Î¼ì²âmµt ÏÂ....
	--
	return 0
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x808084_OnActivateOnce( sceneId, selfId )
	return 0
end

--**********************************
--¼ì²â»î¶¯Ê±¼ä
--**********************************
function x808084_CheckHuoDongTime()

	local nHour	 = GetHour()
	local nMinute = GetMinute()  
  local curHourTime = nHour*100+nMinute

	for i=1, getn(x808084_g_ActivityTime) do
	  if curHourTime >= x808084_g_ActivityTime[i].tstart and curHourTime <= x808084_g_ActivityTime[i].tend then
	  	return i		
	  end
	end

	return 0

end
