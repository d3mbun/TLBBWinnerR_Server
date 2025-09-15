--¸±±¾ÈÎÎñ
--Kë thù xâm lßşc
--

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x050013_g_ScriptId	= 050013

--MisDescEnd
--************************************************************************

x050013_g_CopySceneType			= FUBEN_ZEIBINGRUQIN	--¸±±¾ÀàĞÍ,¶¨ÒåTÕi ScriptGlobal.luaÀïÃæ
x050013_g_LimitMembers			= 1		--¿ÉÒÔ½ø¸±±¾toÕ ğµ ×îĞ¡¶ÓÎéÈËÊı
x050013_g_TickTime					= 5		--»Øµ÷½Å±¾toÕ ğµ Ê±ÖÓÊ±¼ä(µ¥Î»:  giây/´Î)
x050013_g_LimitTotalHoldTime= 360	--¸±±¾¿ÉÒÔ´æ»îtoÕ ğµ Ê±¼ä(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÔòÈÎÎñ½«»áth¤t bÕi
x050013_g_LimitTimeSuccess	= 500	--¸±±¾Ê±¼äÏŞÖÆ(µ¥Î»: ´ÎÊı),Èç¹û´ËÊ±¼äµ½ÁË,ÈÎÎñÍê³É
x050013_g_CloseTick					= 6		--¸±±¾¹Ø±ÕÇ°µ¹¼ÆÊ±(µ¥Î»: ´ÎÊı)
x050013_g_NoUserTime				= 300	--¸±±¾ÖĞÃ»ÓĞÈËºó¿ÉÒÔ¼ÌĞø±£´ætoÕ ğµ Ê±¼ä(µ¥Î»:  giây)
x050013_g_Fuben_X						= 76	--½øÈë¸±±¾toÕ ğµ Î»ÖÃX
x050013_g_Fuben_Z						= 110	--½øÈë¸±±¾toÕ ğµ Î»ÖÃZ
x050013_g_BossGroupID= 1		--C¥n É±ËÀtoÕ ğµ BosstoÕ ğµ GroupID
x050013_g_TotalNeedKillBoss	= 31	--C¥n É±ËÀBossÊıÁ¿

--¸±±¾Êı¾İË÷Òı¶ÔÕÕ
x050013_g_keySD					= {}
x050013_g_keySD["typ"]	= 0		--ÉèÖÃ¸±±¾ÀàĞÍ
x050013_g_keySD["spt"]	= 1		--ÉèÖÃ¸±±¾³¡¾°ÊÂ¼ş½Å±¾ºÅ
x050013_g_keySD["tim"]	= 2		--ÉèÖÃ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
x050013_g_keySD["scn"]	= 3		--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ, ³õÊ¼»¯
x050013_g_keySD["cls"]	= 4		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾, 0¿ª·Å,1¹Ø±Õ
x050013_g_keySD["dwn"]	= 5		--ÉèÖÃÀë¿ªµ¹¼ÆÊ±´ÎÊı
x050013_g_keySD["tem"]	= 6		--±£´æ¶ÓÎéºÅ
x050013_g_keySD["x"]	= 7		--X×ø±ê
x050013_g_keySD["z"]	= 8		--Z×ø±ê

x050013_g_keySD["ObjKilled"] = 9     --µ±Ç°É±¹ÖÊıÁ¿
x050013_g_keySD["MyLevel"] = 10     --³¡¾°µÈc¤p
x050013_g_keySD["FlagThielf"] = 11     --³¡¾°¸±±¾toÕ ğµ ±êÖ¾ ÒÑ·ÏÆú
x050013_paramonce 	= 28


--x050013_g_Monster	= {}
--x050013_g_Monster[1]	= { 3, 100, 100 }
--x050013_g_Monster[2]	= { 4, 100, 100 }

--½ÓÈ¡ÈÎÎñtoÕ ğµ ×îµÍµÈc¤p
x050013_g_minLevel			= 20
--BOSS ÀàĞÍ
x050013_g_typMonster0		= 3650
x050013_g_typMonster1		= 3659

x050013_Monster_Boss = {
                        3650,
                        3651,
                        3652,
                        3653,
                        3654,
                        3655,
                        3656,
                        3657,
                        3658,
                        3659
                        }

x050013_NianShou_Boss = {
												12200,
												12201,
												12202,
												12203,
												12204,
												12205,
												12206,
												12207,
												12208,
												12209,
												12210,
												12211
                        }
                        
x050013_NianShou_Pos = {
												{x=83,z=45},{x=93,z=34},{x=53,z=30},{x=27,z=24},{x=34,z=41},
												}

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x050013_OnDefaultEvent( sceneId, selfId, targetId )
    --¹Ø±Õ½çÃæ
 	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
    
    local CanAccept = x050013_OnAccept( sceneId, selfId )
    
    if( 1 == CanAccept ) then
        LuaFnDeleteMonster( sceneId, targetId)
    end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x050013_OnEnumerate( sceneId, selfId, targetId )

    local	lev	= GetLevel( sceneId, selfId )
	if lev < x050013_g_minLevel then
	  AddText( sceneId, "ĞÆng c¤p cüa ngß½i quá th¤p, c½ bän không l÷t vào m¡t ta. Ğşi sau khi ğÕt c¤p 20, hãy t¾i tìm ta" )
		return
	end
	
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		AddText( sceneId, "Ngß½i mu¯n t¾i thØ ta, nhßng c½ bän ta không mu¯n ğµng thü v¾i ngß½i" )
		return 
	end
	
	
	if GetTeamSize( sceneId, selfId ) < x050013_g_LimitMembers then
	  AddText( sceneId, "Mu¯n thØ thách ta chí ít cûng phäi t¾i 3 ngß¶i. Có tí ngß¶i thª này, quá coi thß¶ng ta" )
	  return
	end
	
	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		AddText( sceneId, "Mu¯n thØ thách ta? G÷i nhóm trß·ng cüa các ngß½i ra ğây" )		
		return
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	leaderObjId = selfId;

  local TeammateCount = 0    --¶ÓÓÑÊıÁ¿ Steven.Han 2006-12-27 11:34
  local TeammateID = 0       --¶ÓÓÑID
  local NearCount = 0        --¸½½ü¶ÓÓÑÊıÁ¿
  
  NearCount = GetNearTeamCount( sceneId, leaderObjId )
  TeammateCount = GetTeamMemberCount( sceneId, leaderObjId )
   	
	local namenum = 0;
	local notifyString = "Trong ğµi ngû cüa các hÕ có thành viên (";
	for i=0, NearCount-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		local	lev	= GetLevel( sceneId, nPlayerId )
		local	nam	= GetName( sceneId, nPlayerId )
		
		if(lev<20) then
			notifyString = notifyString..nam.." ";
			namenum = 1;
		end
	end
	notifyString = notifyString..") ğÆng c¤p không ğü.";	
	if(namenum>0) then
	  BeginEvent( sceneId )
			AddText( sceneId, notifyString )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
 	  
  for i=0, NearCount-1 do
      TeammateID = GetNearTeamMember( sceneId, leaderObjId, i )
      if( -1 == TeammateID ) then    --²»ºÏ·¨ID
          return
      end
      
      local Level = GetLevel( sceneId, TeammateID )
      if( Level < 20 ) then
        BeginEvent( sceneId )
					AddText( sceneId, "Trong nhóm cüa ngß½i có ngß¶i có ğÆng c¤p không ğü c¤p 20!" )
					EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
      end
            
  end
  
	
	BeginEvent( sceneId )
		AddText( sceneId, "Nªu các ngß½i ğã không sş chªt, ta cûng không c¥n thiªt phäi lßu tình. Lû o¡t kia, ğ¬ ta cho các ngß½i nªm mùi lşi hÕi" )
		AddNumText( sceneId, x050013_g_ScriptId, "L¨ nào ta lÕi sş ngß½i..",10,-1 )
    EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
 
 
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x050013_CheckAccept( sceneId, selfId )	
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x050013_OnAccept( sceneId, selfId )

  --´«ËÍÇ°,ÒªÖØĞÂÅĞ¶Ïmµt ´Î½øÈëÌõ¼ş Steven.Han 2006-12-27 13:53
	local	lev	= GetLevel( sceneId, selfId )
	if lev < x050013_g_minLevel then
	  x050013_NotifyTip( sceneId, selfId, "ĞÆng c¤p cüa ngß½i quá th¤p" )
		return -1
	end
	
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x050013_NotifyTip( sceneId, selfId, "Ngß½i vçn chßa có nhóm" )
		return -1 
	end
	
	if GetTeamSize( sceneId, selfId ) < x050013_g_LimitMembers then
	  x050013_NotifyTip( sceneId, selfId, "Nhóm không ğü "..(x050013_g_LimitMembers).." Nhân" )
	  return -1
	end
	
	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x050013_NotifyTip( sceneId, selfId, "Ngß½i không phäi là ğµi trß·ng" )		
		return -1
	end
		  
	  
  local TeammateCount = 0    --¶ÓÓÑÊıÁ¿ Steven.Han 2006-12-27 11:34
  local TeammateID = 0       --¶ÓÓÑID
  local NearCount = 0        --¸½½ü¶ÓÓÑÊıÁ¿
  
  NearCount = GetNearTeamCount( sceneId, selfId )
  TeammateCount = GetTeamMemberCount( sceneId, selfId )
  
  if( NearCount < TeammateCount ) then          --ÓĞ¶ÓÓÑÃ»TÕi ¸½½ü,Tr· v«
    	--ÏÔÊ¾ĞÑÄ¿ÌáÊ¾
		  BeginEvent(sceneId)
		      strText = "Ğµi hæu cüa ngß½i không · g¥n ğây"
		  AddText(sceneId,strText)
	    EndEvent(sceneId)
	    DispatchMissionTips(sceneId,selfId)
      return -1
  end
  
  for i=0, TeammateCount-1 do
      TeammateID = GetNearTeamMember( sceneId, selfId, i )
      if( -1 == TeammateID ) then    --²»ºÏ·¨ID
          return -1
      end
      
      local Level = GetLevel( sceneId, TeammateID )
      if( Level < 20 ) then
        BeginEvent( sceneId )
			AddText( sceneId, "Trong nhóm cüa ngß½i có ngß¶i có ğÆng c¤p không ğü c¤p 20!" )
			EndEvent( sceneId )
		DispatchMissionTips(sceneId,selfId)
		return -1
      end
            
  end
  --´«ËÍÇ°,ÒªÖØĞÂÅĞ¶Ïmµt ´Î½øÈëÌõ¼ş Steven.Han 2006-12-27 13:53



	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local numMem	= GetNearTeamCount( sceneId, selfId )

	x050013_MakeCopyScene( sceneId, selfId, numMem )
	
	return 1
	--LuaFnDeleteMonster( sceneId, targetId)
	--PrintStr( tostring( targetId ) )
	
	
end

--**********************************
--·ÅÆú
--**********************************
function x050013_OnAbandon( sceneId, selfId )

end

--**********************************
--´´½¨¸±±¾
--**********************************
function x050013_CreateBoss( sceneId, iniLevel )
    if( iniLevel < x050013_g_minLevel ) then
        iniLevel = x050013_g_minLevel
    end
    local PlayerMaxLevel = GetHumanMaxLevelLimit()
    if( iniLevel > PlayerMaxLevel ) then
        iniLevel = PlayerMaxLevel
    end
    
    
    --PrintStr( "x050013_CreateBoss" )
	local	ini		= floor( iniLevel / 10 )
	if ini <= 0 then
		ini	= 1
	elseif ini > 10 then
		ini	= 10
	end
	local	typ		= x050013_Monster_Boss[ini]	--¹ÖÎï±àºÅ
	objId = LuaFnCreateMonster( sceneId, typ, 19.4121, 102.2840, 14, 76, 50013 )
	
	SetMonsterGroupID( sceneId, objId, x050013_g_BossGroupID )
	
	SetLevel( sceneId, objId, iniLevel )
	
	local szName = LuaFnGetName(sceneId, objId)
	if szName == "T£c Binh Ğ¥u Møc"   then
		SetCharacterTitle(sceneId, objId, "")
	end
	local DataID = GetMonsterDataID( sceneId, objId )
	local strMonsterName = GetMonsterNamebyDataId( DataID )
	
	CallScriptFunction((200060), "Paopao",sceneId, strMonsterName, "T£c Kh¤u doanh ğ¸a", "Thiên ğß¶ng có ğß¶ng ngß½i không ği, ğ¸a ngøc không cØa ngß½i xông t¾i! Dù sao ğã t¾i r°i, ğ×ng hòng thoát ğßşc. Ngày này nåm sau là ngày gi² cüa ngß½i")
	
end

--**********************************
--´´½¨¸±±¾
--**********************************
function x050013_MakeCopyScene( sceneId, selfId, nearmembercount )
	
	--Ö¸Êı²ÎÊı
	local	param0	= 4;
	local	param1	= 3;

	--×îÖÕ½á¹û
	local	mylevel	= 0;

	--ÁÙÊ±±äÁ¿
	local mems		= {};
	local	tempMemlevel = 0;
	local	level0 = 0;
	local	level1 = 0;
	for	i = 0, nearmembercount - 1 do
		mems[i]	= GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, mems[i]);
		level0	= level0 + (tempMemlevel ^ param0);
		level1	= level1 + (tempMemlevel ^ param1);
	end

	if level1 == 0 then
		mylevel = x050013_g_minLevel;
	else
		mylevel = level0/level1;
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	--µØÍ¼Ğúng±ØĞëÑ¡È¡toÕ ğµ ,¶øÇÒ±ØĞëTÕi Config/SceneInfo.iniÀïÅäÖÃºÃ
	LuaFnSetSceneLoad_Map( sceneId, "zeiying.nav" )
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050013_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x050013_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["typ"], x050013_g_CopySceneType )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["spt"], x050013_g_ScriptId )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["tim"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["scn"], sceneId )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["cls"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["dwn"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["tem"], GetTeamId( sceneId, selfId ) )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["FlagThielf"], 800 )
	
	local x,z = GetWorldPos( sceneId, selfId )	
	
	
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["x"], x )
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["z"], z )
	
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["ObjKilled"], 0 )  --ÉèÖÃÉ±¹ÖÊıÁ¿

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 10;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10) * 10;
	else
		iniLevel = PlayerMaxLevel;
	end
	
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["MyLevel"], mylevel )
	
	LuaFnSetSceneLoad_Monster( sceneId, "zeiying_monster_" .. iniLevel .. ".ini" )
	
    local CopyScene_LevelGap = 31
	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c¤p±ğ²î,CopyScene_LevelGap TÕi  scene.lua ÖĞ¸³Öµ
	
	LuaFnSetCopySceneData_Param(sceneId, x050013_paramonce, 0)
	
	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--³õÊ¼»¯Íê³Éºóµ÷ÓÃ´´½¨¸±±¾º¯Êı
	if bRetSceneID > 0 then
		x050013_NotifyTip( sceneId, selfId, "D¸ch chuy¬n thành công!" )
	else
		x050013_NotifyTip( sceneId, selfId, "S¯ lßşng bän sao ğã ğªn gi¾i hÕn, ğ« ngh¸ lát næa thØ lÕi!" )
	end


