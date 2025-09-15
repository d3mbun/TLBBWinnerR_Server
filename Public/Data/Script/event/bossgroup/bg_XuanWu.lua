--���䵺 BOSSȺˢ�½ű�

--�ű���
x810000_g_ScriptId	= 810000

--ˢ�·�ʽΪ:
--����˽ű�ʱ��� gi�y���10c�iBOSS....

--C�n ˢ��to� � BOSSto� � ���ݱ�....
--BOSSto� � MonsterID�����ظ�....T�i ������ͬm�t ʱ��ͬm�t c�iMonsterIDto� � ��ֻ�ܴ�T�i m�t c�i....���˾Ͳ�ˢ��....
x810000_g_BossData = {

	-- ID						BOSSto� �  monster id
	-- PosX					����
	-- PosY					����
	-- BaseAI				BOSSto� � BaseAI....
	-- ExtAIScript	BOSSto� � ��չAI....
	-- ScriptID			BOSSto� � �ű�ID....
	-- NeedCreate		����1....
	
	{ ID=9100, PosX=181, PosY=38,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9101, PosX=182, PosY=66,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9102, PosX=233, PosY=37,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9103, PosX=135, PosY=75,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9104, PosX=132, PosY=278, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9105, PosX=42,  PosY=218, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9106, PosX=74,  PosY=141, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9107, PosX=268, PosY=45,  BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9108, PosX=238, PosY=261, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
	{ ID=9109, PosX=271, PosY=184, BaseAI=20, ExtAIScript=253, ScriptID=810100, NeedCreate=1 },
}


--**********************************
--�ű���ں���
--**********************************
function x810000_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--M� ra �....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSS���ݱ�Ϊ�վͲ�ˢBOSS....
	if getn(x810000_g_BossData) < 1 then
		return
	end

	--����Boss�ؽ�״̬....
	for _, Data in x810000_g_BossData do
		Data.NeedCreate = 1
	end

	--��������������to� � ��....����BOSS�ؽ�״̬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810000_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--�ؽ�C�n �ؽ�to� � BOSS....
	for _, BossData in x810000_g_BossData do
		if BossData.NeedCreate == 1 then
			local MonsterID = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MonsterID, "Huy�n V� ��o th� h� th�")
		end
	end

end

--**********************************
--��������
--**********************************
function x810000_OnTimer( sceneId, actId, uTime )

	--�����ng�����
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--���ڸ����ؽ�״̬....
--**********************************
function x810000_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810000_g_BossData do
		if DataID == Data.ID then
			x810000_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
