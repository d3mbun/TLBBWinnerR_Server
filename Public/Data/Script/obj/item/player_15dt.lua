-- ÈÎÎñ1.5±¶Kinh nghi®mÒ©Ë®
-- ÏûºÄmµt cáiÒ©Ë®,ÎªÈËÎïÌá¹©mµt cáiÐ¡Ê±1.5±¶Kinh nghi®mÊ±¼ä

--½Å±¾ºÅ
x300045_g_scriptId = 300045
x300045_g_ItemId = 30008016
x300045_g_BuffId = 62

x300045_g_BuffPalyer_25 = 60
x300045_g_BuffAll_15 = 62
x300045_g_BuffPet_25 = 61
x300045_g_BuffPet_2 = 53

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300045_OnDefaultEvent( sceneId, selfId, nItemIndex )
	
	-- Èç¹ûÉíÉÏÓÐ×Ô¼º,²»ÄÜ³Ô
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300045_g_BuffAll_15) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ ðang sØ døng dßþc li®u nhân ðôi kinh nghi®m, vui lòng sau khi m¤t hi®u quä hãy sØ døng tiªp.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- Èç¹ûÉíÉÏÓÐ2.5toÕ ðµ ,¾Í²»ÈÃ³Ô
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x300045_g_BuffPalyer_25) == 1   then
		BeginEvent(sceneId)
			AddText(sceneId,"Trên ngß¶i các hÕ ðã t°n tÕi th¶i gian nhân ðôi kinh nghi®m quá cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
		
	-- Èç¹ûÍæ¼ÒÓÐ Ë«±¶Kinh nghi®mÊ±¼ä ²»ÈÃÊ¹ÓÃ
	local nCurHaveTime = DEGetMoneyTime(sceneId, selfId)
	if nCurHaveTime > 0  and  DEIsLock(sceneId, selfId)~=1  then
		BeginEvent(sceneId)
			AddText(sceneId,"Trên ngß¶i các hÕ ðã t°n tÕi th¶i gian nhân ðôi kinh nghi®m quá cao!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	x300045_UseItem( sceneId, selfId, nItemIndex)
	
end

function x300045_IsSkillLikeScript( sceneId, selfId)
	return 0
end

--**********************************
--
--**********************************
function x300045_EatMe( sceneId, selfId, nItemIndex)
	x300045_UseItem( sceneId, selfId, nItemIndex)
end

--**********************************
-- 
--**********************************
function x300045_UseItem( sceneId, selfId, nItemIndex)
	-- ÏÈ¼ì²âCái này  nItemIndex toÕ ðµ ÎïÆ·Ðúng²»ÐúngºÍµ±Ç°toÕ ðµ ¶ÔÓ¦,
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300045_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Sai sót trong tay näi")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ¿Ûmµt cáiÒ©
	local ret = EraseItem(sceneId, selfId, nItemIndex)

	if ret == 1   then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300045_g_BuffId, 100 )
		BeginEvent(sceneId)
			AddText(sceneId,"Các hÕ tång 1.5 kinh nghi®m nhân v§t trong 1 gi¶")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	else
		BeginEvent(sceneId)
			AddText(sceneId,"V§t ph¦m không th¬ sØ døng")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
	end
end

