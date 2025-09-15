--¶Ô»°ÊÂ¼þ npcÖÜÀÏÊµ

--½Å±¾ºÅ
x713610_g_ScriptId = 713610

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713610_OnDefaultEvent( sceneId, selfId, targetId )
	dialog = "#{event_liveabilityevent_0010}"
		BeginEvent(sceneId)
		AddText(sceneId, dialog)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713610_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713610_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u tr°ng tr÷t",11,-1)
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713610_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713610_OnAccept( sceneId, selfId, AbilityId )
end
