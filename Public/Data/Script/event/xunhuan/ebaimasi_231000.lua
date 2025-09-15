--��������
--Thu� lao

--************************************************************************
--MisDescBegin

--�ű���
x231000_g_ScriptId = 231000

--��������
x231000_g_CopySceneName="Thu� lao"

--�����
x231000_g_MissionId = 4012

--��m�t c�i����to� � ID
x231000_g_MissionIdPre = 4011

--Ŀ��NPC
x231000_g_Name = "D߽ng Tranh"

--��ng����ngTinhӢ����
x231000_g_IfMissionElite = 1

--��ng c�p nhi�m v� 
x231000_g_MissionLevel = 10000

--�������
x231000_g_MissionKind = 1

--�����ı�����
x231000_g_MissionName="Thu� lao"
x231000_g_MissionInfo="Trong thu� lao c� 10 t�n Ph�m Nh�n Хu M�c v� c�ng hung h�n, ch� c�n gi�t s�ch ch�ng, th� c� th� tr� ph�c t�t c� c�c ph�m nh�n kh�c. "  --��������
x231000_g_MissionTarget="Gi�t ch�t 10 t�n Ph�m Nh�n Хu M�c"	--M�c ti�u nhi�m v�
x231000_g_ContinueInfo="C�c h� �� gi�t ch�t 10 t�n Ph�m Nh�n Хu M�c ch�a ?"	--δHo�n t�t nhi�m v�to� � npc�Ի�
x231000_g_MissionComplete="R�t cu�c Thu� lao �� ���c gi� v�ng, sau n�y ch�ng ta tuy�t �i kh�ng ���c l� l�"	--Ho�n t�t nhi�m v�npc˵��to� � ��

--������
x231000_g_MoneyBonus=5000

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--ѭ������to� � ��������,�����������to� � ���� MD_SHUILAO_HUAN
--������ng���Ѿ����
--MissionRound =
--**********************************������ng��̬****************************
--��ɫMission����� �i�m�
x231000_g_IsMissionOkFail	= 0	--0��: ��ǰ������ng�����(0δ��ɣ�1���)
x231000_g_MissionRound		= 5	--Define MD_BAIMASI_HUAN from ScriptGlobal.lua
x231000_g_DemandKill			= { {id=367,num=10} }
x231000_g_Param_killcount	= 1	--1��: ɱ�������to� � ����
x231000_g_Param_sceneid		= 2	--2��: ��ǰ��������to� � ������
x231000_g_Param_teamid		= 3	--3��: �Ӹ�������ʱ��to� � �����
x231000_g_Param_time			= 4	--4��: ��ɸ�������ʱ��(��λ:  gi�y)
--6��: ���帱���¼��ű�ռ��
--7��: ���帱���¼��ű�ռ��
--MisDescEnd
--************************************************************************

x231000_g_CopySceneType=FUBEN_SHUILAO	--��������,����T�i ScriptGlobal.lua����
x231000_g_LimitMembers=3			--���Խ�����to� � ��С��������
x231000_g_TickTime=5				--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x231000_g_LimitTotalHoldTime=360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x231000_g_LimitTimeSuccess=500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x231000_g_CloseTick=6				--�����ر�ǰ����ʱ(��λ: ����)
x231000_g_NoUserTime=300			--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x231000_g_Fuben_X=95				--���븱��to� � λ��X
x231000_g_Fuben_Z=89				--���븱��to� � λ��Z
x231000_g_Back_X=234				--Դ����λ��X
x231000_g_Back_Z=69					--Դ����λ��Z
x231000_g_NeedMonsterGroupID=1		--C�n ɱ��to� � Bossto� � GroupID
x231000_g_TotalNeedKillBoss=10		--C�n ɱ��Boss����

