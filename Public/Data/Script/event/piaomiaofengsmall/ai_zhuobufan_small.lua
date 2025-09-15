--Æ®Ãì·å ×¿²»·²AI

--A	¡¾½£Ã¢¡¿Ê¹ÓÃÒ»¸ö¿Õ¼¼ÄÜ....ÔÙ°´ÃÅÅÉsetdamage....
--B ¡¾½ð¼×¡¿¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....
--C ¡¾Ã÷¾µ¡¿¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....
--D	¡¾ÅóÓÑ¡¿²»Æ½µÀÈËËÀÊ±¸ø×Ô¼ºÓÃÒ»¸ö¼ÓbuffµÄ¼¼ÄÜ....


--È«³Ì¶¼´øÓÐÃâÒßÖÆ¶¨¼¼ÄÜµÄbuff....
--Ã¿¸ô40Ãë¶Ôµ±Ç°µÐÈËÊ¹ÓÃA....
--Ã¿¸ô30ÃëÂÖÁ÷Ê¹ÓÃBC....
--ËÀÍöÊ±Ñ°ÕÒ²»Æ½µÀÈË....ÉèÖÃÆäÐèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
--ËÀÍöÊ±·¢ÏÖ²»Æ½µÀÈËÒÑ¾­ËÀÁË....Ôò´´½¨ÁíÒ»¸öBOSS....


--½Å±¾ºÅ
x402280_g_ScriptId	= 402280

--¸±±¾Âß¼­½Å±¾ºÅ....
x402280_g_FuBenScriptId = 402276

--ÃâÒßBuff....
x402280_Buff_MianYi1	= 10472	--ÃâÒßÒ»Ð©¸ºÃæÐ§¹û....
x402280_Buff_MianYi2	= 10471	--ÃâÒßÆÕÍ¨ÒþÉí....

--¼¼ÄÜ....
x402280_SkillID_A		= 1033
x402280_SkillID_B		= 1034
x402280_SkillID_C		= 1035
x402280_SkillID_D		= 1036

x402280_BuffID_D1		= 10253
x402280_BuffID_D2		= 10254

x402280_SkillCD_A		=	40000
x402280_SkillCD_BC	=	30000

x402280_SkillA_Damage =	--¼òµ¥°æçÎç¿·åÊ¹ÓÃÉËº¦½µµÍÁËµÄ°æ±¾....
{
	[0] = 23815/4,
	[1] = 16570/4,
	[2] = 18820/4,
	[3] = 11978/4,
	[4] = 13170/4,
	[5] = 15610/4,
	[6] = 14496/4,
	[7] = 15240/4,
	[8] = 14070/4,
	[9] = 99999
}

x402280_BrotherName = "B¤t bình ðÕo nhân"	-- huynh ð®toÕ ðµ Tên....


--AI Index....
x402280_IDX_KuangBaoMode	= 1	--¿ñ±©Ä£Ê½....0Î´¿ñ±© 1ÐèÒª½øÈë¿ñ±© 2ÒÑ¾­½øÈë¿ñ±©
x402280_IDX_CurSkillIndex	= 2	--½ÓÏÂÀ´¸ÃÊ¹ÓÃBCÖÐµÄÄÄ¸ö¼¼ÄÜ....
x402280_IDX_CD_SkillA			= 3	--A¼¼ÄÜµÄCD....
x402280_IDX_CD_SkillBC		= 4	--BC¼¼ÄÜµÄCD....

x402280_IDX_CombatFlag 		= 1	--ÊÇ·ñ´¦ÓÚÕ½¶·×´Ì¬µÄ±êÖ¾....


--**********************************
--³õÊ¼»¯....
--**********************************
function x402280_OnInit(sceneId, selfId)
	--ÖØÖÃAI....
	x402280_ResetMyAI( sceneId, selfId )
end


