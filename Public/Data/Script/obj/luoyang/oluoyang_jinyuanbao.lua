--LÕc Dß½ngNPC
--½ðÔª±¦
--ÆÕÍ¨

--½Å±¾ºÅ
x000075_g_ScriptId = 000075

x000075_g_eventList={250511}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000075_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_luoyang_0022}")
		AddNumText(sceneId,x000075_g_ScriptId,"Gi¾i thi®u ngân hàng",11,100)
		AddNumText(sceneId,x000075_g_ScriptId,"#{JZBZ_081031_02}",11,101)
	for i, eventId in x000075_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000075_OnDefaultEvent( sceneId, selfId,targetId )
	x000075_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000075_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{function_help_049}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	elseif GetNumText() == 101 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{JZBZ_081031_01}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	for i, findId in x000075_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000075_g_ScriptId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000075_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000075_g_eventList do
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
function x000075_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000075_g_eventList do
		if missionScriptId == findId then
			x000075_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000075_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000075_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x000075_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000075_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000075_OnDie( sceneId, selfId, killerId )
end
