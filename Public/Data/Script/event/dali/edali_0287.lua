-- Òı¼ö¼ÓÈëÃÅÅÉÈÎÎñ
-- TÕi ¸÷ÃÅÅÉtoÕ ğµ °İÊ¦NPC´¦Ôö¼Ómµt cáiÑ¡Ïî: Òı¼ö¼ÓÈëÃÅÅÉ.

x210287_g_ScriptId = 210287

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210287_OnEnumerate( sceneId, selfId, targetId )
	local mp = GetMenPai(sceneId, selfId)
	if mp ~= 9 then 
		AddNumText(sceneId, x210287_g_ScriptId, "Tiªn cØ gia nh§p môn phái", 1, 900);
	end
end

function x210287_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText()==900  then
		local nNpcmenPai = -1
		--  ğÕt ğßşcNPCtoÕ ğµ ÃÅÅÉÒıµ¼ÈËtoÕ ğµ ÃÅÅÉ
		if GetName(sceneId, targetId) == "Tu® D¸ch"  then
			nNpcmenPai = 0
		elseif GetName(sceneId, targetId) == "ThÕch Bäo"  then
			nNpcmenPai = 1
		elseif GetName(sceneId, targetId) == "Giän Ninh"  then
			nNpcmenPai = 2
		elseif GetName(sceneId, targetId) == "Trß½ng HoÕch"  then
			nNpcmenPai = 3
		elseif GetName(sceneId, targetId) == "Lµ Tam Nß½ng"  then
			nNpcmenPai = 4
		elseif GetName(sceneId, targetId) == "Häi Phong TØ"  then
			nNpcmenPai = 5
		elseif GetName(sceneId, targetId) == "Phá Tham"  then
			nNpcmenPai = 6
		elseif GetName(sceneId, targetId) == "Trình Thanh Sß½ng"  then
			nNpcmenPai = 7
		elseif GetName(sceneId, targetId) == "Ğàm Ğài TØ Vû"  then
			nNpcmenPai = 8
		elseif GetName(sceneId, targetId) == "Mµ Dung Truy«n"  then
			nNpcmenPai = 10
		end	
		
		--1, ği¬m»÷toÕ ğµ Ê±ºòÊ×ÏÈÅĞ¶¨Íæ¼ÒĞúng·ñÎª±¾ÃÅÅÉµÜ×Ó,Èç¹û²»ĞúngÔòµ¯³ö¶Ô»°: Ö»ÓĞ±¾ÃÅµÜ×Ó²ÅÄÜÒı¼öÎ´¼ÓÈëÃÅÅÉtoÕ ğµ Íæ¼Ò¼ÓÈë±¾ÃÅ
		if nNpcmenPai ~= GetMenPai(sceneId, selfId)   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Chï có ğ® tØ bän môn m¾i có th¬ tiªn cØ ngß¶i ch½i chßa gia nh§p môn phái gia nh§p môn phái này.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		BeginEvent(sceneId)
			AddText(sceneId,"  Hi®n gi¶ các môn phái tranh cß¾p ngß¶i tài k¸ch li®t, vì v§y tÕi hÕ quyªt ğ¸nh, phàm là ğ® tØ bän môn tiªn cØ ğ® tØ chßa gia nh§p môn phái c¤p b§c 10 gia nh§p bän môn, s¨ có giäi thß·ng nh¤t ğ¸nh.");
			AddNumText(sceneId, x210287_g_ScriptId, "TÕi hÕ c¥n tiªn cØ ngß¶i gia nh§p môn phái", 1, 901)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	
	elseif GetNumText()== 901  then
	
		--mµt ÌìÖ»ÄÜÒı¼ö3´Î....
		local lastDayTime = GetMissionData(sceneId, selfId, MD_JOINMEIPAI_DAYTIME)
		local curDayTime = GetDayTime()
		if curDayTime > lastDayTime then
			SetMissionData(sceneId, selfId, MD_JOINMEIPAI_DAYTIME, curDayTime )
			SetMissionData(sceneId, selfId, MD_JOINMEIPAI_COUNT, 0 )
		end

		local TodayCount = GetMissionData(sceneId, selfId, MD_JOINMEIPAI_COUNT)
		if TodayCount > 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  Các hÕ và ngß¶i tiªn cØ mµt mình ğªn trß¾c t± ğµi.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		--  ğÕt ğßşcCái này Íæ¼ÒĞúng²»ĞúngºÍmµt cáiÈËµ¥¶À×é¶ÓÁË
		--PrintNum(GetTeamSize(sceneId,selfId))
		if GetTeamSize(sceneId,selfId) < 2  then
			BeginEvent(sceneId)
				AddText(sceneId,"  C¥n phäi cùng ngß¶i ch½i ğßşc tiªn cØ ğªn trß¾c t± ğµi m¾i ğßşc.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if GetTeamSize(sceneId,selfId) > 2  then
			BeginEvent(sceneId)
				AddText(sceneId,"  Ğ¯i tßşng các hÕ c¥n tiªn cØ không · g¥n ğây.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		--ÅĞ¶Ï×Ô¼º´øÀ´toÕ ğµ ÈË,Ğúng²»Ğúng·ûºÏÌõ¼ş
		if GetNearTeamCount(sceneId,selfId) ~= 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"  Ğ¯i tßşng các hÕ c¥n tiªn cØ không · g¥n ğây.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local nPlayerId = GetNearTeamMember(sceneId,selfId,0)
		if nPlayerId == selfId  then
			nPlayerId = GetNearTeamMember(sceneId,selfId,1)
		end
		
		local tarPosX, tarPosZ = LuaFnGetWorldPos(sceneId, nPlayerId);
		local npcPosX, npcPosZ = LuaFnGetWorldPos(sceneId, targetId);
		local distSqNpcToPlayer = (tarPosX - npcPosX) * (tarPosX - npcPosX) + (tarPosZ - npcPosZ) * (tarPosZ - npcPosZ);
		if distSqNpcToPlayer >= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"  Chï có ngß¶i ch½i ğÕt c¤p b§c 10 và không gia nh§p môn phái khác, m¾i có th¬ thông qua tiªn cØ gia nh§p bän môn.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
--		--  ğÕt ğßşcCái này ĞÂÊÖtoÕ ğµ ĞÅÏ¢,
		if GetMenPai(sceneId,nPlayerId)~=9 or GetLevel(sceneId,nPlayerId)~= 10  then
			BeginEvent(sceneId)
				AddText(sceneId,"  Chï có ngß¶i ch½i ğÕt c¤p b§c 10 và không gia nh§p môn phái khác, m¾i có th¬ thông qua tiªn cØ gia nh§p bän môn.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- Ö´ĞĞµ½ÕâÀï,¾Í¿ÉÒÔ¸øĞÂÊÖ´ò¿ª¶Ô»°¿ò
		BeginEvent(sceneId)
			local szStr = "  " .. GetName(sceneId,selfId) .. "Tiªn cØ các hÕ gia nh§p" .. x210287_GetMenPaiName(GetMenPai(sceneId,selfId)) .. ", xin höi các hÕ có ğ°ng ı gia nh§p?"
			AddText(sceneId, szStr)
			AddNumText(sceneId, x210287_g_ScriptId, "Ğ°ng ı gia nh§p", 1, 905)
			AddNumText(sceneId, x210287_g_ScriptId, "TÕi hÕ còn suy nghî", 1, 906)
		EndEvent(sceneId)
		DispatchEventList(sceneId,nPlayerId,targetId)
		
		BeginEvent(sceneId)
			AddText(sceneId,"  Các hÕ ğã ğßa thß tiªn cØ cho t± ğµi.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText()== 905  then
		-- °Ñ×Ô¼º¼ÓÈëCái này ÃÅÅÉ,¸ø½éÉÜÈË,×Ô¼ºµ±Ç°¶ÓÓÑÃÅÅÉ¹±Ï×¶È
		x210287_PlayerJoinMenpai(sceneId,selfId,targetId)
		
--		-- ¹Ø±Õ¶Ô»°¿ò
--		BeginUICommand(sceneId)
--		EndUICommand(sceneId)
--		DispatchUICommand(sceneId,selfId, 1000)
		
	elseif GetNumText()== 906  then
		-- ¹Ø±Õ¶Ô»°¿ò
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		
		--¸ø¶Ó³¤ÌáÊ¾ÎÒ¾Ü¾øÁËÒı¼ö....
		if GetNearTeamCount(sceneId,selfId) ~= 2 then
			return
		end

		local nPlayerId = GetNearTeamMember(sceneId,selfId,0)
		if nPlayerId == selfId  then
			nPlayerId = GetNearTeamMember(sceneId,selfId,1)
		end

		if LuaFnIsCanDoScriptLogic(sceneId, nPlayerId) ~= 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"Ğ¯i phß½ng t× ch¯i gi¾i thi®u cüa các hÕ")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,nPlayerId)
		end

	end
	
end

function x210287_GetMenPaiName(nMenPaiId)
	local szMenPai = ""
	if nMenPaiId == 0 then
		szMenPai = "Phái Thiªu Lâm"
	elseif nMenPaiId == 1 then
		szMenPai =  "Minh Giáo"
	elseif nMenPaiId == 2 then
		szMenPai =  "Cái Bang"
	elseif nMenPaiId == 3 then
		szMenPai =  "Phái Võ Ğang"
	elseif nMenPaiId == 4 then
		szMenPai =  "Nga My"
	elseif nMenPaiId == 5 then
		szMenPai =  "Tinh Túc"
	elseif nMenPaiId == 6 then
		szMenPai =  "Thiên Long phái"
	elseif nMenPaiId == 7 then
		szMenPai =  "Thiên S½n"
	elseif nMenPaiId == 8 then
		szMenPai =  "Phái Tiêu Dao"
	end	
	
	return szMenPai
end

function x210287_PlayerJoinMenpai(sceneId,selfId,targetId)
	
	-- ÊÊµ±×ö ği¬m°²È«ĞÔ¼ì²é
	if GetTeamSize(sceneId,selfId) < 2  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Các hÕ c¥n cùng ngß¶i tiªn cØ cüa các hÕ giæ t± ğµi");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetTeamSize(sceneId,selfId) > 2  then
		BeginEvent(sceneId)
			AddText(sceneId,"  C¥n phäi cùng ngß¶i ch½i ğßşc tiªn cØ ğªn trß¾c t± ğµi.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--ÅĞ¶Ï×Ô¼º´øÀ´toÕ ğµ ÈË,Ğúng²»Ğúng·ûºÏÌõ¼ş
	if GetNearTeamCount(sceneId,selfId) ~= 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"  Ngß¶i tiªn cØ cüa các hÕ c¥n phäi · g¥n ğây.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	local nPlayerId = GetNearTeamMember(sceneId,selfId,0)
	if nPlayerId == selfId  then
		nPlayerId = GetNearTeamMember(sceneId,selfId,1)
	end
	
	-- ÑéÖ¤Cái này IdĞúng²»ĞúngÓĞĞ§
	if LuaFnIsCanDoScriptLogic(sceneId, nPlayerId) == 0  then
		return
	end
	
	local nMenPaiId = GetMenPai(sceneId, nPlayerId)
	
	if nMenPaiId < 0  or nMenPaiId > 8  then
		return
	end
	
	local szMenpai = x210287_GetMenPaiName(nMenPaiId)
	
	-- ÖÆ¶¨¼ÓÈëÃÅÅÉtoÕ ğµ ²Ù×÷
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"  Hãy s¡p xªp lÕi tay näi, c¥n 2 v¸ trí tr¯ng, ta s¨ thß·ng cho ngß½i!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetLevel( sceneId, selfId ) < 10 then
		BeginEvent(sceneId)
			AddText(sceneId,"Thí chü ğşi t¾i ğßşc c¤p 10 hÇng t¾i bái sß h÷c ngh®!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	else
		x210287_g_MenPai = GetMenPai(sceneId, selfId)
		if x210287_g_MenPai == 0 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i lÕi t¾i ğòi bái phái Tiêu Dao làm sß phø, ngß½i ğã là ğ® tØ Thiªu Lâm, còn mu¯n bái sß gì næa")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		--Tr· v«ÖµÎª9±íÊ¾ÎŞÃÅÅÉ
		elseif x210287_g_MenPai==9	then
			
			LuaFnJoinMenpai(sceneId, selfId, targetId, nMenPaiId)

			-- ÉèÖÃÃÅÅÉ¹ØÏµÖµ
			CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

			BeginEvent(sceneId)
  			AddText(sceneId,"Các hÕ ğã gia nh§p " .. szMenpai .. "!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
			-- °ÑÏà¹ØtoÕ ğµ ĞÄ·¨ÉèÖÃÎª10c¤p
			LuaFnSetXinFaLevel(sceneId,selfId, 1 + nMenPaiId*6, 10)
			LuaFnSetXinFaLevel(sceneId,selfId, 4 + nMenPaiId*6, 10)
			LuaFnSetXinFaLevel(sceneId,selfId, 5 + nMenPaiId*6, 10)
			
			if nMenPaiId == 0  then 		-- Thiªu Lâm
	  		if TryRecieveItem( sceneId, selfId, 10124000, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124000).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 160, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_3}" )
			elseif nMenPaiId == 1  then  --Minh Giáo
	  		if TryRecieveItem( sceneId, selfId, 10124001, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124001).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 161, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_2}" )
			elseif nMenPaiId == 2  then  --Cái Bang
	  		if TryRecieveItem( sceneId, selfId, 10124002, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124002).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 162, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_6}" )
			elseif nMenPaiId == 3  then		--Võ ĞangÅÉ
	  		if TryRecieveItem( sceneId, selfId, 10124004, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124004).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_9}" )
			elseif nMenPaiId == 4  then  --Nga MyÅÉ
	  		if TryRecieveItem( sceneId, selfId, 10124003, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124003).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 164, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_4}" )
			elseif nMenPaiId == 5  then  --Tinh TúcÅÉ
	  		if TryRecieveItem( sceneId, selfId, 10124005, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124005).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 165, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_1}" )
			elseif nMenPaiId == 6  then  --Thiên LongÅÉ
	  		if TryRecieveItem( sceneId, selfId, 10124008, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124008).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 166, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_5}" )
			elseif nMenPaiId == 7  then  --Thiên S½nÅÉ
	  		if TryRecieveItem( sceneId, selfId, 10124006, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124006).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 167, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_7}" )
			elseif nMenPaiId == 8  then  --Tiêu DaoÅÉ
	  		if TryRecieveItem( sceneId, selfId, 10124007, 1 ) >= 0 then
					str		= "#YCác hÕ ğã nh§n ğßşc "..GetItemName( sceneId, 10124007).."."
					x210287_MsgBox( sceneId, selfId, str )
				end
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 168, 0)
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_8}" )
			end

			--ÃÅÅÉ½±ÀøÕÙ¼¯Áî
			for i=1, 20 do
				TryRecieveItem( sceneId, selfId, 30501001, 1 )
			end
			x210287_MsgBox( sceneId, selfId, "L¤y ğßşc 20 t¤m Chiêu t§p l®nh cüa môn phái" )

			if	LuaFnGetSex( sceneId, selfId)==0	then
				LuaFnMsg2Player( sceneId, selfId,"Các hÕ ğã gia nh§p " .. szMenpai .. "!",MSG2PLAYER_PARA)
