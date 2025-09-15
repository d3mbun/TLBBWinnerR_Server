-- 402254
-- M� Dung Ph�c

x402254_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9998
}

-- �����Կ�ʼ �i�m��to� � ����
x402254_g_bWangyuyanSpeak = 24
x402254_g_DuanAndWangFlag = 29

--**********************************
-- �Լ�����
--**********************************
function x402254_OnDie( sceneId, selfId, killerId )
	local nData = GetMonsterDataID( sceneId, selfId )
	local nLevelMonster = GetLevel(sceneId, selfId)
	if nLevelMonster >= 80 and nLevelMonster <=89 then --nData == 9437 or  nData == 39437 then
		local nHuman = LuaFnGetCopyScene_HumanCount( sceneId )
		for i = 0, nHuman - 1 do
			local playerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			AddMonsterDropItem(sceneId, selfId, playerId, 30505816)
			local nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, 30505804)
			end
			nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, random(20310113,20310114))
			end
		end
	elseif  nLevelMonster >= 90 and nLevelMonster <=99 then--nData == 9438 or  nData == 39438 then
		local nHuman = LuaFnGetCopyScene_HumanCount( sceneId )
		for i = 0, nHuman - 1 do
			local playerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			AddMonsterDropItem(sceneId, selfId, playerId, 30505817)
			local nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, 30505805)
			end
			nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, random(20310113,20310114))
			end
		end	
	elseif  nLevelMonster >= 100 then--nData == 9439 or  nData == 39439 then
		local nHuman = LuaFnGetCopyScene_HumanCount( sceneId )
		for i = 0, nHuman - 1 do
			local playerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			AddMonsterDropItem(sceneId, selfId, playerId, 30505908)
			local nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, 30505806)
			end
			nRan = random(100)
			if nRan <= 20 then
				AddMonsterDropItem(sceneId, selfId, playerId, random(20310113,20310114))
			end
		end	
	end
	
	LuaFnNpcChat(sceneId, selfId, 0, "C�c ng߽i h�y ch� ��, ng�y n�y m߶i n�m sau ta s� t�m c�c ng߽i lo m� s�ng h�t nh�ng ng�y c�n l�i �i ha..ha..ha..")

	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- ֹͣ �i�m��
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
	
	-- ɾ���o�n D����̵���
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "V߽ng Ng� Y�n")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "�o�n D�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thi�n Th�ch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph�m Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ch� V�n L�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C� Яc Th�nh")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph� T� Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu �an Th�n")
	
	x402254_TipAllHuman( sceneId, "Kh�ng ���c ch�y" )
	
	--LuaFnDeleteMonster(sceneId, selfId)
	
	-- �����繫��
--#w���ӳ�����#P��#{_BOSS0}����,ȴ��ʹ����T�i ������Ұ�ש��ʹ���ӡ����ƹ�����ʯ�ҡ�����������,���ڽ�#{_BOSS0}�� �i�m���,��Ķ���,m�t �ٹ����������롣
--#w���ӳ�����#P���������#{_BOSS0}��ս����,����������ѧto� � ����,��ʱ�书����,#{_BOSS0}�ֵв���,ֻ �i�m��Ķ���,���������ݡ�
--#w���ӳ�����#PT�i ���������ǲ��,�˳���,T�i S� d�ng M�n thi�n qu� h�i,���ȳ²ֵ���ʮ����֮��,�� �i�m#{_BOSS0}ֻ �i�mʹ�õ���ʮ�߼���֮زز�ˡ�
	
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--������˶��m�t �ȡ�ӳ�to� � ID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	local str = ""
	local ran = random(3)
	if ran == 1  then
		str = format("#W#{_INFOUSR%s}#cff99cc c�ng #{_BOSS0} quy�t chi�n �c li�t trong y�n t� �, #{_BOSS0} th�y m�nh s�c y�u kh�ng �ch l�i �i th�, quay �u b� ch�y.", GetName(sceneId,nLeaderId))
	elseif ran == 2  then
		str = format("#W#{_INFOUSR%s}#cff99cc chi�n �u v�i #{_BOSS0} trong Y�n t� � #{_BOSS0} �ang th�ng th� b�ng t� �i �ng lo�t tung �m kh�, k� th� ho�n s� tung m�nh ch�y m�t h�t.", GetName(sceneId,nLeaderId))
	else
		str = format("#W#{_INFOUSR%s}#cff99cc c�ng t� �i x�ng v�o Y�n T� � khi�u chi�n v�i #{_BOSS0} sau nhi�u hi�p quy�t �u �� gi�nh th�ng l�i ho�n to�n", GetName(sceneId,nLeaderId))
	end
	
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)

	
end

--**********************************
-- ����
--**********************************
function x402254_OnHeartBeat(sceneId, selfId, nTick)

	-- ��M� Dung Ph�cѪ������50%to� � ʱ��,�� ������  �i�m��,ͬʱ�o�n D���
	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
			--PrintNum(1)
			-- ��� M� Dung Ph�c Ѫ���ڶ���,����ô����
			if LuaFnGetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak) == 0  then
				if GetHp(sceneId, selfId)*2 <= GetMaxHp(sceneId, selfId) then
					LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 1)
				end
			end
		else
			--PrintNum(2)
		end
	end

--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, x402254_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402254_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "�����������to� � �����!")
--					end
--				end
--			end
--		end
--	end
end

--**********************************
-- ��ʼ��
--**********************************
function x402254_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)
end

--**********************************
-- ɱ�����
--**********************************
function x402254_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. ",�����������ʮ��,����үүҲֻ����·m�t ��!")
--	end
end

--**********************************
-- ����Cu�c chi�n 
--**********************************
function x402254_OnEnterCombat(sceneId, selfId, enmeyId)
	if(0<x402254_TBL.BossBuff) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402254_TBL.BossBuff, 0)
	end
	
	-- ����Cu�c chi�n ״̬,
	LuaFnNpcChat(sceneId, selfId, 0, "C�c ng߽i d�m x�ng v�o ��y v�y th� h�m nay l� ng�y gi� c�a c�c ng߽i, n�i ��y s� l� m� ch�n c�a c�c ng߽i")
	
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, x402254_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 1)
	
	CallScriptFunction((200060), "Paopao",sceneId, "�o�n D�", "Y�n T� �", "еt nhi�n ta c�m th�y c� g� kh�c l�, kh�ng bi�t c� chuy�n g� x�y ra")
	CallScriptFunction((200060), "Paopao",sceneId, "V߽ng Ng� Y�n", "Y�n T� �", "Mu�i c�m nh�n ���c c� ng߶i l� �ang � ��y")

end

--**********************************
-- ����ս��
--**********************************
function x402254_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402254_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402254_TBL.IDX_FlagCombat, 0)

	-- ɾ���o�n D����̵���
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "V߽ng Ng� Y�n")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "�o�n D�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ba Thi�n Th�ch")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph�m Hoa")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ch� V�n L�")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "C� Яc Th�nh")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Ph� T� Quy")
	CallScriptFunction((401040), "ClearMonsterByName",sceneId, "Chu �an Th�n")

	-- ����T�i ������������ЩNpc
	CallScriptFunction((401040), "CreateMonster_11",sceneId)

	-- ֹͣ �i�m��
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_bWangyuyanSpeak, 0)
	LuaFnSetCopySceneData_Param(sceneId, x402254_g_DuanAndWangFlag, 0)
end

--**********************************
--��ʾ���и��������
--**********************************
function x402254_TipAllHuman( sceneId, Str )
	--  ��t ���c������ͷto� � ������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end
