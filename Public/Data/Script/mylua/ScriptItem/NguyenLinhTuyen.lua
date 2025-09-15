
x045506_g_scriptId = 045506
x045506_g_ItemID = 30505255
x045506_g_MissionId = 1161

x045506_g_TreeLocation = {157,185}

function x045506_OnDefaultEvent( sceneId, selfId, bagIndex )
	
end

function x045506_IsSkillLikeScript( sceneId, selfId)
	
	return 1;
end

function x045506_CancelImpacts( sceneId, selfId )
	return 0;
end

function x045506_OnConditionCheck( sceneId, selfId )
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0;
	end

	if GetLevel(sceneId,selfId) < 30 then
		x045506_ShowMsg( sceneId, selfId, "Kh�ng �� ��ng c�p � s� d�ng v�t ph�m.")
		return 0;
	end
	
	if sceneId ~= 4 then
		x045506_ShowMsg( sceneId, selfId, "Ch� c� th� s� d�ng t�i Th�i H�")
		return 0;
	end
	
	local PosX, PosZ = GetWorldPos(sceneId,selfId)
	PosX = floor(PosX)
	PosZ = floor(PosZ)
	
	local Var1 = (x045506_g_TreeLocation[1]-PosX)
	local Var2 = (x045506_g_TreeLocation[2]-PosZ)
	local Var = Var1*Var1 + Var2*Var2;
	local Space = floor(sqrt(Var))
	
	if Space > 4 then
		x045506_ShowMsg( sceneId, selfId, "Ch� c� th� s� d�ng g�n H�a Nguy�n Th�")
		return
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x045506_g_MissionId)
	local nComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
	if nComplete >= 1 then
		x045506_ShowMsg( sceneId, selfId, "Ng߽i �� ho�n th�nh nhi�m v�, ng�y mai h�y �n!")
		return
	end
	
	if IsHaveMission( sceneId, selfId, x045506_g_MissionId ) <= 0 then
		x045506_ShowMsg( sceneId, selfId, "#{SQXY_090731_1}")
		return
	end
	
	return 1;
end

function x045506_OnDeplete( sceneId, selfId )
	
	return 1;
end

function x045506_OnActivateOnce( sceneId, selfId )
	local bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 or bagId > 29 then
		return
	end
	
	if LuaFnGetItemTableIndexByIndex(sceneId,selfId,bagId) ~= x045506_g_ItemID then
		x045506_ShowMsg( sceneId, selfId, "Sai s�t n�i b�, vui l�ng li�n h� GM")
		return
	end
	
	if LuaFnGetAvailableItemCount(sceneId,selfId,x045506_g_ItemID) <= 0 then
		x045506_ShowMsg( sceneId, selfId, "Kh�ng c� Nguy�n Linh Tuy�n tr�n ng߶i, kh�ng th� c�u nguy�n!")
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x045506_g_MissionId)
	local nComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
	if nComplete >= 1 then
		x045506_ShowMsg( sceneId, selfId, "Ng߽i �� ho�n th�nh nhi�m v�, ng�y mai h�y �n!")
		return
	end
	local nWish = GetMissionParam(sceneId, selfId, misIndex, 1)
	if nWish == 4 then
		SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
	end
	nWish = nWish + 1;
	SetMissionByIndex(sceneId, selfId, misIndex, 1, nWish)
	
	LuaFnDelAvailableItem(sceneId,selfId,x045506_g_ItemID,1)
	
	x045506_ShowMsg( sceneId, selfId, "#{SQXY_09061_18}")
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
end

function x045506_OnActivateEachTick( sceneId, selfId)
	
	return 1;
end

function x045506_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end