end

--**********************************
--¼ÌĞø
--**********************************
function x050013_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x050013_CheckSubmit( sceneId, selfId, selectRadioId )


end

--**********************************
--Ìá½»
--**********************************
function x050013_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end


function x050013_OnDie(sceneId, objId, killerId)
    --PrintStr( "x050013_OnDie [objId]"..objId.." [killerId]"..killerId.."[sceneId]"..sceneId )
    local DataID = GetMonsterDataID( sceneId, objId )
    x050013_OnKillObject( sceneId, killerId, DataID, objId )
    
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x050013_OnKillObject( sceneId, selfId, objdataId, objId )

	for i=1,10 do
		if (objdataId == x050013_NianShou_Boss[i]) then
			return
		end
	end
	
	--Ğúng·ñĞúng¸±±¾
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--Ğúng·ñĞúngËùC¥n toÕ ğµ ¸±±¾
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050013_g_CopySceneType then
		return
	end

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	--Èç¹û¸±±¾ÒÑ¾­±»ÖÃ³É¹Ø±Õ×´Ì¬,ÔòÉ±¹ÖÎŞĞ§
	if leaveFlag == 1 then
		return
	end

	--È¡ ği¬mµ±Ç°³¡¾°ÀïtoÕ ğµ ÈËÊı
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	

	--È¡ ği¬mÉ±ËÀ¹ÖÎïtoÕ ğµ GroupID,ÓÃÓÚÅĞ¶ÏĞúng·ñĞúngËùC¥n É±µôtoÕ ğµ Boss
	--local GroupID = GetMonsterGroupID( sceneId, objId )
	
	--local msgStr = format( "sceneId: %d, objId: %d, GroupID: %d", sceneId, objId, objdataId )
	--PrintStr( msgStr )
	
	--²»ĞúngËùC¥n toÕ ğµ Boss
	local bIsBoss=0;
	
	local GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID == x050013_g_BossGroupID then
	    bIsBoss = 1
	end
	--if  objdataId >= x050013_g_typMonster0 and objdataId <= x050013_g_typMonster1 then
	--	bIsBoss = 1;
	--end

	-------------------------------------------------------------------------------
	local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
	local memId
	local teamLeaderName;
	local firstMemName;
	local firstMemId;
	
	for	i = 0, membercount - 1 do
		memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
		if LuaFnIsObjValid( sceneId, memId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, memId ) == 1 then	
			local teamLeaderFlag = LuaFnIsTeamLeader(sceneId, memId);
			if teamLeaderFlag and teamLeaderFlag == 1 then
				teamLeaderName = LuaFnGetName(sceneId, memId);
				break;
			end
		end
	end

	if bIsBoss==1 then	
			local message;
			
			local randMessage = random(3);
			if teamLeaderName ~= nil then		
				if randMessage == 1 then			
		   			message = format("#{ItemMsg_08}#B#{_INFOUSR%s}#{ItemMsg_09}", teamLeaderName );
				elseif randMessage == 2 then		
					message = format("#B#{_INFOUSR%s}#cff0000#{ItemMsg_11}", teamLeaderName );
				else
					message = format("#{ItemMsg_12}#B#{_INFOUSR%s}#cff0000#{ItemMsg_13}", teamLeaderName );
				end
			
				BroadMsgByChatPipe(sceneId, selfId, message, 4);
			end
	end
	-------------------------------------------------------------------------------



	local killedbossnumber = LuaFnGetCopySceneData_Param( sceneId, x050013_g_keySD["ObjKilled"] )			--É±ËÀBosstoÕ ğµ ÊıÁ¿
	killedbossnumber = killedbossnumber + 1
	LuaFnSetCopySceneData_Param( sceneId, x050013_g_keySD["ObjKilled"] , killedbossnumber )					--ÉèÖÃÉ±ËÀBosstoÕ ğµ ÊıÁ¿

	local i
	local misIndex
	local humanObjId
	local score = 0
		
	for i=0, num-1 do

		local ServerID = LuaFnGetCopyScene_HumanObjId( sceneId, i )	  --È¡ ği¬mµ±Ç°³¡¾°ÀïÈËtoÕ ğµ objId

		if LuaFnIsObjValid( sceneId, ServerID ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, ServerID ) == 1 then			  --²»TÕi ³¡¾°toÕ ğµ ²»×ö´Ë²Ù×÷

			--´¦Àí»ı·Ö
			score = GetMissionData( sceneId, ServerID, MD_ThiefSoldierInvade ) --È¡³öµ±Ç°»ı·Ö

			if score < 65000 then

				if bIsBoss == 1 then
					score = score + 5
					if LuaFnIsTeamLeader( sceneId, selfId ) ~= 0 then
						local strLeaderName = GetName( sceneId, ServerID )
						local strMonsterName = GetMonsterNamebyDataId( objdataId )
					end  			    
				else
					score = score + 1
				end
	
				if score > 65000 then
					score = 65000    --»ı·ÖÏŞÖÆµ½65000
				end
				
				SetMissionData( sceneId, ServerID, MD_ThiefSoldierInvade, score )  --ÉèÖÃµ±Ç°»ı·Ö

			end

			local ScoreStr = format( "Ği¬m tích lûy hi®n tÕi %d", score)
			x050013_NotifyTip( sceneId, ServerID, ScoreStr ) --ÏÔÊ¾»ı·ÖĞÅÏ¢

			local KillStr = format( "Ğã giªt tên ác t£c tÕo phän: %d/%d", killedbossnumber, x050013_g_TotalNeedKillBoss )
			x050013_NotifyTip( sceneId, ServerID, KillStr ) --ÏÔÊ¾É±¹ÖÊıÁ¿

		end

	end
	
	if killedbossnumber >= x050013_g_TotalNeedKillBoss then
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )  --ÉèÖÃÈÎÎñÍê³É±êÖ¾
	end
	
    if killedbossnumber == ( x050013_g_TotalNeedKillBoss - 1 ) then    --É±ÍêÁËËùÓĞĞ¡¹Ö,Ë¢boss
    --if killedbossnumber == ( x050013_g_TotalNeedKillBoss - 0 ) then    --É±ÍêÁËËùÓĞĞ¡¹Ö,Ë¢boss	
		local CurLevel = LuaFnGetCopySceneData_Param( sceneId, x050013_g_keySD["MyLevel"] )
		--PrintStr( ""..level1..",c="..nearmembercount )
		x050013_CreateBoss( sceneId, CurLevel )
	end

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x050013_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x050013_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--¸±±¾ÊÂ¼ş
--**********************************
function x050013_OnCopySceneReady( sceneId, destsceneId )
    
	--ÉèÖÃ¸±±¾Èë¿Ú³¡¾°ºÅ
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	--ÕÒ²»µ½¸ÃÍæ¼Ò
	if leaderObjId == -1 then
		return
	end

	--´¦ÓÚÎŞ·¨Ö´ĞĞÂß¼­toÕ ğµ ×´Ì¬
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	--È¡ ği¬mÍæ¼Ò¸½½ütoÕ ğµ ¶ÓÓÑÊıÁ¿(°üÀ¨×Ô¼º)
	local numMem	= GetNearTeamCount( sceneId, leaderObjId )

	local member
	local misIndex
	
	NewWorld( sceneId, leaderObjId, destsceneId, x050013_g_Fuben_X, x050013_g_Fuben_Z )
	-- ÈÎÎñ»mµt î¶¯Í³¼Æ
	LuaFnAuditQuest(sceneId, leaderObjId, "Kë thù xâm lßşc")
	--PrintStr( "x050013_OnCopySceneReady" )		
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ´¦ÓÚ¿ÉÒÔÖ´ĞĞÂß¼­toÕ ğµ ×´Ì¬
				NewWorld( sceneId, member, destsceneId, x050013_g_Fuben_X, x050013_g_Fuben_Z )
			-- ÈÎÎñ»mµt î¶¯Í³¼Æ
			LuaFnAuditQuest(sceneId, member, "Kë thù xâm lßşc")
		end
	end
	    
