-- 1233
--»ªÉ½ÂÛ½£toÕ ğµ Ïà¹ØÂß¼­´¦Àí

x001233_g_ScriptId = 001233

x001233_g_ActivityId = 39

function x001233_OnScenePlayerEnter( sceneId, playerId )
	
	-- °ÑÍæ¼ÒtoÕ ğµ Id¼ÇÂ¼µ½»î¶¯Êı¾İÇø,
	-- ²éÕÒmµt cái¿ÕÎ»ÖÃ,ÓÃÀ´±£´æ
	for i=0, 500    do
		local nId = GetActivityParam(sceneId, x001233_g_ActivityId, i)
		if nId == -1   then
			SetActivityParam(sceneId, x001233_g_ActivityId, i, playerId)
			SetActivityParam(sceneId, x001233_g_ActivityId, i + 500, 0)
			break
		end
	end
	
	-- Ã¿cáiÃÅÅÉtoÕ ğµ ¸´»î ği¬mĞúng²»mµt ÑùtoÕ ğµ  
	local nPos_X
	local nPos_Z
	local nMenpai = LuaFnGetMenPai(sceneId, playerId)
	if nMenpai == 0  then
		nPos_X = 134
		nPos_Z = 18
	elseif nMenpai == 1   then
		nPos_X = 22
		nPos_Z = 123
	elseif nMenpai == 2   then
		nPos_X = 236
		nPos_Z = 108
	elseif nMenpai == 3   then
		nPos_X = 193
		nPos_Z = 233
	elseif nMenpai == 4   then
		nPos_X = 93
		nPos_Z = 236
	elseif nMenpai == 5   then
		nPos_X = 236
		nPos_Z = 174
	elseif nMenpai == 6   then	
		nPos_X = 23
		nPos_Z = 182
	elseif nMenpai == 7   then
		nPos_X = 48
		nPos_Z = 34
	elseif nMenpai == 8   then
		nPos_X = 228
		nPos_Z = 38
	elseif nMenpai == 9    then
		--Ã»ÓĞÃÅÅÉtoÕ ğµ ÈËÓ¦¸ÃĞúng²»³öÏÖtoÕ ğµ ,±ÜÃâ´íÎó³öÏÖ,ÉèÖÃcáiÎ»ÖÃ
		nPos_X = 100
		nPos_Z = 100
	end
	
	-- µ÷ÕûÍæ¼ÒÕóÓª
	SetUnitCampID(sceneId, playerId, playerId, 10+nMenpai)
	
	SetPlayerDefaultReliveInfo( sceneId, playerId, "%50", "%50", "0", sceneId, nPos_X, nPos_Z )

end

function x001233_OnSceneHumanDie( sceneId, selfId, killerId )

	-- Èç¹ûCái này É±ÊÖĞúngcái³èÎï,C¥n ÏÖÕÒµ½Ö÷ÈË
	local nObjType = GetCharacterType(sceneId, killerId);
	local nHumanId = -1;
	if nObjType then
		if nObjType == 1 then
			nHumanId = killerId;
		elseif nObjType == 3 then
			nHumanId = GetPetCreator(sceneId, killerId);
		end
	end

	if nHumanId == -1 then
		return
	end

	-- ÅĞ¶¨ÕâĞ©½±ÀøtoÕ ğµ  ğÕt ğßşcÌõ¼ş,
	-- 1,É±ËÀ×Ô¼ºtoÕ ğµ ÈË,²»ÄÜĞúng±¾°ïÅÉtoÕ ğµ ÈË,
	if LuaFnGetMenPai(sceneId, selfId) == LuaFnGetMenPai(sceneId, nHumanId)    then
		return
	end

	
	--Å²µ½ehuashan_1.luaÖĞÈ¥ÁË changed by xindefeng
	-- 2,¸øCái này  killerId toÕ ğµ ÃÅÅÉ¹±Ï×¶È+1
	--local nMenpaiPoint = GetHumanMenpaiPoint(sceneId, nHumanId)
	--SetHumanMenpaiPoint(sceneId, nHumanId, nMenpaiPoint+1)
	
	-- 3,¸øCái này  killerId toÕ ğµ ÃÅÅÉÉ±ÈËÊı+1
	CallScriptFunction((001230), "KillPlayer",sceneId, nHumanId, selfId)

end
