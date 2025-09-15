-- BOSSÈº Ë¢Ð¡¹ÖÍ¨ÓÃAI
--×?­ 2007-09-30
--¹¦ÄÜ: Ã¿¸ôÖ¸¶¨Ê±¼äTÕi ×Ô¼º¸½½üË¢³öÐ¡¹Ö....

--(²ß»®Ê¹ÓÃ±¾AIC¥n Ïò±¾ÈË½»ÄÉÊ¹ÓÃ·Ñ4000Ôª±¦,³ÌÐòÔ±4ÕÛ)


--Ë¢Ð¡¹ÖtoÕ ðµ Êý¾Ý±í....
x810100_CreateChildTbl = {

	-- MotherID			Ê¹ÓÃ±¾AItoÕ ðµ BOSStoÕ ðµ MonsterID....
	-- CreateTime		´ËBOSS¶à¾ giây¢mµt ´ÎÐ¡¹Ö....
	-- CreateNum		´ËBOSSÃ¿´ÎË¢¶àÉÙcáiÐ¡¹Ö....
	-- AllChildNum	´ËBOSS×î¶àË¢³ö¶àÉÙcáiÐ¡¹Ö....
	-- ChildID			´ËBOSSÒªË¢toÕ ðµ Ð¡¹ÖtoÕ ðµ ID....
	-- BaseAI				Ð¡¹ÖtoÕ ðµ BaseAI....
	-- ExtAIScript	Ð¡¹ÖtoÕ ðµ À©Õ¹AI....
	-- ScriptID			Ð¡¹ÖtoÕ ðµ ½Å±¾ID....
	-- LifeTime			Ð¡¹ÖtoÕ ðµ ÊÙÃü(ºÁ giây)....Ð¡ÓÚµÈÓÚ0ÎªÎÞÏÞ....

	--¾ÙÀý:
	--ÏëÈ giây®¹íÌ½×Ó(962)Ë¢ÔÆÄ¸Ê¯ÈË(1082)....Ã¿5 giâyË¢mµt cái....Ã¿´ÎË¢2cáimµt ¹²Ë¢5cái....ÔÆÄ¸Ê¯ÈËÊÙÃüÎª10 giây....
	--C¥n ¸øË®¹íÌ½×Ó¹ÒÉÏ±¾AI½Å±¾....È»ºóTÕi ÏÂ±ßÅäÖÃmµt ÌõË¢¹ÖtoÕ ðµ Êý¾Ý....
	--{ MotherID=962, CreateTime=5*1000, CreateNum=2, AllChildNum=5, ChildID=1082, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=10*1000 }


	--ÐþÎäµºBOSSÈº ¶¾¸òÍõË¢Ð¡¹Ö....
	{ MotherID=9100, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9150, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	--ÐþÎäµºBOSSÈº Ð¡BOSSË¢Ð¡¹Ö....
	{ MotherID=9101, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9151, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9102, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9152, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9103, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9153, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9104, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9154, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9105, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9155, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9106, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9156, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9107, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9157, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9108, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9158, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9109, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9159, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },


	--Võ DiBOSSÈº  Thiên Niên Bång PháchË¢Ð¡¹Ö....
	{ MotherID=9120, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9140, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	--Võ DiBOSSÈº  Ð¡BOSSË¢Ð¡¹Ö....
	{ MotherID=9121, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9141, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9122, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9142, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9123, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9143, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9124, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9144, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9125, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9145, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9126, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9146, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9127, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9147, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9128, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9148, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9129, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9149, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },

}

--Ð¡¹ÖË¢ÐÂ ði¬mÁÐ±í....
--×ø±êÎªÏà¶ÔÓÚ±¾BOSStoÕ ðµ Ïà¶Ô×ø±ê....¿ÉÒÔÌîÐ´ÈÎÒâÊýÄ¿cái×ø±ê....Ë¢Ð¡¹ÖÊ±´ÓÖÐËæ»úÑ¡È¡mµt cáiÊ¹ÓÃ....
x810100_MonsterPosTbl = {

	{ x = 0,  y = 0  },

}

x810100_IDX_UpdateMonsterTime = 1
x810100_IDX_NeedCreateMonsterNum = 2
x810100_IDX_EnableCreateMonster = 1
x810100_IDX_CombatFlag = 2

function x810100_OnDie( sceneId, selfId, killerId )

	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 0)
end

function x810100_OnHeartBeat(sceneId, selfId, nTick)

	--¼ì²âÐúng²»ÐúngËÀÁË....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--¼ì²âÐúng·ñ²»TÕi Cuµc chiªn ×´Ì¬....
	if 0 == MonsterAI_GetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag) then
		return
	end

	--¼ì²âÐúng·ñÒÑ¾­²»C¥n ÔÙË¢Ð¡¹ÖÁË....
	if 0 == MonsterAI_GetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster) then
		return
	end

	--»¹Î´µ½Ë¢Ð¡¹ÖtoÕ ðµ Ê±¼ä....
	local UpdateTime = MonsterAI_GetIntParamByIndex(sceneId, selfId, x810100_IDX_UpdateMonsterTime)
	if nTick < UpdateTime then
		UpdateTime = UpdateTime - nTick
		MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, UpdateTime)
		return
	end


	--µ½ÁËË¢Ð¡¹ÖtoÕ ðµ Ê±¼äÁË....Ë¢Ð¡¹Ö....

	--Ñ°ÕÒ±¾BOSStoÕ ðµ Ë¢¹ÖÊý¾Ý±í....
	local BossDataID = GetMonsterDataID( sceneId, selfId )
	local bFind = 0
	local CreateData
	for _, Data in x810100_CreateChildTbl do
		if BossDataID == Data.MotherID then
			CreateData = Data
			bFind = 1
			break
		end
	end

	local CreateNum = 0
	local NeedCreateNum = MonsterAI_GetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, 0)

	if NeedCreateNum <= CreateData.CreateNum then
		CreateNum = NeedCreateNum
		MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster, 0)
	else
		CreateNum = CreateData.CreateNum
	end
	LuaFnNpcChat(sceneId, selfId, 0, "Không biªt s¯ng chªt, thü hÕ cüa ta có th¬ xØ lý ngß½i!")
	for i = 1, CreateNum do
		x810100_CreateChildMonster( sceneId, selfId, CreateData )
	end

	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, NeedCreateNum-CreateNum)
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, CreateData.CreateTime)

