--ThÕch Lâm  Sñ th§t ðáng sþ

--½Å±¾ºÅ

x300018_g_scriptId = 300018

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x300018_g_eventList={212104}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300018_OnDefaultEvent( sceneId, selfId, BagIndex )
	BeginEvent(sceneId)
		AddText(sceneId, "Sñ th§t ðáng sþ")
		for i, eventId in x300018_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, -1 )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--Ë¢ÐÂÊÂ¼þ
--**********************************
function x300018_OnEventRequest( sceneId, selfId, targetId, eventId )
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x300018_OnMissionAccept( sceneId, selfId, targetId )
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x300018_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x300018_g_eventList do
		if missionScriptId == findId then
			x300018_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

function x300018_IsSkillLikeScript( sceneId, selfId)
	return 0;
end

