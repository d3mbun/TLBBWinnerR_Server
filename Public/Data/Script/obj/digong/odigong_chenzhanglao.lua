x044604_g_ScriptId = 044604

--**********************************
--事件交互入口
--**********************************
function x044604_OnDefaultEvent( sceneId, selfId,targetId )
	-- local name = GetName(sceneId,selfId)
	-- local petGUID_H, petGUID_L = LuaFnGetCurrentPetGUID(sceneId,selfId)
	-- local pet=GetPetTransString(sceneId,selfId,petGUID_H,petGUID_L)
	-- local str = format("#{PBB_2_A}#{_INFOUSR%s}#{PBB_2_B}#{_INFOMSG%s}#{PBB_2_C}",name,pet)
	-- BroadMsgByChatPipe(sceneId, selfId, str, 0)
	
	BeginEvent(sceneId)
		local msg = "#{DG_8724_21}"
		AddText(sceneId,msg);
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
