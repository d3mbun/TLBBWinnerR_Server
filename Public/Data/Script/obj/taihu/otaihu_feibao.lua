--姓i L齆PC
--天仙 mu礽 mu礽
--普通

--**********************************
--事件交互入口
--**********************************
function x004006_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Mu礽 mu礽 Thi阯 Ti阯")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
