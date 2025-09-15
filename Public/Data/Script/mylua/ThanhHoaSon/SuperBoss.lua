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
	local strText = format("#{_INFOUSR%s}#Y � Thanh Hoa S�n th�ng l�nh qu�n h�ng v�y ��nh #W��o Hoa V߽ng Ch�#Y, chi�n c�ng l�y l�ng v� mang theo c�c ph�m tr� v�.", PlayerName)
	BroadMsgByChatPipe(sceneId, selfId, strText, 4)
	LuaFnSetSceneWeather(sceneId, -1, 1000)
end

function x045042_OnHeartBeat(sceneId, selfId, nTick)
end

function x045042_OnInit(sceneId, selfId)
	LuaFnNpcChat(sceneId, selfId, 0, "D�m �ng �n m�n � c�a ta, c�c ng߽i th�t to gan!!!")
end

function x045042_OnKillCharacter(sceneId, selfId, targetId)
	local luck = random(1,4)
	if luck == 1 then
		LuaFnNpcChat(sceneId, selfId, 0, GetName(sceneId,targetId)..", t�n ngu ng�c n�y l�i �n n�p m�ng.")
	end
	if luck == 2 then
		LuaFnNpcChat(sceneId, selfId, 0, GetName(sceneId,targetId)..", ng߽i xem c� �� n�i 3 ch߷ng c�a ta?")
	end
	if luck == 3 then
		LuaFnNpcChat(sceneId, selfId, 0, GetName(sceneId,targetId)..", ng߽i ��ng l� kh�ng bi�t l��ng s�c m�nh.")
	end
	if luck == 4 then
		LuaFnNpcChat(sceneId, selfId, 0, "C�c ng߽i h�y xem t�n "..GetName(sceneId,targetId).." m� l�m g߽ng, mau c�t kh�i n�i ��y.")
	end
end

function x045042_OnEnterCombat(sceneId, selfId, enmeyId)
	LuaFnNpcChat(sceneId, selfId, 0, "C�c ng߽i ��ng l� kh�ng bi�t l��ng s�c m�nh, c�n d�m �n ��y g�y s� v�i ta c� �?")
end

function x045042_OnLeaveCombat(sceneId, selfId)
	LuaFnNpcChat(sceneId, selfId, 0, "��m ranh con, ��ng � ta nh�n th�y c�c ng߽i l�n sau.")
end