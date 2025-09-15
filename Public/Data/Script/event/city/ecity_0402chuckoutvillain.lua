--��������
--������å���

--************************************************************************
--MisDescBegin

--�ű���
x600019_g_ScriptId = 600019

--�����
x600019_g_MissionId = 1108

--Ŀ��NPC
x600019_g_Name = "M�c D�ch"

--��ng c�p nhi�m v� 
x600019_g_MissionLevel = 10000

--�������
x600019_g_MissionKind = 50

--��ng����ngTinhӢ����
x600019_g_IfMissionElite = 0

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--��ɫMission����� �i�m�
x600019_g_IsMissionOkFail			=0	--0 Nhi�m v� ho�n th�nh���
x600019_g_MissionParam_SubId		=1	--1 ������ű��Ŵ��λ��
x600019_g_MissionParam_KillNumber	=2	--2 C�n ����to� � ��������
x600019_g_Param_sceneid				=3	--3��: ��ǰ��������to� � ������
x600019_g_Param_teamid				=4	--4��: �Ӹ�������ʱ��to� � �����
x600019_g_Param_killcount			=5	--5��: ɱ�������to� � ����
x600019_g_Param_time				=6	--6��: ��ɸ�������ʱ��(��λ:  gi�y)
--6��: δ��
--7��: δ��

--ѭ������to� � ��������,�����������to� � ����
x600019_g_MissionRound = 44
--**********************************������ng��̬****************************

--�����ı�����
x600019_g_MissionName = "Nhi�m v� th߽ng nghi�p"
x600019_g_MissionInfo = ""													--��������
x600019_g_MissionTarget = "    N�i chuy�n v�i M�c D�ch, � �ng ta ��a c�c h� �i ra ch�, ph�i gi�o hu�n l� �c b� �c hi�p th߽ng nh�n trong th�nh th�. "		--M�c ti�u nhi�m v�
x600019_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"						--δHo�n t�t nhi�m v�to� � npc�Ի�
x600019_g_SubmitInfo = "    S� t�nh ti�n tri�n nh� th� n�o r�i?"								--���δ�ύʱto� � npc�Ի�
x600019_g_MissionComplete = "    L�m t�t l�m, r�t t�t r�t t�t. "						--Ho�n t�t nhi�m v�npc˵��to� � ��

x600019_g_Parameter_Kill_CountRandom = { { id = 300474, numNeeded = 2, numKilled = 5 } }

-- ͨ��Th�nh ph� ����ű�
x600019_g_CityMissionScript = 600001
x600019_g_MarketScript = 600017

--������

--MisDescEnd
--************************************************************************

x600019_g_TransScript = 400900

--��������
x600019_g_CopySceneName = "Ch� phi�n"

x600019_g_CopySceneType = FUBEN_CHUCKOUTVILLAIN	--��������,����T�i ScriptGlobal.lua����

x600019_g_CopySceneMap = "jishi.nav"
x600019_g_Exit = "jishi_area.ini"
x600019_g_TickTime = 5					--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x600019_g_LimitTotalHoldTime = 480		--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x600019_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,Nhi�m v� ho�n th�nh
x600019_g_CloseTick = 3					--�����ر�ǰ����ʱ(��λ: ����)
x600019_g_NoUserTime = 10				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x600019_g_DeadTrans = 0					--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x600019_g_Fuben_X = 42					--���븱��to� � λ��X
x600019_g_Fuben_Z = 47					--���븱��to� � λ��Z
x600019_g_Back_X = 47					--Դ����λ��X
x600019_g_Back_Z = 92					--Դ����λ��Z
x600019_g_NeedMonsterGroupID = 1		--Boss to� � ���
x600019_g_TotalNeedKillBoss=11			--C�n ɱ��Boss����

