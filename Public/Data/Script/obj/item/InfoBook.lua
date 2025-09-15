--------------------------------------------
--Çé±¨²¾µÀ¾ß½Å±¾
--Created By ×ó´ºÎ°
--------------------------------------------

--½Å±¾ID
x335807_g_scriptId = 335807
-- ÊÕ¼¯Çé±¨ÈÎÎñºÅ
x335807_g_MissionId = 1121;

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335807_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x335807_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x335807_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x335807_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if IsHaveMission(sceneId, selfId, x335807_g_MissionId) ==  1 then	
		if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
			return 0;
		end	
		if x335807_IsFitCondition(sceneId, selfId) == 0 then
			return 0;
		end
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);	
		local flag = GetMissionParam(sceneId, selfId, misIndex, 5);
		if flag == 0 then
			x335807_MsgBox(sceneId, selfId, "Ngß½i ğang thu th§p tình báo, thïnh không r¶i ği vùng phø c§n, nªu không thu th§p tình báo th¤t bÕi."); 
			SetMissionByIndex(sceneId, selfId, misIndex, 5, 1);		
		end
		return 1;
	end
	return 0;
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x335807_OnDeplete( sceneId, selfId )	
	return 1;
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335807_OnActivateOnce( sceneId, selfId )
	if IsHaveMission(sceneId, selfId, x335807_g_MissionId) == 1 then
		local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);
		local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1) + 1;	
		SetMissionByIndex(sceneId, selfId, misIndex, 1, ringNum);  				--ÈÎÎñ»·Êı¼Ó1
		SetMissionByIndex(sceneId, selfId, misIndex, ringNum+1, sceneId); --¸Ã³¡¾°ÒÑ´òÌ½¹ı	
		SetMissionByIndex(sceneId, selfId, misIndex, 5, 0);								--ÌáÊ¾ĞÅÏ¢±êÊ¶
		if ringNum >= 3 then 																							-- ÉèÖÃÈÎÎñÍê³É
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1);
		end
		local msg = "";
		msg = format("#{DT_80815_23}%d/3#{DT_80815_24}", ringNum);
		x335807_MsgBox(sceneId, selfId, msg);	
		return 1;
	end
	return 0;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335807_OnActivateEachTick( sceneId, selfId)
	return 1;
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x335807_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- Ìõ¼ş¼ì²é 
-- ³É¹¦: 1  th¤t bÕi: 0
--**********************************
function x335807_IsFitCondition(sceneId, selfId)
	--TÕi Íæ¼Ò°ïÅÉThành th¸?
	if GetCityGuildID(sceneId, selfId, sceneId) == -1 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_8}");
		return 0;
	elseif GetCityGuildID(sceneId, selfId, sceneId) == GetHumanGuildID(sceneId, selfId) then -- ±¾°ïÅÉ
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_9}");
		return 0;	
	end
	--ÒÑ´òÌ½¹ı?
	local misIndex = GetMissionIndexByID(sceneId, selfId, x335807_g_MissionId);
 	for i=2, 3 do 	--2,3Î»±£´æ´òÌ½toÕ ğµ µÚmµt ,¶şcáiThành th¸ID
 		local city = GetMissionParam(sceneId, selfId, misIndex, i);
 		if city == sceneId then
			x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_10}");
			return 0;	 			
 		end
 	end
 	--×é¶Ó?
 	if LuaFnHasTeam(sceneId, selfId) == 0 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_11}");
		return 0;	 		
 	elseif GetTeamSize(sceneId, selfId) < 2 then
 		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_11}");
		return 0;	 		
 	end
 	local teamSize = GetTeamSize(sceneId, selfId);
 	--Ğµi viên ¶¼TÕi ¸½½ü
 	if GetNearTeamCount(sceneId, selfId) < teamSize then
 		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_13}");
		return 0;	 		
 	end 	
 	--¶ÓÎé¶¼Ğúng±¾°ï³ÉÔ±?
 	local guildId = GetHumanGuildID(sceneId, selfId);
 	for i=0, teamSize-1 do
 		local memGuid = GetTeamMemberGuid(sceneId, selfId, i);
 		local objId = LuaFnGuid2ObjId(sceneId, memGuid);
 		if objId ~= -1 then
			if GetHumanGuildID(sceneId, objId) ~= guildId then
				x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_12}");
				return 0;	 			
			end
	 	end
 	end
 	--ÒÑ´òÌ½ÍêÈıThành th¸?
 	local ringNum = GetMissionParam(sceneId, selfId, misIndex, 1)
 	if ringNum >= 3 then
		x335807_MsgBox(sceneId, selfId, "#{DTGX_080822_14}");
		return 0;	  		
 	end
	-- OK
	return 1;
end
