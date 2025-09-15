--LÕc Dß½ngNPC		ÖÖÖ²npc   1ÖÖÖ²Éýc¤p   2ÖÖÖ²¼¼ÄÜË ði¬m÷
--ÁõÒàÅ©
--ÆÕÍ¨

--½Å±¾ºÅ
x000105_g_ScriptId = 000156

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--estudy_zhongzhi = 713511
--elevelup_zhongzhi = 713570
--edialog_zhongzhi = 713610
x000105_g_eventList={713511,713570}--,713610}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000105_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_luoyang_0028}")
		for i, eventId in x000105_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x000105_g_ScriptId, "Gi¾i thi®u tr°ng tr÷t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000105_OnDefaultEvent( sceneId, selfId,targetId )
	x000105_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000105_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{function_help_004}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x000105_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x000105_g_ScriptId )
		return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000105_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000105_g_eventList do
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
function x000105_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000105_g_eventList do
		if missionScriptId == findId then
			x000105_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000105_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000105_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x000105_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000105_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000105_OnDie( sceneId, selfId, killerId )
end
