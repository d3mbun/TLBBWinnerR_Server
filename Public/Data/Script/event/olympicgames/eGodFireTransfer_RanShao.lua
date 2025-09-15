--´´½¨ÈË[ QUFEI 2008-04-18 10:27 UPDATE BugID 34369 ]
--ĞÂÊ¥»ğ´«µİ»î¶¯Ö®È¼ÉÕtoÕ ğµ Ê¥»ğÊÂ¼ş½Å±¾
--±¾»î¶¯Ã¿ÌìM· ra Èı´Î,Ã¿cáiÍæ¼ÒÃ¿ÌìÖ»ÄÜ²Î¼Ómµt ´Î

--MisDescBegin
--½Å±¾ºÅ
x808095_g_ScriptId	= 808095

--Tiªp thøÈÎÎñNPCÊôĞÔ
x808095_g_Position_X=164.5310
x808095_g_Position_Z=262.5004
x808095_g_SceneID=30
x808095_g_AccomplishNPC_Name="Tô Phi"

--ÈÎÎñºÅ
x808095_g_MissionId			= 1001
--ÏÂmµt cáiÈÎÎñtoÕ ğµ ID
x808095_g_MissionIdNext	= 1002
--Møc tiêu nhi®m vøËùTÕi ³¡¾°
x808095_g_AcceptNPC_SceneID	=	1
--Møc tiêu nhi®m vønpc
x808095_g_Name 					= "Thánh hoä ğàn"
--ÈÎÎñ¹éÀà
x808095_g_MissionKind			= 13
--ĞÆng c¤p nhi®m vø 
x808095_g_MissionLevel		= 10
--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x808095_g_IfMissionElite	= 0
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x808095_g_IsMissionOkFail	= 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»

--ÈÎÎñÎÄ±¾ÃèÊö
x808095_g_MissionName			= "Thiêu ğ¯t thánh höa"
--ÈÎÎñÃèÊö
x808095_g_MissionInfo			= "#{XSHCD_20080418_008}"
--Møc tiêu nhi®m vø
x808095_g_MissionTarget		= "#{XSHCD_20080418_042}"
--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x808095_g_ContinueInfo		= "#{XSHCD_20080418_009}"
--Hoàn t¤t nhi®m vønpcËµtoÕ ğµ »°
x808095_g_MissionComplete	= "#{XSHCD_20080418_010}"
--Ã¿´Î»î¶¯¿ÉÒÔÍê³ÉtoÕ ğµ ´ÎÊı
x808095_g_MaxRound	= 3
--¿ØÖÆ½Å±¾
x808095_g_ControlScript		= 001066

-- ÈÎÎñÍê³ÉÇé¿ö,ÄÚÈİ¶¯Ì¬Ë¢ĞÂ,Õ¼ÓÃÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
x808095_g_Custom	= { {id="Ğã xem thánh höa giao cho Tây h°  Tô Phi",num=1} }
--MisDescEnd

--ÈÎÎñĞúng·ñÍê³É
x808095_g_Mission_IsComplete = 0		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ0Î»
--Ê¥»ğ½»¸øTô PhitoÕ ğµ ±ê¼Ç
x808095_g_RecordIdx 				 = 1		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ1Î»
--ÈÎÎñ½Å±¾ºÅ¼ÇÂ¼
x808095_g_MissScriptID_Idx	 = 2		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ2Î»
--ÈÎÎñ·¢²¼NPC±ê¼Ç
x808095_g_AcceptNPC_Idx			 = 3		--ÈÎÎñ²ÎÊıtoÕ ğµ µÚ3Î» 2.Tô ChâuNPC


x808095_g_AcceptMission_IDX		= 565	--È¼ÉÕtoÕ ğµ Ê¥»ğ½ÓÊÕÈÎÎñË÷Òı
x808095_g_CompleteMission_IDX	= 566	--È¼ÉÕtoÕ ğµ Ê¥»ğÌá½»ÈÎÎñË÷Òı
x808095_g_MissionInfo_IDX			= 567	--ÈÎÎñË ği¬m÷Ë÷Òı
x808095_g_AfreshMission_IDX		= 568	--ÖØĞÂ¿ªÊ¼Ê¥»ğ´«µİË÷Òı

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
x808095_g_EventList	= {}