end

--**********************************
--ÓĞÍæ¼Ò½øÈë¸±±¾ÊÂ¼ş
--**********************************
function x050013_OnPlayerEnter( sceneId, selfId )
	--ÉèÖ giâyÀÍöºó¸´»î ği¬mÎ»ÖÃ
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x050013_g_Fuben_X, x050013_g_Fuben_Z )
end

--**********************************
--ÓĞÍæ¼ÒTÕi ¸±±¾ÖĞËÀÍöÊÂ¼ş
--**********************************
function x050013_OnHumanDie( sceneId, selfId, killerId )

end

--**********************************
--½«Ä³Íæ¼Ò´«ËÍ³ö¸±±¾,»Øµ½½øÈëÊ±toÕ ğµ Î»ÖÃ
--**********************************
function x050013_KickOut( sceneId, objId )
    local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	local x = LuaFnGetCopySceneData_Param( sceneId, x050013_g_keySD["x"] ) --½øÈëÊ±toÕ ğµ ×ø±êX
	local z = LuaFnGetCopySceneData_Param( sceneId, x050013_g_keySD["z"] ) --½øÈëÊ±toÕ ğµ ×ø±êZ
	
	if LuaFnIsObjValid( sceneId, objId ) == 1 then
	    NewWorld( sceneId, objId, oldsceneId, x, z )
	end
	
