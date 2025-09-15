
x045024_g_scriptId = 045024

--**********************************
--
--**********************************
function x045024_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{WH_090817_14}")
		AddNumText( sceneId, x045024_g_scriptId, "Xo� Thu�c T�nh M� R�ng", 6, 1 )
		AddNumText( sceneId, x045024_g_scriptId, "H�p Th�nh Nhu�n H�n Th�ch", 6, 2 )
		AddNumText( sceneId, x045024_g_scriptId, "H�p Th�nh H�n B�ng Ch�u", 6, 3 )
		AddNumText( sceneId, x045024_g_scriptId, "Thay бi C�m Tinh", 6, 4 )
		AddNumText( sceneId, x045024_g_scriptId, "T�y T� L� Tr߷ng Th�nh", 6, 5 )
		AddNumText( sceneId, x045024_g_scriptId, "T�y K� N�ng L�nh Ng� V� H�n", 6, 6 )
		AddNumText( sceneId, x045024_g_scriptId, "#{WH_XML_2}", 11, 11 )
		AddNumText( sceneId, x045024_g_scriptId, "#{WH_XML_3}", 11, 12 )
		AddNumText( sceneId, x045024_g_scriptId, "#{WHGBSX_xml_XX(02)}", 11, 13 )
		AddNumText( sceneId, x045024_g_scriptId, "#{WHXCZL_xml_XX(02)}", 11, 14 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045024_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 10 then
		x045024_OnDefaultEvent( sceneId, selfId, targetId )
	end
	
	if key == 11 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WH_090909_07}", 11, 11 )
			AddNumText( sceneId, x045024_g_scriptId, "Trang tr߾c", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 12 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WH_090909_08}", 11, 11 )
			AddNumText( sceneId, x045024_g_scriptId, "Trang tr߾c", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if key == 13 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WHGBSX_091015_01}", 11, 11 )
			AddNumText( sceneId, x045024_g_scriptId, "Trang tr߾c", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 14 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{WHXCZL_091026_02}", 11, 11 )
			AddNumText( sceneId, x045024_g_scriptId, "Trang tr߾c", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 1 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090727 )
	end
	
	if key == 2 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090824 )
	end
	
	if key == 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� mu�n h�p th�nh H�n B�ng Ch�u c�p m�y?")
			AddNumText( sceneId, x045024_g_scriptId, "H�p th�nh H�n B�ng Ch�u (C�p 2)", 6, 31 )
			AddNumText( sceneId, x045024_g_scriptId, "H�p th�nh H�n B�ng Ch�u (C�p 3)", 6, 32 )
			AddNumText( sceneId, x045024_g_scriptId, "H�p th�nh H�n B�ng Ch�u (C�p 4)", 6, 33 )
			AddNumText( sceneId, x045024_g_scriptId, "H�p th�nh H�n B�ng Ch�u (C�p 5)", 6, 34 )
			AddNumText( sceneId, x045024_g_scriptId, "Trang tr߾c", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key >= 31 and key <= 34 then
		local HBC = {}
			HBC[1] = {20310117,20310161}
			HBC[2] = {20310118,20310162}
			HBC[3] = {20310119,20310163}
			HBC[4] = {20310120,20310164}
			HBC[5] = {20310121,20310165}
		
		local Select = key - 30;
		local HBC1 = LuaFnGetAvailableItemCount(sceneId,selfId,HBC[Select][1])
		local HBC2 = LuaFnGetAvailableItemCount(sceneId,selfId,HBC[Select][2])
		
		if LuaFnGetMaterialBagSpace(sceneId,selfId) < 2 then
			x045024_ShowMsg( sceneId, selfId, "H�y s�p x�p l�i 2 � tr�ng trong t�i Nguy�n Li�u")
			return
		end
		
		if HBC1 >= 5 then
			LuaFnDelAvailableItem(sceneId,selfId,HBC[Select][1],5)
			TryRecieveItem(sceneId,selfId,HBC[Select+1][1],1)
		end
		
		if HBC2 >= 5 then
			LuaFnDelAvailableItem(sceneId,selfId,HBC[Select][2],5)
			TryRecieveItem(sceneId,selfId,HBC[Select+1][2],1)
		end
		
		if HBC1 >= 5 or HBC2 >= 5 then
			BeginEvent(sceneId)
				AddText(sceneId,"H�p th�nh H�n B�ng Ch�u, vui l�ng xem l�i tay n�i.")
				AddNumText( sceneId, x045024_g_scriptId, "Trang tr߾c", 8, 3 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Kh�ng th� h�p th�nh H�n B�ng Ch�u.")
				AddNumText( sceneId, x045024_g_scriptId, "Trang tr߾c", 8, 3 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	
	if key == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 10 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090721 )
	end
	
	if key == 5 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 9 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090721 )
	end
	
	if key == 6 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 2 )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20090722 )
	end
end

--**********************************
--
--**********************************
function x045024_OnMissionSubmit(sceneId,selfId,targetId,x045024_g_scriptId,ItemID)

end

--**********************************
--
--**********************************
function x045024_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end