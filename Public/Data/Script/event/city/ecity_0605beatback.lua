-- ����ս
--MisDescBegin
-- �ű���
x600044_g_ScriptId = 600044

--�����
x600044_g_MissionId = 1109

--M�c ti�u nhi�m v�npc
x600044_g_Name = "V� ��i Uy"

--�������
x600044_g_MissionKind = 50

--��ng c�p nhi�m v� 
x600044_g_MissionLevel = 10000

--��ng����ngTinhӢ����
x600044_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
x600044_g_IsMissionOkFail			= 0									--0 Nhi�m v� ho�n th�nh���[ֵ���ܱ�]
x600044_g_MissionParam_SubId		= 1									--1 ������ű��Ŵ��λ��[ֵ���ܱ�]

--������ng��̬**************************************************************

--���������m�t λ�����洢��� �i�m��to� � �ű���

--�����ı�����
x600044_g_MissionName = "Nhi�m v� qu�c ph�ng"
x600044_g_MissionInfo = "    Nhi�m v� qu�c ph�ng"									--��������
x600044_g_MissionTarget = "    Nhi�m v� c�a c�c h� l� gi�t ch�t %n. "						--M�c ti�u nhi�m v�
x600044_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"					--δHo�n t�t nhi�m v�to� � npc�Ի�
x600044_g_SubmitInfo = "    S� t�nh ti�n tri�n nh� th� n�o r�i?"							--���δ�ύʱto� � npc�Ի�
x600044_g_MissionComplete = "    L�m t�t l�m, r�t t�t r�t t�t. "					--Ho�n t�t nhi�m v�npc˵��to� � ��

x600044_g_StrForePart = 4

x600044_g_MissionRound = 79

x600044_g_Parameter_Kill_AllRandom = { { id = 4, numNeeded = 5, numKilled = 6 } }

-- ͨ��Th�nh ph� ����ű�
x600044_g_CityMissionScript = 600001
x600044_g_MilitaryScript = 600030

--������

--MisDescEnd

x600044_g_MonsterOffset = 43											-- Suppose to 43, ����ڼ��� Monster to� � ƫ����

x600044_g_MissionParam_MonsterId = x600044_g_StrForePart
x600044_g_MissionParam_MonsterNeeded = x600044_g_StrForePart + 1
x600044_g_MissionParam_MonsterKilled = x600044_g_StrForePart + 2

