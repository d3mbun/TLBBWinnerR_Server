--Tinh TúcNPC
--Â¨×Ó
--ÆÕÍ¨

--½Å±¾ºÅ
x016011_g_ScriptId = 016011

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x016011_g_eventList={}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x016011_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	--AddText(sceneId,"KÛ nång cüa ta chï dÕy ð® tØ b±n phái.")
	for i, eventId in x016011_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x016011_OnDefaultEvent( sceneId, selfId,targetId )
	x016011_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x016011_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x016011_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x016011_g_ScriptId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x016011_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016011_g_eventList do
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
function x016011_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x016011_g_eventList do
		if missionScriptId == findId then
			x016011_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x016011_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x016011_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x016011_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x016011_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x016011_OnDie( sceneId, selfId, killerId )
end