--**********************************
--������ں���
--**********************************
function x600019_OnDefaultEvent( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600019_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) > 0 then
		local bDone = x600019_CheckSubmit( sceneId, selfId )
		local strText

		if bDone == 1 then
			strText = x600019_g_SubmitInfo
		else
			strText = x600019_g_ContinueInfo
		end

		if bDone == 0 then												--����δ���
			if GetNumText() == 1 then
				x600019_AcceptEnterCopyScene( sceneId, selfId )
			else
				BeginEvent( sceneId )
					AddText( sceneId, x600019_g_MissionName )
					x600019_AskEnterCopyScene( sceneId, selfId )
				EndEvent( )
				DispatchEventList( sceneId, selfId, targetId )
			end
		elseif bDone == 1 then											--�����Ѿ����
			BeginEvent( sceneId )
				AddText( sceneId, x600019_g_MissionName )
				AddText( sceneId, strText )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x600019_g_ScriptId, x600019_g_MissionId, bDone )
		end
	--Th�a m�n�����������
	elseif x600019_CheckAccept( sceneId, selfId ) > 0 then
		local nTemp = CallScriptFunction( x600019_g_CityMissionScript, "CanDoMisToDay", sceneId, selfId )
		if nTemp == 1   then
			x600019_OnAccept( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x600019_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x600019_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) > 0 then
		AddNumText( sceneId, x600019_g_ScriptId, x600019_g_MissionName,3,-1 )
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x600019_CheckAccept( sceneId, selfId )
	local ret = CallScriptFunction( x600019_g_MarketScript, "CheckAccept", sceneId, selfId )
	return ret
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x600019_AskEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) <= 0 then	-- û������
		return
	end

	local missionInfo
	if random(2) == 1 then
		missionInfo = format( "    Th�nh ph� n�y t� tr߾c t�i nay an ninh tr�t t� r�t t�t, nh�ng g�n ��y kh�ng bi�t c� b�n l�u manh du th�c t� ��u �n ph�i tr�ng ch� v�o tay ngh� c�a c�c h� th�i" )
	else
		missionInfo = format( "    An ninh c�a ch� l� r�t quan tr�ng, c�c h� h�y �i lo vi�c n�y �i, nh�n th�y b�n l�u manh l� gi�t ch�t h�t kh�ng tha" )
	end

	AddText( sceneId, missionInfo )
	AddText( sceneId, "#{M_MUBIAO}" )
	AddText( sceneId, "    Ti�u di�t t�t c� b�n l�u manh �c b�" )
	AddNumText( sceneId, x600019_g_ScriptId, "�i v�o ch�", 10, 1 )
end

--**********************************
--Ti�p th�
--**********************************
function x600019_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) == 0 then					--û������ſ���������
		if GetLevel( sceneId, selfId ) < 40 then
			CallScriptFunction( x600019_g_CityMissionScript, "NotifyFailTips", sceneId, selfId, "Kh�ng �� ��ng c�p" )
			return
		end

		--������������б�
		AddMission( sceneId, selfId, x600019_g_MissionId, x600019_g_ScriptId, 1, 0, 0 )	-- kill��area��item
		if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) <= 0 then
			return
		end

		CallScriptFunction( x600019_g_MarketScript, "OnAccept", sceneId, selfId, targetId, x600019_g_ScriptId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600019_g_MissionId )
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_MissionParam_KillNumber, x600019_g_TotalNeedKillBoss )

		--��ʾ���ݸ�������Ѿ�Ti�p th�������
		BeginEvent( sceneId )
			AddText( sceneId, x600019_g_MissionName )
			x600019_AskEnterCopyScene( sceneId, selfId )
			AddText( sceneId, "#rC�c h� �� nh�n " .. x600019_g_MissionName )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
--���ͬ����븱��
--**********************************
function x600019_AcceptEnterCopyScene( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) > 0 then					--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x600019_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x600019_g_Param_sceneid )

		--changed by xindefeng
		--�����»���:����ʲôԭ��,T�i δHo�n t�t nhi�m v���������,���������������to� � �������κθĶ�(����th�t b�i����ɾ������),������ٽ��ø���ʱ,��Ҫ���³�ʼ����������,���Ҹ�����Ҫ���´���		
		--if copysceneid > 0 then															--��������
		--	-- ֻҪT�i ����û�����,����th�t b�i,C�n ����
		--	x600019_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i, h�y b� �i v� nh�n l�i" )
		--	return
		--end
		
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_IsMissionOkFail, 0 )	--������to� � ��0����������Ϊ0,��ʾδ���to� � ����
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_Param_sceneid, -1 )		--������to� � ��3����������Ϊ-1, ���ڱ��渱��to� � ������
		
		--add by xindefeng
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_Param_killcount, 0 )	--������to� � ��5����������Ϊ0, �������ɱ����������Ϊ0
		
		x600019_MakeCopyScene( sceneId, selfId )
	end
end

