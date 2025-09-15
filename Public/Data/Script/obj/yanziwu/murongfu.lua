-- 402254
-- Mµ Dung Phøc

x402254_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9998
}

-- ÍõÓïÑÔ¿ªÊ¼ ði¬mÃûtoÕ ðµ ¿ª¹Ø
x402254_g_bWangyuyanSpeak = 24
x402254_g_DuanAndWangFlag = 29

--**********************************
-- ×Ô¼ºËÀÍö
--**********************************
function x402254_OnDie( sceneId, selfId, killerId )
	local nData = GetMonsterDataID( sceneId, selfId )
	local nLevelMonster = GetLevel(sceneId, selfId)
	if nLevelMonster >= 80 and nLevelMonster <=89 then --nData == 9437 or  nData == 39437 then
		local nHuman = LuaFnGetCopyScene_HumanCount( sceneId )
		for i = 0, nHuman - 1 do
			local playerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			AddMonsterDropItem(sceneId, selfId, playerId, 30505816)
			local nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, 30505804)
			end
			nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, random(20310113,20310114))
			end
		end
	elseif  nLevelMonster >= 90 and nLevelMonster <=99 then--nData == 9438 or  nData == 39438 then
		local nHuman = LuaFnGetCopyScene_HumanCount( sceneId )
		for i = 0, nHuman - 1 do
			local playerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			AddMonsterDropItem(sceneId, selfId, playerId, 30505817)
			local nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, 30505805)
			end
			nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, random(20310113,20310114))
			end
		end	
	elseif  nLevelMonster >= 100 then--nData == 9439 or  nData == 39439 then
		local nHuman = LuaFnGetCopyScene_HumanCount( sceneId )
		for i = 0, nHuman - 1 do
			local playerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			AddMonsterDropItem(sceneId, selfId, playerId, 30505908)
			local nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, 30505806)
			end
			nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, random(20310113,20310114))
			end
		end	
	end
	
	LuaFnNpcChat(sceneId, selfId, 0, "Các ngß½i hãy ch¶ ðó, ngày này mß¶i nåm sau ta s¨ tìm các ngß½i lo mà s¯ng hªt nhæng ngày còn lÕi ði ha..ha..ha..")

	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- Í£Ö¹ ði¬mÃû
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
	
	-- É¾³ýÐoàn DñÓïæÌµÈÈË
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Vß½ng Ngæ Yên")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ðoàn Dñ")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thiên ThÕch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "PhÕm Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "ChØ VÕn Lý")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C± Ð¯c Thành")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Phó Tß Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu Ðan Th¥n")
	
	x402254_TipAllHuman( sceneId, "Không ðßþc chÕy" )
	
	--LuaFnDeleteMonster(sceneId, selfId)
	
	-- ·¢ÊÀ½ç¹«¸æ
--#w¡¾¶Ó³¤Ãû¡¿#PÓë#{_BOSS0}µ¥Ìô,È´°µÊ¹¶ÓÓÑTÕi ÆäÉíºóÔÒ°å×©¡¢Ê¹°í×Ó¡¢ÇÃÃÆ¹÷¡¢È÷Ê¯»Ò¡­¡­ÎÞËù²»ÓÃ,ÖÕÓÚ½«#{_BOSS0}´ò ði¬m´ó°Ü,Âä»Ä¶øÌÓ,mµt ¾Ù¹¥ÏÂÁËÑà×ÓÎë¡£
--#w¡¾¶Ó³¤Ãû¡¿#PÂÊÁì¶ÓÓÑÓë#{_BOSS0}º¨Õ½°ëÈÕ,ºö¶øÁìÎòµ½ÎäÑ§toÕ ðµ ÕæÚÐ,¶ÙÊ±Îä¹¦±©ÕÇ,#{_BOSS0}µÖµÐ²»¹ý,Ö» ði¬mÂä»Ä¶øÌÓ,Ñà×ÓÎëËìÏÝ¡£
--#w¡¾¶Ó³¤Ãû¡¿#PTÕi Ñà×ÓÎëµ÷±øÇ²½«,ÔË³ïá¡á¢,TÕi SØ døng MÕn thiên quá häi,°µ¶È³Â²ÖµÈÈýÊ®Áù¼ÆÖ®ºó,´ò ði¬m#{_BOSS0}Ö» ði¬mÊ¹ÓÃµÚÈýÊ®Æß¼ÆÌÓÖ®Ø²Ø²ÁË¡£
	
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--Èç¹û×éÁË¶ÓÔmµt ñÈ¡¶Ó³¤toÕ ðµ ID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	local str = ""
	local ran = random(3)
	if ran == 1  then
		str = format("#W#{_INFOUSR%s}#cff99cc cùng #{_BOSS0} quyªt chiªn ác li®t trong yªn tØ ±, #{_BOSS0} th¤y mình sÑc yªu không ð¸ch lÕi ð¯i thü, quay ð¥u bö chÕy.", GetName(sceneId,nLeaderId))
	elseif ran == 2  then
		str = format("#W#{_INFOUSR%s}#cff99cc chiªn ð¤u v¶i #{_BOSS0} trong Yªn tØ ‘ #{_BOSS0} ðang th¡ng thª b²ng t± ðµi ð°ng loÕt tung ám khí, kë thù hoän sþ tung mình chÕy m¤t hút.", GetName(sceneId,nLeaderId))
	else
		str = format("#W#{_INFOUSR%s}#cff99cc cùng t± ðµi xông vào Yªn TØ ‘ khiêu chiªn v¾i #{_BOSS0} sau nhi«u hi®p quyªt ð¤u ðã giành th¡ng lôi hoàn toàn", GetName(sceneId,nLeaderId))
	end
	
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)

	
end

