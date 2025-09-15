--Thúc Hà C± Tr¤nNPC
--ÍõÄ®º®
--mµt °ã

x001216_g_MsgInfo = { "#{SHGZ_0612_33}",
											"#{SHGZ_0620_97}",
											"#{SHGZ_0620_98}",
											"#{SHGZ_0620_99}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001216_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001216_g_MsgInfo))
		AddText(sceneId, x001216_g_MsgInfo[msgidx])
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
