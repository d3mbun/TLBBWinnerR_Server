--LÕc Dß½ngNPC
--ÑàÇà
--ÆÕÍ¨

--½Å±¾ºÅ
x000034_g_ScriptId = 000034

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x000034_g_eventList={250507, 808101, 808102, 808103, 808093}


x000034_g_DarkSkillName = { [40] = {name = "ném ám khí", id = 274, needmoney = 20000},
                            [70] = {name = "ám khí ðã huy®t", id = 275, needmoney = 100000},
                            [90] = {name = "ám khí hµ th¬", id = 276, needmoney = 500000},
                          }                
x000034_g_DarkSkillTips = { [40] = "#{FBSJ_090106_89}",
                            [70] = "#{FBSJ_090106_90}",
                            [90] = "#{FBSJ_090106_91}",
                          }  
x000034_g_DarkBreachPointNeedMoney = 
{
	[39] = 40000,
	[49] = 50000,
	[59] = 60000,
	[69] = 70000,
	[79] = 80000,
	[89] = 90000,
	[99] = 100000,
	[109] = 110000,
	[119] = 120000,
	[129] = 130000,
}  --Í»ÆÆÆ¿¾±C¥n ½ðÇ®


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000034_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ "
	end
	BeginEvent(sceneId)
		AddText(sceneId,"#{FBYQ_090204_01}"..PlayerSex.."#{FBYQ_090204_02}")
		for i, eventId in x000034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		
		AddNumText(sceneId,x000034_g_ScriptId,"Trao Ð±i Th¥n Di®c ThÕch",3,999)
		AddNumText(sceneId,x000034_g_ScriptId,"Trao Ð±i Vong Vô ThÕch",3,888)
		AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_05}",6,7)
		AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_06}",6,8)
		AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_01}",6,9)
		AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_07}",6,10)
		AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_090311_01}",6,11)
		AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_08}",6,31)
		AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_09}",11,28)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000034_OnDefaultEvent( sceneId, selfId,targetId )
	x000034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000034_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000034_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	local NumText = GetNumText();
	if NumText == 999 then
		local ThanDiecThach2 = LuaFnGetAvailableItemCount(sceneId,selfId,30503122)
		local ThanDiecThach3 = LuaFnGetAvailableItemCount(sceneId,selfId,30503129)
		local ThanDiecThach = ThanDiecThach2 + ThanDiecThach3
		BeginEvent(sceneId)
			AddText(sceneId,"Mµt s¯ lßþng Th¥n Di®c ThÕch không th¬ sØ døng, ta s¨ ð±i lÕi cho ngß½i!")
			AddText(sceneId,"S¯ lßþng Th¥n Di®c ThÕch trao ð±i: "..ThanDiecThach)
			AddNumText(sceneId,x000034_g_ScriptId,"Ta Ð°ng Ý",3,9999)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if NumText == 9999 then
		if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C¥n 1 ô tr¯ng trong túi ÐÕo Cø!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		local ThanDiecThach2 = LuaFnGetAvailableItemCount(sceneId,selfId,30503122)
		local ThanDiecThach3 = LuaFnGetAvailableItemCount(sceneId,selfId,30503129)
		local ThanDiecThach = ThanDiecThach2 + ThanDiecThach3
		
		if ThanDiecThach == 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i không có mang theo Th¥n Di®c ThÕch m¾i?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		LuaFnDelAvailableItem(sceneId,selfId,30503122,ThanDiecThach2)
		LuaFnDelAvailableItem(sceneId,selfId,30503129,ThanDiecThach3)
		for i = 1, ThanDiecThach do
			LuaFnTryRecieveItem(sceneId,selfId,30503115,1)
		end
		BeginEvent(sceneId)
			AddText(sceneId,"Trao ð±i thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if NumText == 888 then
		local VongVoThach2 = LuaFnGetAvailableItemCount(sceneId,selfId,30503123)
		local VongVoThach3 = LuaFnGetAvailableItemCount(sceneId,selfId,30503130)
		local VongVoThach = VongVoThach2 + VongVoThach3
		BeginEvent(sceneId)
			AddText(sceneId,"Mµt s¯ lßþng Vong Vô ThÕch không th¬ sØ døng, ta s¨ ð±i lÕi cho ngß½i!")
			AddText(sceneId,"S¯ lßþng Vong Vô ThÕch trao ð±i: "..VongVoThach)
			AddNumText(sceneId,x000034_g_ScriptId,"Ta Ð°ng Ý",3,8888)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if NumText == 8888 then
		if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"C¥n 1 ô tr¯ng trong túi ÐÕo Cø!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		local VongVoThach2 = LuaFnGetAvailableItemCount(sceneId,selfId,30503123)
		local VongVoThach3 = LuaFnGetAvailableItemCount(sceneId,selfId,30503130)
		local VongVoThach = VongVoThach2 + VongVoThach3
		
		if VongVoThach == 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ngß½i không có mang theo Vong Vô ThÕch m¾i?")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		LuaFnDelAvailableItem(sceneId,selfId,30503123,VongVoThach2)
		LuaFnDelAvailableItem(sceneId,selfId,30503130,VongVoThach3)
		for i = 1, VongVoThach do
			LuaFnTryRecieveItem(sceneId,selfId,30503118,1)
		end
		BeginEvent(sceneId)
			AddText(sceneId,"Trao ð±i thành công!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if NumText == 6 then  --HuÖ böÁË
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
	elseif NumText == 7 then  --Í»ÆÆ°µÆ÷Æ¿¾±
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_10}")
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_11}",6,12)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_12}",8,13)
			
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif NumText == 8 then  --Ñ§Ï°°µÆ÷ÊÖ·¨
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_20}")
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_21}",6,14)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_22}",6,15)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_23}",6,16)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 9 then   --ÖØÏ´°µÆ÷ÊôÐÔ
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_31}")
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_32}",6,21)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_33}",6,22)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_34}",6,23)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_35}",6,24)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_36}",6,25)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 10 then  --ÖØÏ´°µÆ÷¼¼ÄÜ
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 6 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 11 then  --ÖØÖÃ°µÆ÷
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_84}")
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_090311_03}",6,26)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_090311_04}",6,27)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_081209_12}",8,13)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 12 then                   --ÎÒÒªÍ»ÆÆµ±Ç°Æ¿¾±
		if (x000034_CheckDarkReachPoint(sceneId, selfId, targetId) == 1) then
			BeginEvent(sceneId)
				local nDarkLevel = GetDarkLevel(sceneId, selfId);
				local nNeedMoney = x000034_g_DarkBreachPointNeedMoney[nDarkLevel];
				if (nNeedMoney == nil or nNeedMoney <= 0) then
					nNeedMoney = 100000;         --ÒÔ·ÀÍòmµt ,²¢Ã»Ê²Ã´ÓÃ
				end
				local strInfo = format("  Ðµt phá v§n hành gi¾i hÕn c¥n #{_EXCHG%d}.", nNeedMoney);
				AddText(sceneId,strInfo)
				AddNumText(sceneId,x000034_g_ScriptId,"#{INTERFACE_XML_557}",6,20)
				AddNumText(sceneId,x000034_g_ScriptId,"#{Agreement_Info_No}",8,6)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
	elseif NumText == 13 then
		x000034_OnDefaultEvent( sceneId, selfId,targetId )
	elseif NumText == 14 then
		
			BeginEvent(sceneId)
				local strInfo = format("  H÷c %s thü pháp c¥n #{_EXCHG%d}.", x000034_g_DarkSkillName[40].name, x000034_g_DarkSkillName[40].needmoney);
				AddText(sceneId,strInfo)
				AddNumText(sceneId,x000034_g_ScriptId,"#{INTERFACE_XML_557}",6,17)
				AddNumText(sceneId,x000034_g_ScriptId,"#{Agreement_Info_No}",8,6)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 15 then
			BeginEvent(sceneId)
				local strInfo = format("  H÷c %s thü pháp c¥n #{_EXCHG%d}.", x000034_g_DarkSkillName[70].name, x000034_g_DarkSkillName[70].needmoney);
				AddText(sceneId,strInfo)
				AddNumText(sceneId,x000034_g_ScriptId,"#{INTERFACE_XML_557}",6,18)
				AddNumText(sceneId,x000034_g_ScriptId,"#{Agreement_Info_No}",8,6)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 16 then
			BeginEvent(sceneId)
				local strInfo = format("  H÷c %s thü pháp c¥n #{_EXCHG%d}.", x000034_g_DarkSkillName[90].name, x000034_g_DarkSkillName[90].needmoney);
				AddText(sceneId,strInfo)
				AddNumText(sceneId,x000034_g_ScriptId,"#{INTERFACE_XML_557}",6,19)
				AddNumText(sceneId,x000034_g_ScriptId,"#{Agreement_Info_No}",8,6)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 17 then
		if x000034_CheckStudyDarkSkills(sceneId, selfId, targetId, 40) == 1 then
			x000034_StudyDarkSkills(sceneId, selfId, targetId, 40);
		end
	elseif NumText == 18 then
		if x000034_CheckStudyDarkSkills(sceneId, selfId, targetId, 70) == 1 then
			x000034_StudyDarkSkills(sceneId, selfId, targetId, 70);
		end
	elseif NumText == 19 then
		if x000034_CheckStudyDarkSkills(sceneId, selfId, targetId, 90) == 1 then
			x000034_StudyDarkSkills(sceneId, selfId, targetId, 90);
		end
	elseif NumText == 20 then
		x000034_BreachDarkPoint(sceneId, selfId, targetId);
	elseif NumText == 21 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 1 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 22 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 2 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 23 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 3 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 24 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 4 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 25 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 5 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 26 then
	 	BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 7 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 27 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 8 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	elseif NumText == 28 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_081209_69}")
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_090304_02}",11,29)
			AddNumText(sceneId,x000034_g_ScriptId,"#{FBSJ_090304_01}",11,30)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 29 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_090304_03}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 30 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{FBSJ_090304_04}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 31 then
		BeginUICommand(sceneId)
		UICommand_AddInt( sceneId, 9 )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 800034)
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000034_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000034_g_eventList do
		if missionScriptId == findId then
			x000034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x000034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000034_OnDie( sceneId, selfId, killerId )
