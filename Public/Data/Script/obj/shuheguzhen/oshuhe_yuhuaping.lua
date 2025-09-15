--Thúc Hà C± Tr¤nNPC
--Óà»ªÆ½
--mµt °ã

x001207_g_MsgInfo = { "#{SHGZ_0612_24}",
											"#{SHGZ_0620_70}",
											"#{SHGZ_0620_71}",
											"#{SHGZ_0620_72}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001207_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		local msgidx = random(getn(x001207_g_MsgInfo))
		AddText(sceneId, x001207_g_MsgInfo[msgidx])
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
