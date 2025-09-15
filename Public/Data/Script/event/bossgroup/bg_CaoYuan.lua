--Th�o Nguy�n BOSSȺˢ�½ű�

--�ű���
x810003_g_ScriptId	= 810003

--ˢ�·�ʽΪ:
--����˽ű�ʱ��� gi�y���10c�iBOSS....

--C�n ˢ��to� � BOSSto� � ���ݱ�....
--BOSSto� � MonsterID�����ظ�....T�i ������ͬm�t ʱ��ͬm�t c�iMonsterIDto� � ��ֻ�ܴ�T�i m�t c�i....���˾Ͳ�ˢ��....
x810003_g_BossData = {

	-- ID						BOSSto� �  monster id
	-- Title				BOSSto� � �ƺ�....
	-- PosX					����
	-- PosY					����
	-- BaseAI				BOSSto� � BaseAI....
	-- ExtAIScript	BOSSto� � ��չAI....
	-- ScriptID			BOSSto� � �ű�ID....
	-- NeedCreate		����1....

	{ ID=9130, Title="Di�u th� kh�ng kh�ng", PosX=77,  PosY=124, BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9131, Title="Di�u th� ti�u t�t", PosX=44,  PosY=72,  BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9132, Title="Di�u th� ti�u t�t", PosX=83,  PosY=66,  BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9133, Title="Di�u th� ti�u t�t", PosX=100, PosY=90,  BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9134, Title="Di�u th� ti�u t�t", PosX=58,  PosY=121, BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9135, Title="Di�u th� ti�u t�t", PosX=167, PosY=63,  BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9136, Title="Di�u th� ti�u t�t", PosX=280, PosY=284, BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9137, Title="Di�u th� ti�u t�t", PosX=64,  PosY=253, BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9138, Title="Di�u th� ti�u t�t", PosX=190, PosY=49,  BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
	{ ID=9139, Title="Di�u th� ti�u t�t", PosX=276, PosY=127, BaseAI=29, ExtAIScript=256, ScriptID=-1, NeedCreate=1 },
}


--**********************************
--�ű���ں���
--**********************************
function x810003_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--M� ra �....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSS���ݱ�Ϊ�վͲ�ˢBOSS....
	if getn(x810003_g_BossData) < 1 then
		return
	end

	--����Boss�ؽ�״̬....
	for _, Data in x810003_g_BossData do
		Data.NeedCreate = 1
	end

	--��������������to� � ��....����BOSS�ؽ�״̬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810003_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--�ؽ�C�n �ؽ�to� � BOSS....
	for _, BossData in x810003_g_BossData do
		if BossData.NeedCreate == 1 then
			MstId = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MstId, BossData.Title)
		end
	end

end

--**********************************
--��������
--**********************************
function x810003_OnTimer( sceneId, actId, uTime )

	--�����ng�����
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--���ڸ����ؽ�״̬....
--**********************************
function x810003_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810003_g_BossData do
		if DataID == Data.ID then
			x810003_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
