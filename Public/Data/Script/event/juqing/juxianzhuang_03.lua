-- ¾ÛÏÍ×¯Ö® ÂåÑô³¡¾°»¤ËÍ£¬ÖØµã²¿·ÖÅ¶
-- ´¥·¢Ìõ¼þ£¬Íê³ÉÈÎÎñ21£¬È»ºó½øÈëÂåÑôµÄÊÂ¼þÇøÓò

--MisDescBegin
--½Å±¾ºÅ
x200022_g_ScriptId = 200022

--ÈÎÎñºÅ
x200022_g_MissionId = 22

--Ç°ÐøÈÎÎñºÅ
x200022_g_PreMissionId = 47

--Ä¿±êNPC
x200022_g_Name	="Ki«u Phong"
x200022_g_Name1 ="T× Kinh Lôi"

--ÈÎÎñ¹éÀà
x200022_g_MissionKind = 47

--ÈÎÎñµÈ¼¶
x200022_g_MissionLevel = 40

--ÊÇ·ñÊÇ¾«Ó¢ÈÎÎñ
x200022_g_IfMissionElite = 0

--ÈÎÎñÃû
x200022_g_MissionName="Dù vÕn ngß¶i, ta vçn cÑ tiªn"
--ÈÎÎñÃèÊö
x200022_g_MissionInfo="#{Mis_juqing_0022}"
--ÈÎÎñÄ¿±ê
x200022_g_MissionTarget="#{Mis_juqing_Tar_0022}"		
--Ìá½»Ê±npcµÄ»°
x200022_g_MissionComplete="  Ki«u Phong th§t là...l¨ nào huynh ta chï vì mµt cô nß½ng, dám quên cä tính mÕng mình? Không khéo gi¶ ðây Tø Hi«n Trang ðã ðÕi loÕn m¤t.."		

x200022_g_MoneyBonus=9000
x200022_g_exp=9600

x200022_g_RadioItemBonus={{id=10423008 ,num=1},{id=10423009,num=1},{id=10423010,num=1},{id=10423011,num=1}}

x200022_g_Custom	= {{id="Dù vÕn ngß¶i, ta vçn cÑ tiªn",num=1}}
--MisDescEnd

-- ¶ÓÎéId
x200022_g_GroupId = 0

-- »¤ËÍÂ·ÏßId
x200022_g_PatrolPathIndex = 4

-- ³¡¾°¼ÆÊ±Æ÷Index
x200022_g_SceneTimerIndex = -1
x200022_g_Step = 0
x200022_g_StartTime = 0
x200022_g_PlayerNum = 0
x200022_g_PlayerId= {-1,-1,-1,-1,-1,-1}

function x200022_DisplayBonus(sceneId, missionIndex)
	
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x200022_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )	--µã»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾

	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200022_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200022_g_MissionId) > 0)  then
		if GetName(sceneId, targetId) == x200022_g_Name1   then
			x200022_OnContinue( sceneId, selfId, targetId )
		end
	
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200022_CheckAccept(sceneId,selfId) > 0 then
		-- ÅÐ¶ÏÊÇÔÚ¸±±¾£¬
		if GetName(sceneId, targetId) == x200022_g_Name   then
			--·¢ËÍÈÎÎñ½ÓÊÜÊ±ÏÔÊ¾µÄÐÅÏ¢
			BeginEvent(sceneId)
				AddText(sceneId,x200022_g_MissionName)
				AddText(sceneId,x200022_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200022_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				for i, item in x200022_g_RadioItemBonus do
					AddRadioItemBonus( sceneId, item.id, item.num )
				end
				AddMoneyBonus( sceneId, x200022_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200022_g_ScriptId,x200022_g_MissionId)
		end
	end

end

function x200022_OnMissionRefuse()
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x200022_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetName(sceneId, targetId) == x200022_g_Name   then
		if GetNumText() == 0    then
			BeginEvent(sceneId)
				AddText(sceneId,x200022_g_MissionName)
				AddText(sceneId,x200022_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x200022_g_MissionTarget)
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x200022_g_ScriptId,x200022_g_MissionId)
		end
	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x200022_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200022_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200022_g_MissionId) > 0 then
		if GetName(sceneId, targetId) == x200022_g_Name1   then
			AddNumText(sceneId, x200022_g_ScriptId,x200022_g_MissionName,2,-1);
		end
	--Âú×ãÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x200022_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId, targetId) == x200022_g_Name    then
			AddNumText(sceneId,x200022_g_ScriptId,x200022_g_MissionName,1,-1);
		end
	end