--**********************************
-- ÐÄÌø
--**********************************
function x402254_OnHeartBeat(sceneId, selfId, nTick)

	-- µ±Mµ Dung PhøcÑªÁ¿µôµ½50%toÕ ðµ Ê±ºò,ÈÃ ÍõÓïæÌ  ði¬mÃû,Í¬Ê±Ðoàn DñÑð¹¥
	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
			--PrintNum(1)
			-- Èç¹û Mµ Dung Phøc ÑªÉÙÓÚ¶àÉÙ,¾ÍÔõÃ´Ñù×Ó
			if LuaFnGetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak) == 0  then
				if GetHp(sceneId, selfId)*2 <= GetMaxHp(sceneId, selfId) then
					LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 1)
				end
			end
		else
			--PrintNum(2)
		end
	end

--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, x402254_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402254_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "³¢³¢ä±Ñô½­ÉÏtoÕ ðµ ÁÒÑæ°É!")
--					end
--				end
--			end
--		end
--	end
end

--**********************************
-- ³õÊ¼»¯
--**********************************
function x402254_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)
end

--**********************************
-- É±ËÀÍæ¼Ò
--**********************************
function x402254_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. ",Äã¾ÍËãÔÙÀ÷º¦Ê®±¶,ÓöÉÏÒ¯Ò¯Ò²Ö»ÓÐËÀÂ·mµt Ìõ!")
--	end
end

--**********************************
-- ½øÈëCuµc chiªn 
--**********************************
function x402254_OnEnterCombat(sceneId, selfId, enmeyId)
	if(0<x402254_TBL.BossBuff) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402254_TBL.BossBuff, 0)
	end
	
	-- ½øÈëCuµc chiªn ×´Ì¬,
	LuaFnNpcChat(sceneId, selfId, 0, "Các ngß½i dám xông vào ðây v§y thì hôm nay là ngày gi² cüa các ngß½i, n½i ðây s¨ là m° chôn cüa các ngß½i")
	
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, x402254_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 1)
	
	CallScriptFunction((200060), "Paopao",sceneId, "Ðoàn Dñ", "Yªn TØ ‘", "Ðµt nhiên ta cäm th¤y có gì khác lÕ, không biªt có chuy®n gì xäy ra")
	CallScriptFunction((200060), "Paopao",sceneId, "Vß½ng Ngæ Yên", "Yªn TØ ‘", "Muµi cäm nh§n ðßþc có ngß¶i lÕ ðang · ðây")

end

--**********************************
-- ÍÑÀëÕ½¶·
--**********************************
function x402254_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- É¾³ýÐoàn DñÓïæÌµÈÈË
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Vß½ng Ngæ Yên")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ðoàn Dñ")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thiên ThÕch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "PhÕm Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "ChØ VÕn Lý")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C± Ð¯c Thành")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Phó Tß Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu Ðan Th¥n")

	-- ´ÓÐÂTÕi ³¡¾°ÖÐÉú³ÉÕâÐ©Npc
	CallScriptFunction((401040), "CreateMonster_11",sceneId)

	-- Í£Ö¹ ði¬mÃû
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò
--**********************************
function x402254_TipAllHuman( sceneId, Str )
	--  ðÕt ðßþc³¡¾°ÀïÍ·toÕ ðµ ËùÓÐÈË
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- Ã»ÓÐÈËtoÕ ðµ ³¡¾°,Ê²Ã´¶¼²»×ö
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end
