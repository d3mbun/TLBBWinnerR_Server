--ÖÖÊÀºâ

--½Å±¾ºÅ
x018000_g_scriptId = 018000


--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x018000_g_eventList = { 228903, 212141, 212142 }--210903,210905,210906,210907,210908,210308}--210909

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x018000_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{OBJ_yannan_0001}")
	for i, eventId in x018000_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x018000_OnDefaultEvent( sceneId, selfId,targetId )
	x018000_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x018000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x018000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x018000_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018000_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x018000_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x018000_g_eventList do
		if missionScriptId == findId then
			x018000_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x018000_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x018000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x018000_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x018000_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x018000_OnDie( sceneId, selfId, killerId )
end