end

--**********************************
-- 
--**********************************
function x200022_OnLockedTarget( sceneId, selfId, targetId, missionIndex )

end

--**********************************
--¼ì²â½ÓÊÜÌõ¼þ
--**********************************
function x200022_CheckAccept( sceneId, selfId )
	-- ½ÓÈÎÎñµÄÌõ¼þÊÇ£¬ÈËÎï´ïµ½20¼¶ÒÔÉÏ£¬²¢ÇÒÍê³ÉÁËÇ°ÐøÈÎÎñ
	if GetLevel(sceneId, selfId) < 40   then
		return 0
	end
	
	if IsMissionHaveDone(sceneId, selfId, x200022_g_PreMissionId ) < 1   then
		return 0
	end
	
	return 1
end

--**********************************
--½ÓÊÜ
--**********************************
function x200022_OnAccept( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒÊÇ²»ÊÇÒÑ¾­Íê³É¹ýÕâ¸öÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, x200022_g_MissionId) > 0   then
		return
	end
	
	if x200022_CheckAccept(sceneId, selfId)  < 1   then
		return
	end

	if x200022_g_Step ~= 0  and x200022_g_Step ~= 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "Møc tiêu ðang b§n, xin ðþi mµt lát!")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		return
	end
	
	-- ÕâÀïµÄ»¤ËÍÐèÒªÆô¶¯³¡¾°µÄ¼ÆÊ±Æ÷£¬²»ÄÜÊ¹ÓÃÈÎÎñ¼ÆÊ±Æ÷
	if x200022_g_Step == 0   then
		local ret = AddMission( sceneId,selfId, x200022_g_MissionId, x200022_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
			return
		end
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200022_g_MissionId)
		-- Õâ¸ö³¡¾°¼ÆÊ±Æ÷£¬Ó¦¸ÃÊÇÒ»Ö±±»Õâ¸ö»î¶¯Õ¼ÓÃµÄ£¬ËùÒÔ£¬Ö»ÒªÕâ¸öÖµ²»µÈÓÚ-1£¬¾Í²»ÒªÔÙÉêÇë
		if x200022_g_SceneTimerIndex == -1  then
			x200022_g_SceneTimerIndex = SetTimer(sceneId, selfId, x200022_g_ScriptId, "OnSceneTimer", 1)
			SetMissionByIndex(sceneId,selfId,misIndex,3,x200022_g_SceneTimerIndex)
		end
		
		x200022_g_StartTime = LuaFnGetCurrentTime()
		x200022_g_Step = 1
		
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Dù vÕn ngß¶i, ta vçn cÑ tiªn",MSG2PLAYER_PARA )
		
		SetMissionByIndex(sceneId,selfId,misIndex,2,0)
	end
	
	if x200022_g_Step == 2   then
		-- °ÑÕâ¸öÍæ¼Ò¼Óµ½»¤ËÍÁÐ±íÖÐÈ¥
		
		local ret = AddMission( sceneId,selfId, x200022_g_MissionId, x200022_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
			return
		end
		
		x200022_g_PlayerNum = x200022_g_PlayerNum + 1
		x200022_g_PlayerId[x200022_g_PlayerNum] = selfId
		Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: Dù vÕn ngß¶i, ta vçn cÑ tiªn",MSG2PLAYER_PARA )
		
		local misIndex = GetMissionIndexByID(sceneId,selfId,x200022_g_MissionId)
		SetMissionByIndex(sceneId,selfId,misIndex,2,0)
	end
	
end

--**********************************
--³¡¾°Timer
--**********************************
function x200022_OnSceneTimer( sceneId, selfId )

	if LuaFnIsObjValid(sceneId,selfId)~=1 then
		return
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200022_g_MissionId)
	if not misIndex or misIndex<0 or misIndex>5000 then
		return
	end
	
	local nStep=GetMissionParam(sceneId,selfId,misIndex,2)
	
	x200022_g_PlayerId[1] = selfId
	x200022_g_PlayerNum = 1
	
	if nStep==100 then
		x200022_g_SceneTimerIndex=GetMissionParam(sceneId,selfId,misIndex,3)
		StopTimer(sceneId, x200022_g_SceneTimerIndex)
		return
	end
	
	if nStep == 0 then
		x200022_g_StartTime = LuaFnGetCurrentTime()
		--nStep = 1
		SetMissionByIndex(sceneId,selfId,misIndex,2,1)
	end
	
	if nStep < 3  then
		local nSelfId = -1
		local bHavePlayer = 0
	--	if LuaFnIsObjValid(sceneId, nSelfId)==1  and
	--		 LuaFnIsCanDoScriptLogic(sceneId, nSelfId) == 0   then
			for i=1, x200022_g_PlayerNum  do	
				if x200022_g_PlayerId[i] ~= -1  then
					if LuaFnIsObjValid(sceneId, x200022_g_PlayerId[i])==1  and
						 LuaFnIsCanDoScriptLogic(sceneId, x200022_g_PlayerId[i]) == 1   then
						bHavePlayer = 1
						nSelfId = x200022_g_PlayerId[i]
						
						break
					end
				end
			end
	--	else
	--		bHavePlayer = 1
	--	end
		
		if bHavePlayer == 0   then
			-- ¼ÆÊ±Æ÷Í£Ö¹£¬Çå³ýËùÓÐµÄÈ«¾Ö±äÁ¿
			--x200022_g_Step = 0
			SetMissionByIndex(sceneId,selfId,misIndex,2,100)
			x200022_g_StartTime = 0
			x200022_g_PlayerId[1] = -1
			x200022_g_PlayerId[2] = -1
			x200022_g_PlayerId[3] = -1
			x200022_g_PlayerId[4] = -1
			x200022_g_PlayerId[5] = -1
			x200022_g_PlayerId[6] = -1
			x200022_g_PlayerNum = 0
			x200022_g_StartTime = 0
			
			return
		end
		--end
	end
	
	-- ¼ì²âÖ»ÒªÇÇ·åºÍ°¢ÖéÖÐµÄÈÎºÎÒ»¸öÈË²»ÔÚ³¡¾°ÖÐÁË£¬¾ÍÇå¿ÕËùÓÐµÄÈ«¾Ö±äÁ¿
	local nNpcNum = GetMonsterCount(sceneId)
	local kk = 0
	local bHaveQiao = 0
	for kk = 0, nNpcNum-1 do
		local nNpcId = GetMonsterObjID(sceneId,kk)
		if GetName(sceneId, nNpcId)  == "Ki«u Phong"  then
			bHaveQiao = 1+bHaveQiao
		end
		
		if GetName(sceneId, nNpcId)  == "A Châu"  then
			bHaveQiao = 1+bHaveQiao
		end
	end
	
	if 	bHaveQiao ~= 2   then
		--StopTimer(sceneId, x200022_g_SceneTimerIndex)
		--x200022_g_SceneTimerIndex = -1
		nStep = 0
		SetMissionByIndex(sceneId,selfId,misIndex,2,100)
		x200022_g_StartTime = 0
		x200022_g_PlayerId[1] = -1
		x200022_g_PlayerId[2] = -1
		x200022_g_PlayerId[3] = -1
		x200022_g_PlayerId[4] = -1
		x200022_g_PlayerId[5] = -1
		x200022_g_PlayerId[6] = -1
		x200022_g_PlayerNum = 0
		x200022_g_StartTime = 0
		
		return
	end
	
	
	if nStep == 1   then
		-- ¸øÐ¡¶ÓµÄËùÓÐÍæ¼Ò·¢ËÍÒ»Æð»¤ËÍµÄÑûÇë
		--local groupId = AllocateMonsterGroup(sceneId)
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nQiaofenId = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Ki«u Phong"  then
				nQiaofenId = nMonsterId
				bHaveMonster = 1
			end
		end
		
		for i=1, x200022_g_PlayerNum  do	
			if x200022_g_PlayerId[i] ~= -1  then
				if LuaFnIsObjValid(sceneId, x200022_g_PlayerId[i])==1  and
					 LuaFnIsCanDoScriptLogic(sceneId, x200022_g_PlayerId[i]) == 1   then
					bHavePlayer = 1
					nSelfId = x200022_g_PlayerId[i]
					
					break
				end
			end
		end
