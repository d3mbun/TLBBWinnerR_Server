--ÐÂÊ¥»ð´«µÝ....
--´ò¹Ö¸±±¾....

--½Å±¾ºÅ
x808094_g_ScriptId = 808094

x808094_g_CopySceneType = FUBEN_GODFIRE	--¸±±¾ÀàÐÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ

x808094_g_TickTime		= 5			--»Øµ÷½Å±¾toÕ ðµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x808094_g_NoUserTime	= 300		--¸±±¾ÖÐÃ»ÓÐÈËºó¿ÉÒÔ¼ÌÐø±£´ætoÕ ðµ Ê±¼ä(µ¥Î»:  giây)
x808094_g_Fuben_X			= 65		--½øÈë¸±±¾toÕ ðµ Î»ÖÃX
x808094_g_Fuben_Z			= 65		--½øÈë¸±±¾toÕ ðµ Î»ÖÃZ


--¹ÖÎïË¢ ði¬m....
x808094_g_SmallMonsterPos ={ {x=48,z=50},{x=48,z=38},{x=59,z=50},{x=48,z=62},{x=37,z=50} }
x808094_g_BossMonsterPos ={ x=48, z=50 }

--¸±±¾Êý¾Ý±í....
x808094_g_FubenDataTbl ={ }

x808094_g_FubenDataTbl[1] =
{

	NPCName = "Tô Phi", MissionId = 1002,
	MonsterName = "Lam C¥u", BossName = "Ti¬u Ki«u Ki«u", BossTitle = "Không trung phi nhân", FubenName = "Tiªn nh§p Lam C¥u trß¶ng",
	MapFile = "lanqiuchang.nav", AreaFile = "lanqiuchang_area.ini", MonsterFile = "lanqiuchang_monster.ini",

	SmallMonsterId =
	{
		9590,9591,9592,9593,9594,9595,9596,9597,9598,9599,
		39571,39572,39573,39574,39575,39576,39577,39578,39579,39580
	},

	BossMonsterId =
	{
		9560,9561,9562,9563,9564,9565,9566,9567,9568,9569,
		39541,39542,39543,39544,39545,39546,39547,39548,39549,39550
	}

}

x808094_g_FubenDataTbl[2] =
{

	NPCName = "Ðao Nghiêu", MissionId = 1006,
	MonsterName = "Bài C¥u", BossName = "Ti¬u Nh¸ Nh¸", BossTitle = "Thüy tinh mÛ nhân", FubenName = "Tiªn nh§p bài c¥u trß¶ng",
	MapFile = "paiqiuchang.nav", AreaFile = "paiqiuchang_area.ini", MonsterFile = "paiqiuchang_monster.ini",

	SmallMonsterId =
	{
		9600,9601,9602,9603,9604,9605,9606,9607,9608,9609,
		39581,39582,39583,39584,39585,39586,39587,39588,39589,39590
	},

	BossMonsterId =
	{
		9570,9571,9572,9573,9574,9575,9576,9577,9578,9579,
		39551,39552,39553,39554,39555,39556,39557,39558,39559,39560
	}

}

x808094_g_FubenDataTbl[3] =
{

	NPCName = "Châu Vô Uý", MissionId = 1010,
	MonsterName = "Túc C¥u", BossName = "Ti¬u Nh¤t T«", BossTitle = "Bàn c¥u ðÕi sß", FubenName = "Tiªn nh§p túc c¥u trß¶ng",
	MapFile = "zuqiuchang.nav", AreaFile = "zuqiuchang_area.ini", MonsterFile = "zuqiuchang_monster.ini",

	SmallMonsterId =
	{
		9610,9611,9612,9613,9614,9615,9616,9617,9618,9619,
		39591,39592,39593,39594,39595,39596,39597,39598,39599,39600
	},

	BossMonsterId =
	{
		9580,9581,9582,9583,9584,9585,9586,9587,9588,9589,
		39561,39562,39563,39564,39565,39566,39567,39568,39569,39570
	}

}


--**********************************
--ÈÎÎñÈë¿Úº¯Êý....
--**********************************
function x808094_OnDefaultEvent( sceneId, selfId, targetId )

	local NumText = GetNumText()
	if NumText ~= 1 and NumText ~= 2 and NumText ~= 3 then
		return
	end

	local npcName = LuaFnGetName( sceneId, targetId )
	local CopySceneData = x808094_g_FubenDataTbl[ NumText ]
	if npcName ~= CopySceneData.NPCName then
		return
	end

	--¼ì²âÐúng·ñ¿ÉÒÔ½øÈë¸±±¾....
	local ret, msg = x808094_CheckCanEnter( sceneId, selfId, targetId, NumText )
	if 1 ~= ret then
		BeginEvent(sceneId)
			AddText(sceneId,msg)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--½¨Á¢¸±±¾....
	BeginEvent(sceneId)
		AddText(sceneId,"#{XSHCD_20080418_059}")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x808094_MakeCopyScene( sceneId, selfId, NumText )

