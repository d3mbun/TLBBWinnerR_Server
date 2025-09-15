--¶Ô»°ÊÂ¼þ 

--½Å±¾ºÅ
x713605_g_ScriptId = 713605

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713605_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0005}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713605_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713605_g_ScriptId,"Tìm hi¬u may m£c",11,-1)
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713605_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713605_OnAccept( sceneId, selfId, AbilityId )
end
