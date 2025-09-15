--¸µË¼¹é

--½Å±¾ºÅ
x002013_g_scriptId = 002013

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002013_g_eventList={}
--x002013_g_eventList={201002,201101,201102,201103}

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002013_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng"
	else
		PlayerSex = " các hÕ"
	end
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"  Nghe nói · Vô Lßþng S½n luôn có BÕch Viên làm hÕi ngß¶i. "..PlayerName..PlayerSex.." ðþi m¤y ngày næa tÑ ðÕi hµ v® chúng ta cùng t¾i xem sao, có th¬ còn mang ðßþc thÑ gì hay hay v«");
	for i, eventId in x002013_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002013_OnDefaultEvent( sceneId, selfId,targetId )
	x002013_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002013_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002013_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002013_g_eventList do
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
function x002013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002013_g_eventList do
		if missionScriptId == findId then
			x002013_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002013_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002013_OnDie( sceneId, selfId, killerId )
end