end

--**********************************
--ÁÐ¾ÙÊÂ¼þ....
--**********************************
function x808094_OnEnumerate( sceneId, selfId, targetId )

	local npcName = LuaFnGetName( sceneId, targetId )

	for i, fubenData in x808094_g_FubenDataTbl do

		if npcName == fubenData.NPCName then
			if IsHaveMission( sceneId, selfId, fubenData.MissionId ) > 0 then
				local misIndex = GetMissionIndexByID( sceneId, selfId, fubenData.MissionId )
				if 0 == GetMissionParam( sceneId, selfId, misIndex, 0 ) then
					AddNumText( sceneId, x808094_g_ScriptId, fubenData.FubenName, 10, i )
				end
			end
		end

	end

end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔ½øÈë´Ë¸±±¾....
--**********************************
function x808094_CheckCanEnter( sceneId, selfId, targetId, fubenType )

	--Ðúng·ñÓÐ¶ÓÎé....
	if LuaFnHasTeam(sceneId,selfId) ~= 1 then
		return 0, "#{XSHCD_20080418_053}"
	end

	--Ðúng²»Ðúng¶Ó³¤....
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		return 0, "#{XSHCD_20080418_054}"
	end

	--ÈËÊýÐúng·ñ¹»....
	if GetTeamSize(sceneId,selfId) < 3  then
		return 0, "#{XSHCD_20080418_055}"
	end

	--Ðúng·ñ¶¼TÕi ¸½½ü....
	local NearTeamSize = GetNearTeamCount(sceneId,selfId)
	if GetTeamSize(sceneId,selfId) ~= NearTeamSize then
		return 0, "#{XSHCD_20080418_056}"
	end

	--¼ì²âÐúng²»Ðúng´ó¼Ò¶¼ÓÐÈÎÎñ....
	local CopySceneData = x808094_g_FubenDataTbl[ fubenType ]
	for i=0, NearTeamSize-1 do

		local PlayerId = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, PlayerId, CopySceneData.MissionId ) <= 0 then
			return 0, "#{XSHCD_20080418_057}"
		end

		local misIndex = GetMissionIndexByID( sceneId, PlayerId, CopySceneData.MissionId )
		if 1 == GetMissionParam( sceneId, PlayerId, misIndex, 0 ) then
			return 0, "#{XSHCD_20080418_058}"
		end

	end

	return 1

end

