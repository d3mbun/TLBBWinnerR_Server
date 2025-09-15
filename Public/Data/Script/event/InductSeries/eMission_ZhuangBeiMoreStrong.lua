--MisDescBegin
x500623_g_ScriptId = 500623
x500623_g_Position_X=177
x500623_g_Position_Z=184
x500623_g_SceneID=0
x500623_g_MissionId = 1189
x500623_g_MissionIdPre = 1188

x500623_g_AcceptMission = 118801
x500623_g_CompleteMission = 118802

x500623_g_Name ="B�nh Ho�i Ng�c"
x500623_g_ItemNeedNum = 1
x500623_g_MissionKind = 11
x500623_g_MissionLevel = 40
x500623_g_IfMissionElite = 0
x500623_g_Custom	= { {id="Ho�n th�nh Kh�m N�m b�o th�ch",num=1} }
x500623_g_IsMissionOkFail = 1		--�����ĵ�0λ
x500623_g_MissionName="Ь Trang B� M�nh H�n"
x500623_g_MissionTarget="    � #G L�c D߽ng #{_INFOAIM177,184,0,B�nh Ho�i Ng�c}#R B�nh Ho�i Ng�c #W kh�m n�m 1 B�o Th�ch l�n #Y �o �ng �nh #W ho�c c�c trang b� kh�c. Sau khi ho�n th�nh h�y �i tho�i v�i y. #r#GNh�c nh� nh�: c�n nh� ph�n th߷ng  H�ng B�o Th�ch LV2 c�a Nhi�m v� T�ng B�o Th�ch kh�ng, h�y d�ng n� � kh�m n�m l�n �o �ng �nh l� ���c, n�u tr�n ng߶i kh�ng mang theo B�o Th�ch, c� th� t�m ng߶i ch�i, NPC ho�c Ti�m Nguy�n B�o mua B�o Th�ch b�t k�, sau �� kh�m n�m l�n trang b� l� c� th� ho�n th�nh nhi�m v�."
x500623_g_SignPost = {x = 177, z = 184, tip = "B�nh Ho�i Ng�c"}
x500623_g_RadioItemBonus={{id=50201001 ,num=1},{id=50201002,num=1}}
--MisDescEnd

function x500623_OnEnumerate( sceneId, selfId, targetId )
	
	if LuaFnGetName(sceneId,targetId) == x500623_g_Name then
		if IsHaveMission( sceneId, selfId, x500623_g_MissionId ) <= 0 then
			if IsMissionHaveDone( sceneId, selfId, x500623_g_MissionId ) <= 0 and IsMissionHaveDone( sceneId, selfId, x500623_g_MissionIdPre ) > 0 then --Nhan Nhiem Vu--
				AddNumText( sceneId, x500623_g_ScriptId, x500623_g_MissionName, 1, x500623_g_AcceptMission )
			end
		else --Tra Nhiem Vu--
			AddNumText( sceneId, x500623_g_ScriptId, x500623_g_MissionName, 2, x500623_g_CompleteMission )
		end
	end
end

function x500623_GemEmbed(sceneId,selfId)
	if IsHaveMission( sceneId, selfId, x500623_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x500623_g_MissionId)
		local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
		if misIndexComplete == 0 then
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			SetMissionByIndex(sceneId, selfId, misIndex, 1, 1)
			
			x500623_ShowMsg( sceneId, selfId, "�� kh�m ng�c cho Th�i X�n Chi Y")
		end
	end
end

function x500623_OnDefaultEvent( sceneId, selfId, targetId )
	local key = GetNumText()
	
	if key == x500623_g_AcceptMission then
		BeginEvent(sceneId)
			AddText(sceneId,x500623_g_MissionName)
			AddText(sceneId, x500623_g_MissionTarget )
			AddRadioItemBonus( sceneId, x500623_g_RadioItemBonus[1].id, x500623_g_RadioItemBonus[1].num )
			AddRadioItemBonus( sceneId, x500623_g_RadioItemBonus[2].id, x500623_g_RadioItemBonus[2].num )
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x500623_g_ScriptId,x500623_g_MissionId)	
	end
	
	if key == x500623_g_CompleteMission then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x500623_g_MissionId)
		local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)

		if misIndexComplete == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, x500623_g_MissionName)
				AddText(sceneId, x500623_g_MissionTarget)		
			EndEvent(sceneId)
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500623_g_ScriptId, x500623_g_MissionId, 1)
		else
			BeginEvent(sceneId)
				AddText(sceneId, x500623_g_MissionName)
				AddText(sceneId, "Ng߽i v�n ch�a kh�m ng�c cho #GTh�i X�n Chi Y #Wsao?")		
			EndEvent(sceneId)
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x500623_g_ScriptId, x500623_g_MissionId, 0)
		end
	end
end

function x500623_CheckAccept( sceneId, selfId, targetId )

	return 1
end

function x500623_OnAccept( sceneId, selfId, targetId, scriptId )
	AddMission(sceneId, selfId, x500623_g_MissionId, x500623_g_ScriptId, 0, 0, 0)

	return 1
end

function x500623_OnContinue( sceneId, selfId, targetId, missionScriptId )
	BeginEvent(sceneId)
		AddText(sceneId, x500623_g_MissionName)
		AddText(sceneId, x500623_g_Custom[1].id)
		AddRadioItemBonus( sceneId, x500623_g_RadioItemBonus[1].id, x500623_g_RadioItemBonus[1].num )
		AddRadioItemBonus( sceneId, x500623_g_RadioItemBonus[2].id, x500623_g_RadioItemBonus[2].num )
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500623_g_ScriptId,x500623_g_MissionId)
end

function x500623_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if LuaFnGetPropertyBagSpace(sceneId, selfId) < 1 then
		x500623_ShowMsg( sceneId, selfId, "T�i Nguy�n Li�u c�n 1 ch� tr�ng!")
		return
	end
	
	local NewItem = TryRecieveItem(sceneId, selfId, selectRadioId, 1)
	LuaFnItemBind(sceneId, selfId, NewItem)
	
	DelMission(sceneId, selfId, x500623_g_MissionId)
	MissionCom(sceneId, selfId, x500623_g_MissionId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
	x500623_ShowMsg( sceneId, selfId, "Ho�n th�nh nhi�m v�!")
end

--Del Mission--
function x500623_OnAbandon(sceneId, selfId)
	if IsHaveMission( sceneId, selfId, x500623_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x500623_g_MissionId )
	end
	
	return 0
end

function x500623_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end