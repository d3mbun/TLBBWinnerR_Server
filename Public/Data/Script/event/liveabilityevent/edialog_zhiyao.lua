--¶Ô»°ÊÂ¼þ 

--½Å±¾ºÅ
x713602_g_ScriptId = 713602

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713602_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0002}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713602_OnEnumerate( sceneId, selfId, targetId )
	--	AddNumText(sceneId,x713602_g_ScriptId,"ÎÒÏëÁË½âÖÆÒ©",11,-1)
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713602_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713602_OnAccept( sceneId, selfId, AbilityId )
end