--**********************************
--������ں���
--**********************************
function x231000_OnDefaultEvent( sceneId, selfId, targetId )

	if GetName( sceneId, targetId ) ~= x231000_g_Name then						--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if IsHaveMission( sceneId, selfId, x231000_g_MissionId ) > 0 then			--�������Ѿ�����C�i n�y ����
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
		local bDone = x231000_CheckSubmit( sceneId, selfId )
		if bDone == 0 then												--����δ���
			BeginEvent( sceneId )
				AddText( sceneId, x231000_g_MissionName )
				AddText( sceneId, "Chu�n b� xong ch�a?" )
			EndEvent( )
			DispatchMissionInfo( sceneId, selfId, targetId, x231000_g_ScriptId, x231000_g_MissionId )
		elseif bDone == 1 then											--�����Ѿ����
			BeginEvent( sceneId )
				AddText( sceneId, x231000_g_MissionName )
				AddText( sceneId, x231000_g_ContinueInfo )
				AddMoneyBonus( sceneId, x231000_g_MoneyBonus )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x231000_g_ScriptId, x231000_g_MissionId, bDone )
		end
--elseif x231000_CheckAccept( sceneId, selfId ) > 0 then						--û������,Th�a m�n�����������
	else
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x231000_g_MissionName )
			AddText( sceneId, x231000_g_MissionInfo )
			AddText( sceneId, "M�c ti�u nhi�m v�: " )
			AddText( sceneId, x231000_g_MissionTarget )
			AddText( sceneId, " " )
			AddMoneyBonus( sceneId, x231000_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x231000_g_ScriptId, x231000_g_MissionId )
	end
end

--**********************************
--�о��¼�
--**********************************
function x231000_OnEnumerate( sceneId, selfId, targetId )
	--����ѽӴ��������Th�a m�n�����������
--if IsHaveMission( sceneId, selfId, x231000_g_MissionId ) > 0 or x231000_CheckAccept( sceneId, selfId ) > 0 then
	if IsHaveMission( sceneId, selfId, x231000_g_MissionIdPre ) == 0 then
		x231000_MsgBox( sceneId, selfId, targetId, "  ��i s� Tr� Thanh c�a B�ch M� T� �ang ��i ng߽i!" )
		return
	else
		local	misIndex	= GetMissionIndexByID( sceneId, selfId, x231000_g_MissionIdPre )
		if GetMissionParam( sceneId, selfId, misIndex, x231000_g_IsMissionOkFail ) == 1 then
			x231000_MsgBox( sceneId, selfId, targetId, "  Ng߽i c� th� quay v� B�ch M� T� t�m ��i s� Tr� Thanh l�nh t�ng th߷ng!" )
			return
		end
	end
	
	AddNumText( sceneId, x231000_g_ScriptId, x231000_g_MissionName,4,-1 )
end