end




--**********************************
--ÅÐ¶ÏÐúng·ñÄÜ¹»Ñ§Ï°
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª: 40,70,90,·Ö±ðÑ§Ï°¶ÔÓ¦c¤p±ðtoÕ ðµ ¼¼ÄÜ
--**********************************
function x000034_CheckStudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
	if (nSkillIndex ~= 40 and nSkillIndex ~= 70 and nSkillIndex ~= 90) then
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒµÈc¤pÐúng·ñ¹»ÁË
	local strNotice = "";
	local nLevel = GetLevel(sceneId, selfId);
	if ( nLevel < nSkillIndex) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_24}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_27}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_29}";
		end
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÐúng·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x000034_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÐúng·ñÓÐ×ã¹»toÕ ðµ Ç®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x000034_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	return 1;
	
end

--**********************************
--Íæ¼ÒÕÒNPCÑ§Ï°°µÆ÷Ê¹ÓÃ¼¼ÄÜ
--nSkillIndex²ÎÊý¿ÉÄÜÖµÎª: 40,70,90,·Ö±ðÑ§Ï°¶ÔÓ¦c¤p±ðtoÕ ðµ ¼¼ÄÜ
--**********************************
function x000034_StudyDarkSkills( sceneId, selfId, targetId, nSkillIndex )
	
	if (nSkillIndex ~= 40 and nSkillIndex ~= 70 and nSkillIndex ~= 90) then
		return
	end
	
	--ÅÐ¶ÏÍæ¼ÒµÈc¤pÐúng·ñ¹»ÁË
	local strNotice = "";
	local nLevel = GetLevel(sceneId, selfId);
	if ( nLevel < nSkillIndex) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_24}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_27}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_29}";
		end
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÐúng·ñÒÑ¾­Ñ§»áÁË¶ÔÓ¦¼¼ÄÜ
	if  (HaveSkill(sceneId, selfId, x000034_g_DarkSkillName[nSkillIndex].id) > 0 ) then
		if (nSkillIndex == 40) then
			strNotice = "#{FBSJ_081209_26}";
		elseif (nSkillIndex == 70) then
			strNotice = "#{FBSJ_081209_28}";
		elseif (nSkillIndex == 90) then
			strNotice = "#{FBSJ_081209_30}";
		end
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÐúng·ñÓÐ×ã¹»toÕ ðµ Ç®
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < x000034_g_DarkSkillName[nSkillIndex].needmoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý,¿ÉÒÔ¿ÛÇ®¸ø¼¼ÄÜÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, x000034_g_DarkSkillName[nSkillIndex].needmoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	AddSkill(  sceneId, selfId, x000034_g_DarkSkillName[nSkillIndex].id)
	x000034_ShowNotice(sceneId, selfId, targetId, x000034_g_DarkSkillTips[nSkillIndex]);
	x000034_NotifyTips( sceneId, selfId, x000034_g_DarkSkillTips[nSkillIndex] )
	
	x000034_StudySkillImpact(sceneId, selfId)
	DarkOperateResult(sceneId, selfId, 5, 1);    --ÈÃ¼¼ÄÜ°´Å¥ÉÁË¸
	
