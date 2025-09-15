--´óÀíNPC
--ÃÅÎÀ
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002022_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Bäo v® thành ĞÕi Lı là chÑc trách cüa ta!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
