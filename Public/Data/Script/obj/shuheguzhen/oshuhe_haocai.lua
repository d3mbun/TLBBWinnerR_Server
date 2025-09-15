--Thúc Hà C± Tr¤nNPC....
--Åëâ¿´óÊ¦....

--½Å±¾ºÅ
x001188_g_ScriptId = 001188

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIdÁÐ±í
--elevelup_pengren = 713561
--edialog_pengren = 713601
--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x001188_g_eventList={713561,713601}

x001188_g_MsgInfo = { "#{SHGZ_0612_10}",
											"#{SHGZ_0620_28}",
											"#{SHGZ_0620_29}",
											"#{SHGZ_0620_30}",
										}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x001188_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local msgidx = random(getn(x001188_g_MsgInfo))
	AddText(sceneId, x001188_g_MsgInfo[msgidx])
	for i, eventId in x001188_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001188_OnDefaultEvent( sceneId, selfId,targetId )
	x001188_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001188_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001188_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x001188_g_ScriptId )
		return
	end
end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001188_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001188_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId,ABILITY_PENGREN )
			end
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x001188_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x001188_g_eventList do
		if missionScriptId == findId then
			x001188_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x001188_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001188_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x001188_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001188_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end
