--慕容NPC
--普通弟子
--普通

--**********************************
--事件交互入口
--**********************************
function x009050_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_36}");
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
