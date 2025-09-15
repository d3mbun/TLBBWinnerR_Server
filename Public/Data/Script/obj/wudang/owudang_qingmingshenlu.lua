--Võ ÐangNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x012011_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"<HÕc minh cØu cao, thanh vån vu thiên>")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
