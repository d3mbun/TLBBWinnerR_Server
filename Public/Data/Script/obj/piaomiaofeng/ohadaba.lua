--çÎç¿·å¸±±¾....
--¹þ´ó°Ô¶Ô»°½Å±¾....

--½Å±¾ºÅ
x402270_g_ScriptId = 402270

--¸±±¾Âß¼­½Å±¾ºÅ....
x402270_g_FuBenScriptId = 402263

--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x402270_OnDefaultEvent( sceneId, selfId, targetId )

	BeginEvent(sceneId)
		AddText( sceneId, "#{PMF_20080521_06}" )
		AddNumText( sceneId, x402270_g_ScriptId, "Khiêu chiªn", 10, 1 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x402270_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Èç¹ûÕýÔÚ¼¤»îBOSSÔò·µ»Ø....
	if 1 == CallScriptFunction( x402270_g_FuBenScriptId, "IsPMFTimerRunning", sceneId ) then
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

	--Èç¹ûÕýÔÚºÍ±ðµÄBOSSÕ½¶·Ôò·µ»Ø....
	local ret, msg = CallScriptFunction( x402270_g_FuBenScriptId, "CheckHaveBOSS", sceneId )
	if 1 == ret then
		BeginEvent(sceneId)
			AddText( sceneId, msg )
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	--¿ªÆôçÎç¿·å¼ÆÊ±Æ÷À´¼¤»î×Ô¼º....
	CallScriptFunction( x402270_g_FuBenScriptId, "OpenPMFTimer", sceneId, 7, x402270_g_ScriptId, -1 ,-1 )

	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end

--**********************************
--çÎç¿·å¼ÆÊ±Æ÷µÄOnTimer....
--**********************************
function x402270_OnPMFTimer( sceneId, step, data1, data2 )

	if 7 == step then
		CallScriptFunction( x402270_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 5 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 6 == step then
		CallScriptFunction( x402270_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 4 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 5 == step then
		CallScriptFunction( x402270_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 3 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 4 == step then
		CallScriptFunction( x402270_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 2 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 3 == step then
		CallScriptFunction( x402270_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn 1 giây sau s¨ b¡t ð¥u" )
		return
	end

	if 2 == step then
		--ÌáÊ¾Õ½¶·¿ªÊ¼....
		CallScriptFunction( x402270_g_FuBenScriptId, "TipAllHuman", sceneId, "Cuµc chiªn b¡t ð¥u" )
		--É¾³ýNPC....
		CallScriptFunction( x402270_g_FuBenScriptId, "DeleteBOSS", sceneId, "HaDaBa_NPC" )
		return
	end

	if 1 == step then
		--½¨Á¢BOSS....
		CallScriptFunction( x402270_g_FuBenScriptId, "CreateBOSS", sceneId, "HaDaBa_BOSS", -1, -1 )
		return
	end

end
