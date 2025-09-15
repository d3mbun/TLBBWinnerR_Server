
function x045041_OnDie( sceneId, selfId, killerId )
	
	local nObjType = GetCharacterType(sceneId, killerId)
	if nObjType ~= nil then
		if nObjType == 3 then
			killerId = GetPetCreator(sceneId, killerId)
		end
	end
	local CheckTeam = LuaFnHasTeam(sceneId,killerId)
	if CheckTeam == 1 then
		local MemberCount = GetNearTeamCount(sceneId, killerId)
		local MemberID = {}
		for i = 0, MemberCount - 1 do
			MemberID[i] = GetNearTeamMember( sceneId, killerId, i ) --Danh Sach Dong Doi--
			--SetMissionData(sceneId,MemberID[i],DHD_EVENT,100)
		end
	else
		--SetMissionData(sceneId,killerId,DHD_EVENT,100)
	end
	
	local MonsterName = GetName(sceneId,selfId)
	local PlayerName = GetName(sceneId,killerId)
	local strText = format("#{_INFOUSR%s}#G � Thanh Hoa S�n th�ng l�nh �i ng� v�y ��nh #W"..MonsterName.."#G, chi�n c�ng l�y l�ng v� mang theo c�c ph�m tr� v�.", PlayerName)
	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
	
	----------------------------------
	local BossCheck = 0;
	
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == "V� Tr�n" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "B� �ao" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Kh�ng Long" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "V�n Thi�n" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "V� Hinh" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Huy�t M�ng" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "T�y H�o" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "�i�p �nh" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Nh�n V�n" then
			BossCheck = BossCheck + 1
		end
	end
	
	if BossCheck <= 1 then
		BroadMsgByChatPipe(sceneId,-1, "#G��o Hoa ��o #Yd�ng t� l�i n�i d�y r�i, #G��o Hoa V߽ng Ch� #Y�� xu�t hi�n � tr� th� cho c�c m�n � c�a h�n!", 4)
		LuaFnSetSceneWeather(sceneId, 3, 30*60*1000)
		local nMonId = LuaFnCreateMonster(sceneId, 44709, 135, 135, 19, 309, 887761)
		SetCharacterName(sceneId, nMonId, "M�c V߽ng")
		SetCharacterTitle(sceneId, nMonId, "��o Hoa V߽ng Ch�")
		-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9601,0) --Impact MienCC--
		-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9501,0) --Trung Lau Gioi--
		-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9502,0) --Trung Lau Ngoc--
		-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9503,0) --Trung Lau Lien--
		-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9504,0) --Trung Lau Doi--
		-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9505,0) --Trung Lau Kien--
		-- LuaFnSendSpecificImpactToUnit(sceneId,nMonId,nMonId,nMonId,9506,0) --Trung Lau Giap--
		RestoreHp(sceneId,nMonId)
	end
end

function x045041_OnHeartBeat(sceneId, selfId, nTick)
end

function x045041_OnInit(sceneId, selfId)
end

function x045041_OnKillCharacter(sceneId, selfId, targetId)
end

function x045041_OnEnterCombat(sceneId, selfId, enmeyId)
end

function x045041_OnLeaveCombat(sceneId, selfId)
end