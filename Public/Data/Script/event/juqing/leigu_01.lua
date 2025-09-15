-- ÀŞ¹ÄÉ½  200040

-- 	TÕi ·¶°ÙÁätoÕ ğµ Ö¸ÒıÏÂÇ°ÍùÀŞ¹ÄÉ½

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200040_g_ScriptId = 200040

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200040_g_CopySceneName = "Núi Lôi C±"

x200040_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200040_g_CopySceneMap = "leigu_1.nav"
x200040_g_Exit = "leigu_1.ini"
x200040_g_LimitMembers = 1					--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x200040_g_TickTime = 5							--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200040_g_LimitTotalHoldTime = 360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200040_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200040_g_CloseTick = 3							--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x200040_g_NoUserTime = 300					--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x200040_g_DeadTrans = 0							--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200040_g_Fuben_X = 56							--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x200040_g_Fuben_Z = 104							--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x200040_g_Back_X = 66								--Ô´³¡¾°Î»ÖÃX
x200040_g_Back_Z = 56								--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200040_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾İÍæ¼ÒtoÕ ğµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ğµ ¸±±¾
	x200040_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200040_OnEnumerate( sceneId, selfId, targetId )
	-- 0,Èç¹ûÍæ¼ÒÒÑ¾­ÓĞ4ÈÎÎñ,¾Í²»ÄÜTÕi ½øÈëCái này ¸±±¾
	if IsHaveMission( sceneId, selfId, 36 ) > 0 then
		return 0
	end
	if IsMissionHaveDone(sceneId, selfId, 36) > 0   then
		return 0
	end

	-- 1,ÓµÓĞÈÎÎñºÅÎª34toÕ ğµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 34 ) > 0 then
		AddNumText( sceneId, x200040_g_ScriptId, "Hãy ğßa ta t¾i Lôi C± S½n (ğêm)", 10 ,-1  )
		return 0
	end

	-- 2,Ö»ÒªÍæ¼ÒÓĞ35ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 35 ) > 0 then
		AddNumText( sceneId, x200040_g_ScriptId, "Hãy ğßa ta t¾i Lôi C± S½n (ğêm)", 10 ,-1  )
		return 0
	end
	
	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË34,Ã»ÓĞ35,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 34) > 0   then
		if IsHaveMission( sceneId, selfId, 35 ) < 1 then
			AddNumText( sceneId, x200040_g_ScriptId, "Hãy ğßa ta t¾i Lôi C± S½n (ğêm)", 10 ,-1  )
			return 0
		end
		if IsHaveMission( sceneId, selfId, 36 ) < 1 then
			AddNumText( sceneId, x200040_g_ScriptId, "Hãy ğßa ta t¾i Lôi C± S½n (ğêm)", 10 ,-1  )
			return 0
		end
	end
	
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200040_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x200040_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200040_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200040_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200040_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "leigu_1.nav"); --µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200040_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200040_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200040_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200040_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBosstoÕ ğµ ÊıÁ¿
	
	-- ¾çÇéÓÃµ½toÕ ğµ ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	--ÉèÖÃ³¡¾°ÖĞtoÕ ğµ ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "leigu_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "leigu_1_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x200040_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ğµ ¹æÔò
	-- 1,Èç¹ûCái này ÎÄ¼şÃ»ÓĞ×é¶Ó,¾Í´«ËÍCái này ÎÄ¼ş×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓĞ¶ÓÎé,µ«ĞúngÍæ¼Ò²»Ğúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓĞ¶ÓÎé,²¢ÇÒCái này Íí¼äĞúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æğ½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end
	
	-- ¼ì²âÍæ¼ÒĞúng²»ĞúngÓĞ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓĞ¶ÓÎé
		NewWorld( sceneId, leaderObjId, destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--misIndex = GetMissionIndexByID(sceneId,mems[i],x200040_g_MissionId)
				
				--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200040_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200040_g_Fuben_X, x200040_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x200040_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x200040_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200040_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200040_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x200040_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200040_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200040_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200040_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200040_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200040_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x200040_OnCopySceneTimer( sceneId, nowTime )
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËtoÕ ğµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId, 0)

	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) ;--¿ØÖÆËµ»°
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9);--Ê±¼ä
	local nStartTime = LuaFnGetCopySceneData_Param(sceneId, 11)
	-- paopao 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) ;--¿ØÖÆËµ¹ı»°
	
	nowTime = LuaFnGetCurrentTime()
	
	-- Íê³É±£»¤ÏÂÆåtoÕ ğµ ÈÎÎñºó,Hß Trúc×ß×Ô¼ºtoÕ ğµ Â·,×ßÖ®Ç°ÓĞ¶Ô°×
	if nStep1==3 then
		local nMonsterNum = GetMonsterCount(sceneId)
		local ii = 0
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			-- Hß TrúcC¥n µ÷AI
			if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
				SetPatrolId(sceneId, nMonsterId, 1)
				
				LuaFnSetCopySceneData_Param(sceneId, 8, 4)
			end
		end
	end	
	
	if nStep1==2 then
		if nStep2 == 1  then
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				-- Hß TrúcC¥n µ÷AI
				if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
					SetUnitReputationID(sceneId,selfId, nMonsterId, 0)
					SetMonsterFightWithNpcFlag(sceneId, nMonsterId, 1)
					SetNPCAIType(sceneId, nMonsterId, 7) -- ²»Ö÷¶¯¹¥»÷,²»»áËæ»úÒÆ¶¯,¿ÉÒÔ¹¥»÷,²»»á»¹»÷
					
					SetPatrolId(sceneId, nMonsterId, 0)
				end
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		end
		if nStep2 == 2  then
			if nowTime - nStartTime < 120  then
				if nowTime - nTime > 10  then
					local nNpcId = LuaFnCreateMonster(sceneId, 408, 76, 32, 1, 0, -1)
					SetUnitReputationID(sceneId,selfId, nNpcId, 29)
					SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
					SetNPCAIType(sceneId, nNpcId, 0)
					SetCharacterName(sceneId, nNpcId, "Cß½ng Thi")

					LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
				end
			
			else
				-- Ê±¼äµ½,Çå³ıĞ¡¹Ö,¿´Hß TrúcĞúng²»Ğúng»¹»î×Å
				local bOk = 0
				local nMonsterNum = GetMonsterCount(sceneId)
				local ii = 0
				local bHaveMonster = 0
				
				for ii=0, nMonsterNum-1 do
					local nMonsterId = GetMonsterObjID(sceneId,ii)
					if GetName(sceneId, nMonsterId)  == "Hß Trúc"  then
						bOk = 1
					end
					if GetName(sceneId, nMonsterId)  == "Cß½ng Thi"  then
						-- É¾³ıËùÓĞtoÕ ğµ ½©Ê¬
						LuaFnDeleteMonster(sceneId, nMonsterId)
					end
				end
				
				if bOk == 1 then
					LuaFnSetCopySceneData_Param(sceneId, 15, 1)
					-- Í¨ÖªÍæ¼Ò,Íê³ÉÁËÈÎÎñ
					for i=0, 	nHumanNum-1  do
						local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId,i)
						
						--¿´Cái này Íæ¼ÒĞúng²»ĞúngÓĞCái này ÈÎÎñ
						if IsHaveMission( sceneId, nHumanId, 35 ) > 0 then
							local misIndex = GetMissionIndexByID(sceneId, nHumanId, 35)
							SetMissionByIndex(sceneId, nHumanId, misIndex, 0, 1)
							SetMissionByIndex(sceneId, nHumanId, misIndex, 1, 1)
							BeginEvent(sceneId)
							AddText(sceneId,"Ğã bäo hµ Hß Trúc: 1/1")
							EndEvent(sceneId)
							DispatchMissionTips(sceneId,nHumanId)
						end
					end
				end
				LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			end
		end
				
	end
	
	
	-- µÚmµt ´ÎtoÕ ğµ ¶Ô°× ÌìÊ±²»ÈçµØÀû Hoàn t¤t nhi®m vøtoÕ ğµ Ê±ºò´¥·¢
	if nStep1==1 then
		if nStep2==0 then
			-- Tiêu Phong paopao
			CallScriptFunction((200060), "Paopao",sceneId, "Tô Tinh Hà", "Núi Lôi C±", "#{JQ_PaoPao_91}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
			
		elseif nStep2==2 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Huy«n NÕn", "Núi Lôi C±", "#{JQ_PaoPao_92}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==3 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end
		elseif nStep2==4 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Ğoàn Diên Khánh", "Núi Lôi C±", "#{JQ_PaoPao_93}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==5 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			end
		elseif nStep2==6 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Huy«n NÕn", "Núi Lôi C±", "#{JQ_PaoPao_94}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==7 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 8)
			end
		elseif nStep2==8 	then
			CallScriptFunction((200060), "Paopao",sceneId, "Ğoàn Diên Khánh", "Núi Lôi C±", "#{JQ_PaoPao_95}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==9 	then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 10)
			end
		elseif nStep2==10 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ğinh Xuân Thu", "Núi Lôi C±", "#{JQ_PaoPao_96}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==11 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 12)
			end
		elseif nStep2==12 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ğoàn Diên Khánh", "Núi Lôi C±", "#{JQ_PaoPao_97}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==13 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 14)
			end
		elseif nStep2==14 then
			CallScriptFunction((200060), "Paopao",sceneId, "Ğoàn Diên Khánh", "Núi Lôi C±", "#{JQ_PaoPao_98}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 15)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==15 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 16)
			end
		elseif nStep2==16 then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Núi Lôi C±", "#{JQ_PaoPao_99}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 17)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==17 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 18)
			end
		elseif nStep2==18 then
			CallScriptFunction((200060), "Paopao",sceneId, "Tô Tinh Hà", "Núi Lôi C±", "#{JQ_PaoPao_100}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 19)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep2==19 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 20)
			end
		elseif nStep2==20 then
			CallScriptFunction((200060), "Paopao",sceneId, "Tô Tinh Hà", "Núi Lôi C±", "#{JQ_PaoPao_101}")
			LuaFnSetCopySceneData_Param(sceneId, 10, 21)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
			
		end
	end
	
end