end

--**********************************
--¸±±¾³¡¾°¶¨Ê±Æ÷ÊÂ¼ş
--**********************************
function x050013_OnCopySceneTimer( sceneId, nowTime )

	local once = LuaFnGetCopySceneData_Param( sceneId, x050013_paramonce )

	if (once == 0) then
	
		LuaFnSetCopySceneData_Param(sceneId, x050013_paramonce, 1)
		--ÄêÊŞÈëÇÖ
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, x050013_g_keySD["MyLevel"] )
	
		local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel;
		if mylevel < 10 then
			iniLevel = 10;
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor(mylevel/10) * 10;
		else
			iniLevel = PlayerMaxLevel;
		end
	
		local iNianShouIdx = iniLevel / 10
	
		for i=1, 5 do
			local objId = LuaFnCreateMonster( sceneId, x050013_NianShou_Boss[iNianShouIdx], x050013_NianShou_Pos[i].x, x050013_NianShou_Pos[i].z, 1, 272, -1)
			SetLevel( sceneId, objId, mylevel )
			LuaFnSendSpecificImpactToUnit(sceneId, objId, objId, objId, 10472, 0); -- zchw
		end  
	end
	
	
	--¸±±¾Ê±ÖÓ¶ÁÈ¡¼°ÉèÖÃ
	--È¡ ği¬mÒÑ¾­Ö´ĞĞtoÕ ğµ ¶¨Ê±´ÎÊı
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
	TickCount = TickCount + 1
	--ÉèÖÃĞÂtoÕ ğµ ¶¨Ê±Æ÷µ÷ÓÃ´ÎÊı
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )

	--¸±±¾¹Ø±Õ±êÖ¾
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--C¥n Àë¿ª
	if leaveFlag == 1 then
		--Àë¿ªµ¹¼ÆÊ±¼ätoÕ ğµ ¶ÁÈ¡ºÍÉèÖÃ
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount == x050013_g_CloseTick then										--µ¹¼ÆÊ±¼äµ½,´ó¼Ò¶¼³öÈ¥°É
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--È¡ ği¬m¸±±¾Èë¿Ú³¡¾°ºÅ

			--½«µ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË´«ËÍ»ØÔ­À´½øÈëÊ±ºòtoÕ ğµ ³¡¾°
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050013_KickOut( sceneId, mems[i] )				
				end
			end
						
		elseif leaveTickCount < x050013_g_CloseTick then
			--Í¨Öªµ±Ç°¸±±¾³¡¾°ÀïtoÕ ğµ ËùÓĞÈË,³¡¾°¹Ø±Õµ¹¼ÆÊ±¼ä
			local strText = format( "Các hÕ s¨ r¶i khöi ğây sau %d giây!", (x050013_g_CloseTick-leaveTickCount) * x050013_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050013_NotifyTip( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050013_g_LimitTimeSuccess then
		--´Ë´¦ÉèÖÃÓĞÊ±¼äÏŞÖÆtoÕ ğµ ÈÎÎñÍê³É´¦Àí
		local misIndex
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050013_NotifyTip( sceneId, mems[i], "Th¶i gian hoàn t¤t nhi®m vø ğã t¾i, hoàn thành!" )
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == x050013_g_LimitTotalHoldTime then						--¸±±¾×ÜÊ±¼äÏŞÖÆµ½ÁË
		--´Ë´¦ÉèÖÃ¸±±¾ÈÎÎñÓĞÊ±¼äÏŞÖÆtoÕ ğµ Çé¿ö,µ±Ê±¼äµ½ºó´¦Àí...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050013_NotifyTip( sceneId, mems[i], "Nhi®m vø th¤t bÕi, quá gi¶!" )
			end
		end

		--ÉèÖÃ¸±±¾¹Ø±Õ±êÖ¾
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
	
		--¶¨Ê±¼ì²é¶ÓÎé³ÉÔ±toÕ ğµ ¶ÓÎéºÅ,Èç¹û²»·ûºÏ,ÔòÌß³ö¸±±¾
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )		--È¡ ği¬m±£´ætoÕ ğµ ¶ÓÎéºÅ
		local oldsceneId

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					x050013_NotifyTip( sceneId, mems[i], "Ngß½i không · trong ğµi!" )
					x050013_KickOut( sceneId, mems[i] )
				end
			end
		end

	end

end

--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x050013_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--ĞÑÄ¿ÌáÊ¾
--**********************************
function x050013_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