--**********************************
--ÐÄÌø....
--**********************************
function x402280_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÊÇ²»ÊÇËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÊÇ·ñ²»ÔÚÕ½¶·×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex( sceneId, selfId, x402280_IDX_CombatFlag ) then
		return
	end

	--A¼¼ÄÜÐÄÌø....
	if 1 == x402280_TickSkillA( sceneId, selfId, nTick ) then
		return
	end

	--BC¼¼ÄÜÐÄÌø....
	if 1 == x402280_TickSkillBC( sceneId, selfId, nTick ) then
		return
	end

	--D¼¼ÄÜÐÄÌø....
	if 1 == x402280_TickSkillD( sceneId, selfId, nTick ) then
		return
	end

end


--**********************************
--½øÈëÕ½¶·....
--**********************************
function x402280_OnEnterCombat(sceneId, selfId, enmeyId)

	--¼Ó³õÊ¼buff....
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402280_Buff_MianYi1, 0 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402280_Buff_MianYi2, 0 )

	--ÖØÖÃAI....
	x402280_ResetMyAI( sceneId, selfId )

	--ÉèÖÃ½øÈëÕ½¶·×´Ì¬....
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402280_IDX_CombatFlag, 1 )

end


--**********************************
--Àë¿ªÕ½¶·....
--**********************************
function x402280_OnLeaveCombat(sceneId, selfId)

	--ÖØÖÃAI....
	x402280_ResetMyAI( sceneId, selfId )

	--±éÀú³¡¾°ÀïËùÓÐµÄ¹Ö....Ñ°ÕÒÐÖµÜ²¢½«ÆäÉ¾³ý....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x402280_BrotherName == GetName( sceneId, MonsterId ) then
			LuaFnDeleteMonster( sceneId, MonsterId )
		end
	end

	--É¾³ý×Ô¼º....
	LuaFnDeleteMonster( sceneId, selfId )

end


--**********************************
--É±ËÀµÐÈË....
--**********************************
function x402280_OnKillCharacter(sceneId, selfId, targetId)

end


--**********************************
--ËÀÍö....
--**********************************
function x402280_OnDie( sceneId, selfId, killerId )
	--ÖØÖÃAI....
	x402280_ResetMyAI( sceneId, selfId )

	local bFind = 0

	--±éÀú³¡¾°ÀïËùÓÐµÄ¹Ö....Ñ°ÕÒÐÖµÜ....¸øÆäÉèÖÃÐèÒªÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if x402280_BrotherName == GetName( sceneId, MonsterId ) and LuaFnIsCharacterLiving(sceneId, MonsterId) == 1 then
			bFind = 1
			MonsterAI_SetIntParamByIndex( sceneId, MonsterId, x402280_IDX_KuangBaoMode, 1 )
		end
	end

	--Èç¹ûÃ»ÕÒµ½ÐÖµÜÔòËµÃ÷¾ÍÊ£×Ô¼ºÒ»¸öÁË....
	if 0 == bFind then
		--´´½¨¶ËÄ¾Ôª....
		local MstId = CallScriptFunction( x402280_g_FuBenScriptId, "CreateBOSS", sceneId, "DuanMuYuan_BOSS", -1, -1 )
		LuaFnNpcChat(sceneId, MstId, 0, "#{PMF_20080521_18}")
		--ÉèÖÃÒÑ¾­ÌôÕ½¹ýË«×Ó....
		CallScriptFunction( x402280_g_FuBenScriptId, "SetBossBattleFlag", sceneId, "ShuangZi", 2 )
	end

end


--**********************************
--ÖØÖÃAI....
--**********************************
function x402280_ResetMyAI( sceneId, selfId )

	--ÖØÖÃ²ÎÊý....
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_KuangBaoMode, 0 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CurSkillIndex, 1 )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CD_SkillA, x402280_SkillCD_A )
	MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CD_SkillBC, x402280_SkillCD_BC )
	MonsterAI_SetBoolParamByIndex( sceneId, selfId, x402280_IDX_CombatFlag, 0 )

end


--**********************************
--A¼¼ÄÜÐÄÌø....
--**********************************
function x402280_TickSkillA( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402280_IDX_CD_SkillA )
	if cd > nTick then
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CD_SkillA, cd-nTick )
		return 0
	else
		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CD_SkillA, x402280_SkillCD_A-(nTick-cd) )
		return x402280_UseSkillA( sceneId, selfId )
	end

