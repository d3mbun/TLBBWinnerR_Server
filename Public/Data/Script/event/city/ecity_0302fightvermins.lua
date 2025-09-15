--��������
--ɱ��

--************************************************************************
--MisDescBegin

--�ű���
x600014_g_ScriptId = 600014

--�����
x600014_g_MissionId = 1107

--Ŀ��NPC
x600014_g_Name = "H�i H�a"

--��ng c�p nhi�m v� 
x600014_g_MissionLevel = 10000

--�������
x600014_g_MissionKind = 50

--��ng����ngTinhӢ����
x600014_g_IfMissionElite = 0

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--��ɫMission����� �i�m�
x600014_g_IsMissionOkFail			=0	--0 Nhi�m v� ho�n th�nh���
x600014_g_MissionParam_SubId		=1	--1 ������ű��Ŵ��λ��
x600014_g_MissionParam_KillNumber	=2	--2 C�n ����to� � ��������
x600014_g_Param_sceneid				=3	--3��: ��ǰ��������to� � ������
x600014_g_Param_teamid				=4	--4��: �Ӹ�������ʱ��to� � �����
x600014_g_Param_killcount			=5	--5��: ɱ�������to� � ����
x600014_g_Param_time				=6	--6��: ��ɸ�������ʱ��(��λ:  gi�y)
--6��: δ��
--7��: δ��

--ѭ������to� � ��������,�����������to� � ����
x600014_g_MissionRound = 42
--**********************************������ng��̬****************************

--�����ı�����
x600014_g_MissionName = "Nhi�m v� k� thu�t"
x600014_g_MissionInfo = ""													--��������
x600014_g_MissionTarget = "    Di�t b� Я Qu�i trong Th� C�c."						--M�c ti�u nhi�m v�
x600014_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"						--δHo�n t�t nhi�m v�to� � npc�Ի�
x600014_g_SubmitInfo = "    S� t�nh ti�n tri�n nh� th� n�o r�i?"								--���δ�ύʱto� � npc�Ի�
x600014_g_MissionComplete = "    L�m t�t l�m, r�t t�t r�t t�t. "						--Ho�n t�t nhi�m v�npc˵��to� � ��

x600014_g_Parameter_Kill_CountRandom = { { id = 300475, numNeeded = 2, numKilled = 5 } }

-- ͨ��Th�nh ph� ����ű�
x600014_g_CityMissionScript = 600001
x600014_g_SciTechScript = 600012

--������

--MisDescEnd
--************************************************************************

--��������
x600014_g_CopySceneName = "Th� vi�n"

x600014_g_CopySceneType = FUBEN_KILLVERMIN	--��������,����T�i ScriptGlobal.lua����

x600014_g_CopySceneMap = "shuge.nav"
x600014_g_Exit = "shuge_area.ini"
x600014_g_LimitMembers = 1				--���Խ�����to� � ��С��������
x600014_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x600014_g_LimitTotalHoldTime = 360		--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x600014_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,Nhi�m v� ho�n th�nh
x600014_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x600014_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x600014_g_DeadTrans = 0					--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x600014_g_Fuben_X = 50					--���븱��to� � λ��X
x600014_g_Fuben_Z = 10					--���븱��to� � λ��Z
x600014_g_Back_X = 73					--Դ����λ��X
x600014_g_Back_Z = 93					--Դ����λ��Z

