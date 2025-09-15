--ÂåÑôNPC

--±±ÌõË¾

--ÆÕÍ¨

x000047_g_ScriptId=000047

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x000047_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Nghe nói qu¯c l­ mà nß¾c Cao Ly c¯ng dâng ğã b¸ m¤t, có th§t không?")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
