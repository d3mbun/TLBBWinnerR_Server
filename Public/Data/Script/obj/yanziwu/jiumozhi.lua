-- 402248
-- C�u Ma Tr�

x402248_TBL = 
{
IDX_TimerPrepare = 1,
IDX_TimerInterval = 2,
IDX_FlagCombat = 1,
BossSkill = 1002,
PrepareTime = 60000,
SkillInterval = 60000,
BossBuff = 9999
}

function x402248_OnDie( sceneId, selfId, killerId )
	--LuaFnNpcChat(sceneId, selfId, 0, "ʮ�����,үү������ngm�t ���ú�!")
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)

	local szNpcName = GetName(sceneId, selfId)

	if szNpcName == "Di�u B� �߽ng"  then
		LuaFnNpcChat(sceneId, selfId, 0, "18 N�m sau, ta v�n l� m�t h�o h�n.")
		x402248_ClearMonsterByName(sceneId, "T�n Gia Tr�i Th�n Binh")
		x402248_TipAllHuman( sceneId, "Di�u B� �߽ng �� t� n�n" )
		
	elseif szNpcName == "T� M� L�m"  then
		LuaFnNpcChat(sceneId, selfId, 0, "18 N�m sau, ta v�n l� m�t h�o h�n.")
		x402248_ClearMonsterByName(sceneId, "Ю t� ph�i Thanh Th�nh")
		x402248_TipAllHuman( sceneId, "T� M� L�m �� t� n�n" )
		
	elseif szNpcName == "C�u Ma Tr�"  then
		LuaFnNpcChat(sceneId, selfId, 0, "Ha Ha Ha....Kh�ng ng� tr�n �i l�i c� ng߶i m�nh nh� ng߽i, c�c ng߽i s� kh�ng tho�t kh�i Y�n t� � ���c ��u")
		x402248_ClearMonsterByName(sceneId, "Th� Ph�n L�c Ma")
		x402248_ClearMonsterByName(sceneId, "M�c Nh�n Kh�i L�i")
		x402248_TipAllHuman( sceneId, "C�u Ma Tr� �� t� n�n" )	
		
		if LuaFnGetCopySceneData_Param(sceneId, 8) == 12  then
			LuaFnSetCopySceneData_Param(sceneId, 8, 14)
			-- ��������to� � ���m�t c�i����ɹ�����th�t b�ito� � ��ʾ
		end
	end
	
	-- ���Ŀǰto� � ��������

end

function x402248_OnHeartBeat(sceneId, selfId, nTick)
--	if(1==LuaFnIsCharacterLiving(sceneId, selfId)) then
--		if(1==MonsterAI_GetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat)) then
--			--Countdown TimerPrepare
--			local TimePrepare = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare)
--			if(0<TimePrepare) then
--				TimePrepare = TimePrepare - nTick;
--				MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, TimePrepare)
--			else
--				local TimeInterval = MonsterAI_GetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval)
--				if(0<TimeInterval) then
--					--Countdown TimerInterval
--					TimeInterval = TimeInterval - nTick;
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, TimeInterval)
--				else
--					MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, x402248_TBL.SkillInterval)
--					local nTarget = LuaFnGetTargetObjID(sceneId, selfId)
--					if(-1~=nTarget) then
--						local posX, posZ = GetWorldPos(sceneId,nTarget)
--						local fDir = 0.0
--						LuaFnUnitUseSkill(sceneId, selfId, x402248_TBL.BossSkill, nTarget, posX, posZ, fDir)			
--						LuaFnNpcChat(sceneId, selfId, 0, "�����������to� � �����!")
--					end
--				end
--			end
--		end
--	end
end

function x402248_OnInit(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)
end

function x402248_OnKillCharacter(sceneId, selfId, targetId)
--	if(-1~=targetId) then
--		local szTarget = GetName(sceneId, targetId)		
--		LuaFnNpcChat(sceneId, selfId, 0, szTarget .. ",�����������ʮ��,����үүҲֻ����·m�t ��!")
--	end
end

function x402248_OnEnterCombat(sceneId, selfId, enmeyId)
--	if(0<x402248_TBL.BossBuff) then
--		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402248_TBL.BossBuff, 0)
--	end
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, x402248_TBL.PrepareTime)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 1)
end

function x402248_OnLeaveCombat(sceneId, selfId)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerPrepare, 0)
	MonsterAI_SetIntParamByIndex(sceneId, selfId, x402248_TBL.IDX_TimerInterval, 0)
	MonsterAI_SetBoolParamByIndex(sceneId, selfId, x402248_TBL.IDX_FlagCombat, 0)
end


--**********************************
-- ���������to� � XX��
--**********************************
function x402248_ClearMonsterByName(sceneId, szName)
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId)== szName  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
end

--**********************************
--��ʾ���и��������
--**********************************
function x402248_TipAllHuman( sceneId, Str )
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
