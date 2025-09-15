--çÎç¿·å¸±±¾....
--·ûÃôÒÇ¶Ô»°½Å±¾....

--½Å±¾ºÅ
x402273_g_ScriptId = 402273

--¸±±¾Âß¼­½Å±¾ºÅ....
x402273_g_FuBenScriptId = 402263

--ÕðÉåbuff±í....
x402273_g_ZhenSheBuffTbl = { 10264, 10265, 10266 }
--ÓÐÈ¤buff±í....
x402273_g_YouQuBuffTbl = { 10261, 10262, 10263 }


--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x402273_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "#{PMF_20080521_12}" )

		--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....	
		if 1 == CallScriptFunction( x402273_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
			AddNumText( sceneId, x402273_g_ScriptId, "Khiêu chiªn B¤t bình ðÕo nhân cùng Trác B¤t Phàm", 10, 1 )
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x402273_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Èç¹ûÕýÔÚ¼¤»îBOSSÔò·µ»Ø....
	if 1 == CallScriptFunction( x402273_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
		return
	end

	--ÊÇ²»ÊÇ¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText( sceneId, "#{PMF_20080521_07}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--ÅÐ¶Ïµ±Ç°ÊÇ·ñ¿ÉÒÔÌôÕ½Ë«×Ó....	
	if 1 ~= CallScriptFunction( x402273_g_FuBenScriptId, "GetBossBattleFlag", sceneId, "ShuangZi" ) then
		return
	end

	--Èç¹ûÕýÔÚºÍ±ðµÄBOSSÕ½¶·Ôò·µ»Ø....
	local ret, msg = CallScriptFunction( x402273_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
	CallScriptFunction( x402273_g_FuBenScriptId, "OpenPMFTimer", sceneId, 16, x402273_g_ScriptId, -1 ,-1 )
	
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x402273_OnPMFTimer( sceneId, step, data1, data2 )

	if 16 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_13}" )
		return
	end

	if 13 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_14}" )
		return
	end

	if 10 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_15}" )
		return
	end

	if 7 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_16}" )
		x402273_UseZhenShe( sceneId )
		CallScriptFunction( x402273_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 5 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 6 == step then
		CallScriptFunction( x402273_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 4 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 5 == step then
		CallScriptFunction( x402273_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 3 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 4 == step then
		MonsterTalk(sceneId, -1, "", "#{PMF_20080521_17}" )
		x402273_UseYouQu( sceneId )
		CallScriptFunction( x402273_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 2 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 3 == step then
		CallScriptFunction( x402273_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 1 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 2 == step then
		--ÌáÊ¾Cuµc chiªn b¡t ð¥u....
		CallScriptFunction( x402273_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn b¡t ð¥u" )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x402273_g_FuBenScriptId, "CreateBOSS", sceneId, "ZhuoBuFan_BOSS", -1, -1 )
		CallScriptFunction( x402273_g_FuBenScriptId, "CreateBOSS", sceneId, "BuPingDaoRen_BOSS", -1, -1 )
		return
	end

end

--**********************************
--·¢¶¯ÕðÉå....
--**********************************
function x402273_UseZhenShe( sceneId )

	local bossId = CallScriptFunction( x402273_g_FuBenScriptId, "FindBOSS", sceneId, "FuMinYi_NPC" )
	if bossId == -1 then
		return
	end

	local idx = random( getn(x402273_g_ZhenSheBuffTbl) )
	local buffId = x402273_g_ZhenSheBuffTbl[idx]

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
		end
	end

end

--**********************************
--·¢¶¯ÓÐÈ¤....
--**********************************
function x402273_UseYouQu( sceneId )

	local bossId = CallScriptFunction( x402273_g_FuBenScriptId, "FindBOSS", sceneId, "FuMinYi_NPC" )
	if bossId == -1 then
		return
	end

	local idx = random( getn(x402273_g_YouQuBuffTbl) )
	local buffId = x402273_g_YouQuBuffTbl[idx]

	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, nHumanId, buffId, 0 )
		end
	end

end
