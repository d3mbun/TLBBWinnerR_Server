
x045028_g_scriptId = 045028

--**********************************
--
--**********************************
function x045028_OnDefaultEvent( sceneId, selfId,targetId )
	-- LuaFnSetItemCreator(sceneId, selfId, 0, "*1850000")
	-- LuaFnSetItemCreator(sceneId, selfId, 1, "*1950000")
	-- LuaFnSetItemCreator(sceneId, selfId, 2, "*2050000")
	--local DW = CallScriptFunction(741302, "GetDWAuthor", sceneId, selfId, 0, 1)
	BeginEvent(sceneId)
		--AddText(sceneId,DW)
		AddText(sceneId,"#{ZBDW_091105_1}")
		AddNumText( sceneId, x045028_g_scriptId, "H�p th�nh �i�u v�n", 4, 1 )
		AddNumText( sceneId, x045028_g_scriptId, "T�c kh�c �i�u v�n", 4, 2 )
		AddNumText( sceneId, x045028_g_scriptId, "C߶ng ho� �i�u v�n", 4, 3 )
		AddNumText( sceneId, x045028_g_scriptId, "D� b� �i�u v�n", 4, 4 )
		-- AddNumText( sceneId, x045028_g_scriptId, "Di chuy�n �i�u v�n", 4, 5 )
		AddNumText( sceneId, x045028_g_scriptId, "#{ZBDW_XML_6}", 11, 9 )
		AddNumText( sceneId, x045028_g_scriptId, "R�i �i", 8, 0 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045028_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
		
	if key == 0 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
	
	if key == 1 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000156 )
	end
	
	if key == 2 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2000156 )
	end
	
	if key == 3 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 3000156 )
	end
	
	if key == 4 then
		--x045028_ShowMsg( sceneId, selfId, "T�m th�i - D� b� �i�u V�n s� kh�ng tr� l�i s� Kim T�m Ty �ang t�ch tr�!")
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 4000156 )
	end
	
	if key == 5 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1002001 )
	end

	if key == 9 then
		BeginEvent(sceneId)
			--AddText(sceneId,DW)
			AddText(sceneId,"#{ZBDW_091105_21}")
			AddNumText( sceneId, x045028_g_scriptId, "Quay l�i", 8, 10 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 10 then
		x045028_OnDefaultEvent( sceneId, selfId,targetId )
	end
end

--**********************************
--
--**********************************
function x045028_OnMissionSubmit(sceneId,selfId,targetId,x045028_g_scriptId,ItemID)

end

--**********************************
--
--**********************************
function x045028_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end