x808095_g_Impact_Accept_Mission 	 = 47		-- Tiªp thøÈÎÎñÊ±toÕ ğµ ÌØĞ§ID
x808095_g_Impact_Transport_Mission = 113 	-- ÔËÊä×´Ì¬ÌØĞ§
x808095_g_Impact_GodOfFireMan_Mission  = 5942 -- Ê¥»ğ´«µİÄĞ±äÉíÌØĞ§
x808095_g_Impact_GodOfFireGirl_Mission = 5943 -- Ê¥»ğ´«µİÅ®±äÉíÌØĞ§
x808095_g_Impact_DelGodOfFire_Mission  = 5944 -- É¾³ıÊ¥»ğÌØĞ§toÕ ğµ ÌØĞ§
x808095_g_PlayerSlow_LVL					 = 10		-- Tiªp thøÈÎÎñtoÕ ğµ ×îµÍµÈc¤p

x808095_g_Mission_StepNum					 = 0		-- ±¾ÈÎÎñTÕi ÈÎÎñÁ´toÕ ğµ µÚ¼¸²½

x808095_g_ItemId = { id=40004447,num=1 }	-- ÈÎÎñÎïÆ·

-- Ê¥»ğ»î¶¯Ê±¼ä
x808095_g_Activity_Day						 = { dstart=504,  dend=510 }
x808095_g_Activity_Time						 = { tstart=1945, tend=2245 }

-- 5ÔÂ10ºÅºótoÕ ğµ »î¶¯M· ra Ê±¼ä,Ã¿ÖÜÎå
x808095_g_Activity_DayTime				 = 5

-- ½±ÀøKinh nghi®mºÍ½ğÇ®(ÓëµÈc¤pÓĞ¹Ø)
x808095_g_MoneyBonus_Param1				 = 30 
x808095_g_MoneyBonus_Param2				 = 320
x808095_g_ExpBonus_Param1				 	 = 160
x808095_g_ExpBonus_Param2				 	 = 500

