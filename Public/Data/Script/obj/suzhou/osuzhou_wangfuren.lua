--Tô ChâuNPC
--Íõ·òÈË
--mµt °ã

--½Å±¾ºÅ
x001021_g_scriptId = 001021

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001021_g_eventList={229022, 200099, 200100}

x001021_g_RSMissionId = 101
x001021_g_ActivateMissionId = 15			-- ¼¤»îÌõ¼þ
x001021_g_SongXinScriptId = 006668		-- ËÍÐÅ
x001021_g_ShaGuaiScriptId = 006666		-- É±¹Ö
x001021_g_XunWuScriptId = 006667			-- Ñ°Îï

x001021_g_RoundStorytelling = {
		[0] = { misIndex = { 1039200 }, script = x001021_g_XunWuScriptId },
		[1] = { misIndex = { 1039201 }, script = x001021_g_XunWuScriptId },
		[2] = { misIndex = { 1039202 }, script = x001021_g_XunWuScriptId },
		[3] = { misIndex = { 1039203 }, script = x001021_g_XunWuScriptId },
		[4] = { misIndex = { 1039204 }, script = x001021_g_XunWuScriptId }}
			
x001021_g_SongXinMissionList = {
		[0] = { misIndex = { 1018400,1018407,1018414,1018421,1018428,1018435,1018442,1018449 }, script = x001021_g_SongXinScriptId },
		[1] = { misIndex = { 1018401,1018408,1018415,1018422,1018429,1018436,1018443,1018450 }, script = x001021_g_SongXinScriptId },
		[2] = { misIndex = { 1018402,1018409,1018416,1018423,1018430,1018437,1018444,1018451 }, script = x001021_g_SongXinScriptId },
		[3] = { misIndex = { 1018403,1018410,1018417,1018424,1018431,1018438,1018445,1018452 }, script = x001021_g_SongXinScriptId },
		[4] = { misIndex = { 1018404,1018411,1018418,1018425,1018432,1018439,1018446,1018453 }, script = x001021_g_SongXinScriptId },
		[5] = { misIndex = { 1018405,1018412,1018419,1018426,1018433,1018440,1018447,1018454 }, script = x001021_g_SongXinScriptId },
		[6] = { misIndex = { 1018406,1018413,1018420,1018427,1018434,1018441,1018448,1018455 }, script = x001021_g_SongXinScriptId }}		
			