--**********************************
--��������
--**********************************
function x600019_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x600019_g_CopySceneMap )						--��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x600019_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x600019_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x600019_g_CopySceneType )				--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x600019_g_ScriptId )					--��1����������Ϊ���������¼��ű���
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

	LuaFnSetSceneLoad_Area( sceneId, x600019_g_Exit )
	LuaFnSetSceneLoad_Monster( sceneId, "jishi_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x600019_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x600019_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
	end

end

--**********************************
--�����¼�
--**********************************
function x600019_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsObjValid( sceneId, leaderObjId ) ~= 1 then					-- �����޷�ִ���߼�to� � ״̬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x600019_g_MissionId ) > 0 then			--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x600019_g_MissionId )

		--������to� � ��2����������Ϊ����to� � ������
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x600019_g_Param_sceneid, destsceneId )
		NewWorld( sceneId, leaderObjId, destsceneId, x600019_g_Fuben_X, x600019_g_Fuben_Z )
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x600019_OnPlayerEnter( sceneId, selfId )
	--add by xindefeng
	if IsHaveMission( sceneId, selfId, x600019_g_MissionId ) == 0 then				--������븱��ǰɾ������,��ֱ�Ӵ��ͻ�
		x600019_NotifyFailTips( sceneId, selfId, "C�c h� ch�a nh�n nhi�m v� n�y." )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ �i�m���븱��ʱ��T�i ������
		NewWorld( sceneId, selfId, oldsceneId, x600019_g_Back_X, x600019_g_Back_Z )
		return
	end
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x600019_OnHumanDie( sceneId, selfId, killerId )
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )

	-- ����������,Nhi�m v� th�t b�i,��Ϸ����
	if leaderguid == LuaFnGetGUID( sceneId, selfId ) then
		x600019_OnAbandon( sceneId, selfId )
	end
end

--**********************************
--����
--**********************************
function x600019_OnAbandon( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x600019_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x600019_g_Param_sceneid )

	--ɾ����������б��ж�Ӧto� � ����
	CallScriptFunction( x600019_g_MarketScript, "OnAbandon", sceneId, selfId )

	if sceneId == copyscene then											--���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		x600019_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ �i�m������ڳ�����		
		NewWorld( sceneId, selfId, oldsceneId, x600019_g_Back_X, x600019_g_Back_Z )
	end
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x600019_BackToCity( sceneId, selfId )
	--changed by xindefeng
	--�����»���:��x600019_AcceptEnterCopyScene()
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )					--ȡ �i�m���븱��ʱ��T�i ������
	CallScriptFunction( 400900, "TransferFunc", sceneId, selfId, oldsceneId, x600019_g_Back_X, x600019_g_Back_Z )	--����
	
	--LuaFnSetCopySceneData_Param( sceneId, 4, 1 )							-- ���ø����رձ�־
end

