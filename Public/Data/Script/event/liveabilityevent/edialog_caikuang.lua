--¶Ô»°ÊÂ¼þ ²É¿ónpcÑ¦Í­´¸

--½Å±¾ºÅ
x713607_g_ScriptId = 713607

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713607_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0007}"
	BeginEvent(sceneId)
		AddText(sceneId, dialog)
	EndEvent(sceneId)
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713607_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713607_g_ScriptId,"Tìm hi¬u khai khoáng",11,-1)
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713607_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713607_OnAccept( sceneId, selfId, AbilityId )
end