--**********************************
--������ں���
--**********************************
function x600044_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x600044_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600044_g_MissionId ) > 0 then
		--������������to� � ��Ϣ
		local bDone = x600044_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600044_g_SubmitInfo
		else
			strText = x600044_g_ContinueInfo
		end

		--������������to� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x600044_g_MissionName )
			AddText( sceneId, strText )
		EndEvent( )
		DispatchMissionDemandInfo( sceneId, selfId, targetId, x600044_g_ScriptId, x600044_g_MissionId, bDone )
	--Th�a m�n�����������
	elseif x600044_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600044_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1 then
			x600044_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x600044_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600044_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600044_g_MissionId ) > 0 then
		AddNumText( sceneId, x600044_g_ScriptId, x600044_g_MissionName,3,-1 )
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x600044_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600044_g_MilitaryScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--Ti�p th�
--**********************************
function x600044_OnAccept( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600044_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	local myLevel = GetLevel( sceneId, selfId )

	if GetLevel( sceneId, selfId ) < 40 then
		CallScriptFunction( x600044_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh�ng �� ��ng c�p" )
		return
	end

	--������������б�
	AddMission( sceneId, selfId, x600044_g_MissionId, x600044_g_ScriptId, 1, 0, 0 )	-- kill��area��item
	if IsHaveMission( sceneId, selfId, x600044_g_MissionId ) <= 0 then
		return
	end

	CallScriptFunction( x600044_g_MilitaryScript, "OnAccept", sceneId, selfId, targetId, x600044_g_ScriptId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600044_g_MissionId )
	local nMonsterId, strMonsterName, strMonsterSceneDesc = LuaFnGetLevelMatchingMonster( x600044_g_MonsterOffset, myLevel )

	local count = floor( myLevel/10 ) * 5 + 5
	SetMissionByIndex( sceneId, selfId, misIndex, x600044_g_MissionParam_MonsterId, nMonsterId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600044_g_MissionParam_MonsterNeeded, count )

	strMonsterSceneDesc = gsub( strMonsterSceneDesc, "��ch", "" )

	--��ʾ���ݸ�������Ѿ�Ti�p th�������
	BeginEvent( sceneId )
		local missionInfo
		missionInfo = format( "    L�c m�i x�y d�ng th�nh th�, lu�n g�p ph�i %s c�a %s x�m l��c, l�c �� ch�ng t�i d�n �t, th� l�c y�u �t, ch� c� th� nh�n b�n %s l�ng h�nh. #r B�y gi�, %s, ch�ng t�i �� c� �y �� l�c l��ng! �i %s gi�t %d t�n %s, h�y ��nh 1 tr�n th�t �p m�t!",
				strMonsterSceneDesc, strMonsterName, strMonsterName, GetName( sceneId, selfId ),
				strMonsterSceneDesc, count, strMonsterName )

		AddText( sceneId, missionInfo )
		AddText( sceneId, "    C�c h� �� nh�n nhi�m v�: " .. x600044_g_MissionName )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--����
--**********************************
function x600044_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	CallScriptFunction( x600044_g_MilitaryScript, "OnAbandon", sceneId, selfId )
end

--**********************************
--����
--**********************************
function x600044_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600044_g_MissionName )
		AddText( sceneId, x600044_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600044_g_ScriptId, x600044_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600044_CheckSubmit( sceneId, selfId )
	local ret = CallScriptFunction( x600044_g_MilitaryScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--�ύ
--**********************************
function x600044_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600044_g_Name then			--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x600044_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600044_g_MilitaryScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x600044_OnKillObject( sceneId, selfId, objdataId, objId )	--������˼: �����š����objId�������λ�úš�����objId
	local allOwnersCount = GetMonsterOwnerCount( sceneId, objId )		--ȡ �i�mC�i n�y ��������ӵ�з���Ȩto� � ����
	local curOwner, misIndex
	local nNpcId, strNpcName, nNeeded, nKilled
	local MonsterName = GetName( sceneId, objId )

	for i = 0, allOwnersCount - 1 do
		curOwner = GetMonsterOwnerID( sceneId, objId, i )				--ȡ �i�mӵ�з���Ȩto� � ��to� � objId
		if IsHaveMission( sceneId, curOwner, x600044_g_MissionId ) > 0 and
		   GetScriptIDByMissionID( sceneId, curOwner, x600044_g_MissionId ) == x600044_g_ScriptId then		--���C�i n�y ��ӵ������
			misIndex = GetMissionIndexByID( sceneId, curOwner, x600044_g_MissionId )
			nNpcId = GetMissionParam( sceneId, curOwner, misIndex, x600044_g_MissionParam_MonsterId )
			_, strNpcName = GetNpcInfoByNpcId( sceneId, nNpcId )

			if MonsterName == strNpcName then
				nNeeded = GetMissionParam( sceneId, curOwner, misIndex, x600044_g_MissionParam_MonsterNeeded )
				nKilled = GetMissionParam( sceneId, curOwner, misIndex, x600044_g_MissionParam_MonsterKilled )
				nKilled = nKilled + 1

				SetMissionByIndex( sceneId, curOwner, misIndex, x600044_g_MissionParam_MonsterKilled, nKilled )
				CallScriptFunction( x600044_g_CityMissionScript, "NotifyFailTips", sceneId, curOwner,
					format( "�� gi�t ch�t %s: %d/%d", MonsterName, nKilled, nNeeded ) )

				if nNeeded <= nKilled then
					SetMissionByIndex( sceneId, curOwner, misIndex, x600044_g_IsMissionOkFail, 1 )
					ResetMissionEvent( sceneId, curOwner, x600044_g_MissionId, 0 )	-- ���ٹ���ɱ��
				end
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x600044_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x600044_OnItemChanged( sceneId, selfId, itemdataId )
end
