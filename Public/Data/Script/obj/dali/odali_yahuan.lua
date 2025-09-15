--´óÀíNPC
--Ñ¾÷ß
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002047_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ta là a hoàn.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
