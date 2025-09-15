--Th�nh Th� S�n BOSSȺˢ�½ű�

--�ű���
x810110_g_ScriptId	= 810110

--ˢ�·�ʽΪ:
--����˽ű�ʱ��� gi�y���10c�iBOSS....

--C�n ˢ��to� � BOSSto� � ���ݱ�....
--BOSSto� � MonsterID�����ظ�....T�i ������ͬm�t ʱ��ͬm�t c�iMonsterIDto� � ��ֻ�ܴ�T�i m�t c�i....���˾Ͳ�ˢ��....
x810110_g_BossData = {

	-- ID						BOSSto� �  monster id
	-- PosX					����
	-- PosY					����
	-- BaseAI				BOSSto� � BaseAI....
	-- ExtAIScript	BOSSto� � ��չAI....
	-- ScriptID			BOSSto� � �ű�ID....
	-- NeedCreate		����1....

	{ ID=11353, PosX=172,  PosY=34, BaseAI=22, ExtAIScript=259, ScriptID=501000, NeedCreate=1 },
}


--**********************************
--�ű���ں���
--**********************************
function x810110_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--M� ra �....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	--BOSS���ݱ�Ϊ�վͲ�ˢBOSS....
	if getn(x810110_g_BossData) < 1 then
		return
	end

	--����Boss�ؽ�״̬....
	for _, Data in x810110_g_BossData do
		Data.NeedCreate = 1
	end

	--��������������to� � ��....����BOSS�ؽ�״̬....
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		local MosDataID = GetMonsterDataID( sceneId, MonsterId )
		x810110_CurSceneHaveMonster( sceneId, MosDataID )
	end

	--�ؽ�C�n �ؽ�to� � BOSS....
	for _, BossData in x810110_g_BossData do
		if BossData.NeedCreate == 1 then
			local MonsterID = LuaFnCreateMonster(sceneId, BossData.ID, BossData.PosX, BossData.PosY, BossData.BaseAI, BossData.ExtAIScript, BossData.ScriptID )
			SetCharacterTitle(sceneId, MonsterID, "Thi�n ni�n th�nh th�")
		end
	end

end

--**********************************
--��������
--**********************************
function x810110_OnTimer( sceneId, actId, uTime )

	--�����ng�����
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end

--**********************************
--���ڸ����ؽ�״̬....
--**********************************
function x810110_CurSceneHaveMonster( sceneId, DataID )

	for i, Data in x810110_g_BossData do
		if DataID == Data.ID then
			x810110_g_BossData[i].NeedCreate = 0
			break
		end
	end

end
