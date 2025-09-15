--Thái H° ²Ü´¿

--½Å±¾ºÅ
x004003_g_scriptId = 004003

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x004003_g_eventList={}	--210404,210403

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x004003_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	
	local IsDone474 = IsMissionHaveDone(sceneId,selfId,474)
	
		
	
	if(IsDone474 == 0) then	
		AddText(sceneId,  "Thân thª cüa ta r¤t bí m§t, hiªm ngß¶i biªt.")	
	end
	
	for i, eventId in x004003_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x004003_OnDefaultEvent( sceneId, selfId,targetId )
	x004003_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x004003_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x004003_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x004003_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x004003_g_eventList do
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
function x004003_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x004003_g_eventList do
		if missionScriptId == findId then
			x004003_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x004003_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x004003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x004003_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x004003_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x004003_OnDie( sceneId, selfId, killerId )
end
