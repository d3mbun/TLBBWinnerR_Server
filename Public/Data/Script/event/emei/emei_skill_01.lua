-- ¸±±¾ÈÎÎñ  »ØÂíÇ¹
-- Íæ¼ÒµÈc¤p´óÓÚµÈÓÚ20c¤p,Íê³É¡°ÈıÈËÍ¬ĞĞ¡±,¶Ó³¤ÇÒ¶ÓÎéÖĞÖLinhÙÈıÈË.


--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x212116_g_ScriptId = 212116

x212116_g_PreMissionId = 921

--MisDescEnd
--************************************************************************

--¸±±¾Ãû³Æ
x212116_g_CopySceneName = "Chş phiên"

x212116_g_CopySceneType = FUBEN_JUQING	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x212116_g_CopySceneMap = "jishi.nav"
x212116_g_LimitMembers = 1				--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x212116_g_TickTime = 5					--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x212116_g_LimitTotalHoldTime = 360		--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x212116_g_LimitTimeSuccess = 500		--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x212116_g_CloseTick = 3					--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x212116_g_NoUserTime = 300				--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x212116_g_DeadTrans = 0					--ËÀÍö×ªÒÆÄ£Ê½,0: ËÀÍöºó»¹¿ÉÒÔ¼ÌĞøTÕi ¸±±¾,1: ËÀÍöºó±»Ç¿ÖÆÒÆ³ö¸±±¾
x212116_g_Fuben_X = 40					--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x212116_g_Fuben_Z = 44					--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x212116_g_Back_X = 105					--Ô´³¡¾°Î»ÖÃX
x212116_g_Back_Z = 112					--Ô´³¡¾°Î»ÖÃZ

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x212116_OnDefaultEvent( sceneId, selfId, targetId )
	-- ½øÈëÌõ¼ş,×Ô¼ºĞúng¶Ó³¤,±ØĞë3ÈË,
	--1,¼ì²â×Ô¼ºĞúng²»ĞúngTÕi ¶ÓÎéÖĞ
	if GetTeamSize(sceneId,selfId) < x212116_g_LimitMembers  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Mu¯n tiªn vào bän sao này, các hÕ c¥n mµt nhóm có ít nh¤t 3 ngß¶i, h½n næa thành viên trong nhóm c¥n có t±ng cµng ít nh¤t 3 ngß¶i · g¥n, các hÕ còn c¥n là nhóm trß·ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNearTeamCount(sceneId,selfId) < x212116_g_LimitMembers then
		BeginEvent(sceneId)
			AddText(sceneId,"  Mu¯n tiªn vào bän sao này, các hÕ c¥n mµt nhóm có ít nh¤t 3 ngß¶i, h½n næa thành viên trong nhóm c¥n có t±ng cµng ít nh¤t 3 ngß¶i · g¥n, các hÕ còn c¥n là nhóm trß·ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNearTeamCount(sceneId,selfId) < x212116_g_LimitMembers then
		BeginEvent(sceneId)
			AddText(sceneId,"  Mu¯n tiªn vào bän sao này, các hÕ c¥n mµt nhóm có ít nh¤t 3 ngß¶i, h½n næa thành viên trong nhóm c¥n có t±ng cµng ít nh¤t 3 ngß¶i · g¥n, các hÕ còn c¥n là nhóm trß·ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"  Mu¯n tiªn vào bän sao này, các hÕ c¥n mµt nhóm có ít nh¤t 3 ngß¶i, h½n næa thành viên trong nhóm c¥n có t±ng cµng ít nh¤t 3 ngß¶i · g¥n, các hÕ còn c¥n là nhóm trß·ng.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	x212116_MakeCopyScene(sceneId, selfId)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x212116_OnEnumerate( sceneId, selfId, targetId )
	
	-- ½øÈë¸±±¾toÕ ğµ Ìõ¼ş,Íæ¼ÒµÈc¤p´óÓÚ20,Íæ¼ÒÍê³ÉÁËÈÎÎñ 
	if IsHaveMission( sceneId, selfId, x212116_g_PreMissionId ) > 0 then
		AddNumText( sceneId, x212116_g_ScriptId, "Ğßa tÕi hÕ ğªn chş", 10 ,-1 )
	end
	
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x212116_CheckAccept( sceneId, selfId )
	
end

--**********************************
--Ñ¯ÎÊÍæ¼ÒĞúng·ñÒª½øÈë¸±±¾
--**********************************
function x212116_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Tiªp thø
--**********************************
function x212116_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--Íæ¼ÒÍ¬Òâ½øÈë¸±±¾
--**********************************
function x212116_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x212116_MakeCopyScene( sceneId, selfId )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "jishi.nav"); --µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x212116_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x212116_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x212116_g_CopySceneType);--ÉèÖÃ¸±±¾Êı¾İ,ÕâÀï½«0ºÅË÷ÒıtoÕ ğµ Êı¾İÉèÖÃÎª999,ÓÃÓÚ±íÊ¾¸±±¾ºÅ999(Êı×Ö×Ô¶¨Òå)
	LuaFnSetCopySceneData_Param(sceneId, 1, x212116_g_ScriptId);--½«1ºÅÊı¾İÉèÖÃÎª¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --±£´æ¶ÓÎéºÅ
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--É±ËÀBosstoÕ ğµ ÊıÁ¿
	
	-- ¾çÇéÓÃµ½toÕ ğµ ±äÁ¿Çå¿Õ
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	--ÉèÖÃ³¡¾°ÖĞtoÕ ğµ ¸÷ÖÖNpcºÍÇøÓò
	LuaFnSetSceneLoad_Area( sceneId, "jishiemeimis_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "jishiemeimis_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x212116_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ğµ ¹æÔò
	-- 1,Èç¹ûCái này ÎÄ¼şÃ»ÓĞ×é¶Ó,¾Í´«ËÍCái này ÎÄ¼ş×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓĞ¶ÓÎé,µ«ĞúngÍæ¼Ò²»Ğúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓĞ¶ÓÎé,²¢ÇÒCái này Íí¼äĞúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æğ½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- ´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
		return
	end

	-- ¼ì²âÍæ¼ÒĞúng²»ĞúngÓĞ¶ÓÎé
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- Ã»ÓĞ¶ÓÎé
		return
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x212116_g_Fuben_X, x212116_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x212116_g_Fuben_X, x212116_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x212116_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x212116_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--·ÅÆú
--**********************************
function x212116_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- »Ø³Ç,Ö»ÓĞThành ph¯ ÈÎÎñ¸±±¾¿ÉÒÔµ÷ÓÃ´Ë½Ó¿Ú
--**********************************
function x212116_BackToCity( sceneId, selfId )
	
end

--**********************************
--¼ÌĞø
--**********************************
function x212116_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x212116_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--Ìá½»
--**********************************
function x212116_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x212116_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x212116_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x212116_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x212116_OnCopySceneTimer( sceneId, nowTime )
	--¼ì²â¸±±¾ÖĞtoÕ ğµ ¹ÖĞúng²»ĞúngÉ±¹â,É±¹â×Ô¶¯´«Íæ¼Ò³ö¸±±¾
	
	
end