--**********************************
--���Ti�p th�����
--**********************************
function x231000_CheckAccept( sceneId, selfId )
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x231000_NotifyFailTips( sceneId, selfId, "C�c h� ph�i gia nh�p v�o m�t �i ng�" )
		return 0
	end

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x231000_NotifyFailTips( sceneId, selfId, "Ng߶i kh�ng ph�i l� nh�m tr߷ng" )
		return 0
	end

	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x231000_NotifyFailTips( sceneId, selfId, "Ng߽i c� nh�m vi�n kh�ng � g�n ��y" )
		return 0
	end

	if nearteammembercount < x231000_g_LimitMembers then
		x231000_NotifyFailTips( sceneId, selfId, "S� ng߶i trong �i ng� c�a c�c h� kh�ng ��" )
		return 0
	end

	--���С������ng�����������¼����, ������ng���Ѿ��ӹ�������
	local member
	local i
	local misIndex

	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, member, x231000_g_MissionIdPre ) <= 0 then
			x231000_NotifyFailTips( sceneId, selfId, "Trong nh�m c� ng߶i ch�a nh�n nhi�m v� B�ch M� T�" )
			return 0
		end

		misIndex = GetMissionIndexByID( sceneId, member, x231000_g_MissionIdPre )
		if GetMissionParam( sceneId, member, misIndex, 6 ) ~= 1 then
			x231000_NotifyFailTips( sceneId, selfId, "Trong nh�m c� ng߶i �� nhi�m v� B�ch M� T�" )
			return 0
		end

		if GetMissionParam( sceneId, member, misIndex, x231000_g_IsMissionOkFail ) == 1 then
			x231000_NotifyFailTips( sceneId, selfId, "Trong nh�m c� ng߶i �� Ho�n t�t nhi�m v� n�y" )
			return 0
		end

		if GetMissionCount( sceneId, member ) >= 20 then						--������������������ng��ﵽ����20c�i
			x231000_NotifyFailTips( sceneId, selfId, "Ghi ch�p nhi�m v� c�a ng߶i trong �i ng� �� �y" )
			return 0
		end

		if IsHaveMission( sceneId, member, x231000_g_MissionId ) > 0 then
			--������ng���Ѿ��ӹ��������������m�t c�i����
			x231000_NotifyFailTips( sceneId, selfId, "Trong �i �� c� ng߶i nh�n nhi�m v� n�y" )
			return 0
		end
	end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x231000_OnAccept( sceneId, selfId )

	local teamid = GetTeamId( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x231000_g_MissionId ) > 0 then					--�Ѿ�������to� � 
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x231000_g_Param_sceneid )
		local saveteamid = GetMissionParam( sceneId, selfId, misIndex, x231000_g_Param_teamid )

		if copysceneid >= 0 and teamid == saveteamid then						--��������
			--���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x231000_g_Fuben_X, x231000_g_Fuben_Z )
			else
				x231000_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i, h�y b� �i v� nh�n l�i" )
				SetMissionByIndex( sceneId, selfId, misIndex, x231000_g_IsMissionOkFail, 2 )
			end

			return
		end
	end

	--������������б�
	if x231000_CheckAccept( sceneId, selfId ) == 0 then									--�жϽ�������
		return
	end

	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	local member
	local i
	local misIndex
	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		--��ÿc�i�����Ա��������
		AddMission( sceneId, member, x231000_g_MissionId, x231000_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, member, x231000_g_MissionId )

		SetMissionByIndex( sceneId, member, misIndex, x231000_g_IsMissionOkFail, 0 )	--������to� � ��0����������Ϊ0,��ʾδ���to� � ����
		SetMissionByIndex( sceneId, member, misIndex, x231000_g_Param_sceneid, -1 )		--������to� � ��2����������Ϊ-1, ���ڱ��渱��to� � ������
		SetMissionByIndex( sceneId, member, misIndex, x231000_g_Param_teamid, teamid )	--������to� � ��3�����ݶ����
	end

	x231000_MakeCopyScene( sceneId, selfId, nearteammembercount )
end

--**********************************
--����
--**********************************
function x231000_OnAbandon( sceneId, selfId )

	local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x231000_g_Param_sceneid )

	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x231000_g_MissionId )

	if sceneId == copyscene then											--���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		x231000_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x231000_g_Back_X, x231000_g_Back_Z )
	end
end

--**********************************
--��������
--**********************************
function x231000_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	local mylevel = 0
	local i

	for	i=0, nearmembercount-1 do
		mems[i] = GetNearTeamMember( sceneId, selfId, i )
		mylevel = mylevel + GetLevel( sceneId, mems[i] )
	end

	mylevel = mylevel/nearmembercount

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, "shuilao.nav" )							--��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x231000_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x231000_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x231000_g_CopySceneType )				--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x231000_g_ScriptId )					--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	--��������
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							--ɱ��Bossto� � ����

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Monster( sceneId, "shuilao_monster_" .. iniLevel .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x231000_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x231000_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )

		--ɾ����������б��ж�Ӧto� � ����
		for	i=0, nearmembercount-1 do
			DelMission( sceneId, mems[i], x231000_g_MissionId )
		end
	end

end

--**********************************
--����
--**********************************
function x231000_OnContinue( sceneId, selfId, targetId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, x231000_g_Param_sceneid ) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "Xin ch�c m�ng, ng߽i s� ��t ���c #{_MONEY"..x231000_g_MoneyBonus.."} t�ng th߷ng c�a!" )
		EndEvent( sceneId )
		DispatchMissionContinueInfo( sceneId, selfId, targetId, x231000_g_ScriptId, x231000_g_MissionId )
	end
