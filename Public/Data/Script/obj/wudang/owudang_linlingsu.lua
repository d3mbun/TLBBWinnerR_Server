--Võ ÐangNPC
--ÁÖLinhËØ
--ÆÕÍ¨

--LinhÐÔ·å¸±±¾ÈÎÎñnpc

--½Å±¾ºÅ
x012003_g_scriptId = 012003


--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x012003_g_eventList={223901}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x012003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		AddText(sceneId,"  "..PlayerName.."#{OBJ_wudang_0001}")
		for i, findId in x012003_g_eventList do
			CallScriptFunction( x012003_g_eventList[i], "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x012003_OnDefaultEvent( sceneId, selfId,targetId )
	x012003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x012003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x012003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x012003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x012003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x012003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x012003_g_eventList do
		if missionScriptId == findId then
			x012003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x012003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x012003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x012003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x012003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x012003_OnDie( sceneId, selfId, killerId )
end

