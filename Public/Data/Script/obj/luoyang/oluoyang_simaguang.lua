--LÕc Dß½ngNPC
--Ë¾Âí¹â
--ÆÕÍ¨

--Àî¹¤²¿

--½Å±¾ºÅ
x000007_g_scriptId = 000007

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x000007_g_eventList={212129,212132}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x000007_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{OBJ_luoyang_0004}")
		for i, eventId in x000007_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		-- Lînh ³ÆºÅ
		if (IsMissionHaveDone(sceneId,selfId, 254) > 0 ) then
			AddNumText(sceneId, x000007_g_scriptId, "Nh§n danh hi®u", 6, 999);
		end

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000007_OnDefaultEvent( sceneId, selfId,targetId )
	x000007_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000007_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText()==999  then
		LuaFnAwardTitle( sceneId, selfId,  10, 234)
		SetCurTitle(sceneId, selfId,  10, 234)
		LuaFnDispatchAllTitle(sceneId, selfId)
		return
	end

	for i, findId in x000007_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000007_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000007_g_eventList do
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
function x000007_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000007_g_eventList do
		if missionScriptId == findId then
			x000007_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x000007_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000007_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x000007_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000007_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x000007_OnDie( sceneId, selfId, killerId )
end