end

--**********************************
--�����ng������ύ
--**********************************
function x231000_CheckSubmit( sceneId, selfId, selectRadioId )
	--�ж�������ng���Ѿ����
	local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionId )
	local	ret	= GetMissionParam( sceneId, selfId, misIndex, x231000_g_IsMissionOkFail )
	if ret == 1 then
		return 1
	else
		return 0
	end
end

--**********************************
--�ύ
--**********************************
function x231000_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if GetName( sceneId, targetId ) ~= x231000_g_Name then								--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x231000_CheckSubmit( sceneId, selfId, selectRadioId ) > 0 then					--�Ѿ�Ho�n t�t nhi�m v���
		--local iHuan = GetMissionData( sceneId, selfId, 10 )					--ȡ �i�m�ܹ�����to� � ����
		--���������
		local money = x231000_g_MoneyBonus
		AddMoney( sceneId, selfId, money )
		BeginEvent( sceneId )
			AddText( sceneId, x231000_g_MissionComplete )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		--���������Ѿ�����ɹ�
		DelMission( sceneId, selfId, x231000_g_MissionId )
		local misIndex = GetMissionIndexByID( sceneId, selfId, x231000_g_MissionIdPre )	-- �i�m������to� � ���к�
		SetMissionByIndex( sceneId, selfId, misIndex, x231000_g_IsMissionOkFail, 1 )	--�������кŰ��������to� � ��1λ��1 (����������)
	end
end

