--´óÀíNPC		ÖÖÖ²npc   1ÖÖÖ²Éý¼¶   2ÖÖÖ²¼¼ÄÜËµÃ÷
--Å·Ñô´óÊå
--ÆÕÍ¨

--½Å±¾º
x002053_g_ScriptId = 002053

--ËùÓµÓÐµÄÊÂ¼þIdÁÐ±í
--estudy_zhongzhi = 713511
--elevelup_zhongzhi = 713570
--edialog_zhongzhi = 713610
x002053_g_eventList={713511,713570,713610}
--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002053_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_dali_0032}")
		for i, eventId in x002053_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002053_OnDefaultEvent( sceneId, selfId,targetId )
	x002053_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002053_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002053_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x002053_g_ScriptId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002053_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002053_g_eventList do
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
--¾Ü¾ø´ËNPCµÄÈÎÎñ
--**********************************
function x002053_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002053_g_eventList do
		if missionScriptId == findId then
			x002053_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002053_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002053_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002053_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002053_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002053_OnDie( sceneId, selfId, killerId )
end
