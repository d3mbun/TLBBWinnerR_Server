
x045023_g_scriptId = 045023

--**********************************
--
--**********************************
function x045023_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{WH_090729_03}")
		AddNumText( sceneId, x045023_g_scriptId, "TÂng C§p H˛p Th‡nh Vı H∞n", 6, 1 )
		AddNumText( sceneId, x045023_g_scriptId, "M∑ Rµng Khung Thuµc TÌnh", 6, 2 )
		AddNumText( sceneId, x045023_g_scriptId, "H˜c Thuµc TÌnh M∑ Rµng", 6, 3 )
		AddNumText( sceneId, x045023_g_scriptId, "ThÂng C§p Thuµc TÌnh M∑ Rµng", 6, 4 )
		AddNumText( sceneId, x045023_g_scriptId, "K€ NÂng LÓnh Ngµ Vı H∞n", 6, 5 )
		AddNumText( sceneId, x045023_g_scriptId, "ThÂng C§p K€ NÂng Vı H∞n", 6, 7 )
		AddNumText( sceneId, x045023_g_scriptId, "#{WH_xml_XX(12)}", 11, 10 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045023_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 0 then
		x045023_OnDefaultEvent( sceneId, selfId, targetId )
	end
	
	if key == 10 then
		BeginEvent(sceneId)
			AddNumText( sceneId, x045023_g_scriptId, "#{WH_xml_XX(105)}", 11, 11 )
			--AddNumText( sceneId, x045023_g_scriptId, "C·ch nhßn Vı H∞n", 11, 12 )
			AddNumText( sceneId, x045023_g_scriptId, "#{WH_xml_XX(13)}", 11, 13 )
			AddNumText( sceneId, x045023_g_scriptId, "#{WH_xml_XX(14)}", 11, 14 )
			AddNumText( sceneId, x045023_g_scriptId, "#{WH_xml_XX(15)}", 11, 15 )
			AddNumText( sceneId, x045023_g_scriptId, "#{WH_xml_XX(16)}", 11, 16 )
			AddNumText( sceneId, x045023_g_scriptId, "#{WH_xml_XX(17)}", 11, 17 )
			AddNumText( sceneId, x045023_g_scriptId, "Trang trﬂæc", 8, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 11 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WH_090820_01}", 11, 11 )
			AddNumText( sceneId, x045023_g_scriptId, "Trang trﬂæc", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 13 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WH_090729_45}", 11, 11 )
			AddNumText( sceneId, x045023_g_scriptId, "Trang trﬂæc", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 14 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WH_090729_46}", 11, 11 )
			AddNumText( sceneId, x045023_g_scriptId, "Trang trﬂæc", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 15 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WH_090729_47}", 11, 11 )
			AddNumText( sceneId, x045023_g_scriptId, "Trang trﬂæc", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 16 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WH_090729_48}", 11, 11 )
			AddNumText( sceneId, x045023_g_scriptId, "Trang trﬂæc", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 17 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WH_090729_49}", 11, 11 )
			AddNumText( sceneId, x045023_g_scriptId, "Trang trﬂæc", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 1 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 2 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090721 )
	end
	
	if key == 2 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 4 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090721 )
	end
	
	if key == 3 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 1 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090721 )
	end
	
	if key == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			--UICommand_AddInt( sceneId, 1 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090720 )
	end

	if key == 5 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 1 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090722 )
	end
	
	if key == 6 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 2 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090722 )
	end
	
	if key == 7 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			--UICommand_AddInt( sceneId, 2 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090723 )
	end
end


--**********************************
--
--**********************************
function x045023_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end