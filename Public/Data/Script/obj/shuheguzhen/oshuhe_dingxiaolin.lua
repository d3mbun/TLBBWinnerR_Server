--Thúc Hà C± Tr¤nNPC
--¶¡Ð¡ÁÕ
--mµt °ã

x001214_g_MsgInfo = { "#{SHGZ_0612_31}",
											"#{SHGZ_0620_91}",
											"#{SHGZ_0620_92}",
											"#{SHGZ_0620_93}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001214_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001214_g_MsgInfo))
		AddText(sceneId, x001214_g_MsgInfo[msgidx])
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
