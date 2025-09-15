--¶Ô»°ÊÂ¼þ npc°×Ó±Ã÷

--½Å±¾ºÅ
x713608_g_ScriptId = 713608

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713608_OnDefaultEvent( sceneId, selfId, targetId)
	dialog = "#{event_liveabilityevent_0008}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713608_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713608_g_ScriptId,"Tìm hi¬u hái dßþc",11,-1)
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713608_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713608_OnAccept( sceneId, selfId, AbilityId )
end