end

function x810100_OnInit(sceneId, selfId)

	--Ñ°ÕÒ±¾BOSStoÕ ðµ Ë¢¹ÖÊý¾Ý±í....
	local BossDataID = GetMonsterDataID( sceneId, selfId )
	local bFind = 0
	local CreateData
	for _, Data in x810100_CreateChildTbl do
		if BossDataID == Data.MotherID then
			CreateData = Data
			bFind = 1
			break
		end
	end

	--³õÊ¼»¯AI²ÎÊý....
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 0)

	if bFind == 1 then
		if CreateData.CreateTime>0 and CreateData.CreateNum>0 and CreateData.AllChildNum>0 then
			MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, CreateData.CreateTime)
			MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, CreateData.AllChildNum)
			MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster, 1)
		end
	end

end

function x810100_OnKillCharacter(sceneId, selfId, targetId)

	--LuaFnNpcChat(sceneId, selfId, 0, "ÎÒÉ±ËÀmµt cáiÈËÁË....È¥ËÀ°ÉÄã....")

	--if(-1~=targetId) then
		--local szTarget = GetName(sceneId, targetId)
		--local str = format( "ÎÒÉ±ËÀmµt cáiÈËÁË....%s(É±ËÀtoÕ ðµ Íæ¼ÒÃû),ÎÒÔç¿´Äã²»Ë¬ÁË....", szTarget )
		--LuaFnNpcChat(sceneId, selfId, 0, str)
	--end

end

function x810100_OnEnterCombat(sceneId, selfId, enmeyId)
	--LuaFnNpcChat(sceneId, selfId, 0, "ÎÒ½øÈëCuµc chiªn ÁË....ÄãÃÇµÈ×ÅÈ¥ÕÒÃÏÆÅ°É....")
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 1)
end

function x810100_OnLeaveCombat(sceneId, selfId)
	--LuaFnNpcChat(sceneId, selfId, 0, "ÎÒÀë¿ªCuµc chiªn ÁË....´ó¼ÒÏÈÍ£ÏÂ³Ô ði¬mÒ©°É....")
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 0)
end

--´´½¨mµt cáiÐ¡¹Ö....
function x810100_CreateChildMonster(sceneId, selfId, CreateData)

	local PosX, PosY = LuaFnGetWorldPos( sceneId, selfId )
	local PosNum = getn( x810100_MonsterPosTbl )
	local PosIndex = random( PosNum )
	PosX = PosX + x810100_MonsterPosTbl[PosIndex].x
	PosY = PosY + x810100_MonsterPosTbl[PosIndex].y

	MonId = LuaFnCreateMonster(sceneId, CreateData.ChildID, PosX, PosY, CreateData.BaseAI, CreateData.ExtAIScript, CreateData.ScriptID )
	if CreateData.LifeTime > 0 then
		SetCharacterDieTime(sceneId, MonId, CreateData.LifeTime )
	end

end
