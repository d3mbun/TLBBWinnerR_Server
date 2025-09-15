--Thúc Hà C± Tr¤nNPC
--ÀîÃúÑó
--ÆÕÍ¨

x001172_g_ScriptId	= 001172
x001172_g_MsgInfo = { "#{SHGZ_0612_01}",
											"#{SHGZ_0620_01}",
											"#{SHGZ_0620_02}",
											"#{SHGZ_0620_03}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001172_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent( sceneId )

		local msgidx = random(getn(x001172_g_MsgInfo))
		AddText( sceneId, x001172_g_MsgInfo[msgidx] )	
    AddNumText( sceneId, x001172_g_ScriptId, "Tiªn vào Thß½ng S½n", 9, 3426 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001172_OnEventRequest( sceneId, selfId, targetId, eventId )

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()

  if arg == 3426 then		--²ÔÉ½
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 165, 53, 20 )
		return
	end

end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001172_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
