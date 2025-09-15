--Thiên S½nNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x017033_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là ð® tØ cüa phái Thiên S½n.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
