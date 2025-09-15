--Thiên S½nNPC
--ÓàÆÅ
--ÆÕÍ¨

--½Å±¾ºÅ
x017006_g_ScriptId = 017006

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þ
--estudy_xuanbingshu = 713515
--elevelup_xuanbingshu = 713574
--edialog_xuanbingshu = 713614

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x017006_g_eventList={713515,713574,701612}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x017006_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"  KÛ nång cüa ta chï dÕy ð® tØ b±n phái.")
	for i, eventId in x017006_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x017006_g_ScriptId, "Gi¾i thi®u huy«n bång thu§t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x017006_OnDefaultEvent( sceneId, selfId,targetId )
	x017006_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x017006_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_027}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x017006_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x017006_g_ScriptId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x017006_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017006_g_eventList do
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
function x017006_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x017006_g_eventList do
		if missionScriptId == findId then
			x017006_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x017006_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x017006_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x017006_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x017006_OnDie( sceneId, selfId, killerId )
end
