--Thiên S½nNPC
--ÎÊÂ·
--½Å±¾ºÅ
x017034_g_scriptId = 017034

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x017034_g_eventList={500068}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x017034_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local  PlayerName=GetName(sceneId,selfId)
		local  PlayerSex=GetSex(sceneId,selfId)
		if PlayerSex == 0 then
			PlayerSex = " cô nß½ng "
		else
			PlayerSex = " các hÕ"
		end
		AddText(sceneId,"Ta ðªn chï ðß¶ng cho các hÕ.")
		for i, eventId in x017034_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x017034_OnDefaultEvent( sceneId, selfId,targetId )
	x017034_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x017034_OnEventRequest( sceneId, selfId, targetId, eventId )
	CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
	return
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x017034_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017034_g_eventList do
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
function x017034_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x017034_g_eventList do
		if missionScriptId == findId then
			x017034_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x017034_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x017034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x017034_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x017034_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x017034_OnDie( sceneId, selfId, killerId )
end