end


--**********************************
-- ÆÁÄ»ÖÐ¼äÐÅÏ¢ÌáÊ¾
--**********************************
function x000034_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
--Íæ¼ÒÐúng·ñThöa mãn°µÆ÷Æ¿¾±Ìõ¼þ
--Tr· v«Öµ: 0»òÕß1,1ÎªThöa mãn,0
--**********************************
function x000034_CheckDarkReachPoint(sceneId, selfId, targetId)
		
		local strInfo = "";
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÐúng·ñ×°±¸ÓÐ°µÆ÷
		local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
		if ( bHaveDarkEquip ~= 1) then
			strInfo = "#{FBSJ_081209_13}";
			x000034_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷Ðúng·ñ´ïµ½Æ¿¾±
		local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
		if (bNeedNPC ~= 1) then
			strInfo = "#{FBSJ_081209_14}";
			x000034_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒµÈc¤pÐúng·ñºÍ°µÆ÷µÈc¤pÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈc¤p¸ß
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nCharLevel = GetLevel(sceneId, selfId);
		if (nDarkLevel >= nCharLevel) then
			strInfo = "#{FBSJ_081209_15}";
			x000034_ShowNotice(sceneId, selfId, targetId, strInfo);
			return 0;
		end
		
		--ÅÐ¶ÏÍæ¼ÒÉíÉÏÐúng·ñÓÐ×ã¹»toÕ ðµ Ç®
		local nDarkLevel = GetDarkLevel(sceneId, selfId);
		local nNeedMoney = x000034_g_DarkBreachPointNeedMoney[nDarkLevel];
		if (nNeedMoney == nil or nNeedMoney <= 0) then
			nNeedMoney = 100000;         --ÒÔ·ÀÍòmµt ,²¢Ã»Ê²Ã´ÓÃ
		end
		local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
		if (nHaveMoney < nNeedMoney) then    --10½ð
			strNotice = "#{FBSJ_081209_25}";
			x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
			return 0;
		end
				
		return 1;
