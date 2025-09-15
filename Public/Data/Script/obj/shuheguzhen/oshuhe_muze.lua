--Thúc Hà C± Tr¤nNPC
--Ä¾Ôó
--mµt °ã

x001202_g_MsgInfo = { "#{SHGZ_0612_19}",
											"#{SHGZ_0620_55}",
											"#{SHGZ_0620_56}",
											"#{SHGZ_0620_57}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001202_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001202_g_MsgInfo))
		AddText(sceneId, x001202_g_MsgInfo[msgidx])
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
