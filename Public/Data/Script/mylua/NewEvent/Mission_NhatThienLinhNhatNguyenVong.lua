x045507_g_ScriptId = 045507
x045507_g_AccomplishNPC_Name = "Lß½ng ÐÕo Sî"
x045507_g_MissionId = 1161
x045507_g_MissionName = "Nh¤t Thiên Linh Nh¤t Nguy®n V÷ng"
x045507_g_MissionTarget = "#{SQXY_09061_11}"
x045507_g_AcceptMission = 11611
x045507_g_CompleteMission = 11612
x045507_g_Custom = { {id="HÑa h©n v¾i HÑa Nguy®n Thø",num=5} }
x045507_g_ItemBonus={{id=20502010 ,num=1}}

function x045507_OnEnumerate( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x045507_g_MissionId ) > 0 then --Tra Nhiem Vu
		AddNumText( sceneId, x045507_g_ScriptId, x045507_g_MissionName, 4, x045507_g_CompleteMission )
	elseif IsHaveMission( sceneId, selfId, x045507_g_MissionId ) <= 0 then --Nhan Nhiem Vu
		if GetLevel(sceneId,selfId) >= 30 then
			AddNumText( sceneId, x045507_g_ScriptId, x045507_g_MissionName, 4, x045507_g_AcceptMission )
		end
	end
end


function x045507_OnDefaultEvent( sceneId, selfId, targetId )
	local key = GetNumText()
	
	if key == x045507_g_AcceptMission then
		BeginEvent(sceneId)
			AddText(sceneId,x045507_g_MissionName)
			AddText(sceneId, x045507_g_MissionTarget )
			AddItemBonus( sceneId, x045507_g_ItemBonus[1].id, x045507_g_ItemBonus[1].num )
		EndEvent(sceneId)
		DispatchMissionInfo(sceneId,selfId,targetId,x045507_g_ScriptId,x045507_g_MissionId)	
	end
	
	if key == x045507_g_CompleteMission then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x045507_g_MissionId)
		local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)

		BeginEvent(sceneId)
			AddText(sceneId, x045507_g_MissionName)
			AddText(sceneId, x045507_g_MissionTarget)		
		EndEvent(sceneId)
		if misIndexComplete < 1 then
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x045507_g_ScriptId, x045507_g_MissionId, 0)
		else
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x045507_g_ScriptId, x045507_g_MissionId, 1)
		end
	end
end

function x045507_CheckAccept( sceneId, selfId, targetId )
	if GetMissionData(sceneId,selfId,HOUDONG_HUANGUYENTHU) == GetDayTime() then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SQXY_09061_7}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	
	return 1
end

function x045507_OnAccept( sceneId, selfId, targetId, scriptId )
	AddMission(sceneId, selfId, x045507_g_MissionId, x045507_g_ScriptId, 0, 0, 0)
	SetMissionData(sceneId,selfId,HOUDONG_HUANGUYENTHU,GetDayTime())
	x045507_ShowMsg( sceneId, selfId, "Ðã nh§n nhi®m vø "..x045507_g_MissionName)
	return 1
end

function x045507_OnContinue( sceneId, selfId, targetId, missionScriptId )
	BeginEvent(sceneId)
		AddText(sceneId, x045507_g_MissionName)
		AddText(sceneId, x045507_g_Custom[1].id)
		AddItemBonus( sceneId, x045507_g_ItemBonus[1].id, x045507_g_ItemBonus[1].num )
	EndEvent(sceneId)
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x045507_g_ScriptId,x045507_g_MissionId)
end

function x045507_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	local misIndex = GetMissionIndexByID(sceneId,selfId,x045507_g_MissionId)
	local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
	if misIndexComplete < 1 then
		return
	end

	if LuaFnGetMaterialBagSpace(sceneId, selfId) < 1 then
		x045507_ShowMsg( sceneId, selfId, "Túi nguyên li®u c¥n 1 ch² tr¯ng!")
		return
	end
	
	local NewItem = TryRecieveItem(sceneId, selfId, x045507_g_ItemBonus[1].id, x045507_g_ItemBonus[1].num)
	LuaFnItemBind(sceneId, selfId, NewItem)

	DelMission(sceneId, selfId, x045507_g_MissionId)
	MissionCom(sceneId, selfId, x045507_g_MissionId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
	x045507_ShowMsg( sceneId, selfId, "Hoàn thành nhi®m vø!")
end

--Del Mission--
function x045507_OnAbandon(sceneId, selfId)
	if IsHaveMission( sceneId, selfId, x045507_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x045507_g_MissionId )
	end
	
	return 0
end

function x045507_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
