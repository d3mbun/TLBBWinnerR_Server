--Thß½ng S½n BOSSÈºË¢ÐÂ½Å±¾

--½Å±¾ºÅ
x810001_g_ScriptId	= 810001

--Ë¢ÐÂ·½Ê½Îª:
--¼¤»î´Ë½Å±¾Ê±¶¨µ giây¢³ö10cáiBOSS....

--C¥n Ë¢³ötoÕ ðµ BOSStoÕ ðµ Êý¾Ý±í....
--BOSStoÕ ðµ MonsterID²»ÄÜÖØ¸´....TÕi ³¡¾°ÖÐÍ¬mµt Ê±¿ÌÍ¬mµt cáiMonsterIDtoÕ ðµ ¹ÖÖ»ÄÜ´æTÕi mµt cái....ÓÐÁË¾Í²»Ë¢ÁË....
x810001_g_BossData = {

	-- ID						BOSStoÕ ðµ  monster id
	-- PosX					×ø±ê
	-- PosY					×ø±ê
	-- BaseAI				BOSStoÕ ðµ BaseAI....
	-- ExtAIScript	BOSStoÕ ðµ À©Õ¹AI....
	-- ScriptID			BOSStoÕ ðµ ½Å±¾ID....
	-- NeedCreate		¶¼Ìî1....

	{ ID=9110, PosX=40,  PosY=263, BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9111, PosX=51,  PosY=223, BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9112, PosX=98,  PosY=246, BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9113, PosX=108, PosY=285, BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9114, PosX=264, PosY=263, BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9115, PosX=145, PosY=59,  BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9116, PosX=130, PosY=50,  BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9117, PosX=37,  PosY=47,  BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9118, PosX=195, PosY=271, BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
	{ ID=9119, PosX=211, PosY=144, BaseAI=29, ExtAIScript=254, ScriptID=-1, NeedCreate=1 },
}


--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x810001_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--M· ra »î¶¯....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSSÊý¾Ý±íÎª¿Õ¾Í²»Ë¢BOSS....
	if getn(x810001_g_BossData) < 1 then
		return
	end

	--ÖØÖÃBossÖØ½¨×´Ì¬....
	for _, Data in x810001_g_BossData do
		Data.NeedCreate = 1
	end

	--±éÀú³¡¾°ÖÐËùÓÐtoÕ ðµ ¹Ö....¸üÐÂBOSSÖØ½¨×´Ì¬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810001_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--ÖØ½¨C¥n ÖØ½¨toÕ ðµ BOSS....
	for _, BossData in x810001_g_BossData do
		if BossData.NeedCreate == 1 then
			local MonsterID = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MonsterID, "Thß½ng S½n cu°ng ð°")
		end
	end

end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x810001_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯Ðúng·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--ÓÃÓÚ¸üÐÂÖØ½¨×´Ì¬....
--**********************************
function x810001_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810001_g_BossData do
		if DataID == Data.ID then
			x810001_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