--				CallScriptFunction( 220900, "OnDefaultEvent",sceneId, selfId, targetId )
			else
				LuaFnMsg2Player( sceneId, selfId,"Các hÕ ğã gia nh§p " .. szMenpai .. "!",MSG2PLAYER_PARA)
--				CallScriptFunction( 220900, "OnDefaultEvent",sceneId, selfId, targetId )
			end
			
			--¸øÍÆ¼öÈË½±Àø JOIN_MENPAI_WELCOME nPlayerId
			local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, nPlayerId)
			SetHumanMenpaiPoint(sceneId, nPlayerId, nMenpaiPoint+20)
			LuaFnMsg2Player(sceneId, nPlayerId,"Vì có sñ tiªn cØ cüa các hÕ, các hÕ nh§n ğßşc ğµ c¯ng hiªn sß môn sß môn.",MSG2PLAYER_PARA)
			
			--Ôö¼Ó½ñÌìÍÆ¼ötoÕ ğµ ´ÎÊı....
			local TodayCount = GetMissionData(sceneId, nPlayerId, MD_JOINMEIPAI_COUNT)
			SetMissionData(sceneId, nPlayerId, MD_JOINMEIPAI_COUNT, TodayCount+1 )

			-- ÃÅÅÉ¹«¸æ
			local szPlayer1 = GetName(sceneId, selfId)
			local szPlayer2 = GetName(sceneId, nPlayerId)
			local szBroad = "@*;SrvMsg;" .. "tuijian_join_menpai" ..";"..szPlayer1..";"..szPlayer2..";"..szPlayer2
			
			BroadMsgByChatPipe(sceneId, selfId, szBroad, 7)
			
			-- ¸ø±»Òı¼öÈËmµt cái¶Ô»°ÌáÊ¾
			BeginEvent(sceneId)
				AddText(sceneId, "  Các hÕ ğã tr· thành ğ® tØ cüa bän phái.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
		end
	end
	
end

--**********************************
--ÏûÏ¢ÌáÊ¾
--**********************************
function x210287_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
