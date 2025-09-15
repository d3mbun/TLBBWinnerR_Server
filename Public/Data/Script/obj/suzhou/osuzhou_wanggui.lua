--Tô ChâuNPC
--Íõ¹ç
--mµt °ã

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001008_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  S· ðÕi nhân, tÖ l® pha chª l¥n này không sai chÑ?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
