--ÏôÈÃ

--½Å±¾ºÅ
x003002_g_scriptId = 003002

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x003002_g_eventList={}--210303, 210307, 210308}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x003002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId);
	local PlayerName = GetName(sceneId,selfId);
	local nTask1 = IsHaveMission(sceneId, selfId, 463);
	
	AddText(sceneId, "#{OBJ_songshan_0001}")
	
	for i, eventId in x003002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId );
	end

	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId);
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x003002_OnDefaultEvent( sceneId, selfId,targetId )
  --BeginAddItem(sceneId);
	--AddItem( sceneId, 10101006, 1 );
	--EndAddItem(sceneId, selfId);
	--AddItemListToHuman(sceneId, selfId);
	x003002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x003002_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x003002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x003002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003002_g_eventList do
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
function x003002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x003002_g_eventList do
		if missionScriptId == findId then
			x003002_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x003002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x003002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x003002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x003002_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x003002_OnDie( sceneId, selfId, killerId )
end
