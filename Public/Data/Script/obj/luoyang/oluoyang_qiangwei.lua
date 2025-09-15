--LÕc Dß½ngNPC		ÑøÉú·¨npc		1Ñ§Ï°ÑøÉú·¨¼¼ÄÜ		2ÖÐÒ½¼¼ÄÜË ði¬m÷
--Ç¾Þ±
--ÆÕÍ¨

--½Å±¾ºÅ
x000113_g_ScriptId = 000113

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--estudy_yangshengfa = 713528
--elevelup_yangshengfa = 713587
--edialog_yangshengfa = 713621
--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x000113_g_eventList={713528,713587,250504}--,713621
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000113_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  Ngß½i mu¯n h÷c kÛ nång dßÞng sinh pháp không?")
	for i, eventId in x000113_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x000113_g_ScriptId, "Gi¾i thi®u dßÞng sinh", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000113_OnDefaultEvent( sceneId, selfId,targetId )
	x000113_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000113_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_002}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x000113_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000113_g_ScriptId )
		return
	end
end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000113_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000113_g_eventList do
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
function x000113_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000113_g_eventList do
		if missionScriptId == findId then
			x000113_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000113_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000113_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x000113_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000113_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000113_OnDie( sceneId, selfId, killerId )
end
