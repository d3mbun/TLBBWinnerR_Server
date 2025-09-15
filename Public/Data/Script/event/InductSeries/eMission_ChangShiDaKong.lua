--MisDescBegin
x500622_g_ScriptId = 500622
x500622_g_Position_X=177
x500622_g_Position_Z=184
x500622_g_SceneID=0
x500622_g_MissionId = 1188
x500622_g_MissionIdPre = 1187

x500622_g_AcceptMission = 118701
x500622_g_CompleteMission = 118702

x500622_g_Name = "B�nh Ho�i Ng�c"
x500622_g_ItemNeedNum = 1
x500622_g_MissionKind = 11
x500622_g_MissionLevel = 40
x500622_g_IfMissionElite = 0
x500622_g_Custom	= { {id="Ho�n th�nh ��c l�",num=1} }
x500622_g_IsMissionOkFail = 1		--�����ĵ�0λ
x500622_g_MissionName="Th� ��c L�"
x500622_g_MissionTarget="    � #G L�c D߽ng #{_INFOAIM177,184,0,B�nh Ho�i Ng�c}#R B�nh Ho�i Ng�c #W ��c 1 l� tr�n#Y�o �ng �nh#W, sau khi ho�n th�nh h�y trao �i v�i y. #r#GNh�c nh� nh�: N�u ng߽i ��nh m�t ph�n th߷ng T� Tr�c Ti�n c�a nhi�m v� T�ng B�o Th�ch, ng߶i c� th� mua l�i t� ng߶i ch�i kh�c ho�c t�m mua � Ti�m Nguy�n B�o."
x500622_g_SignPost = {x = 177, z = 184, tip = "B�nh Ho�i Ng�c"}
x500622_g_ItemBonus={id=30900010 ,num=1}
--MisDescEnd

function x500622_OnEnumerate( sceneId, selfId, targetId )
	if LuaFnGetName(sceneId,targetId) == x500622_g_Name then
		if IsHaveMission( sceneId, selfId, x500622_g_MissionId ) <= 0 then
			if IsMissionHaveDone( sceneId, selfId, x500622_g_MissionId ) <= 0 and IsMissionHaveDone( sceneId, selfId, x500622_g_MissionIdPre ) > 0 then --Nhan Nhiem Vu--
				AddNumText( sceneId, x500622_g_ScriptId, x500622_g_MissionName, 1, x500622_g_AcceptMission )
			end
		else --Tra Nhiem Vu--
			AddNumText( sceneId, x500622_g_ScriptId, x500622_g_MissionName, 2, x500622_g_CompleteMission )
		end
	end
end

function x500622_OnStiletto(sceneId,selfId)
	if IsHaveMission( sceneId, selfId, x500622_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x500622_g_MissionId)
		local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
		if misIndexComplete == 0 then
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			SetMissionByIndex(sceneId, selfId, misIndex, 1, 1)
			
			x500622_ShowMsg( sceneId, selfId, "�� ��c l� cho Th�i X�n Chi Y")
		end
	end
end

function x500622_OnDefaultEvent( sceneId, selfId, targetId )
	local key = GetNumText()
	
	if key == x500622_g_AcceptMission then
		BeginEvent(sceneId)
			AddText(sceneId,x500622_g_MissionName)
			AddText(sceneId, x500622_g_MissionTarget )
			AddItemBonus( sceneId, x500622_g_ItemBonus.id, x500622_g_ItemBonus.num )
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x500622_g_ScriptId,x500622_g_MissionId)	
	end
	
	if key == x500622_g_CompleteMission then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x500622_g_MissionId)
		local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)

		if misIndexComplete == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, x500622_g_MissionName)
				AddText(sceneId, x500622_g_MissionTarget)		
			EndEvent(sceneId)
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500622_g_ScriptId, x500622_g_MissionId, 1)
		else
			BeginEvent(sceneId)
				AddText(sceneId, x500622_g_MissionName)
				AddText(sceneId, "Ng߽i v�n ch�a ��c l� cho #GTh�i X�n Chi Y #Wsao?")		
			EndEvent(sceneId)
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500622_g_ScriptId, x500622_g_MissionId, 0)
		end
	end
end

function x500622_CheckAccept( sceneId, selfId, targetId )

	return 1
end

function x500622_OnAccept( sceneId, selfId, targetId, scriptId )
	AddMission(sceneId, selfId, x500622_g_MissionId, x500622_g_ScriptId, 0, 0, 0)

	return 1
end

function x500622_OnContinue( sceneId, selfId, targetId, missionScriptId )
	BeginEvent(sceneId)
		AddText(sceneId, x500622_g_MissionName)
		AddText(sceneId, x500622_g_Custom[1].id)
		AddItemBonus( sceneId, x500622_g_ItemBonus.id, x500622_g_ItemBonus.num )
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500622_g_ScriptId,x500622_g_MissionId)
end

function x500622_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
		x500622_ShowMsg( sceneId, selfId, "T�i ��o C� c�n 1 ch� tr�ng!")
		return
	end
	
	local NewItem = TryRecieveItem(sceneId, selfId, x500622_g_ItemBonus.id, x500622_g_ItemBonus.num)
	LuaFnItemBind(sceneId, selfId, NewItem)
	
	DelMission(sceneId, selfId, x500622_g_MissionId)
	MissionCom(sceneId, selfId, x500622_g_MissionId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
	x500622_ShowMsg( sceneId, selfId, "Ho�n th�nh nhi�m v�!")
end

function x500622_AskAcceptMission(sceneId, selfId, targetId)
	BeginEvent(sceneId)
		AddText(sceneId, x500622_g_MissionName)
		AddText(sceneId, x500622_g_MissionTarget)		
	EndEvent(sceneId)
	DispatchMissionDemandInfo(sceneId, selfId, targetId, x500622_g_ScriptId, x500622_g_MissionId, 1)
	AddGlobalCountNews(sceneId, "Connected!")
end

--Del Mission--
function x500622_OnAbandon(sceneId, selfId)
	if IsHaveMission( sceneId, selfId, x500622_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500622_g_MissionId )
	end
	
	return 0
end

function x500622_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end