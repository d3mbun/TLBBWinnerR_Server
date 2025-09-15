--ÐÕi LýNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x013032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Ta là ð® tØ phái Thiên Long.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