end


function x000034_BreachDarkPoint(sceneId, selfId, targetId)

	local strInfo = "";
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏÐúng·ñ×°±¸ÓÐ°µÆ÷
	local bHaveDarkEquip = HaveDarkEquiped(sceneId, selfId);
	if ( bHaveDarkEquip ~= 1) then
		strInfo = "#{FBSJ_081209_13}";
		x000034_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒÉíÉÏ°µÆ÷Ðúng·ñ´ïµ½Æ¿¾±
	local bNeedNPC = IsDarkNeedLevelUpByNpcNow(sceneId, selfId);
	if (bNeedNPC ~= 1) then
		strInfo = "#{FBSJ_081209_14}";
		x000034_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
	--ÅÐ¶ÏÍæ¼ÒµÈc¤pÐúng·ñºÍ°µÆ÷µÈc¤pÏàµÈ»òÕßÃ»ÓÐ°µÆ÷µÈc¤p¸ß
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nCharLevel = GetLevel(sceneId, selfId);
	if (nDarkLevel >= nCharLevel) then
		strInfo = "#{FBSJ_081209_15}";
		x000034_ShowNotice(sceneId, selfId, targetId, strInfo);
		return 0;
	end
		
			--ÅÐ¶ÏÍæ¼ÒÉíÉÏÐúng·ñÓÐ×ã¹»toÕ ðµ Ç®
	local nDarkLevel = GetDarkLevel(sceneId, selfId);
	local nNeedMoney = x000034_g_DarkBreachPointNeedMoney[nDarkLevel];
	if (nNeedMoney == nil or nNeedMoney <= 0) then
		nNeedMoney = 100000;         --ÒÔ·ÀÍòmµt ,²¢Ã»Ê²Ã´ÓÃ
	end
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney < nNeedMoney) then    --10½ð
		strNotice = "#{FBSJ_081209_25}";
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--ÉÏÃæÅÐ¶Ï¶¼Í¨¹ý,¿ÉÒÔ¿ÛÇ®Í»ÆÆÁË
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId, nNeedMoney);
	if (nRet == -1) then
		strNotice = "#{FBSJ_081209_25}";
		x000034_ShowNotice(sceneId, selfId, targetId, strNotice);
		return 0;
	end
	
	--Í»ÆÆÆ¿¾±,ÈÃ°µÆ÷Éýc¤p
	local bDarkLevelup = DarkLevelUp(sceneId, selfId);
	if (bDarkLevelup == 1) then
		x000034_ShowNotice(sceneId, selfId, targetId, "#{FBSJ_081209_18}");
		--Í»ÆÆ³É¹¦,¼ÇÂ¼Í³¼ÆÈÕÖ¾
			local guid = LuaFnObjId2Guid(sceneId, selfId);
			local sLog = format("dark level now: %d", nDarkLevel + 1); 
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_ANQITUPO, guid, sLog);
	else
		x000034_ShowNotice(sceneId, selfId, targetId, "Ðµt phá không thành công");
	end
	
	return
end

function x000034_ShowNotice( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000034_StudySkillImpact(sceneId, playerId)
	--ÏÔÊ¾Ñ§Ï°µ½ÐÂ¼¼ÄÜtoÕ ðµ ÌØÐ§ Ä¿Ç°Ê¹ÓÃÉýc¤pÌØÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 32407, 0 )
end
