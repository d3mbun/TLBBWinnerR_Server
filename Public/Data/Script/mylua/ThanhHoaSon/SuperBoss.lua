local x045042_SkillIDTTPTC = 424

function x045042_OnDie( sceneId, selfId, killerId )
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
		end
	else

	end
	
	local PlayerName = GetName(sceneId,killerId)
	local strText = format("#{_INFOUSR%s}#Y · Thanh Hoa S½n th¯ng lãnh qu¥n hùng vây ðánh #WÐào Hoa Vß½ng Chü#Y, chiªn công lçy l×ng và mang theo cñc ph¦m tr· v«.", PlayerName)
	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
	LuaFnSetSceneWeather(sceneId, -1, 1000)
end

function x045042_OnHeartBeat(sceneId, selfId, nTick)
end

function x045042_OnInit(sceneId, selfId)
	LuaFnNpcChat(sceneId, selfId, 0, "Dám ðµng ðªn môn ð® cüa ta, các ngß½i th§t to gan!!!")
end

function x045042_OnKillCharacter(sceneId, selfId, targetId)
	local luck = random(1,4)
	if luck == 1 then
		LuaFnNpcChat(sceneId, selfId, 0, GetName(sceneId,targetId)..", tên ngu ng¯c này lÕi ðªn nÕp mÕng.")
	end
	if luck == 2 then
		LuaFnNpcChat(sceneId, selfId, 0, GetName(sceneId,targetId)..", ngß½i xem có ðÞ n±i 3 chß·ng cüa ta?")
	end
	if luck == 3 then
		LuaFnNpcChat(sceneId, selfId, 0, GetName(sceneId,targetId)..", ngß½i ðúng là không biªt lßþng sÑc mình.")
	end
	if luck == 4 then
		LuaFnNpcChat(sceneId, selfId, 0, "Các ngß½i hãy xem tên "..GetName(sceneId,targetId).." mà làm gß½ng, mau cút khöi n½i ðây.")
	end
end

function x045042_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "Các ngß½i ðúng là không biªt lßþng sÑc mình, còn dám ðªn ðây gây sñ v¾i ta c½ à?")
end

function x045042_OnLeaveCombat(sceneId, selfId)
	LuaFnNpcChat(sceneId, selfId, 0, "Ðám ranh con, ð×ng ð¬ ta nhìn th¤y các ngß½i l¥n sau.")
end