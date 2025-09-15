--MisDescBegin
x500623_g_ScriptId = 500623
x500623_g_Position_X=177
x500623_g_Position_Z=184
x500623_g_SceneID=0
x500623_g_MissionId = 1189
x500623_g_MissionIdPre = 1188

x500623_g_AcceptMission = 118801
x500623_g_CompleteMission = 118802

x500623_g_Name ="Bành Hoài Ng÷c"
x500623_g_ItemNeedNum = 1
x500623_g_MissionKind = 11
x500623_g_MissionLevel = 40
x500623_g_IfMissionElite = 0
x500623_g_Custom	= { {id="Hoàn thành Khäm NÕm bäo thÕch",num=1} }
x500623_g_IsMissionOkFail = 1		--±äÁ¿µÄµÚ0Î»
x500623_g_MissionName="Ð¬ Trang B¸ MÕnh H½n"
x500623_g_MissionTarget="    — #G LÕc Dß½ng #{_INFOAIM177,184,0,Bành Hoài Ng÷c}#R Bành Hoài Ng÷c #W khäm nÕm 1 Bäo ThÕch lên #Y Áo Óng Ánh #W ho£c các trang b¸ khác. Sau khi hoàn thành hãy ð¯i thoÕi v¾i y. #r#GNh¡c nh· nhö: còn nh¾ ph¥n thß·ng  H°ng Bäo ThÕch LV2 cüa Nhi®m vø T£ng Bäo ThÕch không, hãy dùng nó ð¬ khäm nÕm lên Áo Óng Ánh là ðßþc, nªu trên ngß¶i không mang theo Bäo ThÕch, có th¬ tìm ngß¶i ch½i, NPC ho£c Ti®m Nguyên Bäo mua Bäo ThÕch b¤t kÏ, sau ðó khäm nÕm lên trang b¸ là có th¬ hoàn thành nhi®m vø."
x500623_g_SignPost = {x = 177, z = 184, tip = "Bành Hoài Ng÷c"}
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
			
			x500623_ShowMsg( sceneId, selfId, "Ðã khäm ng÷c cho Thôi Xán Chi Y")
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
				AddText(sceneId, "Ngß½i vçn chßa khäm ng÷c cho #GThôi Xán Chi Y #Wsao?")		
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
		x500623_ShowMsg( sceneId, selfId, "Túi Nguyên Li®u c¥n 1 ch² tr¯ng!")
		return
	end
	
	local NewItem = TryRecieveItem(sceneId, selfId, selectRadioId, 1)
	LuaFnItemBind(sceneId, selfId, NewItem)
	
	DelMission(sceneId, selfId, x500623_g_MissionId)
	MissionCom(sceneId, selfId, x500623_g_MissionId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
	x500623_ShowMsg( sceneId, selfId, "Hoàn thành nhi®m vø!")
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