--		PrintNum(nSelfId)
--		PrintNum(x200022_g_PlayerNum)
		local nTeamCount = GetNearTeamCount(sceneId, nSelfId)
		for i=0, nTeamCount-1 do
			local PlayerId = GetNearTeamMember(sceneId, nSelfId, i)
			if PlayerId ~= nSelfId    then
				CallScriptFunction((200022), "OnDefaultEvent", sceneId, PlayerId, nQiaofenId )
			end
		end
		
		-- ¼ÇÏÂÕâ¸ö½ÓÁËÈÎÎñµÄÍæ¼Ò
		--x200022_g_PlayerNum = 1
		--x200022_g_PlayerId[1]= nSelfId
		x200022_g_StartTime = LuaFnGetCurrentTime()
		
		--x200022_g_Step = 2
		SetMissionByIndex(sceneId,selfId,misIndex,2,2)

		CallScriptFunction((200060), "Paopao",sceneId, "Ki«u Phong", "LÕc Dß½ng", "#{juqing_start_007}")
		
	elseif nStep == 2   then
		-- µÈ´ý5Ãë£¬Õâ¸öÊ±¼äÊÇµÈ´ý±ðµÄÍæ¼ÒÒ»Æð½øÐÐÕâ¸ö»¤ËÍµÄÊ±¼ä
		if LuaFnGetCurrentTime() - x200022_g_StartTime > 5   then
			CallScriptFunction((200060), "Paopao",sceneId, "Ki«u Phong", "LÕc Dß½ng", "#{juqing_start_008}")
			--x200022_g_Step = 3
			SetMissionByIndex(sceneId,selfId,misIndex,2,3)
			return
		end
		
	elseif nStep == 3   then
		CallScriptFunction((200060), "Paopao",sceneId, "Ki«u Phong", "LÕc Dß½ng", "#{juqing_start_009}")
		
		-- ÉêÇëÒ»¸öÑ²Âß×é£¬¿ªÊ¼×ß
		--local groupId = AllocateMonsterGroup(sceneId)

		-- Ô­À´ÊÇÓÃµÄÊÇÉêÇëÒ»¸öÐÂµÄÑ²Âß×é£¬ÏÖÔÚÊ¹ÓÃÒ»¸ö¹Ì¶¨µÄÑ²Âß×éÀ´Íê³É
		-- ÔÚ¿ªÊ¼Õâ¸öÈºÌå»¤ËÍÇ°£¬ÏÖÇå¿ÕÒ»ÏÂÕâ¸ö×é
		ReleaseMonsterGroup(sceneId, x200022_g_GroupId)
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nHaveMonster = 0
		local nQiaofenId = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "A Châu"  then
				AddGroupMember(sceneId, x200022_g_GroupId, nMonsterId, 2, 1)
				SetConvoyNPC(sceneId, nMonsterId, 1)
				nHaveMonster = nHaveMonster + 1
			end
			if GetName(sceneId, nMonsterId)  == "Ki«u Phong"  then
				AddGroupLeader(sceneId, x200022_g_GroupId, nMonsterId)
				nQiaofenId = nMonsterId
				nHaveMonster = nHaveMonster + 1
			end
		end
		SetIntervalDistOfGroupMember(sceneId, x200022_g_GroupId, 1)
		
		RefixPosOfGroupMember(sceneId,x200022_g_GroupId,nQiaofenId)
		--µÃµ½»¤ËÍÑ²ÂßÂ·Ïß
		SetPatrolId(sceneId, nQiaofenId, x200022_g_PatrolPathIndex)
		
		--x200022_g_Step = 4
		SetMissionByIndex(sceneId,selfId,misIndex,2,4)
		
	elseif nStep == 4   then
	
		-- ¼ÆÊ±Æ÷Ã¿´Î¼ì²âÍæ¼ÒÊÇ²»ÊÇÓÐÈÎÎñÊ§°ÜµÄÇé¿ö³öÏÖ£¬
		for i=1, x200022_g_PlayerNum  do
			-- Èç¹ûÍæ¼ÒÀë¿ªÁË³¡¾°£¬¾ÍÈÎÎñÊ§°Ü
			if x200022_g_PlayerId[i] ~= -1   then
				if LuaFnIsObjValid(sceneId, x200022_g_PlayerId[i])==0  or
					 LuaFnIsCanDoScriptLogic(sceneId, x200022_g_PlayerId[i]) == 0  then
					x200022_g_PlayerId[i] = -1
				end	
			end
		end
		
		-- ÔÚÕâÀïÌí¼ÓÂåÑô¾ÓÃñµÄÅÝÅÝ£¬Ôö¼ÓÆø·Õ
		
		
		-- ¼ì²â»¤ËÍµÄÍê³ÉÌõ¼þ£¬ÇÇ·å ×ßµ½ÁËÄ¿±êµã
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "Ki«u Phong"  then
				-- ÅÐ¶ÏÇÇ·åÊÇ²»ÊÇ×ßµ½ÁË
				local targetX, targetZ = GetWorldPos(sceneId, nMonsterId)
				local x, z = GetLastPatrolPoint(sceneId, x200022_g_PatrolPathIndex)
				local distance = floor(sqrt((targetX-x)*(targetX-x)+(targetZ-z)*(targetZ-z)))
				local Pos_X,Pos_Y=GetWorldPos(sceneId,selfId)
				
				if floor(sqrt((targetX-Pos_X)*(targetX-Pos_X)+(targetZ-Pos_Y)*(targetZ-Pos_Y)))>=20 then
					BeginEvent(sceneId)
						AddText(sceneId, "Hµ t¯ng Ki«u Phong th¤t bÕi, khoäng cách quá xa!")
					EndEvent()
					DispatchMissionTips(sceneId, selfId)
					for kk=0, nMonsterNum-1 do
						local nMonsterId1 = GetMonsterObjID(sceneId,kk)
						if GetName(sceneId, nMonsterId1)  == "Ki«u Phong" or  GetName(sceneId, nMonsterId1)  == "A Châu" then
							--SetCharacterDieTime(sceneId,nMonsterId1,100)
							LuaFnDeleteMonster(sceneId, nMonsterId1)
						end
					end
					local MstId=LuaFnCreateMonster(sceneId,1,278,127,3,0,113001)
					SetCharacterName(sceneId,MstId,"Ki«u Phong")
					local MstId=LuaFnCreateMonster(sceneId,5,279,127,3,0,113001)
					SetCharacterName(sceneId,MstId,"A Châu")
					local misIndex = GetMissionIndexByID(sceneId, selfId, x200022_g_MissionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖÐµÄÐòÁÐºÅ
					SetMissionByIndex(sceneId, selfId, misIndex, 0, 2)
					SetMissionByIndex(sceneId, selfId, misIndex, 2, 100)
					return
				end
				
				if distance<=2   then
					--x200022_g_Step = 5
					SetMissionByIndex(sceneId,selfId,misIndex,2,5)
					-- Í¨ÖªËùÓÐÈË£¬»¤ËÍ³É¹¦
					for i=1, x200022_g_PlayerNum   do
						if x200022_g_PlayerId[i]~=-1   then
							local misIndex = GetMissionIndexByID(sceneId, x200022_g_PlayerId[i], x200022_g_MissionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖÐµÄÐòÁÐºÅ
							SetMissionByIndex(sceneId, x200022_g_PlayerId[i], misIndex, 0, 1)
							BeginEvent(sceneId)
								AddText(sceneId, "Hµ t¯ng Ki«u Phong thành công")
							EndEvent()
							DispatchMissionTips(sceneId, x200022_g_PlayerId[i])
						end
					end
				end
			end
		end
		
	elseif nStep == 5  then
		--º°»°¾çÇé
		CallScriptFunction((200060), "Paopao",sceneId, "T× Kinh Lôi", "LÕc Dß½ng", "#{JQ_PaoPao_79}") 
		--x200022_g_Step = 6
		SetMissionByIndex(sceneId,selfId,misIndex,2,6)
		x200022_g_StartTime = LuaFnGetCurrentTime()
		
	elseif nStep == 6  then
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 3   then
			CallScriptFunction((200060), "Paopao",sceneId, "Ki«u Phong", "LÕc Dß½ng", "#{JQ_PaoPao_80}")
			--x200022_g_Step = 7
			SetMissionByIndex(sceneId,selfId,misIndex,2,7)
			x200022_g_StartTime = LuaFnGetCurrentTime()
		end
		
	elseif nStep == 7  then
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 3   then
			CallScriptFunction((200060), "Paopao",sceneId, "T× Kinh Lôi", "LÕc Dß½ng", "#{JQ_PaoPao_81}")
			--x200022_g_Step = 8
			SetMissionByIndex(sceneId,selfId,misIndex,2,8)
			x200022_g_StartTime = LuaFnGetCurrentTime()
		end
		
	elseif nStep == 8  then
		if LuaFnGetCurrentTime()-x200022_g_StartTime > 5   then
		
			-- ¼ÆÊ±Æ÷Í£Ö¹£¬Çå³ýËùÓÐµÄÈ«¾Ö±äÁ¿
			--StopTimer(sceneId, x200022_g_SceneTimerIndex)
			
			--x200022_g_SceneTimerIndex = -1
			--x200022_g_Step = 0
			SetMissionByIndex(sceneId,selfId,misIndex,2,100)
			x200022_g_StartTime = 0
			x200022_g_PlayerId[1] = -1
			x200022_g_PlayerId[2] = -1
			x200022_g_PlayerId[3] = -1
			x200022_g_PlayerId[4] = -1
			x200022_g_PlayerId[5] = -1
			x200022_g_PlayerId[6] = -1
			x200022_g_PlayerNum = 0
			x200022_g_StartTime = 0
			
			--É¾³ýÇÇ·åºÍ°¢Öì
		  local nMonsterNum = GetMonsterCount(sceneId)
			local ii = 0
			local bHaveMonster = 0
			for ii=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,ii)
				if GetName(sceneId, nMonsterId)  == "Ki«u Phong"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
				end
				
				if GetName(sceneId, nMonsterId)  == "A Châu"  then
					LuaFnDeleteMonster(sceneId, nMonsterId)
				end
			end
		end	
		
		local MstId=LuaFnCreateMonster(sceneId,1,278,127,3,0,113001)
		SetCharacterName(sceneId,MstId,"Ki«u Phong")
		local MstId=LuaFnCreateMonster(sceneId,5,279,127,3,0,113001)
		SetCharacterName(sceneId,MstId,"A Châu")

	end
	
end

--**********************************
--·ÅÆú
--**********************************
function x200022_OnAbandon( sceneId, selfId )
  --½«»¤ËÍnpcË²ÒÆ»ØÔ­À´Î»ÖÃ
  DelMission(sceneId, selfId, x200022_g_MissionId)
  
end

--**********************************
--¼ÌÐø
--**********************************
function x200022_OnContinue( sceneId, selfId, targetId )
	
	if x200022_CheckSubmit(sceneId, selfId) ~= 1 then 
		BeginEvent(sceneId)
			strText = "Các hÕ ðã hoàn thành nhi®m vø chßa?"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x200022_g_Name)
		AddText(sceneId,x200022_g_MissionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,x200022_g_MissionTarget)
		AddText(sceneId,"#{M_SHOUHUO}#r")
		AddMoneyBonus( sceneId, x200022_g_MoneyBonus )
		for i, item in x200022_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	
	DispatchMissionContinueInfo(sceneId, selfId, targetId, x200022_g_ScriptId, x200022_g_MissionId)

