--µÀ¾ß: °ï¹±ÅÆ30900050
--½Å±¾ºÅ 300070

x300070_g_scriptId = 300070

x300070_g_TakeTimes = 1											-- Ã¿Ìì×î¶àÊ¹ÓÃ´ÎÊı

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300070_OnDefaultEvent( sceneId, selfId, bagIndex )

	local BangPaiID = GetBagItemParam(sceneId, selfId, bagIndex, 4, 2) --°ïÅÉID
	local value = GetBagItemParam(sceneId, selfId, bagIndex, 8, 2) --°ï¹±ÊıÖµ
	local roleBangPaiID = GetHumanGuildID(sceneId, selfId)
	
	--PrintStr("BangPaiID "..BangPaiID.." value "..value.." roleBangPaiID "..roleBangPaiID)
	
	--°ïÅÉIDĞúng·ñÏàÍ¬
	if roleBangPaiID ~= BangPaiID then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BGCH_8829_06}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, selfId)
		
		return
	end
	
	--mµt ÌìÖ»ÄÜÊ¹ÓÃ x300070_g_TakeTimes ´Î
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_BANGGONGPAI_DAYTIME )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
		SetMissionData( sceneId, selfId, MD_BANGGONGPAI_DAYTIME, nowDate )
	end

	if takenTimes >= x300070_g_TakeTimes then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BGCH_8922_31}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, selfId)
		
		return 0
	end
	
	if EraseItem(sceneId, selfId, bagIndex) > 0 then
	
		CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, value)
	
		BeginEvent(sceneId)
			AddText(sceneId,"#{BGCH_8829_04}"..value.."#{BGCH_8829_12}")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		--mµt ÌìÖ»ÄÜÊ¹ÓÃ x300070_g_TakeTimes ´Î
		DayTimes = GetMissionData( sceneId, selfId, MD_BANGGONGPAI_DAYTIME )
		takenTimes = floor( DayTimes/100000 )
		DayTimes = (takenTimes+1)*100000 + GetDayTime()
		SetMissionData( sceneId, selfId, MD_BANGGONGPAI_DAYTIME, DayTimes )
	end
	
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x300070_IsSkillLikeScript( sceneId, selfId)
	return 0; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end
