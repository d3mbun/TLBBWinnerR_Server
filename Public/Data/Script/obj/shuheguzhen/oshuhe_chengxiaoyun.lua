--Thúc Hà C± Tr¤nNPC
--³ÌÐ¡ÔÆ
--mµt °ã

x001212_g_MsgInfo = { "#{SHGZ_0612_29}",
											"#{SHGZ_0620_85}",
											"#{SHGZ_0620_86}",
											"#{SHGZ_0620_87}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001212_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001212_g_MsgInfo))
		AddText(sceneId, x001212_g_MsgInfo[msgidx])
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
