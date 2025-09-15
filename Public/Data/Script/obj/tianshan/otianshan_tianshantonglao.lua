--Thi阯 S絥NPC
--Thi阯 S絥 邪ng L鉶
--普通

--**********************************
--事件交互入口
--**********************************
function x017000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
