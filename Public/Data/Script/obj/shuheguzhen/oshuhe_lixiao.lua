--Thúc Hà C± Tr¤nNPC
--ÀîåÐ
--mµt °ã

x001210_g_MsgInfo = { "#{SHGZ_0612_27}",
											"#{SHGZ_0620_76}",
											"#{SHGZ_0620_77}",
											"#{SHGZ_0620_78}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001210_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001210_g_MsgInfo))
		AddText(sceneId, x001210_g_MsgInfo[msgidx])
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
