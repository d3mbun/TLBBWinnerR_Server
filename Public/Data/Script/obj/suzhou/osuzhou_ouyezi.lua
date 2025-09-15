--Tô ChâuNPC 
--Âu Dã TØ
--ÆÕÍ¨

--½Å±¾ºÅ
x001066_g_ScriptId = 001066
x001066_g_ShenBingScriptId = 500503			-- ÑªÓûÉñ±øÈÎÎñ½Å±¾
x001066_g_ChongZhuScriptId = 500504			-- ÉñÆ÷ÖýÔìºÍÐÞÀí½Å±¾
x001066_g_Name			= "Âu Dã TØ"

x001066_g_eventList={}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001066_UpdateEventList( sceneId, selfId,targetId )
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001066_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent( sceneId )
		AddText(sceneId,"#{OBJ_suzhou_0020}")
		
		for i, eventId in x001066_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		--AddNumText(sceneId,x001066_g_ScriptId,"#GÐÕi HÖ Cß¶ng Hóa",1,999)
		
		--if LuaFnGetName( sceneId, targetId ) == x001066_g_Name then
			AddNumText(sceneId,x001066_g_ScriptId,"Huyªt Døc Th¥n Binh",3,105)
		--end
		
		AddNumText(sceneId,x001066_g_ScriptId,"Giám ð¸nh tß ch¤t trang b¸",6,4)
		AddNumText(sceneId,x001066_g_ScriptId,"Cß¶ng hóa trang b¸",6,5)
		--AddNumText(sceneId,x001066_g_ScriptId,"Nâng cao ðÆng c¤p trang b¸",6,6)
		--AddNumText(sceneId,x001066_g_ScriptId,"×°±¸¸Ä±äÍâÐÎ",6,7)

		AddNumText(sceneId,x001066_g_ScriptId,"Tång s¯ l¥n sØa chæa",6,8)
		AddNumText(sceneId,x001066_g_ScriptId,"Kh¡c Danh Trang B¸",6,9)
		AddNumText(sceneId,x001066_g_ScriptId,"GÞ kh¡c danh trang b¸",6,22)
		AddNumText(sceneId,x001066_g_ScriptId,"Tái giám ð¸nh trang b¸",6,19)
		--if LuaFnGetName( sceneId, targetId ) == x001066_g_Name then
			AddNumText(sceneId,x001066_g_ScriptId,"Ðúc th¥n khí",11,106)
		--end
		
		AddNumText( sceneId, x001066_g_ScriptId, "V« trang b¸ kh¡c chÕm", 11, 10 )
		
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001066_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 999 then
		local StartDay = 20200508
		local LastDay = 20200510
		local CurDay = GetTime2Day()
		
		if CurDay == StartDay then
			if GetHour() <= 5 then
				BeginEvent(sceneId)	
				AddText(sceneId,"Sñ ki®n chï di­n ra sau bäo trì h¢ng ngày.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
		end
		
		if CurDay < StartDay or CurDay > LastDay then
			BeginEvent(sceneId)	
			AddText(sceneId,"Sñ ki®n chï di­n ra t× 2020-05-08 ðªn 2020-05-10.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		if GetMissionData(sceneId,selfId, EVENT_PARAM5) == CurDay then
			BeginEvent(sceneId)	
				AddText(sceneId,"À à, hôm nay ngß½i ðã nh§n Cß¶ng Hóa Lµ r°i mà, ngày mai hãy ðªn tìm ta nhé!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if LuaFnGetPropertyBagSpace(sceneId,selfId) < 3 then
			BeginEvent(sceneId)	
				AddText(sceneId,"Hãy s¡p xªp 3 ô tr¯ng trong túi tay näi!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local Item1 = TryRecieveItem(sceneId,selfId,30900005,1)
		local Item2 = TryRecieveItem(sceneId,selfId,30900006,1)
		local Item3 = TryRecieveItem(sceneId,selfId,30900045,1)
		LuaFnItemBind(sceneId,selfId,Item1)
		LuaFnItemBind(sceneId,selfId,Item2)
		LuaFnItemBind(sceneId,selfId,Item3)
		
		SetMissionData(sceneId,selfId, EVENT_PARAM5, CurDay)
		
		local playername = GetName(sceneId, selfId)
		local strText = ""
		if sceneId == 0 then
			strText = format("#{_INFOUSR%s} #HtÕi #GLÕc Dß½ng - Phong H° TØ (209,152) #Htham gia sñ ki®n #GÐÕi HÖ Cß¶ng Hoá #Hðã nh§n ðßþc r¤t nhi«u ðÕo cø cß¶ng hoá.", playername)
		elseif sceneId == 1 then
			strText = format("#{_INFOUSR%s} #HtÕi #GTô Châu - Âu Dã TØ (266,140) #Htham gia sñ ki®n #GÐÕi HÖ Cß¶ng Hoá #Hðã nh§n ðßþc r¤t nhi«u ðÕo cø cß¶ng hoá.", playername)
		end
		BroadMsgByChatPipe(sceneId, selfId, strText, 4)
		
		BeginEvent(sceneId)	
			AddText(sceneId,"Trong tay näi ðã có nhi«u nguyên li®u cß¶ng hoá thª kia!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
	end
	
---------------------------½éÉÜ-------------------------------------------------
		if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText(sceneId,"#{function_help_055}#r")
				
				AddNumText(sceneId, x001066_g_ScriptId,"Trang b¸ kh¡c chÕm",11,11);
				AddNumText(sceneId, x001066_g_ScriptId,"Trang b¸ cß¶ng hóa",11,12);
				AddNumText(sceneId, x001066_g_ScriptId,"Giám ð¸nh ch¤t lßþng trang b¸",11,13);
				--AddNumText(sceneId, x001066_g_ScriptId,"Gi¾i thi®u thay ð±i ngoÕi hình",11,14);				
				AddNumText(sceneId, x001066_g_ScriptId,"Gi¾i thi®u v« giám ð¸nh tß ch¤t trang b¸ lÕi t× ð¥u",11,29);

			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	
		if GetNumText() == 11 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_044}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 12 then
			BeginEvent(sceneId)						
					AddText(sceneId,"#{function_help_045}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 13 then
			BeginEvent(sceneId)						
					AddText(sceneId,"#{function_help_046}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 14 then
			BeginEvent(sceneId)						
					AddText(sceneId,"#{function_help_047}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 29 then
			BeginEvent(sceneId)						
					AddText(sceneId,"#{function_help_097}")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		
		--------------------------------------------------------------------------
		
		-- Giám Ð¸nh Tß Ch¤t Trang B¸
		if GetNumText() == 4 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1001 )
			return
		end

		-- ×°±¸Ç¿»¯
		if	GetNumText()==5	then

			BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1002)
			return

		end

		if	GetNumText()==6	then

			BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1003)
			return

		end

		if	GetNumText()==7	then

			BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1010)
			return

		end

		-- Ôö¼Ó¿ÉÐÞÀí´ÎÊý
		if	GetNumText()==8	then

			BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1004)
			return

		end

		-- ×°±¸¿ÌÃú
		if	GetNumText()==9	then

			BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1005)
			return

		end
		
		-- ×°±¸³ýÃú
		if	GetNumText()==22	then

			BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 1006)
			return

		end
		
		-- ÖØÐÂ¼ø¶¨×°±¸×ÊÖÊ
		if	GetNumText()==19	then

			BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId)
			EndUICommand(sceneId)
			DispatchUICommand(sceneId,selfId, 112233)
			return

		end
		
		-- ÑªÔ¡Éñ±ø
		if GetNumText() == 105 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{XYSB_20070928_001}")				
				CallScriptFunction( x001066_g_ShenBingScriptId, "OnEnumerate",sceneId, selfId, targetId )
				CallScriptFunction( x001066_g_ChongZhuScriptId, "OnEnumerate",sceneId, selfId, targetId )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		
		if GetNumText() == 106 then
			BeginEvent(sceneId)						
				AddText( sceneId, "#{XYSB_20070928_011}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		
		if eventId == x001066_g_ShenBingScriptId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end	
		
		if eventId == x001066_g_ChongZhuScriptId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end	
		
		for i, findId in x001066_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
				return
			end
		end
		
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001066_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	if missionScriptId == x001066_g_ShenBingScriptId then
		CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
	end
	
--	local i				= 1
--	local findId	= 0
--	for i, findId in x001066_g_eventList do
--		if missionScriptId == findId then
--			local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
--			if ret > 0 then
--				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
--			end
--			return
--		end
--	end

end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001066_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	
	if missionScriptId == x001066_g_ShenBingScriptId then
		x001066_UpdateEventList( sceneId, selfId, targetId )
		return
	end	

end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001066_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	
	if missionScriptId == x001066_g_ShenBingScriptId then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end	

end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001066_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	
	if missionScriptId == x001066_g_ShenBingScriptId then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end	

end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x001066_OnDie( sceneId, selfId, killerId )
end

--**********************************
--Ìá½»ÎïÆ·
--**********************************
function x001066_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	
	if scriptId == x001066_g_ShenBingScriptId or scriptId == x001066_g_ChongZhuScriptId then
		CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
		return
	end
	
end