--**********************************
--´´½¨¸±±¾....
--**********************************
function x808094_MakeCopyScene( sceneId, selfId, fubenType )

	local fubenData = x808094_g_FubenDataTbl[ fubenType ]

	--¼ÆËã¸±±¾ÖÐ¹ÖtoÕ ðµ µÈc¤p....
	local mylevel = 0
	local memId
	local tempMemlevel = 0
	local level0 = 0
	local level1 = 0

	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i)
		tempMemlevel = GetLevel(sceneId, memId)
		level0 = level0 + (tempMemlevel ^ 4 )
		level1 = level1 + (tempMemlevel ^ 3 )
	end

	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1
	end

	if nearmembercount == -1 then
		mylevel = GetLevel(sceneId, selfId)
	end

	--¼ÆËãµÈc¤p¶Î....
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 1
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10)
	else
		iniLevel = PlayerMaxLevel/10
	end

	local x
	local z
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	LuaFnSetSceneLoad_Map(sceneId, fubenData.MapFile )
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x808094_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x808094_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x808094_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x808094_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId))
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)

	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end

	local monsterIdTbl = fubenData.SmallMonsterId
	local monsterId = monsterIdTbl[1]
	if monsterIdTbl[iniLevel] then
		monsterId = monsterIdTbl[iniLevel]
	end

	local bossIdTbl = fubenData.BossMonsterId
	local bossId = bossIdTbl[1]
	if bossIdTbl[iniLevel] then
		bossId = bossIdTbl[iniLevel]
	end

	LuaFnSetCopySceneData_Param(sceneId, 8, monsterId )	--Ð¡¹ÖID....
	LuaFnSetCopySceneData_Param(sceneId, 9, bossId )		--BOSSID....
	LuaFnSetCopySceneData_Param(sceneId, 10, mylevel )	--¸±±¾×ÔÊÊÓ¦µÈc¤p....
	LuaFnSetCopySceneData_Param(sceneId, 11, 0 )				--É±¹ÖÊý....
	LuaFnSetCopySceneData_Param(sceneId, 12, 0 )				--step....
	LuaFnSetCopySceneData_Param(sceneId, 13, fubenType )--¸±±¾ÀàÐÍ....

	LuaFnSetSceneLoad_Area( sceneId, fubenData.AreaFile )
	LuaFnSetSceneLoad_Monster( sceneId, fubenData.MonsterFile )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D¸ch chuy¬n thành công!");
		else
			AddText(sceneId,"S¯ lßþng bän sao ðã ðªn gi¾i hÕn, ð« ngh¸ lát næa thØ lÕi!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--¸±±¾ÊÂ¼þ....
--**********************************
function x808094_OnCopySceneReady( sceneId, destsceneId )

	--½øÈë¸±±¾toÕ ðµ ¹æÔò
	-- 1,Èç¹ûCái này Íæ¼ÒÃ»ÓÐ×é¶Ó,¾Í´«ËÍCái này Íæ¼Ò×Ô¼º½øÈë¸±±¾
	-- 2, Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,µ«ÐúngÍæ¼Ò²»Ðúng¶Ó³¤,¾Í´«ËÍ×Ô¼º½øÈë¸±±¾
	-- 3,Èç¹ûÍæ¼ÒÓÐ¶ÓÎé,²¢ÇÒCái này Íæ¼ÒÐúng¶Ó³¤,¾Í´«ËÍ×Ô¼ººÍ¸½½ü¶ÓÓÑmµt Æð½øÈ¥

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x808094_g_Fuben_X, x808094_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x808094_g_Fuben_X, x808094_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x808094_g_Fuben_X, x808094_g_Fuben_Z)
			end
		end		
	end

end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼þ....
--**********************************
function x808094_OnCopySceneTimer( sceneId, nowTime )

	local nStep = LuaFnGetCopySceneData_Param(sceneId, 12 )

	--Èç¹û¸Õ¿ªÊ¼ÔòË¢Ð¡¹Ö....
	if nStep == 0 then
		x808094_CreateSmallMonster( sceneId )
		LuaFnSetCopySceneData_Param(sceneId, 12, 1 )	--Ôö¼ÓnStep....
	end

	--Èç¹ûÉ±ËÀÁËBOSSÔòµ¹¼ÆÊ±¹Ø±Õ....
	if nStep == 2 then
		x808094_TipAllHuman( sceneId, "Phó bän 30 giây sau ðóng cØa." )
		LuaFnSetCopySceneData_Param(sceneId, 12, 3 )
	end

	if nStep == 3 then
		LuaFnSetCopySceneData_Param(sceneId, 12, 4 )
	end

	if nStep == 4 then
		x808094_TipAllHuman( sceneId, "Phó bän 20 giây sau ðóng cØa." )
		LuaFnSetCopySceneData_Param(sceneId, 12, 5 )
	end

	if nStep == 5 then
		LuaFnSetCopySceneData_Param(sceneId, 12, 6 )
	end

	if nStep == 6 then
		x808094_TipAllHuman( sceneId, "Phó bän 10 giây sau ðóng cØa." )
		LuaFnSetCopySceneData_Param(sceneId, 12, 7 )
	end

	if nStep == 7 then
		x808094_TipAllHuman( sceneId, "Phó bän 5 giây sau ðóng cØa." )
		LuaFnSetCopySceneData_Param(sceneId, 12, 8 )
	end

	--Ê±¼äµ½ÁËÌßÈË....
	if nStep == 8 then
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end
		LuaFnSetCopySceneData_Param(sceneId, 12, 9 )
	end

end

