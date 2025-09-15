--洛阳NPC
--萧奉先
--普通

--**********************************
--事件交互入口
--**********************************
function x000032_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  太后讓我們來宋朝好好進行蹴鞠比賽。")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
