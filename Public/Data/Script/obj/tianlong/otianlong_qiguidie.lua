--Thiên LongNPC
--Æë¹éµû
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x013010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  G¥n ðây ta làm cho B±n Nh½n ðÕi sß 1 t¤m cà sa, không biªt có v×a hay không.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
