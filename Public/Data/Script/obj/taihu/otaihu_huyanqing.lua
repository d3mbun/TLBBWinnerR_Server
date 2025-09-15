--Thái H°NPC
--ºôÑÓÇì
--ÆÕÍ¨

--½Å±¾ºÅ
x004001_g_ScriptId	= 004001

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x004001_g_EventList	= { 232002 }


--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x004001_UpdateEventList( sceneId, selfId, targetId )

	BeginEvent( sceneId )
		local	nam	= LuaFnGetName( sceneId, selfId )
		AddText( sceneId, "  "..nam.." , nào t¾i ði.#r" )
		for i, findId in x004001_g_EventList do
			CallScriptFunction( x004001_g_EventList[i], "OnEnumerate", sceneId, selfId, targetId )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x004001_OnDefaultEvent( sceneId, selfId, targetId )
	x004001_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x004001_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x004001_g_EventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x004001_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x004001_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end

end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x004001_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )

	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x004001_g_EventList do
		if missionScriptId == findId then
			x004001_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x004001_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x004001_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x004001_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

	for i, findId in x004001_g_EventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x004001_OnDie( sceneId, selfId, killerId )
end