x001021_g_ShaGuaiMissionList = {
		[0] = { misIndex = { 1039205 }, script = x001021_g_XunWuScriptId },
		[1] = { misIndex = { 1039206 }, script = x001021_g_XunWuScriptId },
		[2] = { misIndex = { 1039207 }, script = x001021_g_XunWuScriptId },
		[3] = { misIndex = { 1039208 }, script = x001021_g_XunWuScriptId },
		[4] = { misIndex = { 1039209 }, script = x001021_g_XunWuScriptId },
		[5] = { misIndex = { 1039210 }, script = x001021_g_XunWuScriptId },
		[6] = { misIndex = { 1039211 }, script = x001021_g_XunWuScriptId }}		


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001021_UpdateEventList( sceneId, selfId,targetId )
		
	local PlayerName = GetName( sceneId, selfId )
	local PlayerSex = GetSex( sceneId, selfId )
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng"
	else
		PlayerSex = " các hÕ"
	end

	BeginEvent( sceneId )
		AddText(sceneId,"#{OBJ_suzhou_0008}")		
		AddNumText( sceneId, x001021_g_scriptId, "Gi¾i thi®u nhi®m vø liên hoàn", 11, 10 )
    AddNumText( sceneId, x001021_g_scriptId, "#{JZBZ_081031_02}", 11, 11 )
		
		local missionIndex = GetScriptIDByMissionID( sceneId, selfId, x001021_g_RSMissionId )
		if missionIndex ~= -1 then
			local missionName = TGetMissionName( missionIndex )
			if missionName ~= "Nhi®m vø Vß½ng Ngæ Yên" and IsMissionHaveDone( sceneId, selfId, x001021_g_ActivateMissionId ) > 0 then
				AddNumText( sceneId, x001021_g_scriptId, "Nhi®m vø Vß½ng Ngæ Yên", 3, 1 )
			end
		elseif IsMissionHaveDone( sceneId, selfId, x001021_g_ActivateMissionId ) > 0 then
			AddNumText( sceneId, x001021_g_scriptId, "Nhi®m vø Vß½ng Ngæ Yên", 3, 1 )
		end

		for _, eventId in x001021_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
					
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )	
	
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001021_OnDefaultEvent( sceneId, selfId,targetId )
	x001021_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001021_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_070}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	elseif GetNumText() == 11 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{JZBZ_081031_01}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end


	for i, findId in x001021_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
		
	local num = GetNumText()
	if num == 1 then										-- Nhi®m vø Vß½ng Ngæ Yên
		if IsHaveMission( sceneId, selfId, x001021_g_RSMissionId ) > 0 then
			x001021_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ vçn còn Nhi®m vø k¸ch tình liên quan chua hoàn thành. Hãy ðªn sau khi các hÕ ðã hoàn thành nhi®m vø liên quan" )
			return
		end
		
		-- ¼ì²âÐúng·ñThöa mãnÈÎÎñ¼¤»îÌõ¼þ
		if IsMissionHaveDone( sceneId, selfId, x001021_g_ActivateMissionId ) <= 0 then
			return 0
		end
		
		--¿´ÏÂ½ñÌìtoÕ ðµ Nhi®m vø Vß½ng Ngæ YênÐúng²»Ðúng×öÍê50´ÎÁË
		--begin modified by zhangguoxin 090208
		local nDayCount = GetMissionData(sceneId, selfId, MD_JQXH_WANGYUYAN_LIMITI)
		local nCount = 		floor(nDayCount/100000)
		local nTime = 		mod(nDayCount,100000)
		--local nDayTime = 	floor(nTime/100)	--ÉÏmµt ´Î½»ÈÎÎñtoÕ ðµ Ê±¼ä(ÌìÊý)
		local nDayTime = 	nTime								--ÉÏmµt ´Î½»ÈÎÎñtoÕ ðµ Ê±¼ä(ÌìÊý)
		
		--local CurTime = GetHourTime()				--µ±Ç°Ê±¼ä
		local CurTime = GetDayTime()					--µ±Ç°Ê±¼ä
		--local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
		local CurDaytime = CurTime							--µ±Ç°Ê±¼ä(Ìì)
		--end modified by zhangguoxin 090208
		
		if nDayTime == CurDaytime  then -- µ±Ìì
			if nCount >= 50  then
				BeginEvent( sceneId )
					AddText( sceneId, "  Hôm nay bÕn ðã g£p nhi«u r¡c r¯i, hãi tr· lÕi vào ngày mai" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
			
		else		-- ÐÂtoÕ ðµ mµt Ìì
			SetMissionData(sceneId, selfId, MD_JQXH_WANGYUYAN_LIMITI, 0)
		end

		local mission = x001021_g_RoundStorytelling[0];
		local relation = GetMissionData(sceneId, selfId, MD_RELATION_WANGYUYAN)
		local playerlevel = GetLevel( sceneId, selfId )
		
		-- µÈc¤pÉÏÏÞ´¦Àí
		if playerlevel >= 100 then
			playerlevel = 90
		end
		
		playerlevel = floor( playerlevel / 10 ) * 10
		local randtype = random(100)
		
		-- ËÍÐÅÈÎÎñ
		if randtype <= 60 then
			if playerlevel == 30 then
				mission = x001021_g_SongXinMissionList[0];
			elseif playerlevel == 40 then
				mission = x001021_g_SongXinMissionList[1];
			elseif playerlevel == 50 then
				mission = x001021_g_SongXinMissionList[2];
			elseif playerlevel == 60 then
				mission = x001021_g_SongXinMissionList[3];
			elseif playerlevel == 70 then
				mission = x001021_g_SongXinMissionList[4];
			elseif playerlevel == 80 then
				mission = x001021_g_SongXinMissionList[5];
			elseif playerlevel == 90 then
				mission = x001021_g_SongXinMissionList[6];			
			end
		-- É±¹ÖÈÎÎñ
		elseif randtype <= 95 then
			if playerlevel == 30 then
				mission = x001021_g_ShaGuaiMissionList[0];
			elseif playerlevel == 40 then
				mission = x001021_g_ShaGuaiMissionList[1];
			elseif playerlevel == 50 then
				mission = x001021_g_ShaGuaiMissionList[2];
			elseif playerlevel == 60 then
				mission = x001021_g_ShaGuaiMissionList[3];
			elseif playerlevel == 70 then
				mission = x001021_g_ShaGuaiMissionList[4];
			elseif playerlevel == 80 then
				mission = x001021_g_ShaGuaiMissionList[5];
			elseif playerlevel == 90 then
				mission = x001021_g_ShaGuaiMissionList[6];			
			end
		-- Ñ°ÎïÈÎÎñ
		elseif randtype <= 100 then
			if relation <= 999 then
				mission = x001021_g_RoundStorytelling[0];
			elseif relation <= 1999 then
				mission = x001021_g_RoundStorytelling[1];
			elseif relation <= 3999 then
				mission = x001021_g_RoundStorytelling[2];
			elseif relation <= 6499 then
				mission = x001021_g_RoundStorytelling[3];
			elseif relation <= 9999 then
				mission = x001021_g_RoundStorytelling[4];
			end
		end
				
		CallScriptFunction( mission.script, "OnDefaultEvent", sceneId, selfId, targetId, mission.misIndex[ random( getn(mission.misIndex) ) ] )		
		
		return
	end	
	
	
	
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001021_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001021_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001021_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001021_g_eventList do
		if missionScriptId == findId then
			x001021_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001021_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001021_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001021_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001021_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001021_OnDie( sceneId, selfId, killerId )
end

--**********************************
--Ê±ÖÓÊÂ¼þ
--**********************************
function x001021_OnCharacterTimer( sceneId, selfId, dataId, nowtime )
--³¡¾°ºÅ,ObjID,¹ÖÎï±íºÅ,Ê±¼äÖµ(ºÁ giây)

end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001021_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x001021_OnMissionCheck( sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
	
	for i, eventId in x001021_g_XunWuScriptId do
		
		if eventId == scriptId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, targetId, scriptId, index1, index2, index3, indexpet, missionIndex )
			return 1
		end
	end
		
end
