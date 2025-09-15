--LÕc Dß½ngNPC
--³Â·òÖ®
--ÆÕÍ¨

--½Å±¾ºÅ
x000112_g_scriptId = 000112

--Ä¿±êNPC
x000112_g_name	="³Â·òÖ®"

--ËùÓµÓÐtoÕ ðµ ÊÂ¼þIDÁÐ±í {½á°Ý,½â³ý½á°Ý,Ç¿ÖÆ½â³ý½á°Ý}
x000112_g_RelationEventList={806001,806002,806000}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000112_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu¯n kªt bái v¾i ngß¶i khác không? TÕi hÕ có th¬ viªt Kim Lan ph± cho các v¸")
		
		AddNumText( sceneId, x000112_g_scriptId, "Gi¾i thi®u kªt bái", 11, 10 )
		
		for i, eventId in x000112_g_RelationEventList do
			CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000112_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_067}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	local i
	local findId
	for i, findId in x000112_g_RelationEventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
--		x000112_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Tiªp thø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000112_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	local i
	local findId
	for i, findId in x000112_g_RelationEventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			return
		end
	end
end

--**********************************
--¾Ü¾ø´ËNPCtoÕ ðµ ÈÎÎñ
--**********************************
function x000112_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	local i
	local findId
	--¾Ü¾øÖ®ºó,ÒªTr· v«NPCtoÕ ðµ ÊÂ¼þÁÐ±í
	for i, findId in x000112_g_RelationEventList do
		if missionScriptId == findId then
			x000112_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end