-- Ê¥»ğÈÎÎñÁĞ±í
x808095_g_GodFire_MissionList			 = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011 }

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
function x808095_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x808095_g_AcceptMission_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
			x808095_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
			return 0
		end
		-- ÈÎÎñĞúng·ñÒÑÂú
		if IsMissionFull( sceneId, selfId ) == 1 then
			x808095_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- ¼ì²âÈÎÎñTiªp thøÌõ¼ş
		if x808095_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ½øÈëTiªp thøÈÎÎñ½çÃæ			
		x808095_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x808095_g_CompleteMission_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x808095_g_AccomplishNPC_Name then
			x808095_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
			return 0
		end
		-- Èç¹ûÒÑ¾­½ÓÁËÈÎÎñÈ¼ÉÕtoÕ ğµ Ê¥»ğ
		if IsHaveMission( sceneId, selfId, x808095_g_MissionId) > 0 then
												
			--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId, x808095_g_MissionName)
				AddText(sceneId, x808095_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x808095_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x808095_g_ScriptId, x808095_g_MissionId, bDone)
			
		else			
			x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_072}" )
			return 0
		end
	elseif key == x808095_g_MissionInfo_IDX then
		--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
		if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
			x808095_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
			return 0
		end
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_007}" )		
		return 0

	elseif key == x808095_g_AfreshMission_IDX then
	
		for i, MissionId in x808095_g_GodFire_MissionList do
			if IsHaveMission( sceneId, selfId, MissionId) > 0 then
				x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_070}" )
				return 0
			end
		end
	
		SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM, 0 )
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_068}" )
		return 0
	else
		x808095_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x808095_OnEnumerate( sceneId, selfId, targetId )
	
	--¼ì²â»î¶¯Ğúng·ñ¹ıÆÚ
	if x808095_CheckHuoDongTime() <= 0 then
		return 0
	end

	if LuaFnGetName( sceneId, targetId ) == x808095_g_Name
		 and sceneId == x808095_g_AcceptNPC_SceneID then
		AddNumText( sceneId, x808095_g_ScriptId, "Ta mu¯n chuy¬n Thánh Hoä mµt l¥n nØa.", 7, x808095_g_AfreshMission_IDX )
		
		if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) <= 0 then
			local	nStepNum = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM )
			if nStepNum == x808095_g_Mission_StepNum then
				AddNumText( sceneId, x808095_g_ScriptId, "Ta mu¯n tham gia: Thiêu ğ¯t thánh höa", 7, x808095_g_AcceptMission_IDX )
			end
		end
		AddNumText( sceneId, x808095_g_ScriptId, "V« hoÕt ğµng Thiêu ğ¯t thánh hoä", 11, x808095_g_MissionInfo_IDX )
	elseif LuaFnGetName( sceneId, targetId ) == x808095_g_AccomplishNPC_Name
				 and sceneId == x808095_g_SceneID then
	
		if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) > 0 then
			local misIndex = GetMissionIndexByID(sceneId,selfId,x808095_g_MissionId)

			-- ¼ì²âÈÎÎñĞúng·ñÍê³É	
			if GetMissionParam(sceneId, selfId, misIndex, x808095_g_Mission_IsComplete) <= 0 then
				SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_Mission_IsComplete, 1 )
				SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_RecordIdx, 1 )
				x808095_NotifyTip( sceneId, selfId, "#{XSHCD_20080418_100}" )
				x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_098}" )
				return 0
			else
				AddNumText( sceneId, x808095_g_ScriptId, "Ta ğã hoàn thành: Thiêu ğ¯t thánh höa", 7, x808095_g_CompleteMission_IDX )
			end
		end
	else
		return 0
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş,Ò²¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x808095_CheckAccept( sceneId, selfId, targetId )
	
	--¼ì²âÍæ¼ÒĞúng·ñ·ûºÏTiªp thøÈÎÎñtoÕ ğµ Ìõ¼ş
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
		x808095_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end
	
	--¼ì²â»î¶¯Ğúng·ñ¹ıÆÚ
	if x808095_CheckHuoDongTime() <= 0 then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_069}" )
		return 0
	end
	
	--¼ì²âµÈc¤p
	if LuaFnGetLevel( sceneId, selfId ) < x808095_g_PlayerSlow_LVL then		
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_064}" )
		return 0
	end

	--¼ì²âÔËÊä×´Ì¬×¤ÁôĞ§¹û
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_Transport_Mission) ~= 0
		 or LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission) ~= 0 then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_014}" )
		return 0
	end

	--ÒÑ¾­½Ó¹ıÔò²»·ûºÏÌõ¼ş
	if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) > 0 then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end

	--¼ì²âÍæ¼Ò²Î¼Ó±¾´Î»î¶¯ÈÎÎñÁ´µÚ¼¸²½
	local	nStepNum = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM )
	if nStepNum ~= x808095_g_Mission_StepNum then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_066}" )
		return 0
	end

	--¹ımµt Ìì»î¶¯´ÎÊı¾ÍÇå³ı
	local nThisTime = GetDayTime()
	local	nDayTime = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_DAYTIME )
	if nDayTime ~= nThisTime then
		SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_COUNT, 0 )
	end
	
	--¼ì²âÍæ¼Ò½ñÌì²Î¼Ó»î¶¯toÕ ğµ ´ÎÊı
	local	nComCount = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_COUNT )
	if nComCount >= x808095_g_MaxRound then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_065}" )
		return 0
	end

	--¼ì²âĞúng·ñ´¦ÓÚË«ÈËÆï³Ë×´Ì¬
	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{ResultText_117}" )
		return 0
	end
	
	return 1
end

--**********************************
--Tiªp thø,½ö¹©×ÓÈÎÎñµ÷ÓÃÉèÖÃ¹«¹²²ÎÊı
--**********************************
function x808095_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
 	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
 		x808095_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )					
		return 0
	end

	if x808095_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < x808095_g_ItemId.num then
		x808095_NotifyTip( sceneId, selfId, "#{QX_20071129_027}" )		
		return 0
	end

	BeginAddItem(sceneId)
	AddItem(sceneId,x808095_g_ItemId.id, x808095_g_ItemId.num)
	local canAdd = EndAddItem(sceneId,selfId)						
	if canAdd > 0 then
		--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
		local bAdd = AddMission( sceneId, selfId, x808095_g_MissionId, x808095_g_ScriptId, 0, 0, 0 )
		if bAdd >= 1 then				
			AddItemListToHuman(sceneId,selfId)
			
			-- ği¬mµ½ÈÎÎñtoÕ ğµ ĞòÁĞºÅ
			local	misIndex		= GetMissionIndexByID( sceneId, selfId, x808095_g_MissionId )
			
			--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ0Î»ÖÃ0 (ÈÎÎñÍê³ÉÇé¿ö)
			SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_Mission_IsComplete, 0 )
			SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_RecordIdx, 0 )
			--¸ù¾İĞòÁĞºÅ°ÑÈÎÎñ±äÁ¿toÕ ğµ µÚ2Î»ÖÃÎªÈÎÎñ½Å±¾ºÅ
			SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_MissScriptID_Idx, scriptId )		
			SetMissionByIndex(sceneId, selfId, misIndex, x808095_g_AcceptNPC_Idx, 2)

			local nDayTime = GetDayTime()
			SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_DAYTIME, nDayTime )

			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_Transport_Mission, 0 )
			
			-- ¸ù¾İĞÔ±ğ¸ø±äÉíBuffer
			if GetSex( sceneId, selfId ) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_GodOfFireMan_Mission, 0 )
			else
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_GodOfFireGirl_Mission, 0 )
			end
			
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_DelGodOfFire_Mission, 0 )

			BeginEvent(sceneId)
				AddText(sceneId,x808095_g_MissionName)
				AddText(sceneId,x808095_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,"#{XSHCD_20080418_042}")				
				AddText(sceneId,"#{XSHCD_20080418_007}")				
			EndEvent( )					
			DispatchEventList(sceneId, selfId, targetId)
			
			-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_Accept_Mission, 0 )
		end
	end

	return 1

