-- TÕi  ºÕÁ¬ÌúÊ÷ °ï×éÏÂ,½øÈëmµt Æ·ÌÃ,
-- 200050

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200050_g_ScriptId = 200050

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x200050_g_CopySceneName = "Nh¤t ph¦m ğß¶ng"

x200050_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x200050_g_CopySceneMap = "yipin_1.nav"
x200050_g_Exit = "yipin_1.ini"
x200050_g_LimitMembers = 1					--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x200050_g_TickTime = 5							--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x200050_g_LimitTotalHoldTime = 360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x200050_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x200050_g_CloseTick = 3							--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x200050_g_NoUserTime = 300					--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x200050_g_DeadTrans = 0							--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x200050_g_Fuben_X = 32							--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x200050_g_Fuben_Z = 113							--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x200050_g_Back_X = 66								--Ô´³¡¾°Î»ÖÃX
x200050_g_Back_Z = 56								--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200050_OnDefaultEvent( sceneId, selfId, targetId )
	-- ¸ù¾İÍæ¼ÒtoÕ ğµ Çé¿ö,½«Íæ¼ÒËÍµ½²»Í¬toÕ ğµ ¸±±¾
	x200050_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200050_OnEnumerate( sceneId, selfId, targetId )
	--AddNumText( sceneId, x200050_g_ScriptId, "Ğßa ta ğimµt Æ·ÌÃ(Ò¹¼ä)", 10 ,-1  )
	-- 0,Èç¹ûÍæ¼ÒÒÑ¾­ÓĞ44ÈÎÎñ,¾Í²»ÄÜTÕi ½øÈëCái này ¸±±¾
	if IsHaveMission( sceneId, selfId, 44 ) > 0 then
		return 0
	end
	
	-- Èç¹ûÍæ¼ÒÒÑ¾­Íê³ÉÁË43,¾Í²»ÄÜÔÙ½øÈëÁË
	if IsMissionHaveDone(sceneId, selfId, 43) > 0   then
		return 0
	end
	
	-- Èç¹ûÍæ¼ÒÒÑ¾­Íê³ÉÁË42,¾Í²»ÄÜÔÙ½øÈëÁË
	if IsMissionHaveDone(sceneId, selfId, 42) > 0   then
		return 0
	end
	
	-- Èç¹ûÍæ¼ÒÒÑ¾­ÓĞÁË42ÈÎÎñ,²»ÄÜ ½øÈ¥
	if IsHaveMission( sceneId, selfId, 42 ) > 0 then
		return 0
	end

	-- 1,ÓµÓĞÈÎÎñºÅÎª40toÕ ğµ ÈÎÎñ,
	if IsHaveMission( sceneId, selfId, 40 ) > 0 then
		AddNumText( sceneId, x200050_g_ScriptId, "Ğªn Nh¤t ph¦m ğß¶ng (ğêm)", 10 ,-1  )
		return 0
	end

	-- 2,Ö»ÒªÍæ¼ÒÓĞ41ÈÎÎñ,¾ÍÄÜ½øÈë
	if IsHaveMission( sceneId, selfId, 41 ) > 0 then
		AddNumText( sceneId, x200050_g_ScriptId, "Ğªn Nh¤t ph¦m ğß¶ng (ğêm)", 10 ,-1  )
		return 0
	end
	
	-- 3,Èç¹ûÍæ¼ÒÍê³ÉÁË40,Ã»ÓĞ41,Ò²ÄÜ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 40) > 0   then
		if IsHaveMission( sceneId, selfId, 41 ) < 1 then
			AddNumText( sceneId, x200050_g_ScriptId, "Ğªn Nh¤t ph¦m ğß¶ng (ğêm)", 10 ,-1  )
			return 0
		end
	end
	
	-- 4,Èç¹ûÍæ¼ÒÍê³ÉÁË40,µ«ĞúngÃ»ÓĞ42,Ò²Ğúng¿ÉÒÔ½øÈë
	if IsMissionHaveDone(sceneId, selfId, 40) > 0   then
		if IsHaveMission( sceneId, selfId, 42 ) < 1 then
			AddNumText( sceneId, x200050_g_ScriptId, "Ğªn Nh¤t ph¦m ğß¶ng (ğêm)", 10 ,-1  )
			return 0
		end
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200050_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x200050_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x200050_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x200050_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x200050_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "yipin_1.nav"); --µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x200050_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x200050_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x200050_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x200050_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
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
	LuaFnSetSceneLoad_Area( sceneId, "yipin_1_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "yipin_1_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!")
		else
			AddText(sceneId,"S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!")
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x200050_OnCopySceneReady( sceneId, destsceneId )

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
		NewWorld( sceneId, leaderObjId, destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				--misIndex = GetMissionIndexByID(sceneId,mems[i],x200050_g_MissionId)
				
				--½«ÈÎÎñtoÕ ğµ µÚ2ºÅÊı¾İÉèÖÃÎª¸±±¾toÕ ğµ ³¡¾°ºÅ
				--SetMissionByIndex(sceneId,mems[i],misIndex,x200050_g_Param_sceneid,destsceneId)
						
				NewWorld( sceneId, mems[i], destsceneId, x200050_g_Fuben_X, x200050_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x200050_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x200050_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x200050_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x200050_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x200050_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200050_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x200050_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200050_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200050_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200050_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x200050_OnCopySceneTimer( sceneId, nowTime )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓĞÈËtoÕ ğµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	local selfId = LuaFnGetCopyScene_HumanObjId(sceneId,0)
	
	local nStep1 = LuaFnGetCopySceneData_Param(sceneId, 8) --¿ØÖÆËµ»°
	local nTime  = LuaFnGetCopySceneData_Param(sceneId, 9)	--Ê±¼ä

	-- ¶Ô°× 
	local nStep2 = LuaFnGetCopySceneData_Param(sceneId, 10) --¿ØÖÆËµ¹ı»°
	
	-- paopao 
	local nStep3 = LuaFnGetCopySceneData_Param(sceneId, 11) --¿ØÖÆËµ¹ı»°
	
	-- ¶Ô°× mµt Ğ¦ÈË¼äÍòÊÂ ½ÓÈÎÎñtoÕ ğµ Ê±ºò´¥·¢
	if nStep1==1 then
		if nStep2==0 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0024}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_DB_0024}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==1 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 2)
			end
		
		elseif nStep2==2 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0025}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Hß Trúc", "Nh¤t ph¦m ğß¶ng ", "#{JQ_DB_0025}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==3 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 4)
			end
		
		elseif nStep2==4 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0026}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Thiên S½n Ğ°ng Lão", "Nh¤t ph¦m ğß¶ng ", "#{JQ_DB_0026}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==5 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 6)
			end

		elseif nStep2==6 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0027}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_DB_0027}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==7 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 8)
			end

		elseif nStep2==8 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0028}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_DB_0028}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==9 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 10)
			end

		elseif nStep2==10 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0029}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_DB_0029}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==11 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 12)
			end

		elseif nStep2==12 then
			--BroadMsgByChatPipe(sceneId,selfId,"#{JQ_DB_0030}",0)
			CallScriptFunction((200060), "Duibai",sceneId, "Thiên S½n Ğ°ng Lão", "Nh¤t ph¦m ğß¶ng ", "#{JQ_DB_0030}" )
			LuaFnSetCopySceneData_Param(sceneId, 10, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep2==13 then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 14)
			end
		
		elseif nStep2==14 then
			-- ´´½¨ Lı Thu Thüy,¸Ä±äThiên S½nÍ¯ÀÏtoÕ ğµ Cuµc chiªn ¹ØÏµ,Íæ¼Ò²»²ÎÓë
			local nNpcId = LuaFnCreateMonster(sceneId, 454, 22, 27, 1, 0, -1)
			SetUnitReputationID(sceneId,selfId, nNpcId, 24)
			SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
			SetNPCAIType(sceneId, nNpcId, 16)
			SetCharacterName(sceneId, nNpcId, "Lı Thu ThuÖ")
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, nNpcId, nNpcId, 44, 2)
			
			--Thiên S½nÍ¯ÀÏC¥n »»Ä£ĞÍ
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				if GetName(sceneId, nMonsterId)  == "Thiên S½n Ğ°ng Lão"  then
					-- ÏÈ ğÕt ğßşcCái này Î»ÖÃ,È»ºóÉ¾³ıCái này Ä£ĞÍ,Ö®ºó´´½¨mµt cáiĞÂtoÕ ğµ 
					LuaFnDeleteMonster(sceneId, nMonsterId)
					
					local newMonster = LuaFnCreateMonster(sceneId, 453, 20, 25, 1, 0, -1)

					SetUnitReputationID(sceneId,selfId, newMonster, 25)
					SetMonsterFightWithNpcFlag(sceneId, newMonster, 1)
					SetNPCAIType(sceneId, newMonster, 16)
					SetCharacterName(sceneId, newMonster, "Thiên S½n Ğ°ng Lão")
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonster, newMonster, 44, 2)
					break
				end
			end
			
			LuaFnSetCopySceneData_Param(sceneId, 10, 15)
		
		elseif nStep2==15 then
			if nowTime - nTime > 60  then
				LuaFnSetCopySceneData_Param(sceneId, 10, 16)
			end

		elseif nStep2==16 then
			-- ¶şÈËÍ£Õ½
			
			local newMonst1
			local newMonst2
			
			--ÉèThiên S½nÍ¯ÀÏtoÕ ğµ ÕóÓª
			local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				
				-- Hß TrúcC¥n µ÷AI
				if GetName(sceneId, nMonsterId)  == "Thiên S½n Ğ°ng Lão"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					newMonst1 = LuaFnCreateMonster(sceneId, 491, 20, 25, 1, 0, -1)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonst1, newMonst1, 44, 2)
					
				end
				if GetName(sceneId, nMonsterId)  == "Lı Thu ThuÖ"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					newMonst2 = LuaFnCreateMonster(sceneId, 492, 22, 27, 1, 0, -1)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, newMonst2, newMonst2, 44, 2)
					
				end
			end
			
			-- ´´½¨2cáiËÀÍöÄ£ĞÍ,ÉèÖÃÑªÎª1
			SetUnitReputationID(sceneId,selfId, newMonst1, 0)
			SetMonsterFightWithNpcFlag(sceneId, newMonst1, 1)
			SetNPCAIType(sceneId, newMonst1, 3)
			SetCharacterName(sceneId, newMonst1, "Thiên S½n Ğ°ng Lão")
			SetHp(sceneId, newMonst1, 1)
				
			SetUnitReputationID(sceneId,selfId, newMonst2, 0)
			SetMonsterFightWithNpcFlag(sceneId, newMonst2, 1)
			SetNPCAIType(sceneId, newMonst2, 3)
			SetCharacterName(sceneId, newMonst2, "Lı Thu ThuÖ")
			SetHp(sceneId, newMonst2, 1)
			
			LuaFnSetCopySceneData_Param(sceneId, 8, 2)
			LuaFnSetCopySceneData_Param(sceneId, 10, 17)
			
		end
	end

	-- paopao mµt Ğ¦ÈË¼äÍòÊÂ 
	if nStep1==2 then
		if nStep3==0    	then
			CallScriptFunction((200060), "Paopao",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_104}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 1)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==1  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 2)
			end

		elseif nStep3==2  then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_105}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==3  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 4)
			end

		elseif nStep3==4  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ğ°ng Lão", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_106}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==5  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 6)
			end

		elseif nStep3==6  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ğ°ng Lão", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_107}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)
		
		elseif nStep3==7  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 8)
			end

		elseif nStep3==8  then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_108}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 9)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==9  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 10)
			end

		elseif nStep3==10  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ğ°ng Lão", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_109}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 11)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==11  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 12)
			end

		elseif nStep3==12  then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_110}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 13)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==13  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 14)
			end

		elseif nStep3==14  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ğ°ng Lão", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_111}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 15)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==15  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 16)
			end
			
		elseif nStep3==16  then
			CallScriptFunction((200060), "Paopao",sceneId, "Thiên S½n Ğ°ng Lão", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_112}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 17)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==17  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 18)
			end

		elseif nStep3==18  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_113}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 19)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==19  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 20)
			end

		elseif nStep3==20  then
			CallScriptFunction((200060), "Paopao",sceneId, "Hß Trúc", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_114}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 21)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==21  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 22)
			end

		elseif nStep3==22  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_115}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 23)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==23  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 24)
			end

		elseif nStep3==24  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_116}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 25)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==25  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 26)
			end

		elseif nStep3==26  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_117}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 27)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==27  then
			if nowTime - nTime > 3  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 28)
			end

		elseif nStep3==28  then
			CallScriptFunction((200060), "Paopao",sceneId, "Lı Thu ThuÖ", "Nh¤t ph¦m ğß¶ng ", "#{JQ_PaoPao_118}")
			LuaFnSetCopySceneData_Param(sceneId, 11, 29)
			LuaFnSetCopySceneData_Param(sceneId, 9, nowTime)

		elseif nStep3==29  then
			LuaFnSetCopySceneData_Param(sceneId, 15, 1)
			
		end
	end
	
end