end


--**********************************
--BC¼¼ÄÜÐÄÌø....
--**********************************
function x402280_TickSkillBC( sceneId, selfId, nTick )

	--¸üÐÂ¼¼ÄÜCD....
	local cd = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402280_IDX_CD_SkillBC )
	if cd > nTick then

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CD_SkillBC, cd-nTick )
		return 0

	else

		MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CD_SkillBC, x402280_SkillCD_BC-(nTick-cd) )

		local CurSkill = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402280_IDX_CurSkillIndex )
		if CurSkill == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CurSkillIndex, 2 )
			return x402280_UseSkillB( sceneId, selfId )
		elseif CurSkill == 2 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_CurSkillIndex, 1 )
			return x402280_UseSkillC( sceneId, selfId )
		end

	end

end


--**********************************
--D¼¼ÄÜÐÄÌø....
--**********************************
function x402280_TickSkillD( sceneId, selfId, nTick )

	--»ñµÃµ±Ç°¿ñ±©mode....
	local CurMode = MonsterAI_GetIntParamByIndex( sceneId, selfId, x402280_IDX_KuangBaoMode )

	if CurMode == 0 or CurMode == 2 then

		--Èç¹û²»ÐèÒª¿ñ±©»òÕßÒÑ¾­¿ñ±©ÁËÔò·µ»Ø....
		return 0

	elseif CurMode == 1 then

		--Èç¹ûÐèÒª¿ñ±©ÔòÊ¹ÓÃ¿ñ±©¼¼ÄÜ....
		local ret =  x402280_UseSkillD( sceneId, selfId )
		if ret == 1 then
			MonsterAI_SetIntParamByIndex( sceneId, selfId, x402280_IDX_KuangBaoMode, 2 )
			return 1
		else
			return 0
		end

	end

end


--**********************************
--Ê¹ÓÃA¼¼ÄÜ....
--**********************************
function x402280_UseSkillA( sceneId, selfId )

	--»ñµÃµ±Ç°µÐÈË....
	local enemyId = GetMonsterCurEnemy( sceneId, selfId )
	if enemyId <= 0 then
		return 0
	end
	if GetCharacterType( sceneId, enemyId ) == 3 then
		enemyId = GetPetCreator( sceneId, enemyId )
	end

	--Ê¹ÓÃÒ»¸ö¿Õ¼¼ÄÜ....
	local x,z = GetWorldPos( sceneId, enemyId )
	LuaFnUnitUseSkill( sceneId, selfId, x402280_SkillID_A, enemyId, x, z, 0, 1 )

	--°´ÃÅÅÉ¿ÛÑª....
	local MenPai = GetMenPai( sceneId, enemyId )
	local Damage = x402280_SkillA_Damage[ MenPai ]
	IncreaseHp( sceneId, enemyId, -Damage )

	--º°»°....
	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_18}"..GetName(sceneId,enemyId).."#{PMF_20080530_19}" )

	return 1

end


--**********************************
--Ê¹ÓÃB¼¼ÄÜ....
--**********************************
function x402280_UseSkillB( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402280_SkillID_B, selfId, x, z, 0, 1 )
	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_20}" )
	return 1

end


--**********************************
--Ê¹ÓÃC¼¼ÄÜ....
--**********************************
function x402280_UseSkillC( sceneId, selfId )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402280_SkillID_C, selfId, x, z, 0, 1 )
	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_21}" )
	return 1

end


--**********************************
--Ê¹ÓÃD¼¼ÄÜ....
--**********************************
function x402280_UseSkillD( sceneId, selfId )

	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402280_BuffID_D1, 5000 )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x402280_BuffID_D2, 5000 )

	local x,z = GetWorldPos( sceneId, selfId )
	LuaFnUnitUseSkill( sceneId, selfId, x402280_SkillID_D, selfId, x, z, 0, 1 )

	MonsterTalk( sceneId, -1, "", "#{PMF_20080530_22}" )
	return 1

end
