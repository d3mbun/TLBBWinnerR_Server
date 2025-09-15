--É³ÖÞÀä
--½Å±¾ºÅ
x112002_g_scriptId = 112002

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í
x112002_g_eventList={ 250000 }	

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x112002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Khi làm m¾i trân thú, yêu c¥u trân thú bäo bäo có c¤p ðµ dß¾i 30.")
	AddText(sceneId,"Khi tiªn hành s¨ tiêu t¯n 5 ngân lßþng!")	
	for i, eventId in x112002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )	
	end
	AddNumText( sceneId, x112002_g_scriptId, "Huy«n Vû Ðäo nh§n gi¾i thi®u trân thú", 11, 10 )
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x112002_OnDefaultEvent( sceneId, selfId,targetId )
	x112002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x112002_OnEventRequest( sceneId, selfId, targetId, eventId )


	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_076}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	for i, findId in x112002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x112002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x112002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--¼ÌÐø(ÒÑ¾­½ÓÁËÈÎÎñ)
--**********************************
function x112002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--Ìá½»ÒÑ×öÍêtoÕ ðµ ÈÎÎñ
--**********************************
function x112002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
 
end

--**********************************
--ËÀÍöÊÂ¼þ
--**********************************
function x112002_OnDie( sceneId, selfId, killerId )
end

--**********************************
--¼ì²âÈÎÎñTiªp thøÌõ¼þ
--**********************************
function x112002_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end
