
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
	local strText = format("#{_INFOUSR%s}#G · Thanh Hoa S½n th¯ng lãnh ðµi ngû vây ðánh #W"..MonsterName.."#G, chiªn công lçy l×ng và mang theo cñc ph¦m tr· v«.", PlayerName)
	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
	
	----------------------------------
	local BossCheck = 0;
	
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == "Vô Tr¥n" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Bá Ðao" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Kh¯ng Long" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "V¤n Thiên" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Vû Hinh" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Huyªt Mµng" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Tùy HÕo" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Ði®p Änh" then
			BossCheck = BossCheck + 1
		end
		if GetName(sceneId, nMonsterId) == "Nhàn Vân" then
			BossCheck = BossCheck + 1
		end
	end
	
	if BossCheck <= 1 then
		BroadMsgByChatPipe(sceneId,-1, "#GÐào Hoa Ðäo #Ydông t¯ lÕi n±i d§y r°i, #GÐào Hoa Vß½ng Chü #Yðã xu¤t hi®n ð¬ trä thù cho các môn ð® cüa h¡n!", 4)
		LuaFnSetSceneWeather(sceneId, 3, 30*60*1000)
		local nMonId = LuaFnCreateMonster(sceneId, 44709, 135, 135, 19, 309, 887761)
		SetCharacterName(sceneId, nMonId, "MÕc Vß½ng")
		SetCharacterTitle(sceneId, nMonId, "Ðào Hoa Vß½ng Chü")
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