end

--**********************************
--·ÅÆú,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x808095_OnAbandon( sceneId, selfId )
  
  --É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ,ÎïÆ·ºÍ×¤ÁôĞ§¹û
  if HaveItem(sceneId, selfId, x808095_g_ItemId.id) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808095_g_ItemId.id) >= x808095_g_ItemId.num then
  		DelItem( sceneId, selfId, x808095_g_ItemId.id, LuaFnGetAvailableItemCount(sceneId, selfId, x808095_g_ItemId.id) )
  	else
	  	x808095_NotifyTip( sceneId, selfId, "Không th¬ dùng v§t ph¦m hi®n tÕi." )			
			return 0
  	end
  end

  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_Transport_Mission) ~= 0 then
  	-- Èç¹ûÍæ¼ÒÕıTÕi äîÔË»òÅÜÉÌ¾Í²»Çå³ıÔËÊäBuff
  	if IsHaveMission( sceneId, selfId, 4021 ) <= 0
  		 and GetItemCount(sceneId, selfId, 40002000) <= 0 then  	
  		LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_Transport_Mission )
  	end
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_GodOfFireMan_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_GodOfFireMan_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_GodOfFireGirl_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_GodOfFireGirl_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission )
  end
  
  if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x808095_g_MissionId )
	end
	
	return 0

end

--**********************************
--¼ÌĞø
--**********************************
function x808095_OnContinue( sceneId, selfId, targetId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_AccomplishNPC_Name then
		x808095_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

	-- ¼ì²éÈÎÎñĞúng·ñÍê³É
	if x808095_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x808095_g_MissionName)
		AddText( sceneId, x808095_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x808095_g_ScriptId,x808095_g_MissionId)
	
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x808095_CheckSubmit( sceneId, selfId, targetId )

	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_AccomplishNPC_Name then
		x808095_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) <= 0 then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_072}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x808095_g_MissionId)

	-- ¼ì²âÈÎÎñĞúng·ñÍê³É	
	if GetMissionParam(sceneId, selfId, misIndex, x808095_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--Ìá½»,½ö¹©×ÓÈÎÎñµ÷ÓÃ
--**********************************
function x808095_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_AccomplishNPC_Name then
		x808095_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )					
		return 0
	end

  -- ¼ì²éÈÎÎñĞúng·ñÍê³É
	if x808095_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x808095_NotifyTip( sceneId, selfId, "Trä nhi®m vø th¤t bÕi" )				
		return 0
	end
	
	local strText = ""

	local playerlvl = LuaFnGetLevel( sceneId, selfId )
	local nExpNum = x808095_g_ExpBonus_Param1*playerlvl+x808095_g_ExpBonus_Param2
	local nMoneyNum = x808095_g_MoneyBonus_Param1*playerlvl+x808095_g_MoneyBonus_Param2

	nExpNum = floor(nExpNum)
	nMoneyNum = floor(nMoneyNum)
	LuaFnAddExp( sceneId, selfId, nExpNum )
	AddMoney( sceneId, selfId, nMoneyNum )
	-- x808095_TalkInfo( sceneId, selfId, targetId, strText )
	
	-- »î¶¯Ë³ÀûÍê³É
	x808095_NotifyTip( sceneId, selfId, "#{XSHCD_20080418_083}" )

	x808095_DelMissionInfo( sceneId, selfId )
	
	-- Ê¥»ğÈÎÎñµÚmµt ²½Íê³É
	SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM, 1 )
	local	nStepNum = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_COUNT )
	SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_COUNT, nStepNum+1 )
	
	-- Ö±½Ó¸øÍæ¼Ò¸±±¾ÈÎÎñ
	CallScriptFunction( 808096, "OnAccept", sceneId, selfId, targetId, x808095_g_ScriptId )

