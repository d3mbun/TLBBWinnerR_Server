--MisDescBegin
x500621_g_ScriptId = 500621

x500621_g_Position_X=177
x500621_g_Position_Z=184
x500621_g_SceneID=0
x500621_g_AccomplishNPC_Name = "Bành Hoài Ng÷c"
x500621_g_MissionId = 1187

x500621_g_AcceptMission = 118801
x500621_g_CompleteMission = 118802

x500621_g_Name	= "Châu Thiên Sß"
x500621_g_MissionKind = 11
x500621_g_MissionLevel = 40
x500621_g_IfMissionElite = 0
x500621_g_MissionName="Bäo ThÕch Biªu T£ng"
x500621_g_MissionTarget="    Tìm ðßþc #GLÕc Dß½ng#{_INFOAIM177,184,0,Bành Hoài Ng÷c}#RBành Hoài Ng÷c#W, và trao ð±i v¾i y."
x500621_g_SignPost = {x = 174, z = 184, tip = "Bành Hoài Ng÷c"}
x500621_g_ItemBonus={{id=50213004 ,num=1},{id=20109004,num=1},{id=10413096,num=1}}
x500621_g_Custom	= { {id="Ðã tìm ðßþc Bành Hoài Ng÷c",num=1} }
x500621_g_IsMissionOkFail = 1		--±äÁ¿µÄµÚ0Î»
--MisDescEnd

function x500621_OnEnumerate( sceneId, selfId, targetId )
	if LuaFnGetName(sceneId,targetId) == x500621_g_AccomplishNPC_Name then --Tra Nvu--
		if IsHaveMission( sceneId, selfId, x500621_g_MissionId ) > 0 then
			local misIndex = GetMissionIndexByID(sceneId,selfId,x500621_g_MissionId)
			local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)

			if misIndexComplete == 0 then
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
				SetMissionByIndex(sceneId, selfId, misIndex, 1, 1)

				x500621_ShowMsg( sceneId, selfId, x500621_g_Custom[1].id)
			end
			
			AddNumText( sceneId, x500621_g_ScriptId, x500621_g_MissionName, 2, x500621_g_CompleteMission )
		end
		
	elseif LuaFnGetName(sceneId,targetId) == x500621_g_Name then --Nhan Nvu--
		if IsHaveMission( sceneId, selfId, x500621_g_MissionId ) <= 0 then
			if IsMissionHaveDone( sceneId, selfId, x500621_g_MissionId ) <= 0 and GetLevel(sceneId,selfId) >= 40 then
				AddNumText( sceneId, x500621_g_ScriptId, x500621_g_MissionName, 1, x500621_g_AcceptMission )
			end
		end
	end
end


function x500621_OnDefaultEvent( sceneId, selfId, targetId )
	local key = GetNumText()
	
	if key == x500621_g_AcceptMission then
		BeginEvent(sceneId)
			AddText(sceneId,x500621_g_MissionName)
			AddText(sceneId, x500621_g_MissionTarget )
			for i = 1, 3 do
				AddItemBonus( sceneId, x500621_g_ItemBonus[i].id, x500621_g_ItemBonus[i].num )
			end
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x500621_g_ScriptId,x500621_g_MissionId)	
	end
	
	if key == x500621_g_CompleteMission then
		BeginEvent(sceneId)
			AddText(sceneId, x500621_g_MissionName)
			AddText(sceneId, x500621_g_MissionTarget)		
		EndEvent(sceneId)
		DispatchMissionDemandInfo(sceneId, selfId, targetId, x500621_g_ScriptId, x500621_g_MissionId, 1)
	end
end

function x500621_CheckAccept( sceneId, selfId, targetId )

	return 1
end

function x500621_OnAccept( sceneId, selfId, targetId, scriptId )
	AddMission(sceneId, selfId, x500621_g_MissionId, x500621_g_ScriptId, 0, 0, 0)

	return 1
end

function x500621_OnContinue( sceneId, selfId, targetId, missionScriptId )
	BeginEvent(sceneId)
		AddText(sceneId, x500621_g_MissionName)
		AddText(sceneId, x500621_g_Custom[1].id)
		for i = 1, 3 do
			AddItemBonus( sceneId, x500621_g_ItemBonus[i].id, x500621_g_ItemBonus[i].num )
		end
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500621_g_ScriptId,x500621_g_MissionId)
end

function x500621_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
		x500621_ShowMsg( sceneId, selfId, "Túi ÐÕo Cø c¥n 1 ch² tr¯ng!")
		return
	end
	
	if LuaFnGetMaterialBagSpace(sceneId, selfId) < 2 then
		x500621_ShowMsg( sceneId, selfId, "Túi Nguyên Li®u c¥n 2 ch² tr¯ng!")
		return
	end
	
	for i = 1, 3 do 
		local NewItem = TryRecieveItem(sceneId, selfId, x500621_g_ItemBonus[i].id, x500621_g_ItemBonus[i].num)
		LuaFnItemBind(sceneId, selfId, NewItem)
	end
	
	DelMission(sceneId, selfId, x500621_g_MissionId)
	MissionCom(sceneId, selfId, x500621_g_MissionId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
	x500621_ShowMsg( sceneId, selfId, "Hoàn thành nhi®m vø!")
	
	--CallScriptFunction( 500622, "AskAcceptMission", sceneId, selfId, targetId )
end

--Del Mission--
function x500621_OnAbandon(sceneId, selfId)
	if IsHaveMission( sceneId, selfId, x500621_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500621_g_MissionId )
	end
	
	return 0
end

function x500621_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end