--**********************************
--ɱ����������
--**********************************
function x231000_OnKillObject( sceneId, selfId, objdataId, objId )

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x231000_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--��������Ѿ����óɹر�״̬,��ɱ����Ч
		return
	end

	--ȡ �i�m��ǰ������to� � ����
	local num = LuaFnGetCopyScene_HumanCount( sceneId )

	--ȡ �i�mɱ������to� � GroupID,�����ж���ng����ng��C�n ɱ��to� � Boss
	local GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID ~= x231000_g_NeedMonsterGroupID then										--����ng��C�n to� � Boss
		return
	end

	local killedbossnumber = LuaFnGetCopySceneData_Param( sceneId, 7 )			--ɱ��Bossto� � ����
	killedbossnumber = killedbossnumber + 1
	LuaFnSetCopySceneData_Param( sceneId, 7, killedbossnumber )					--����ɱ��Bossto� � ����

	local i
	local misIndex
	local humanObjId
	--local killedcount

	if killedbossnumber < x231000_g_TotalNeedKillBoss then

		local strText = format( "�� gi�t t�i ph�m: %d/%d", killedbossnumber, x231000_g_TotalNeedKillBoss )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )				--ȡ �i�m��ǰ��������to� � objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then					--��T�i ����to� � �����˲���
				x231000_NotifyFailTips( sceneId, humanObjId, strText )

				misIndex = GetMissionIndexByID( sceneId, humanObjId, x231000_g_MissionId )					--ȡ �i�m������������ֵ
				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x231000_g_Param_killcount )	--ȡ �i�m�Ѿ�ɱ��to� � ������
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231000_g_Param_killcount, killedbossnumber )	--������������
			end
		end
	elseif killedbossnumber >= x231000_g_TotalNeedKillBoss then
		--����������ɱ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
		local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
		local strText = format( "�� gi�t t�i ph�m: %d/%d", x231000_g_TotalNeedKillBoss, x231000_g_TotalNeedKillBoss )
		local strText2 = format( "Nhi�m v� ho�n th�nh, sau %d gi�y s� chuy�n t�i v� tr� v�o c�a", x231000_g_CloseTick * x231000_g_TickTime )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )									--ȡ �i�m��ǰ��������to� � objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then										--��T�i ����to� � �����˲���
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x231000_g_MissionId)					--ȡ �i�m������������ֵ

				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x231000_g_Param_killcount )	--ȡ �i�m�Ѿ�ɱ��to� � ������
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231000_g_Param_killcount, x231000_g_TotalNeedKillBoss )	--������������

				--������to� � ��1����������Ϊ1,��ʾ���to� � ����
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231000_g_IsMissionOkFail, 1 )					--������������
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, humanObjId, misIndex, x231000_g_Param_time, TickCount * x231000_g_TickTime )	--������������

				x231000_NotifyFailTips( sceneId, humanObjId, strText )
				x231000_NotifyFailTips( sceneId, humanObjId, strText2 )
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x231000_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x231000_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x231000_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then											-- �Ҳ��������
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then		-- �����޷�ִ���߼�to� � ״̬
		return
	end

	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local nearteammembercount = GetNearTeamCount( sceneId, leaderObjId )

	if nearteammembercount < x231000_g_LimitMembers then
		x231000_NotifyFailTips( sceneId, leaderObjId, "S� ng߶i trong �i ng� c�a c�c h� kh�ng ��" )
		return
	end

	local member
	local misIndex
	for	i=0, nearteammembercount-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ���ڿ���ִ���߼�to� � ״̬
			if IsHaveMission( sceneId, member, x231000_g_MissionId ) > 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x231000_g_MissionId )

				--������to� � ��2����������Ϊ����to� � ������
				SetMissionByIndex( sceneId, member, misIndex, x231000_g_Param_sceneid, destsceneId )

				NewWorld( sceneId, member, destsceneId, x231000_g_Fuben_X, x231000_g_Fuben_Z )
			else
				x231000_NotifyFailTips( sceneId, member, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
			end
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x231000_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x231000_g_MissionId ) == 0 then				--������븱��ǰɾ������,��ֱ�Ӵ��ͻ�
		x231000_NotifyFailTips( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x231000_g_Back_X, x231000_g_Back_Z )
		return
	end

	--��� gi�y����󸴻� �i�mλ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x231000_g_Fuben_X, x231000_g_Fuben_Z )
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x231000_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x231000_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--������to� � ��ʱ�����ô���

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C�n �뿪
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount == x231000_g_CloseTick then										--����ʱ�䵽,��Ҷ���ȥ��
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--ȡ �i�m������ڳ�����

			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x231000_g_Back_X, x231000_g_Back_Z )
				end
			end
		elseif leaveTickCount < x231000_g_CloseTick then
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i ��y sau %d gi�y!", (x231000_g_CloseTick-leaveTickCount) * x231000_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x231000_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x231000_g_LimitTimeSuccess then
		--�˴�������ʱ������to� � ������ɴ���
		local misIndex
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x231000_NotifyFailTips( sceneId, mems[i], "Th�i gian ho�n t�t nhi�m v� �� t�i, ho�n th�nh!" )

				misIndex = GetMissionIndexByID( sceneId, mems[i], x231000_g_MissionId )		--ȡ �i�m������������ֵ
				--������to� � ��1����������Ϊ1,��ʾ���to� � ����
				SetMissionByIndex( sceneId, mems[i], misIndex, x231000_g_IsMissionOkFail, 1 )		--������������
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, mems[i], misIndex, x231000_g_Param_time, TickCount * x231000_g_TickTime )	--������������
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == x231000_g_LimitTotalHoldTime then									--������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				DelMission( sceneId, mems[i], x231000_g_MissionId )							--����th�t b�i,ɾ��֮
				x231000_NotifyFailTips( sceneId, mems[i], "Nhi�m v� th�t b�i, qu� gi�!" )
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--��ʱ�������Աto� � �����,���������,���߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					--ȡ �i�m����to� � �����
		local oldsceneId

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and IsHaveMission( sceneId, mems[i], x231000_g_MissionId ) > 0 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					DelMission( sceneId, mems[i], x231000_g_MissionId )						--����th�t b�i,ɾ��֮
					x231000_NotifyFailTips( sceneId, mems[i], "Nhi�m v� th�t b�i, ng߽i kh�ng � trong ��ng nh�m" )

					oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--ȡ �i�m������ڳ�����
					NewWorld( sceneId, mems[i], oldsceneId, x231000_g_Back_X, x231000_g_Back_Z )
				end
			end
		end

	end
end

function x231000_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent(sceneId)
		AddText(sceneId, Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x231000_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
