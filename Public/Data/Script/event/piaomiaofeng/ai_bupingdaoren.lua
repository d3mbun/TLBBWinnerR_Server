--Æ®Ãì·å ²»Æ½µÀÈËAI

--F	¡¾°µÀ×¡¿¶Ô×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ó¸ö½áÊøºó»á»Øµ÷½Å±¾µÄbuff....»Øµ÷Ê±ÈÃBOSS¸øÆäÖÜÎ§ÈË¼ÓÉËº®buff²¢º°»°....
--G ¡¾¾«Ëã¡¿¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....
--H ¡¾ÑÌ»¨¡¿¶Ô×Ô¼ºÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ¸øÍæ¼Ò¼Ó¸ö½áÊøºó»á»Øµ÷½Å±¾µÄbuff....»Øµ÷Ê±º°»°....
--I	¡¾ÅóÓÑ¡¿×¿²»·²ËÀÊ±¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....


--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜµÄbuff....
--Ã¿¸ô30Ãë¶ÔËæ»úÍæ¼ÒËæ»úÊ¹ÓÃFH....
--Ã¿¸ô45Ãë¶Ô×Ô¼ºÊ¹ÓÃG....
--ËÀÍö»òÍÑÀëÕ½¶·Ê±¸øËùÓÐÍæ¼ÒÇå³ýFHµÄbuff....
--ËÀÍöÊ±Ñ°ÕÒ²»Æ½µÀÈË....ÉèÖÃÆäÐèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
--ËÀÍöÊ±·¢ÏÖ²»Æ½µÀÈËÒÑ¾­ËÀÁË....Ôò´´½¨ÁíÒ»¸öBOSS....


--½Å±¾ºÅ
x402268_g_ScriptId	= 402268

--¸±±¾Âß¼­½Å±¾ºÅ....
x402268_g_FuBenScriptId = 402263

--ÃâÒßBuff....
x402268_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ð©¸ºÃæÐ§¹û....
x402268_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--¼¼ÄÜ....
x402268_SkillID_F		= 1037
x402268_BuffID_F1		= 10255
x402268_BuffID_F2		= 10256
x402268_SkillID_G		= 1038
x402268_SkillID_H		= 1037
x402268_BuffID_H		= 10260
x402268_SkillID_I		= 1036
x402268_BuffID_I1		= 10253
x402268_BuffID_I2		= 10254

x402268_SkillCD_FH	=	30000
x402268_SkillCD_G		=	45000


x402268_MyName			= "B¤t bình ðÕo nhân"	--×Ô¼ºtoÕ ðµ Tên....
x402268_BrotherName = "Trác B¤t Phàm"		-- huynh ð®toÕ ðµ Tên....


--AI Index....
x402268_IDX_KuangBaoMode	= 1	--¿ñ±©Ä£Ê½....0Î´¿ñ±© 1ÐèÒª½øÈë¿ñ±© 2ÒÑ¾­½øÈë¿ñ±©
x402268_IDX_CD_SkillFH		= 2	--FH¼¼ÄÜµÄCD....
x402268_IDX_CD_SkillG			= 3	--G¼¼ÄÜµÄCD....
x402268_IDX_CD_Talk				= 4	--FH¼¼ÄÜº°»°µÄCD....

