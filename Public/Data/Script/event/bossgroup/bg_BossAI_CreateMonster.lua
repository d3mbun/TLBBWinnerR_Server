-- BOSSȺ ˢС��ͨ��AI
--�?� 2007-09-30
--����: ÿ��ָ��ʱ��T�i �Լ�����ˢ��С��....

--(�߻�ʹ�ñ�AIC�n ���˽���ʹ�÷�4000Ԫ��,����Ա4��)


--ˢС��to� � ���ݱ�....
x810100_CreateChildTbl = {

	-- MotherID			ʹ�ñ�AIto� � BOSSto� � MonsterID....
	-- CreateTime		��BOSS�� gi�y�m�t ��С��....
	-- CreateNum		��BOSSÿ��ˢ����c�iС��....
	-- AllChildNum	��BOSS���ˢ������c�iС��....
	-- ChildID			��BOSSҪˢto� � С��to� � ID....
	-- BaseAI				С��to� � BaseAI....
	-- ExtAIScript	С��to� � ��չAI....
	-- ScriptID			С��to� � �ű�ID....
	-- LifeTime			С��to� � ����(�� gi�y)....С�ڵ���0Ϊ����....

	--����:
	--��� gi�y���̽��(962)ˢ��ĸʯ��(1082)....ÿ5 gi�yˢm�t c�i....ÿ��ˢ2c�im�t ��ˢ5c�i....��ĸʯ������Ϊ10 gi�y....
	--C�n ��ˮ��̽�ӹ��ϱ�AI�ű�....Ȼ��T�i �±�����m�t ��ˢ��to� � ����....
	--{ MotherID=962, CreateTime=5*1000, CreateNum=2, AllChildNum=5, ChildID=1082, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=10*1000 }


	--���䵺BOSSȺ ������ˢС��....
	{ MotherID=9100, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9150, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	--���䵺BOSSȺ СBOSSˢС��....
	{ MotherID=9101, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9151, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9102, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9152, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9103, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9153, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9104, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9154, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9105, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9155, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9106, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9156, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9107, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9157, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9108, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9158, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	{ MotherID=9109, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9159, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },


	--V� DiBOSSȺ  Thi�n Ni�n B�ng Ph�chˢС��....
	{ MotherID=9120, CreateTime=60000, CreateNum=6, AllChildNum=900, ChildID=9140, BaseAI=0, ExtAIScript=-1, ScriptID=-1, LifeTime=45000 },
	--V� DiBOSSȺ  СBOSSˢС��....
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

--С��ˢ�� �i�m�б�....
--����Ϊ����ڱ�BOSSto� � �������....������д������Ŀc�i����....ˢС��ʱ�������ѡȡm�t c�iʹ��....
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

	--�����ng����ng����....
	if LuaFnIsCharacterLiving(sceneId, selfId) ~= 1 then
		return
	end

	--�����ng��T�i Cu�c chi�n ״̬....
	if 0 == MonsterAI_GetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag) then
		return
	end

	--�����ng���Ѿ���C�n ��ˢС����....
	if 0 == MonsterAI_GetBoolParamByIndex(sceneId, selfId, x810100_IDX_EnableCreateMonster) then
		return
	end

	--��δ��ˢС��to� � ʱ��....
	local UpdateTime = MonsterAI_GetIntParamByIndex(sceneId, selfId, x810100_IDX_UpdateMonsterTime)
	if nTick < UpdateTime then
		UpdateTime = UpdateTime - nTick
		MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, UpdateTime)
		return
	end


	--����ˢС��to� � ʱ����....ˢС��....

	--Ѱ�ұ�BOSSto� � ˢ�����ݱ�....
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
	LuaFnNpcChat(sceneId, selfId, 0, "Kh�ng bi�t s�ng ch�t, th� h� c�a ta c� th� x� l� ng߽i!")
	for i = 1, CreateNum do
		x810100_CreateChildMonster( sceneId, selfId, CreateData )
	end

	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_NeedCreateMonsterNum, NeedCreateNum-CreateNum)
	MonsterAI_SetIntParamByIndex(sceneId, selfId,  x810100_IDX_UpdateMonsterTime, CreateData.CreateTime)

end

function x810100_OnInit(sceneId, selfId)

	--Ѱ�ұ�BOSSto� � ˢ�����ݱ�....
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

	--��ʼ��AI����....
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

	--LuaFnNpcChat(sceneId, selfId, 0, "��ɱ��m�t c�i����....ȥ������....")

	--if(-1~=targetId) then
		--local szTarget = GetName(sceneId, targetId)
		--local str = format( "��ɱ��m�t c�i����....%s(ɱ��to� � �����),���翴�㲻ˬ��....", szTarget )
		--LuaFnNpcChat(sceneId, selfId, 0, str)
	--end

end

function x810100_OnEnterCombat(sceneId, selfId, enmeyId)
	--LuaFnNpcChat(sceneId, selfId, 0, "�ҽ���Cu�c chi�n ��....���ǵ���ȥ�����Ű�....")
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 1)
end

function x810100_OnLeaveCombat(sceneId, selfId)
	--LuaFnNpcChat(sceneId, selfId, 0, "���뿪Cu�c chi�n ��....�����ͣ�³� �i�mҩ��....")
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x810100_IDX_CombatFlag, 0)
end

--����m�t c�iС��....
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