end

--**********************************
--¼ì²âÊÇ·ñ¿ÉÒÔÌá½»
--**********************************
function x200022_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID(sceneId, selfId, x200022_g_MissionId)--µÃµ½ÈÎÎñÔÚ20¸öÈÎÎñÖÐµÄÐòÁÐºÅ
	local bComplete = GetMissionParam(sceneId, selfId, misIndex, 0)	
	if bComplete == 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--Ìá½»
--**********************************
function x200022_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )
	-- ¼ì²âÊÇ²»ÊÇÂú×ãÍê³ÉÈÎÎñµÄÌõ¼þ
	if x200022_CheckSubmit(sceneId, selfId) ~= 1 then 
		return
	end
	BeginAddItem(sceneId)
	for i, item in x200022_g_RadioItemBonus do
		if item.id == selectRadioId then
			AddItem( sceneId,item.id, item.num )
		end
	end
	ret = EndAddItem(sceneId,selfId)
	--Ìí¼ÓÈÎÎñ½±Àø
	if ret < 1 then
		--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
		BeginEvent(sceneId)
			strText = "Nhi®m vø th¤t bÕi!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	AddItemListToHuman(sceneId,selfId)

	AddMoney(sceneId,selfId,x200022_g_MoneyBonus );
	LuaFnAddExp( sceneId, selfId,x200022_g_exp)
	
	DelMission( sceneId,selfId, x200022_g_MissionId )
	--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
	MissionCom( sceneId,selfId, x200022_g_MissionId )
	Msg2Player(  sceneId, selfId,"#YNhi®m vø hoàn thành#W: Dù vÕn ngß¶i, ta vçn cÑ tiªn",MSG2PLAYER_PARA )

end

function x200022_OnHumanDie(sceneId, selfId)

end

--**********************************
--¶¨Ê±ÊÂ¼þ
--**********************************
function x200022_OnTimer(sceneId,selfId)--,missionIndex)
	
end