end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x808095_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎï
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x808095_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x808095_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--½ÓÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x808095_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--½»ÈÎÎñºóÏÔÊ¾toÕ ğµ ½çÃæ
--**********************************
function x808095_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x808095_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--ÓëNPC¶Ô»°
--**********************************
function x808095_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--È¡ ği¬m±¾ÊÂ¼ştoÕ ğµ MissionId,ÓÃÓÚobjÎÄ¼şÖĞ¶Ô»°Çé¾°toÕ ğµ ÅĞ¶Ï
--**********************************
function x808095_GetEventMissionId( sceneId, selfId )	
	return x808095_g_MissionId
end

function x808095_AcceptMission( sceneId, selfId, targetId )
	
	--ÅĞ¶Ï¸ÃnpcĞúng·ñĞúng¶ÔÓ¦ÈÎÎñtoÕ ğµ npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
		x808095_NotifyTip( sceneId, selfId, "Nh§n nhi®m vø th¤t bÕi" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x808095_g_MissionName)
		AddText( sceneId, x808095_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{XSHCD_20080418_042}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddText(sceneId,"#{XSHCD_20080418_096}")
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x808095_g_ScriptId,x808095_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--»ñÈ¡¾ßÌåitemtoÕ ğµ ÏêÏ¸ĞÅÏ¢
function x808095_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--¼ì²â»î¶¯Ê±¼ä
--**********************************
function x808095_CheckHuoDongTime()

	if 1 == 1 then
			return 0
		end

	local nMonth = GetTodayMonth()+1
	local nDate	 = GetTodayDate()
	local nHour	 = GetHour()
	local nMinute = GetMinute()
	local nThisDay = GetTodayWeek()
	local curDateTime = nMonth*100+nDate
  local curHourTime = nHour*100+nMinute
  
  if curHourTime >= x808095_g_Activity_Time.tstart and curHourTime <= x808095_g_Activity_Time.tend then
  	if curDateTime >= x808095_g_Activity_Day.dstart and curDateTime <= x808095_g_Activity_Day.dend then
  		return 1
 		elseif curDateTime > x808095_g_Activity_Day.dend and nThisDay == x808095_g_Activity_DayTime then
  		return 1
  	end
  end


	return 0

end

--**********************************
--µÀ¾ßÊ¹ÓÃ
--**********************************
function x808095_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--ËÀÍöÊÂ¼ş
--**********************************
function x808095_OnDie( sceneId, selfId, killerId )
end

--**********************************
--É¾³ı»î¶¯ĞÅÏ¢
--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ,ÎïÆ·ºÍ×¤ÁôĞ§¹û
--**********************************
function x808095_DelMissionInfo( sceneId, selfId )

  if HaveItem(sceneId, selfId, x808095_g_ItemId.id) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808095_g_ItemId.id) >= x808095_g_ItemId.num then
  		DelItem( sceneId, selfId, x808095_g_ItemId.id, LuaFnGetAvailableItemCount(sceneId, selfId, x808095_g_ItemId.id) )  	
  	end
  end

  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_Transport_Mission) ~= 0 then
  	-- Èç¹ûÍæ¼ÒÕıTÕi äîÔË»òÅÜÉÌ¾Í²»Çå³ıÔËÊäBuff
  	if IsHaveMission( sceneId, selfId, 4021 ) <= 0
  		 and GetItemCount(sceneId, selfId, 40002000) <= 0 then  	
  		LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_Transport_Mission )
  	end
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_GodOfFireMan_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_GodOfFireMan_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_GodOfFireGirl_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_GodOfFireGirl_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission )
  end
  
  if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x808095_g_MissionId )
	end
	
	return 0

end

--*************************************
-- Ê¥»ğÌØĞ§ÓĞĞ§ÆÚµ½Ê±×Ô¶¯É¾³ıÔËÊäBuffer
--*************************************
function x808095_OnImpactFadeOut( sceneId, selfId, impactId )

	if impactId == x808095_g_Impact_DelGodOfFire_Mission then
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_Transport_Mission) ~= 0 then
  		LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_Transport_Mission )
  	end
	end

end