--**********************************
--������ں���
--**********************************
function x600014_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600014_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) > 0 then
		local bDone = x600014_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600014_g_SubmitInfo
		else
			strText = x600014_g_ContinueInfo
		end

		if bDone == 0 then												--����δ���
			if GetNumText() == 1 then
				x600014_AcceptEnterCopyScene( sceneId, selfId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, x600014_g_MissionName )
					x600014_AskEnterCopyScene( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			end
		elseif bDone == 1 then											--�����Ѿ����
			BeginEvent( sceneId )
				AddText( sceneId, x600014_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600014_g_ScriptId, x600014_g_MissionId, bDone )
		end
	--Th�a m�n�����������
	elseif x600014_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600014_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600014_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x600014_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600014_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) > 0 then
		AddNumText( sceneId, x600014_g_ScriptId, x600014_g_MissionName,3,-1 )
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x600014_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600014_g_SciTechScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x600014_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) <= 0 then	-- û������
		return
	end

	local missionInfo
	if random(2) == 1 then
		missionInfo = format( "    Trong th� vi�n th߶ng xuy�n nh�n th�y m�t, ch�ng to�n c�n n�t s�ch trong kho, phi�n ng߽i qu�t d�n cho s�ch" )
	else
		missionInfo = format( "    Gay r�i, th� vi�n l�i ph�t hi�n ra m�t, ng߽i gi�p ta x� l� �i nh�" )
	end

	AddText( sceneId, missionInfo )
	AddText( sceneId, "#{M_MUBIAO}" )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600014_g_MissionParam_KillNumber )
	AddText( sceneId, "    Trong th� c�c gi�t ch�t  " .. KillNumber .. "  Я Qu�i" )
	AddNumText( sceneId, x600014_g_ScriptId, "�i v�o th� vi�n", 10, 1 )
end

--**********************************
--Ti�p th�
--**********************************
function x600014_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) == 0 then					--û������ſ���������
		if GetLevel( sceneId, selfId ) < 40 then
			CallScriptFunction( x600014_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh�ng �� ��ng c�p" )
			return
		end

		--������������б�
		AddMission( sceneId, selfId, x600014_g_MissionId, x600014_g_ScriptId, 1, 0, 0 )	-- kill��area��item
		if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600014_g_SciTechScript, "OnAccept", sceneId, selfId, targetId, x600014_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
		local KillNumber = 9 + random(11)
		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_MissionParam_KillNumber, KillNumber )

		--��ʾ���ݸ�������Ѿ�Ti�p th�������
		BeginEvent( sceneId )
			AddText( sceneId, x600014_g_MissionName )
			x600014_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rC�c h� �� nh�n " .. x600014_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--���ͬ����븱��
--**********************************
function x600014_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) > 0 then					--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600014_g_Param_sceneid )

		--changed by xindefeng
		--�����»���:����ʲôԭ��,T�i δHo�n t�t nhi�m v���������,���������������to� � �������κθĶ�(����th�t b�i����ɾ������),������ٽ��ø���ʱ,��Ҫ���³�ʼ����������,���Ҹ�����Ҫ���´���
		--if copysceneid >= 0 then												--��������
		--	--���Լ����͵���������
		--	if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
		--		NewWorld( sceneId, selfId, copysceneid, x600014_g_Fuben_X, x600014_g_Fuben_Z )
		--		return
		--	end
		--end

		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_IsMissionOkFail, 0 )	--������to� � ��0����������Ϊ0,��ʾδ���to� � ����
		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_Param_sceneid, -1 )		--������to� � ��3����������Ϊ-1, ���ڱ��渱��to� � ������
		
		--add by xindefeng
		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_Param_killcount, 0 )	--������to� � ��5����������Ϊ0, �������ɱ����������Ϊ0
		
		x600014_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--��������
--**********************************
function x600014_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600014_g_CopySceneMap )						--��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600014_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600014_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600014_g_CopySceneType )				--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600014_g_ScriptId )					--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--ɱ��Bossto� � ����

	local PlayerMaxLevel = GetHumanMaxLevelLimit() --modi:lby20071127
	
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Area( sceneId, x600014_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "shuge_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x600014_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x600014_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
	end

end

--**********************************
--�����¼�
--**********************************
function x600014_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼�to� � ״̬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600014_g_MissionId ) > 0 then			--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600014_g_MissionId )

		--������to� � ��2����������Ϊ����to� � ������
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600014_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600014_g_Fuben_X, x600014_g_Fuben_Z )
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x600014_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) == 0 then				--������븱��ǰɾ������,��ֱ�Ӵ��ͻ�
		x600014_NotifyFailTips( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )
		return
	end

	local monstercount = GetMonsterCount( sceneId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600014_g_MissionParam_KillNumber )
  
	-- �ɵ�����to� � ��
	if monstercount > KillNumber then
		local i
		for i = 0, monstercount - KillNumber - 1 do
			LuaFnDeleteMonster( sceneId, GetMonsterObjID( sceneId, i ) )
		end
	end
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x600014_OnHumanDie( sceneId, selfId, killerId )
	if x600014_g_DeadTrans == 1 then														--������C�n ��ǿ���߳�����
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )
	end