x402268_IDX_CombatFlag 		= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x402268_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x402268_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x402268_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402268_IDX_CombatFlag ) then
		return
	end

	--FH¼¼ÄÜÐÄÌø....
	if 1 == x402268_TickSkillFH( sceneId, selfId, nTick ) then
		return
	end

	--G¼¼ÄÜÐÄÌø....
	if 1 == x402268_TickSkillG( sceneId, selfId, nTick ) then
		return
	end

	--I¼¼ÄÜÐÄÌø....
	if 1 == x402268_TickSkillI( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x402268_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402268_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402268_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x402268_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402268_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x402268_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x402268_ResetMyAI( sceneId, selfId )

	--±éÀú³¡¾°ÀïËùÓÐµÄ¹Ö....Ñ°ÕÒÐÖµÜ²¢½«ÆäÉ¾³ý....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x402268_BrotherName == GetName( sceneId, MonsterId ) then
			LuaFnDeleteMonster( sceneId, MonsterId )
		end
	end

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x402268_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x402268_OnDie( sceneId, selfId, killerId )

	--ÖØÖÃAI....
	x402268_ResetMyAI( sceneId, selfId )

	local bFind = 0

	--±éÀú³¡¾°ÀïËùÓÐµÄ¹Ö....Ñ°ÕÒÐÖµÜ....¸øÆäÉèÖÃÐèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x402268_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			bFind = 1
			MonsterAI_SetIntParamByIndex( sceneId, MonsterId, x402268_IDX_KuangBaoMode, 1 )
		end
	end

	--Èç¹ûÃ»ÕÒµ½ÐÖµÜÔòËµÃ÷¾ÍÊ£×Ô¼ºÒ»¸öÁË....
	if 0 == bFind then
		--´´½¨¶ËÄ¾Ôª....
		local MstId = CallScriptFunction( x402268_g_FuBenScriptId, "CreateBOSS", sceneId, "DuanMuYuan_BOSS", -1, -1 )
		LuaFnNpcChat(sceneId, MstId, 0, "#{PMF_20080521_18}")
		--ÉèÖÃÒÑ¾­ÌôÕ½¹ýË«×Ó....
		CallScriptFunction( x402268_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "ShuangZi", 2 )
	end

end


--**********************************
--ÖØÖÃAI....
--**********************************
function x402268_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_SkillFH, x402268_SkillCD_FH )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_SkillG, x402268_SkillCD_G )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_Talk, 0 )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402268_IDX_CombatFlag, 0 )

	--¸øËùÓÐÍæ¼ÒÇå³ýFHµÄbuff....
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 then
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x402268_BuffID_F1 )
			LuaFnCancelSpecificImpact( sceneId, nHumanId, x402268_BuffID_H )
		end
	end

end


--**********************************
--FH¼¼ÄÜÐÄÌø....
--**********************************
function x402268_TickSkillFH( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_SkillFH )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_SkillFH, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_SkillFH, x402268_SkillCD_FH-(nTick-cd) )

		--Ëæ»úÊ¹ÓÃFH....
		if random(100) < 50 then
			return x402268_UseSkillF( sceneId, selfId )
		else
			return x402268_UseSkillH( sceneId, selfId )
		end

	end

end


--**********************************
--G¼¼ÄÜÐÄÌø....
--**********************************
function x402268_TickSkillG( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_SkillG )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_SkillG, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_CD_SkillG, x402268_SkillCD_G-(nTick-cd) )
		return x402268_UseSkillG( sceneId, selfId )
	end

end


--**********************************
--I¼¼ÄÜÐÄÌø....
--**********************************
function x402268_TickSkillI( sceneId, selfId, nTick )

	--»ñµÃµ±Ç°¿ñ±©mode....
	local CurMode = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402268_IDX_KuangBaoMode )

	if CurMode == 0 or CurMode == 2 then

		--Èç¹û²»ÐèÒª¿ñ±©»òÕßÒÑ¾­¿ñ±©ÁËÔò·µ»Ø....
		return 0

	elseif CurMode == 1 then

		--Èç¹ûÐèÒª¿ñ±©ÔòÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
		local ret =  x402268_UseSkillI( sceneId, selfId )
		if ret == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402268_IDX_KuangBaoMode, 2 )
			return 1
		else
			return 0
		end

	end

end


--**********************************
--Ê¹ÓÃF¼¼ÄÜ....
--**********************************
function x402268_UseSkillF( sceneId, selfId )

	--¸±±¾ÖÐÓÐÐ§µÄÍæ¼ÒµÄÁÐ±í....
	local PlayerList = {}

	--½«ÓÐÐ§µÄÈË¼ÓÈëÁÐ±í....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--Ëæ»úÌôÑ¡Ò»¸öÍæ¼Ò....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerId = PlayerList[ random(numPlayer) ]

	--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402268_SkillID_F, selfId, x, z, 0, 1 )

	--¸øÍæ¼Ò¼Ó½áÊøºó»Øµ÷½Å±¾µÄbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x402268_BuffID_F1, 0 )

	return 1

