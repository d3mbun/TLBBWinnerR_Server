--ËæÉíNPCÏà¹Ø¹¦ÄÜ,Ä¿Ç°Ìá¹©Ôª±¦Ïà¹ØtoÕ ðµ ËæÉí²Ù×÷

x888898_g_scriptId = ALONENPC_SCRIPT_ID

x888898_g_op		= {}
x888898_g_op[1]	=	181003		--ËæÉíÔª±¦Ïà¹Ø

--**********************************
-- ¼ì²é´ËËæÉíNPCtoÕ ðµ ¹¦ÄÜ
-- opÐúngÇëÇóÀà±ð,±ÈÈç1´ú±íÔª±¦Ïà¹ØtoÕ ðµ ËæÉí²Ù×÷¡­¡­
--**********************************
function	x888898_AloneNpcEvent( sceneId, selfId, op )
	if nil == op or 1 > op then return end
	local bCheck = x888898_AloneNpcCheckOp(sceneId,selfId,op);
	
	if x888898_g_op[op] and bCheck > 0 then
		CallScriptFunction( x888898_g_op[op], "OnDefaultEvent", sceneId, selfId, ALONENPC_TARGET_ID )
	end
end

function x888898_AloneNpcCheckOp(sceneId,selfId,op)
	if nil == op or 1 > op then return 0 end
	--µØ¸®
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Trong Ð¸a Phü không th¬ tùy ti®n sØ døng công nång", 0);
		return 0
	end
	
	--×é¶Ó¸úËæ
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	
	--Ë«ÈËÆï³Ë
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--´¦ÓÚË«ÈËÆï³Ë×´Ì¬,ÇÒÐúng±»¶¯toÕ ðµ ,½»¸øÖ÷¶¯·½À´´¦Àí
			return 0
		end
	end
	
	--ËæÉíÔª±¦ÉÌµêÌõ¼þ¼ì²é
	if op == 1 then
		--15c¤pÒÔÉÏ
		local level = GetLevel(sceneId,selfId);
		if nil == level or level < 15 then
			BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Công nång này chï có th¬ sØ døng khi ðÆng c¤p cüa các hÕ l¾n h½n ho£c b¢ng 15 m¾i có th¬ sØ døng", 0);
			return 0
		end

		return 1
	end
	return 0
end
