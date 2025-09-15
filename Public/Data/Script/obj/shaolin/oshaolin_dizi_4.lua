--Thiªu LâmNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x009033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là ð® tØ phái Thiªu Lâm.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