--**********************************
--����
--**********************************
function x600019_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x600019_g_MissionName )
		AddText( sceneId, x600019_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600019_g_ScriptId, x600019_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600019_CheckSubmit( sceneId, selfId, selectRadioId )
	--�ж�������ng���Ѿ����
	local ret = CallScriptFunction( x600019_g_MarketScript, "CheckSubmit", sceneId, selfId )
	return ret
end

--**********************************
--�ύ
--**********************************
function x600019_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x600019_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x600019_CheckSubmit( sceneId, selfId ) == 1 then
		CallScriptFunction( x600019_g_MarketScript, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x600019_OnKillObject( sceneId, selfId, objdataId, objId )
	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x600019_g_CopySceneType then
		return
	end

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--��������Ѿ����óɹر�״̬,��ɱ����Ч
		return
	end

	local monstercount = LuaFnGetCopySceneData_Param( sceneId, 7 )
	monstercount = monstercount + 1
	LuaFnSetCopySceneData_Param( sceneId, 7, monstercount )						--ɱ��Bossto� � ����

	local misIndex = GetMissionIndexByID( sceneId, selfId, x600019_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_Param_killcount, monstercount )		--����ɱ��Bossto� � ����

	local strText = format( "Gi�t ch�t �c B�: %d/%d", monstercount, x600019_g_TotalNeedKillBoss )
	x600019_NotifyFailTips( sceneId, selfId, strText )

	if monstercount >= x600019_g_TotalNeedKillBoss then
		SetMissionByIndex( sceneId, selfId, misIndex, x600019_g_IsMissionOkFail, 1 )			--����Nhi�m v� ho�n th�nh
		x600019_NotifyFailTips( sceneId, selfId, "�� �u�i b�n du c�n g�y s� � ch�, nhi�m v� ho�n th�nh" )

		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )							-- ���ø����رձ�־

		strText = format( "Sau %d ph�t s� chuy�n �n v� tr� c�a ra v�o", x600019_g_CloseTick * x600019_g_TickTime )

		x600019_NotifyFailTips( sceneId, selfId, strText )
	end
end

--**********************************
--���������¼�
--**********************************
function x600019_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x600019_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x600019_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--������to� � ��ʱ�����ô���

	local i = 0

	-- �� Boss ��ǿ
	if TickCount == 1 then
		local monstercount = GetMonsterCount( sceneId )
		local monsterId
		for i = 0, monstercount - 1 do
			-- �ҵ� Boss = monsterId
			monsterId = GetMonsterObjID( sceneId, i )
			local GroupID = GetMonsterGroupID( sceneId, monsterId )
			if GroupID == x600019_g_NeedMonsterGroupID then
				local flag = { 0, 0, 0 }
				local pAttack = 0													-- ������
				local pDefense = 0													-- �������
				local mDefense = 0													-- �ڹ�����
				local maxHP = 0														-- ��Ѫֵ
				if random(2) == 1 then
					flag[random(getn(flag))] = 1
				else
					flag = { 1, 1, 1 }
					flag[random(getn(flag))] = 0
				end

				if flag[1] ~= 0 then												-- ������
					pAttack = LuaFnGetBaseAttackPhysics( sceneId, monsterId )
					pAttack = floor( pAttack * ( 8 + random(4) ) / 100 )
					pAttack = pAttack + LuaFnGetLifeTimeAttrRefix_AttackPhysics( sceneId, monsterId )
					LuaFnSetLifeTimeAttrRefix_AttackPhysics( sceneId, monsterId, pAttack )
				end

				if flag[2] ~= 0 then												-- �������,�ڹ�����
					pDefense = LuaFnGetBaseDefencePhysics( sceneId, monsterId )
					pDefense = floor( pDefense * ( 8 + random(4) ) / 100 )
					pDefense = pDefense + LuaFnGetLifeTimeAttrRefix_DefencePhysics( sceneId, monsterId )
					LuaFnSetLifeTimeAttrRefix_DefencePhysics( sceneId, monsterId, pDefense )

					mDefense = LuaFnGetBaseDefenceMagic( sceneId, monsterId )
					mDefense = floor( mDefense * ( 8 + random(4) ) / 100 )
					mDefense = mDefense + LuaFnGetLifeTimeAttrRefix_DefenceMagic( sceneId, monsterId )
					LuaFnSetLifeTimeAttrRefix_DefenceMagic( sceneId, monsterId, mDefense )
				end

				if flag[3] ~= 0 then
					maxHP = LuaFnGetMaxBaseHp( sceneId, monsterId )
					maxHP = floor( maxHP * ( 8 + random(4) ) / 100 )
					maxHP = maxHP + LuaFnGetLifeTimeAttrRefix_MaxHP( sceneId, monsterId )
					LuaFnSetLifeTimeAttrRefix_MaxHP( sceneId, monsterId, maxHP )
					RestoreHp( sceneId, monsterId )
				end
			end
		end
	end

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )

	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )

	local mems = {}
	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	-- û����to� � ʱ��رո���
	if leaveFlag == 1 then															--C�n �뿪
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x600019_g_CloseTick then										--����ʱ�䵽,��Ҷ���ȥ��
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--ȡ �i�m������ڳ�����

			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x600019_g_Back_X, x600019_g_Back_Z )
				end
			end
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a", ( x600019_g_CloseTick - leaveTickCount ) * x600019_g_TickTime )

			for i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x600019_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount >= x600019_g_LimitTotalHoldTime then									--������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a", ( x600019_g_CloseTick - leaveTickCount ) * x600019_g_TickTime )

		for i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				if leaderguid == LuaFnGetGUID( sceneId, mems[i] ) then
					x600019_NotifyFailTips( sceneId, mems[i], "Th�i h�n �� �n nhi�m v� th�t b�i" )
				end

				x600019_NotifyFailTips( sceneId, mems[i], strText )
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	end
end

function x600019_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
