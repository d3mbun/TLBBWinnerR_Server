--¶ÎÕýÃ÷

--½Å±¾ºÅ
x002005_g_scriptId = 002005

--ËùÓµÓÐµÄÊÂ¼þIDÁÐ±í
x002005_g_eventList={}
--x002005_g_eventList={200401,200402,200604,200701,201502,201601,201602,201701,201801,201901,201902}	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x002005_UpdateEventList( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ "
	end
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"  "..PlayerName..PlayerSex..", g£p các hÕ th§t vui quá. Ôi, là vua mµt nß¾c, su¯t ngày vi®c tri«u chính cÑ bám l¤y thân, phäi lo quá nhi«u, không b¢ng t¾i Niêm Hoa Tñ mà tu hành còn t¯t h½n!")
	for i, eventId in x002005_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002005_OnDefaultEvent( sceneId, selfId,targetId )
	x002005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002005_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002005_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--½ÓÊÜ´ËNPCµÄÈÎÎñ
--**********************************
function x002005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002005_g_eventList do
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
function x002005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó£¬Òª·µ»ØNPCµÄÊÂ¼þÁÐ±í
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			x002005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--¼ÌÐø£¨ÒÑ¾­½ÓÁËÈÎÎñ£©
--**********************************
function x002005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ìá½»ÒÑ×öÍêµÄÈÎÎñ
--**********************************
function x002005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x002005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x002005_OnDie( sceneId, selfId, killerId )
end
