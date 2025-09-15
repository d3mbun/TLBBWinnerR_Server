--Tô ChâuNPC
--ÓêÄ«
--mµt °ã

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001034_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Công tØ cüa chúng ta tài cao, nh¤t ð¸nh trúng.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
