--Th�c H� C� Tr�nNPC
--����
--m�t ��

x001175_g_MsgInfo = { "#{SHGZ_0612_35}",
											"#{SHGZ_0620_103}",
											"#{SHGZ_0620_104}",
											"#{SHGZ_0620_105}",
										}

--**********************************
--�¼��������
--**********************************
function x001175_OnDefaultEvent( sceneId, selfId,targetId )
	-- if GetName(sceneId,selfId) == "Admin" then
		-- local ItemInfo = GetBagItemTransfer( sceneId, selfId, 30 )
		-- local PlayerName = GetName(sceneId, selfId)
		-- local StrText = format("#{_INFOUSR%s} #Gt�i Th�c H� C� Tr�n, quy�t li�t v�y ��nh S߽ng �nh l�m h�n ph�i giao ra #{_INFOMSG%s}#R.", PlayerName, ItemInfo)
		-- BroadMsgByChatPipe(sceneId,selfId, StrText, 4)
	-- end
	
	BeginEvent(sceneId)
		local msgidx = random(getn(x001175_g_MsgInfo))
		AddText(sceneId, x001175_g_MsgInfo[msgidx])
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