end


--**********************************
--Ê¹ÓÃG¼¼ÄÜ....
--**********************************
function x402268_UseSkillG( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402268_SkillID_G, selfId, x, z, 0, 1 )
	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_01}" )
	return 1

end


--**********************************
--Ê¹ÓÃH¼¼ÄÜ....
--**********************************
function x402268_UseSkillH( sceneId, selfId )

	--¸±±¾ÖÐÓÐÐ§µÄÍæ¼ÒµÄÁÐ±í....
	local PlayerList = {}

	--½«ÓÐÐ§µÄÈË¼ÓÈëÁÐ±í....
	local numPlayer = 0
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanCount-1 do
		local nHumanId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid(sceneId, nHumanId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, nHumanId) == 1 and LuaFnIsCharacterLiving(sceneId, nHumanId) == 1 then
			PlayerList[numPlayer+1] = nHumanId
			numPlayer = numPlayer + 1
		end
	end

	--Ëæ»úÌôÑ¡Ò»¸öÍæ¼Ò....
	if numPlayer <= 0 then
		return 0
	end
	local PlayerId = PlayerList[ random(numPlayer) ]

	--¶Ô×Ô¼ºÊ¹ÓÃ¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402268_SkillID_H, selfId, x, z, 0, 1 )

	--¸øÍæ¼Ò¼Ó½áÊøºó»Øµ÷½Å±¾µÄbuff....
	LuaFnSendSpecificImpactToUnit( sceneId, PlayerId, PlayerId, PlayerId, x402268_BuffID_H, 0 )

	return 1

end


--**********************************
--Ê¹ÓÃI¼¼ÄÜ....
--**********************************
function x402268_UseSkillI( sceneId, selfId )

	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402268_BuffID_I1, 5000 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402268_BuffID_I2, 5000 )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402268_SkillID_I, selfId, x, z, 0, 1 )

	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_02}" )

	return 1

end


--**********************************
--°µÀ×ºÍÑÌ»¨µÄbuff½áÊøµÄÊ±ºò»Øµ÷±¾½Ó¿Ú....
--**********************************
function x402268_OnImpactFadeOut( sceneId, selfId, impactId )

	--Ñ°ÕÒBOSS....
	local bossId = -1
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x402268_MyName == GetName( sceneId, MonsterId ) then
			bossId = MonsterId
		end
	end

	--Ã»ÕÒµ½Ôò·µ»Ø....
	if bossId == -1 then
		return
	end

	--Èç¹ûÊÇÑÌ»¨µÄbuffÔòÈÃBOSSº°»°....
	if impactId == x402268_BuffID_H then
		MonsterTalk( sceneId, -1, "", "#{PMF_20080530_03}"..GetName( sceneId, selfId ).."#{PMF_20080530_04}" )
		return
	end

	--Èç¹ûÊÇ°µÀ×µÄbuff....ÔòÈÃBOSS¸ø¸½½üµÄÍæ¼Ò¼ÓÒ»¸öÉËº¦µÄbuff²¢º°»°....
	if impactId == x402268_BuffID_F1 then

		MonsterTalk( sceneId, -1, "", "#{PMF_20080530_03}"..GetName( sceneId, selfId ).."#{PMF_20080530_05}" )

		local x = 0
		local z = 0
		local xx = 0
		local zz = 0
		x,z = GetWorldPos( sceneId,selfId )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid(sceneId, PlayerId) == 1 and LuaFnIsCanDoScriptLogic(sceneId, PlayerId) == 1 and LuaFnIsCharacterLiving(sceneId, PlayerId) == 1 and PlayerId ~= selfId then
				xx,zz = GetWorldPos(sceneId,PlayerId)
				if (x-xx)*(x-xx) + (z-zz)*(z-zz) < 8*8 then
					LuaFnSendSpecificImpactToUnit( sceneId, bossId, bossId, PlayerId, x402268_BuffID_F2, 0 )
				end
			end
		end

		return

	end

end