--**********************************
--¹ÖÎïËÀÍö....
--**********************************
function x808094_OnDie( sceneId, objId, killerId )

	local szName = GetName(sceneId, objId)

	local fubenType = LuaFnGetCopySceneData_Param( sceneId, 13 )
	if fubenType~=1 and fubenType~=2 and fubenType~=3 then
		return
	end
	local fubenData = x808094_g_FubenDataTbl[ fubenType ]


	--Èç¹ûÉ±ËÀtoÕ ðµ ÐúngÐ¡¹ÖÔòÔö¼Ó¼ÆÊý....
	if szName == fubenData.MonsterName then

		--ÉèÖÃ¸±±¾¼ÆÊý....
		local nKillNum = LuaFnGetCopySceneData_Param( sceneId, 11 )
		nKillNum = nKillNum + 1
		local str = "Ðã giªt chªt "..szName..": "..nKillNum .."/5"
		x808094_TipAllHuman( sceneId, str )
		LuaFnSetCopySceneData_Param( sceneId, 11, nKillNum )

		--Èç¹ûÉ±¹»ÁËÔò´´½¨´óBOSS....
		if nKillNum == getn(x808094_g_SmallMonsterPos) then
			x808094_CreateBossMonster( sceneId )
		end

		--ÎªËùÓÐÈËÉèÖÃÈÎÎñ¼ÆÊý....
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				if IsHaveMission( sceneId, PlayerId, fubenData.MissionId ) > 0 then
					local misIndex = GetMissionIndexByID( sceneId, PlayerId, fubenData.MissionId )
					SetMissionByIndex( sceneId, PlayerId, misIndex, 1, nKillNum )
				end
			end
		end


	--Èç¹ûÉ±ËÀtoÕ ðµ ÐúngBOSSÔò¹Ø±Õ¸±±¾....
	elseif szName == fubenData.BossName then

		--¹Ø±Õ¸±±¾....
		LuaFnSetCopySceneData_Param(sceneId, 12, 2 )

		local str = "Ðã giªt chªt "..szName
		x808094_TipAllHuman( sceneId, str )

		--ÎªËùÓÐÈËÉèÖÃÈÎÎñ¼ÆÊý....
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				if IsHaveMission( sceneId, PlayerId, fubenData.MissionId ) > 0 then
					local misIndex = GetMissionIndexByID( sceneId, PlayerId, fubenData.MissionId )
					SetMissionByIndex( sceneId, PlayerId, misIndex, 2, 1 )
				end
			end
		end

	end


end

--**********************************
--ÓÐÍæ¼Ò½øÈë¸±±¾ÊÂ¼þ....
--**********************************
function x808094_OnPlayerEnter( sceneId, selfId )

	--ÉèÖÃÈÎÎñÍê³É....
	local fubenType = LuaFnGetCopySceneData_Param( sceneId, 13 )
	if fubenType~=1 and fubenType~=2 and fubenType~=3 then
		return
	end
	local fubenData = x808094_g_FubenDataTbl[ fubenType ]

	if IsHaveMission( sceneId, selfId, fubenData.MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, fubenData.MissionId )
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 1 )
	end

	--ÉèÖ giâyÀÍöÊÂ¼þ....
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x808094_g_Fuben_X, x808094_g_Fuben_Z )

end

--**********************************
--ÓÐÍæ¼ÒTÕi ¸±±¾ÖÐËÀÍöÊÂ¼þ....
--**********************************
function x808094_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--ÌáÊ¾ËùÓÐ¸±±¾ÄÚÍæ¼Ò....
--**********************************
function x808094_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end

--**********************************
--´´½¨Ð¡¹Ö....
--**********************************
function x808094_CreateSmallMonster( sceneId )

	local fubenType = LuaFnGetCopySceneData_Param( sceneId, 13 )
	if fubenType~=1 and fubenType~=2 and fubenType~=3 then
		return
	end
	local fubenData = x808094_g_FubenDataTbl[ fubenType ]

	local MstId = LuaFnGetCopySceneData_Param( sceneId, 8 )
	local MstLevel = LuaFnGetCopySceneData_Param( sceneId, 10 )

	for i, pos in x808094_g_SmallMonsterPos do
		local objId = LuaFnCreateMonster( sceneId, MstId, pos.x, pos.z, 3, 0, 808094 )
		SetLevel( sceneId, objId, MstLevel )
		SetCharacterName( sceneId, objId, fubenData.MonsterName )
	end

end

--**********************************
--´´½¨BOSS....
--**********************************
function x808094_CreateBossMonster( sceneId )

	local fubenType = LuaFnGetCopySceneData_Param( sceneId, 13 )
	if fubenType~=1 and fubenType~=2 and fubenType~=3 then
		return
	end
	local fubenData = x808094_g_FubenDataTbl[ fubenType ]

	local MstId = LuaFnGetCopySceneData_Param( sceneId, 9 )
	local MstLevel = LuaFnGetCopySceneData_Param( sceneId, 10 )

	local objId = LuaFnCreateMonster( sceneId, MstId, x808094_g_BossMonsterPos.x, x808094_g_BossMonsterPos.z, 0, 0, 808094 )
	SetLevel( sceneId, objId, MstLevel )
	SetCharacterName( sceneId, objId, fubenData.BossName )
	SetCharacterTitle(sceneId, objId, fubenData.BossTitle)

end
