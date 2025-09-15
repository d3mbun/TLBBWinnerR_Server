x045002_g_scriptId = 045002

function x045002_XSCRIPT( sceneId, selfId, type, param1, param2, param3)
	if type == 0 then --TargetGUID
		local TargetGUID = LuaFnGuid2ObjId(sceneId, param1)
		SetMissionData(sceneId,selfId,CLIENT_UI_TARGETGUID,TargetGUID)
		x045002_ShowMsg( sceneId, selfId, "Ðang ki¬m tra thông tin ["..GetName(sceneId,TargetGUID).."]!" )
	end
	
	if type == 1 then
		local VoHon_Author = "";
		local targetId = GetMissionData(sceneId,selfId,CLIENT_UI_TARGETGUID)
		
		local ItemID = LuaFnGetItemTableIndexByIndex(sceneId, targetId, 108);
		if ItemID >= 10308001 and ItemID <= 10308004 then
			local Author, szAuthor = LuaFnGetItemCreator(sceneId, targetId, 108);
			if szAuthor then
				VoHon_Author = szAuthor;
			else
				VoHon_Author = "0010000050010----------------------------0";
			end
		else
			VoHon_Author = "NoWuhun";
		end
		
		BeginUICommand(sceneId)
			UICommand_AddString(sceneId,VoHon_Author)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,20111213)
	end
	
	if type == 2 then
		BankBegin(sceneId, selfId, selfId)
	end
	
	if type == 3 then
		CallScriptFunction( PRIZE_SCRIPT_ID, "AskPoint", sceneId, selfId )
		
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, -1 )
			UICommand_AddInt( sceneId, 1000)
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2001 )
	end
	
	if type == 5 then --TopLevel
		CallScriptFunction( 45003, "Syn2Client", sceneId, selfId )
	end
	
	if type == 6 then --TopDonate
		x045002_ShowMsg( sceneId, selfId, "ChÑc nång chßa m·!")
		return
		-- CallScriptFunction( 45006, "Syn2Client", sceneId, selfId )
	end
	
	if type == 7 then --TopUseKNB
		x045002_ShowMsg( sceneId, selfId, "ChÑc nång chßa m·!")
		return
		-- CallScriptFunction( 45007, "Syn2Client", sceneId, selfId )
	end
	
	if type == 8 then --UnMount
		CallScriptFunction(45012,"UnMountRClick",sceneId, selfId)
	end
	
	if type == 81 then --OtherRide
		local targetId = GetMissionData(sceneId,selfId,CLIENT_UI_TARGETGUID)
		local TargetRide_Item = GetMissionData(sceneId,targetId,CHARRIDER_ITEM)
		local TargetRide_Info = GetMissionData(sceneId,targetId,CHARRIDER_INFO)
		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,0)
			UICommand_AddInt(sceneId,TargetRide_Info)
			UICommand_AddInt(sceneId,TargetRide_Item)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId,145001)
	end
	
end

function x045002_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end