--Áõ½¡Ã÷

--½Å±¾ºÅ
x311002_g_scriptId = 311002

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x311002_g_eventList={}--250036

x311002_g_eventDETime_1 = 0;
x311002_g_eventDETime_2 = 1;
x311002_g_eventDETime_4 = 2;
x311002_g_eventDETime_Lock = 3;
x311002_g_eventDETime_Unlock = 4;
x311002_g_eventDETime_Ask = 5;
x311002_g_Do_Unlock = 6;
x311002_g_Abandon_Unlock  = 7;

x311002_g_eventUpdateList = 100;
x311002_g_eventAddDETimeBegin = 200;

x311002_g_NpcSceneId = 0

-- 2000Äê1ÔÂ3ÈÕÁè³¿0 ði¬mtoÕ ðµ Ê±¼ä,Ë«±¶Kinh nghi®mÊ±¼ätoÕ ðµ »ù×¼
TIME_2000_01_03_	=		946828868


x311002_g_BuffPalyer_25 = 60
x311002_g_BuffAll_15 = 62
x311002_g_BuffPet_25 = 61
x311002_g_BuffPet_2 = 53

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x311002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)

		AddText(sceneId,"  #{LS_20080303}");
		
		AddNumText(sceneId, x311002_g_scriptId, "Mµt canh gi¶ g¤p ðôi kinh nghi®m", 6,x311002_g_eventDETime_1 )
		AddNumText(sceneId, x311002_g_scriptId, "Hai canh gi¶ g¤p ðôi kinh nghi®m", 6,x311002_g_eventDETime_2 )
		AddNumText(sceneId, x311002_g_scriptId, "B¯n canh gi¶ g¤p ðôi kinh nghi®m", 6,x311002_g_eventDETime_4 )
		AddNumText(sceneId, x311002_g_scriptId, "TÕm d×ng g¤p ðôi kinh nghi®m", 6,x311002_g_eventDETime_Lock )
		AddNumText(sceneId, x311002_g_scriptId, "Tiªp tøc g¤p ðôi kinh nghi®m", 6,x311002_g_eventDETime_Unlock )
		AddNumText(sceneId, x311002_g_scriptId, "Xem th¶i gian nhân kinh nghi®m", 6,x311002_g_eventDETime_Ask )
		AddNumText( sceneId, x311002_g_scriptId, "Gi¾i thi®u lînh nh§n", 11, 10 )
			
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end	

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x311002_OnDefaultEvent( sceneId, selfId, targetId )
	x311002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x311002_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 10 then
			BeginEvent(sceneId)	
				AddText( sceneId, "#{function_help_079}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	-- ÅÐ¶ÏÍæ¼ÒtoÕ ðµ µÈc¤p,Ð¡ÓÚ10¾ÍTr· v«
	if GetLevel(sceneId, selfId) < 10  then
		BeginEvent(sceneId)
			AddText(sceneId,"  ÐÆng c¤p cüa ngß½i vçn chßa t¾i c¤p 10, hãy tiªp tøc rèn luy®n")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 
	end
	
	-- ¼ì²âÐúng²»ÐúngC¥n ´ÓÐÂË¢ÐÂÊý¾Ý
	-- ÏÖTÕi Ê±¼ä
	local nCurTime = LuaFnGetCurrentTime()
	-- ÉÏ´ÎË¢ÐÂÊý¾ÝtoÕ ðµ Ê±¼ä
	local nPreTime = DEGetPreTime(sceneId, selfId)

	if (nCurTime - nPreTime  >= 3600*24*7)  or
		 (floor((nCurTime-TIME_2000_01_03_)/(3600*24*7)) ~= floor((nPreTime-TIME_2000_01_03_)/(3600*24*7)))   then
		DEResetWeeklyFreeTime(sceneId, selfId)
	end
	
	local nNowGetTime = 0
	
	if GetNumText() == x311002_g_eventDETime_1	then
		nNowGetTime	= 1
		x311002_AddDETime(sceneId, selfId, targetId, 1, nCurTime, nPreTime)
		
	elseif GetNumText() == x311002_g_eventDETime_2	then
		nNowGetTime	= 2
		x311002_AddDETime(sceneId, selfId, targetId, 2, nCurTime, nPreTime)
		
	elseif GetNumText() == x311002_g_eventDETime_4	then
		nNowGetTime	= 4
		x311002_AddDETime(sceneId, selfId, targetId, 4, nCurTime, nPreTime)
		
	elseif GetNumText() == x311002_g_eventDETime_Lock	then
		
		-- ÏÈ¼ì²âmµt ÏÂÐúng²»Ðúng¶³½á×´Ì¬,Èç¹ûÐúng,¾ÍTr· v«,²¢Ö±½ÓÌáÊ¾
		if DEIsLock(sceneId, selfId) > 0   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th¶i gian g¤p ðôi kinh nghi®m cüa ngß½i ðã r½i vào trÕng thái kªt ðông")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return			
		end
	
		-- ¶³½átoÕ ðµ Ê±ºò,
		local nCurHave = DEGetFreeTime(sceneId, selfId)
		nCurHave = nCurHave + DEGetMoneyTime(sceneId, selfId)

		-- ÏÈ¼ÆËãÏÂµ±Ç°Íæ¼ÒÉíÉÏÊ£ÏÂtoÕ ðµ Ê±¼ä
		local nTrueTime = nCurHave;
		
		if nTrueTime <= 0 then 
			BeginEvent(sceneId)
				AddText(sceneId,"  Ngß½i hi®n không có th¶i gian g¤p ðôi kinh nghi®m ðã lînh sao?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			nTrueTime = 0
			return
		end
		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x311002_g_scriptId);
			UICommand_AddInt(sceneId,targetId);
			UICommand_AddInt(sceneId,50)
			UICommand_AddString(sceneId,"LockTime");
			local str = format("Ngß½i hi®n có %d phút th¶i gian g¤p ðôi, ngß½i xác ð¸nh mu¯n tÕm d×ng không?",floor(nTrueTime/60) ) 
			UICommand_AddString(sceneId,str);
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)		

	elseif GetNumText() == x311002_g_eventDETime_Unlock	then
		-- ½â¶³toÕ ðµ Ê±ºò,
		-- ÏÈÅÐ¶ÏÐúng²»ÐúngÓÐË«±¶Kinh nghi®mÊ±¼ä¿ÉÒÔ½â³ý
		local bLock = DEIsLock(sceneId, selfId)
		if bLock <= 0    then
			BeginEvent(sceneId)
				AddText(sceneId,"  Các hÕ không có kªt ðông th¶i gian g¤p ðôi kinh nghi®m · ch² ta?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- Èç¹ûÍæ¼ÒÉíÉÏÓÐÒ©Ë®toÕ ðµ BUFF,C¥n ¸øÍæ¼Òmµt cáiÌáÊ¾
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x311002_g_BuffPalyer_25) == 1   
				or  LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x311002_g_BuffAll_15) == 1
				then
			BeginEvent(sceneId)
				AddText(sceneId,"  Trên ngß¶i các hÕ ðã t°n tÕi th¶i gian nhân ðôi kinh nghi®m, mu¯n xác nh§n giäi ðông chång?")
				AddNumText(sceneId, x311002_g_scriptId, "Xác nh§n giäi ðông", 6,x311002_g_Do_Unlock )
				AddNumText(sceneId, x311002_g_scriptId, "Hüy bö giäi ðông", 6,x311002_g_eventUpdateList )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		DESetLock(sceneId, selfId, 0)
		--DESetBeginTime(sceneId, selfId, nCurTime)
		BeginEvent(sceneId)
			AddText(sceneId,"  G¤p ðôi th¶i gian kinh nghi®m ðßþc kªt ðông cüa ngß½i ðã ðßþc giäi ðông")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

		-- Í¬²½Êý¾Ýµ½¿Í»§¶Ë
		SendDoubleExpToClient(sceneId,selfId)
	
	elseif GetNumText() == x311002_g_Do_Unlock	then
		DESetLock(sceneId, selfId, 0)
		--DESetBeginTime(sceneId, selfId, nCurTime)
		BeginEvent(sceneId)
			AddText(sceneId,"  G¤p ðôi th¶i gian kinh nghi®m ðßþc kªt ðông cüa ngß½i ðã ðßþc giäi ðông")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

		-- Í¬²½Êý¾Ýµ½¿Í»§¶Ë
		SendDoubleExpToClient(sceneId,selfId)
	
	elseif GetNumText() == x311002_g_Abandon_Unlock	then
		return
		
	elseif GetNumText() == x311002_g_eventDETime_Ask	then
			
		local nCount = DEGetCount(sceneId, selfId)
	
		BeginEvent(sceneId)
			if nCount and nCount > 0 then
				AddText(sceneId,"Th¶i gian g¤p ðôi kinh nghi®m mà ngß½i có th¬ lînh · ch² ta trong tu¥n này là #R"..tostring(floor(nCount)).." gi¶#W, mau t§n døng t¯t")
			else
				AddText(sceneId,"Th§t ðáng tiªc, th¶i gian g¤p ðôi kinh nghi®m mà ta có th¬ cung c¤p cho các hÕ trong tu¥n này là #R0 canh gi¶#W")
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == x311002_g_eventUpdateList	then
		x311002_UpdateEventList( sceneId, selfId,targetId )
	
	elseif GetNumText() >= x311002_g_eventAddDETimeBegin	then
		--ÑéÖ¤²¢ÇÒÔö¼Ó
		local nPoint = GetNumText()-x311002_g_eventAddDETimeBegin;
		
		local nCount = DEGetCount(sceneId, selfId)
		if nCount < nPoint    then
			return
		end
		
		local nCurHave = DEGetFreeTime(sceneId, selfId)
		nCurHave = nCurHave + DEGetMoneyTime(sceneId, selfId)
		-- ÏÈ¼ÆËãÏÂµ±Ç°Íæ¼ÒÉíÉÏÊ£ÏÂtoÕ ðµ Ê±¼ä
		local nTrueTime = nCurHave;
		
		if nTrueTime < 0 then 
			nTrueTime = 0
		end
		
		WithDrawFreeDoubleExpTime(sceneId, selfId, nPoint, 0, 0 )
		
		BeginEvent(sceneId)
			AddText(sceneId,"  Các hÕ ðã lînh thành công #R".. nPoint .." gi¶ #Wg¤p ðôi kinh nghi®m. Hi®n các hÕ có #Y".. tostring(floor((nTrueTime + nPoint*3600)/60)) .. " phút #Wg¤p ðôi kinh nghi®m.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

		BeginEvent(sceneId)
			AddText(sceneId,"  Các hÕ ðã lînh thành công #R".. nPoint .." gi¶ #Wg¤p ðôi kinh nghi®m. Hi®n các hÕ có #Y".. tostring(floor((nTrueTime + nPoint*3600)/60)) .. " phút #Wg¤p ðôi kinh nghi®m.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		-- Í¬²½Êý¾Ýµ½¿Í»§¶Ë
		SendDoubleExpToClient(sceneId,selfId)

	end

end

function x311002_AddDETime(sceneId, selfId, targetId, nPoint, nCurTime, nPreTime)
		local nCurHave = DEGetFreeTime(sceneId, selfId)
		nCurHave = nCurHave + DEGetMoneyTime(sceneId, selfId)
		
		local nFreeTime = DEGetFreeTime(sceneId, selfId)
		-- ÏÈ¼ÆËãÏÂµ±Ç°Íæ¼ÒÉíÉÏÊ£ÏÂtoÕ ðµ Ê±¼ä
		local nTrueTime = nCurHave;
		
		if nTrueTime < 0 then 
			nTrueTime = 0
		end
		
		-- ¿´»¹ÓÐÃ»ÓÐÊ±¼ä¿ÉÒÔLînh 
		local nCount = DEGetCount(sceneId, selfId)
		
		if(nCount <= 0)   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th¶i gian g¤p ðôi kinh nghi®m mà ngß½i ðã lînh · ch² ta trong tu¥n này, ðã dùng hªt")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return 
		end
		
		if nCount < nPoint   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Các hÕ không có nhi«u th¶i gian có th¬ nh§n")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return 
		end
		
		-- ¿´ÉíÉÏÐúng²»ÐúngÒÑ¾­ÓÐ±È½Ï¶àtoÕ ðµ Ê±¼äÁË,2Ð¡Ê±
		if nFreeTime >= 120*60   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th¶i gian kinh nghi®m g¤p ðôi các hÕ có ðßþc · ba thành ph¯ l¾n và thành ph¯ tñ xây ðã ðÕt mÑc gi¾i hÕn cao nh¤t ðßþc nh§n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return 
		end
		
		-- ¼ì²âÍæ¼Ò²»ÄÜÓµÓÐ³¬¹ý4cáiÐ¡Ê±toÕ ðµ Ê±¼ä
		if nFreeTime + nPoint*3600 > 3600*4   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th¶i gian kinh nghi®m g¤p ðôi các hÕ có ðßþc · ba thành ph¯ l¾n và thành ph¯ tñ xây ðã ðÕt mÑc gi¾i hÕn cao nh¤t ðßþc nh§n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return 
		end
		
		-- ¿´ÉíÉÏÐúng²»ÐúngÓÐ¶³½áÁËtoÕ ðµ Ê±¼ä
		if DEIsLock(sceneId,selfId)  > 0    then
			BeginEvent(sceneId)
				AddText(sceneId,"  Các hÕ còn làm ðông kªt th¶i gian g¤p ðôi kinh nghi®m, hãy giäi ðông trß¾c r°i t¾i nh§n th¶i gian g¤p ðôi kinh nghi®m m¾i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return 
		end
	
		BeginEvent(sceneId)
			if (nTrueTime/60) > 0 then
				AddText(sceneId,"Tu¥n này, các hÕ ðã lînh s¯ l¥n dß cüa th¶i gian g¤p ðôi kinh nghi®m #R" .. tostring(floor(nCount)) .. " gi¶#W, ðã có th¶i gian g¤p ðôi kinh nghi®m #Y" .. tostring(floor(nTrueTime/60)) .. " phút#W, các hÕ xác nh§n mu¯n lînh #Y" .. tostring(floor(nPoint*60)) .. " phút #Wth¶i gian g¤p ðôi kinh nghi®m không? ");
			else
				AddText(sceneId,"Tu¥n này, các hÕ ðã lînh s¯ l¥n dß cüa th¶i gian g¤p ðôi kinh nghi®m #R" .. tostring(floor(nCount)) .. " gi¶#W, các hÕ xác nh§n mu¯n lînh #Y" .. tostring(floor(nPoint*60)) .. " phút #Wth¶i gian g¤p ðôi kinh nghi®m không? ");
			end
			
			-- Èç¹ûCái này Ê±ºòÍæ¼ÒÉíÉÏÓÐË«±¶Kinh nghi®mÒ©Ë®Ð§¹û,C¥n ¸øÍæ¼ÒÌáÊ¾
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x311002_g_BuffPalyer_25) == 1   
					or  LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x311002_g_BuffAll_15) == 1
					then
				AddText(sceneId,"  #r#RXin chú ý: Trên ngß¶i các hÕ ðã có t°n tÕi th¶i gian nhân ðôi kinh nghi®m, có mu¯n xác nh§n nh§n lînh không?");
			end
			
			AddNumText(sceneId, x311002_g_scriptId, "Ðúng v§y, ta mu¯n lînh gi¶ g¤p ðôi kinh nghi®m", -1,x311002_g_eventAddDETimeBegin+nPoint )
			AddNumText(sceneId, x311002_g_scriptId, "Không, ta nh¤n sai r°i", -1,x311002_g_eventUpdateList )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x311002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x311002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x311002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x311002_g_eventList do
		if missionScriptId == findId then
			x311002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x311002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x311002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x311002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x311002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x311002_OnDie( sceneId, selfId, killerId )

end

function x311002_LockTime( sceneId, selfId, targetId, nTime )
	if nTime < 0 then
		return 
	end
	
	-- Ö»ÓÐTÕi  LÕc Dß½ng,Tô Châu,ÐÕi Lý,Lâu Lan,Thúc Hà C± Tr¤n Õâ¼¸cái³¡¾°ÄÜ¹»¶³½áË«±¶Kinh nghi®m
	if sceneId~=0 and sceneId~=1 and sceneId~=2 and sceneId~=186 and sceneId~=420 
			and sceneId ~= 193 and sceneId ~= 418 and sceneId ~= 419 and sceneId ~= 518  then	 -- zchw
		return
	end

	--  ðÕt ðßþc·þÎñÆ÷¼ÇÂ¼toÕ ðµ Êµ¼ÊtoÕ ðµ ÕæÊµÊ±¼ä
	local nCurTime = LuaFnGetCurrentTime()
	local nCurHave = DEGetFreeTime(sceneId, selfId)
	nCurHave = nCurHave + DEGetMoneyTime(sceneId, selfId)
	-- ÏÈ¼ÆËãÏÂµ±Ç°Íæ¼ÒÉíÉÏÊ£ÏÂtoÕ ðµ Ê±¼ä
	local nTrueTime = nCurHave;
	
	if nTrueTime < 0 then 
		nTrueTime = 0
	end

	DESetLock(sceneId, selfId, 1)
	--DESetFreeTime(sceneId, selfId, nTrueTime)
	
	BeginEvent(sceneId)
		AddText(sceneId,"  Ðã ðông kªt " .. tostring(floor(nTrueTime/60)) .. " phút th¶i gian g¤p ðôi kinh nghi®m")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"  Ðã ðông kªt " .. tostring(floor(nTrueTime/60)) .. " phút th¶i gian g¤p ðôi kinh nghi®m")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	-- Í¬²½Êý¾Ýµ½¿Í»§¶Ë
	SendDoubleExpToClient(sceneId,selfId)

end