end

--**********************************
--����
--**********************************
function x600014_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600014_g_Param_sceneid )

	--ɾ����������б��ж�Ӧto� � ����
	CallScriptFunction( x600014_g_SciTechScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		x600014_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )
	end
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x600014_BackToCity( sceneId, selfId )
	--changed by xindefeng
	--�����»���:��x600014_AcceptEnterCopyScene()
	--CallScriptFunction( x600014_g_CityMissionScript, "BackToCity", sceneId, selfId, x600014_g_MissionId, x600014_g_Back_X, x600014_g_Back_Z )
	
	--�����޸�x600014_g_CityMissionScriptto� � x600014_BackToCity()����,������� gi�y�to� � �ű�̫��,���Ա��ű�������
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--ȡ �i�m���븱��ʱ��T�i ������
	CallScriptFunction( 400900, "TransferFunc", sceneId, selfId, oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )	--����
end

--**********************************
--����
--**********************************
function x600014_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600014_g_MissionName )
		AddText( sceneId, x600014_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600014_g_ScriptId, x600014_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600014_CheckSubmit( sceneId, selfId, selectRadioId )
	--�ж�������ng���Ѿ����
	local ret = CallScriptFunction( x600014_g_SciTechScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--�ύ
--**********************************
function x600014_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600014_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x600014_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600014_g_SciTechScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x600014_OnKillObject( sceneId, selfId, objdataId, objId )
	if IsHaveMission( sceneId, selfId, x600014_g_MissionId ) == 0 then
		return
	end

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600014_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--��������Ѿ����óɹر�״̬,��ɱ����Ч
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600014_g_MissionId )
	local killedbossnumber = GetMissionParam( sceneId, selfId, misIndex, x600014_g_Param_killcount )	--ɱ��Bossto� � ����

	killedbossnumber = killedbossnumber + 1
	SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_Param_killcount, killedbossnumber )	--����ɱ��Bossto� � ����

	local KillNumber = GetMissionParam( sceneId, selfId, misIndex, x600014_g_MissionParam_KillNumber )

	local strText = format( "�� gi�t ch�t: %d/%d", killedbossnumber, KillNumber )
	x600014_NotifyFailTips( sceneId, selfId, strText )

	if killedbossnumber >= KillNumber then
		--����Nhi�m v� ho�n th�nh��־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		strText = format( "Ho�n t�t nhi�m v�, trong v�ng %d gi�y n�a s� ��a �n ch� ra v�o", x600014_g_CloseTick * x600014_g_TickTime )
		x600014_NotifyFailTips( sceneId, selfId, strText )

		--������to� � ��1����������Ϊ1,��ʾ���to� � ����
		SetMissionByIndex( sceneId, selfId, misIndex, x600014_g_IsMissionOkFail, 1 )	--������������
	end
end

--**********************************
--���������¼�
--**********************************
function x600014_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x600014_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x600014_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--������to� � ��ʱ�����ô���

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C�n �뿪
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600014_g_CloseTick then										--����ʱ�䵽,��Ҷ���ȥ��
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--ȡ �i�m������ڳ�����

			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x600014_g_Back_X, x600014_g_Back_Z )
				end
			end
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a", ( x600014_g_CloseTick - leaveTickCount ) * x600014_g_TickTime )

			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600014_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	end
end

function x600014_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
