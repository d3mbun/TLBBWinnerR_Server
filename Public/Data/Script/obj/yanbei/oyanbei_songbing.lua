--ËÎ±ø

--½Å±¾ºÅ
x019004_g_scriptId = 019004


--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x019004_g_eventList={}--211001,211006,211007}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x019004_UpdateEventList( sceneId, selfId,targetId )

	BeginEvent(sceneId)
	AddText(sceneId,"  #{Lua_yanbei_0006}")
	for i, eventId in x019004_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x019004_OnDefaultEvent( sceneId, selfId,targetId )
	x019004_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x019004_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x019004_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x019004_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x019004_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x019004_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x019004_g_eventList do
		if missionScriptId == findId then
			x019004_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x019004_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x019004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x019004_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x019004_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x019004_OnDie( sceneId, selfId, killerId )

end

