--��������
--ˮ��
--10c�i����ͷĿ,��ͳ��5ֻС��

--************************************************************************
--MisDescBegin
--�ű���
x232002_g_ScriptId	= 232002
--��������
x232002_g_CopySceneName	= "Thu� lao"
--�����
x232002_g_MissionId			= 1213
--��m�t c�i����to� � ID
x232002_g_MissionIdPre	= 1212
--Ŀ��NPC
x232002_g_Name					= "H� Di�n Kh�nh"
--��ng����ngTinhӢ����
x232002_g_IfMissionElite= 1
--��ng c�p nhi�m v� 
x232002_g_MissionLevel	= 10000
--�������
x232002_g_MissionKind		= 1
--�����ı�����
x232002_g_MissionName			= "Thu� lao"
--��������
x232002_g_MissionInfo			= "#{event_xunhuan_0006}"
--M�c ti�u nhi�m v�
x232002_g_MissionTarget		= "  H� Di�n Kh�nh � t�i Th�i H� #{_INFOAIM67,77,4,H� Di�n Kh�nh} y�u c�u c�c h� gi�t 10 t�n ph�m nh�n �u m�c v� 50 con ti�u qu�i."
--δHo�n t�t nhi�m v�to� � npc�Ի�
x232002_g_ContinueInfo		= "  C� ph�i ng߽i �� gi�t ch�t 10 t�n �u m�c ph�m nh�n hung h�n v� nhi�u ti�u qu�i v�t?"
--Ho�n t�t nhi�m v�npc˵��to� � ��
x232002_g_MissionComplete	= "  R�t cu�c Thu� lao �� ���c gi� v�ng, sau n�y ch�ng ta tuy�t �i kh�ng ���c l� l�"
--������
x232002_g_MoneyBonus			= 1000
--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--ѭ������to� � ��������,�����������to� � ���� MD_SHUILAO_HUAN
--������ng���Ѿ����
--MissionRound =
--**********************************������ng��̬****************************
--��ɫMission����� �i�m�
x232002_g_IsMissionOkFail	= 0	--0��: ��ǰ������ng�����(0δ��ɣ�1���)
x232002_g_MissionRound		= 5	--Define MD_BAIMASI_HUAN from ScriptGlobal.lua
x232002_g_DemandKill			= { {id=367,num=60} }
x232002_g_Param_killcount	= 1	--1��: ɱ�������to� � ����
x232002_g_Param_sceneid		= 2	--2��: ��ǰ��������to� � ������
x232002_g_Param_teamid		= 3	--3��: �Ӹ�������ʱ��to� � �����
x232002_g_Param_time			= 4	--4��: ��ɸ�������ʱ��(��λ:  gi�y)
--6��: ���帱���¼��ű�ռ��
--7��: ���帱���¼��ű�ռ��
--MisDescEnd
--************************************************************************

x232002_g_CopySceneType			= FUBEN_SHUILAO	--��������,����T�i ScriptGlobal.lua����
x232002_g_LimitMembers			= 1		--���Խ�����to� � ��С��������
x232002_g_TickTime					= 5		--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x232002_g_LimitTotalHoldTime= 360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x232002_g_CloseTick					= 6		--�����ر�ǰ����ʱ(��λ: ����)
x232002_g_NoUserTime				= 300	--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x232002_g_Fuben_X						= 95	--���븱��to� � λ��X
x232002_g_Fuben_Z						= 89	--���븱��to� � λ��Z
x232002_g_Back_X						= 52	--Դ����λ��X
x232002_g_Back_Z						= 96	--Դ����λ��Z
x232002_g_NeedMonsterGroupID= 1		--C�n ɱ��to� � Bossto� � GroupID
x232002_g_TotalNeedKillBoss	= 60	--C�n ɱ��Boss����

--����������������
x232002_g_keySD					=
{
	["typ"]	= 0,	--���ø�������
	["spt"]	= 1,	--���ø��������¼��ű���
	["tim"]	= 2,	--���ö�ʱ�����ô���
	["scn"]	= 3,	--���ø�����ڳ�����, ��ʼ��
	["cls"]	= 4,	--���ø����رձ�־, 0����,1�ر�
	["dwn"]	= 5,	--�����뿪����ʱ����
	["tem"]	= 6,	--��������
	["kil"]	= 7,	--ɱ��Bossto� � ����
	["lev"]	= 8,	--��������Ӧ��c�p
}

--��ȡ����to� � ��͵�c�p
x232002_g_minLevel			= 20
--C�n ����С����
x232002_g_namMonster		= "Ph�m nh�n b�nh th߶ng"
x232002_g_typMonster		= --��ͨ����10~100c�p
	{ 2490, 2491, 2492, 2493, 2494,
		2495, 2496, 2497, 2498, 2499 }

--1/20to� � ���ʸ��ڱ�ʯ����
x232002_g_gemList				= { 50101001, 50101002, 50111001, 50111002 }
x232002_g_gemRate				= 20
					
x232002_g_IsMissionOkFailPre	= 0	--0��: ƽ��������ng�����(0δ��ɣ�1���)

x232002_g_MaxSameIPNum = 3
--**********************************
--������ں���
--**********************************
function x232002_OnDefaultEvent( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x232002_g_Name then
		return
	end

	--�������Ѿ�����C�i n�y ����
	if IsHaveMission( sceneId, selfId, x232002_g_MissionId ) > 0 then

		local	misIndex	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
		local	bDone			= x232002_CheckSubmit( sceneId, selfId )
		--����δ���
		if bDone == 0 then
			BeginEvent( sceneId )
				AddText( sceneId, x232002_g_MissionName )
				AddText( sceneId, "  Chu�n b� xong ch�a?" )
			EndEvent()
			DispatchMissionInfo( sceneId, selfId, targetId, x232002_g_ScriptId, x232002_g_MissionId )
		--�����Ѿ����
		elseif bDone == 1 then
			BeginEvent( sceneId )
				AddText( sceneId, x232002_g_MissionName )
				AddText( sceneId, x232002_g_ContinueInfo )
				AddMoneyBonus( sceneId, x232002_g_MoneyBonus )
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x232002_g_ScriptId, x232002_g_MissionId, bDone )
		end

	else

		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent( sceneId )
			AddText( sceneId, x232002_g_MissionName )
			AddText( sceneId, x232002_g_MissionInfo )
			AddText( sceneId, "#{M_MUBIAO}" )
			AddText( sceneId, x232002_g_MissionTarget )
			AddText( sceneId, " " )
			AddMoneyBonus( sceneId, x232002_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo( sceneId, selfId, targetId, x232002_g_ScriptId, x232002_g_MissionId )

	end

end

--**********************************
--�о��¼�
--**********************************
function x232002_OnEnumerate( sceneId, selfId, targetId )

	if IsHaveMission( sceneId, selfId, x232002_g_MissionIdPre ) == 0 then
		x232002_MsgBox( sceneId, selfId, targetId, "  Huynh � H� Di�n B�o c�a ta �� t�i T� Ch�u c�u binh r�i, ng߽i c� g�p kh�ng?" )
		return
	else
		if IsHaveMission( sceneId, selfId, x232002_g_MissionId ) == 1 then
			local	misIndex		= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
			local	misIndexPre	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionIdPre )
			if GetMissionParam( sceneId, selfId, misIndex, x232002_g_IsMissionOkFail ) == 1
				and GetMissionParam( sceneId, selfId, misIndexPre, x232002_g_IsMissionOkFailPre ) == 1 then
					x232002_MsgBox( sceneId, selfId, targetId, "  Ng߽i c� th� quay v� T� Ch�u t�m huynh � H� Di�n B�o c�a ta l�nh t�ng th߷ng!" )
					return
			end
			if GetMissionParam( sceneId, selfId, misIndex, x232002_g_IsMissionOkFail ) ~= 1
				and GetMissionParam( sceneId, selfId, misIndexPre, x232002_g_IsMissionOkFailPre ) == 2 then
					x232002_MsgBox( sceneId, selfId, targetId, "  R�t ti�c, nhi�m v� b�nh �nh c�a ng߽i �� th�t b�i" )
					return
			end
		end
	end

	AddNumText( sceneId, x232002_g_ScriptId, x232002_g_MissionName, 4, -1 )

end

--**********************************
--���Ti�p th�����
--**********************************
function x232002_CheckAccept( sceneId, selfId, targetId )

	if LuaFnGetLevel( sceneId, selfId ) < x232002_g_minLevel then
		x232002_NotifyTip( sceneId, selfId, "��ng c�p c�a c�c h� qu� th�p, ph�m nh�n kh� l�i h�i" )
		x232002_NotifyTip( sceneId, selfId, "V�n ��i ng߽i �n"..x232002_g_minLevel.."Sau khi th�ng c�p t�i t�m ta" )
		return 0
	end

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x232002_NotifyTip( sceneId, selfId, "L��ng ph�m nh�n trong Thu� lao r�t ��ng, ng߽i �n th�n th� l�c m�ng" )
		x232002_NotifyTip( sceneId, selfId, "Hay l� g�i th�m v�i tr� th� t�i gi�p" )
		return 0
	end

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x232002_NotifyTip( sceneId, selfId, "Ng߽i kh�ng ph�i l� nh�m tr߷ng" )
		x232002_NotifyTip( sceneId, selfId, "Ch� c� nh�m tr߷ng m�i c� th� quy�t �nh ti�p nh�n �y th�c c�a ta hay kh�ng" )
		return 0
	end

	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local	numMem	= GetNearTeamCount( sceneId, selfId )
	if numMem ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x232002_NotifyTip( sceneId, selfId, "Ng߽i c� nh�m vi�n kh�ng � g�n ��y" )
		return 0
	end

	if numMem < x232002_g_LimitMembers then
		x232002_NotifyTip( sceneId, selfId, "L��ng ph�m nh�n trong Thu� lao r�t ��ng" )
		x232002_NotifyTip( sceneId, selfId, "Ch� �t c�c ng߽i c�ng c�n c� "..x232002_g_LimitMembers.." ta m�i y�n t�m � c�c ng߽i �i" )
		return 0
	end

	--���С������ng�����������¼����, ������ng���Ѿ��ӹ�������
	local member
	local i
	local misIndex
	--����IP�ж�
	local hostIp=""
	local IPList={}
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, member, x232002_g_MissionIdPre ) <= 0 then
			x232002_NotifyTip( sceneId, selfId, "Trong nh�m c� ng߶i ch�a nh�n nhi�m v� Thu� lao" )
			return 0
		end

		misIndex = GetMissionIndexByID( sceneId, member, x232002_g_MissionIdPre )
		if GetMissionParam( sceneId, member, misIndex, 6 ) ~= 1 then
			x232002_NotifyTip( sceneId, selfId, "Trong nh�m c� ng߶i �� nh�n nhi�m v� b�nh �nh" )
			return 0
		end
		
		if GetMissionParam( sceneId, member, misIndex, x232002_g_IsMissionOkFailPre ) == 1 then
			x232002_NotifyTip( sceneId, selfId, "Trong nh�m c� ng߶i �� ho�n t�t nhi�m v� b�nh �nh" )
			x232002_MsgBox( sceneId, selfId, targetId, "  V� c�ng c�m t� c�c h� �� gi�p ta b�nh �nh ��m ph�n lo�n Thu� lao, xin quay v� T� Ch�u t�m huynh � H� Di�n B�o c�a ta l�nh t�ng th߷ng. Ch�t qu� m�n t� th�nh �" )
			return 0
		end

		if GetMissionParam( sceneId, member, misIndex, x232002_g_IsMissionOkFail ) == 1 then
			x232002_NotifyTip( sceneId, selfId, "Trong nh�m c� ng߶i �� Ho�n t�t nhi�m v� n�y" )
			return 0
		end

		--������������������ng��ﵽ����20c�i
		if GetMissionCount( sceneId, member ) >= 20 then
			x232002_NotifyTip( sceneId, selfId, "Ghi ch�p nhi�m v� c�a ng߶i trong �i ng� �� �y" )
			return 0
		end

		if IsHaveMission( sceneId, member, x232002_g_MissionId ) > 0 then
			--������ng���Ѿ��ӹ��������������m�t c�i����
			x232002_NotifyTip( sceneId, selfId, "Trong �i �� c� ng߶i nh�n nhi�m v� n�y" )
			return 0
		end
		
		hostIp = GetHostIP(sceneId, member)
		IPList[i]=hostIp
		
	end
	local sameIPNum = 1
	for	i=0, numMem-1 do
		local nTemp = 1
		for j=0,numMem-1 do
			if IPList[i] == IPList[j] and i ~= j then
				nTemp = nTemp + 1
			end
		end
		if sameIPNum < nTemp then
			sameIPNum = nTemp
		end			
	end

	--if sameIPNum >= x232002_g_MaxSameIPNum then
		--x232002_NotifyTip( sceneId, selfId, "#{SLIP_090714_1}" )
		--x232002_MsgBox( sceneId, selfId, targetId, "#{SLIP_090714_1}" )
		--return 0
	--end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x232002_OnAccept( sceneId, selfId, targetId )

	local teamid = GetTeamId( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x232002_g_MissionId ) > 0 then
		local misIndex 		= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
		local misIndexPre	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionIdPre )
		local copysceneid	= GetMissionParam( sceneId, selfId, misIndex, x232002_g_Param_sceneid )
		local saveteamid	= GetMissionParam( sceneId, selfId, misIndex, x232002_g_Param_teamid )
		--��������
		if copysceneid >= 0 and teamid == saveteamid then
			--���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x232002_g_Fuben_X, x232002_g_Fuben_Z )
			else
				x232002_NotifyTip( sceneId, selfId, "Nhi�m v� th�t b�i, h�y b� �i v� nh�n l�i" )
				SetMissionByIndex( sceneId, selfId, misIndex, x232002_g_IsMissionOkFail, 2 )
				SetMissionByIndex( sceneId, selfId, misIndexPre, x232002_g_IsMissionOkFailPre, 2 )
			end
			return
		end
	end

	--�жϽ�������
	if x232002_CheckAccept( sceneId, selfId, targetId ) == 0 then
		return
	end

	--������������б�
	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local numMem	= GetNearTeamCount( sceneId, selfId )
	local member
	local i
	local misIndex
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		--��ÿc�i�����Ա��������
		AddMission( sceneId, member, x232002_g_MissionId, x232002_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, member, x232002_g_MissionId )
		--������to� � ��0����������Ϊ0,��ʾδ���to� � ����
		SetMissionByIndex( sceneId, member, misIndex, x232002_g_IsMissionOkFail, 0 )
		--������to� � ��2����������Ϊ-1, ���ڱ��渱��to� � ������
		SetMissionByIndex( sceneId, member, misIndex, x232002_g_Param_sceneid, -1 )
		--������to� � ��3�����ݶ����
		SetMissionByIndex( sceneId, member, misIndex, x232002_g_Param_teamid, teamid )
		
		misIndexPre = GetMissionIndexByID( sceneId, member, x232002_g_MissionIdPre )
		SetMissionByIndex( sceneId, member, misIndexPre, x232002_g_IsMissionOkFailPre, 1 )
	end

	x232002_MakeCopyScene( sceneId, selfId, numMem )
end

--**********************************
--����
--**********************************
function x232002_OnAbandon( sceneId, selfId )

	local misIndex		= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
	local copyscene		= GetMissionParam( sceneId, selfId, misIndex, x232002_g_Param_sceneid )

	x232002_NotifyTip( sceneId, selfId, "Nhi�m v� th�t b�i!" )
	x232002_MissionFailExe( sceneId, selfId )

	--���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
	if sceneId == copyscene then
		--ȡ �i�m������ڳ�����
		local	oldsceneId	= LuaFnGetCopySceneData_Param( sceneId, 3 )
		NewWorld( sceneId, selfId, oldsceneId, x232002_g_Back_X, x232002_g_Back_Z )
	end

end

--**********************************
--��������
--**********************************
function x232002_MakeCopyScene( sceneId, selfId, nearmembercount )

	--ָ������
	local	param0	= 4;
	local	param1	= 3;

	--���ս��
	local	mylevel	= 0;

	--��ʱ����
	local mems		= {};
	local	tempMemlevel = 0;
	local	level0 = 0;
	local	level1 = 0;
	for	i = 0, nearmembercount - 1 do
		mems[i]	= GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, mems[i]);
		level0	= level0 + (tempMemlevel ^ param0);
		level1	= level1 + (tempMemlevel ^ param1);
	end

	if level1 == 0 then
		mylevel = x232002_g_minLevel;
	else
		mylevel = level0/level1;
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	--��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetSceneLoad_Map( sceneId, "shuilao.nav" )
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x232002_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x232002_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["typ"], x232002_g_CopySceneType )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["spt"], x232002_g_ScriptId )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["tim"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["scn"], -1 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["cls"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["dwn"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["tem"], GetTeamId( sceneId, selfId ) )
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["kil"], 0 )

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 10;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10) * 10;
	else
		iniLevel = PlayerMaxLevel;
	end
	LuaFnSetSceneLoad_Monster( sceneId, "shuilao_monster_" .. iniLevel .. ".ini" )
	LuaFnSetCopySceneData_Param( sceneId, CopyScene_LevelGap, mylevel - iniLevel )	--c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["lev"], mylevel )

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )	--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x232002_NotifyTip( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		--x232002_NotifyTip( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )

		--ɾ����������б��ж�Ӧto� � ����
		for	i=0, nearmembercount-1 do
			x232002_NotifyTip( sceneId, mems[i], "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
			DelMission( sceneId, mems[i], x232002_g_MissionId )
			
			misIndexPre	= GetMissionIndexByID( sceneId, mems[i], x232002_g_MissionIdPre )
			SetMissionByIndex( sceneId, mems[i], misIndexPre, x232002_g_IsMissionOkFailPre, 0 )
		end
	end

end

--**********************************
--����
--**********************************
function x232002_OnContinue( sceneId, selfId, targetId )

	local	misIndex	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
	if GetMissionParam( sceneId, selfId, misIndex, x232002_g_Param_sceneid ) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin ch�c m�ng, ng߽i s� ��t ���c #{_MONEY"..x232002_g_MoneyBonus.."} t�ng th߷ng!" )
		EndEvent( sceneId )
		DispatchMissionContinueInfo( sceneId, selfId, targetId, x232002_g_ScriptId, x232002_g_MissionId )
	end

end

--**********************************
--�����ng������ύ
--**********************************
function x232002_CheckSubmit( sceneId, selfId, selectRadioId )

	--�ж�������ng���Ѿ����
	local	misIndex	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionId )
	local	ret				= GetMissionParam( sceneId, selfId, misIndex, x232002_g_IsMissionOkFail )
	if ret == 1 then
		return 1
	else
		return 0
	end

end

--**********************************
--�ύ
--**********************************
function x232002_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x232002_g_Name then
		return
	end

	--�Ѿ�Ho�n t�t nhi�m v���
	if x232002_CheckSubmit( sceneId, selfId, selectRadioId ) > 0 then
		--ȡ �i�m�ܹ�����to� � ����
		--local iHuan	= GetMissionData( sceneId, selfId, 10 )

		--������
		AddMoney( sceneId, selfId, x232002_g_MoneyBonus )
		nSeed	= random( getn( x232002_g_gemList ) )
		sName	= GetName( sceneId, selfId )
		if random( x232002_g_gemRate ) == 1 then
			nPos		= LuaFnTryRecieveItem( sceneId, selfId, x232002_g_gemList[ nSeed ], 1 )
			if nPos ~= -1 then
				sTran	= GetBagItemTransfer( sceneId, selfId, nPos )
				if random( 2 ) == 1 then
					AddGlobalCountNews( sceneId, "#{_INFOUSR"..sName.."} v� c� c�ng b�nh �nh ��m ph�n lo�n Thu� lao, ���c �c bi�t t�ng th߷ng #{_INFOMSG"..sTran.."} 1 vi�n" )
				else
					AddGlobalCountNews( sceneId, "#{_INFOUSR"..sName.."} sau khi b�nh �nh Thu� lao, trong g�c Thu� lao ph�t hi�n th�y 1 vi�n #{_INFOMSG"..sTran.."}" )
				end
			end
		end

		BeginEvent( sceneId )
			AddText( sceneId, x232002_g_MissionComplete )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		--���������Ѿ�����ɹ�
		DelMission( sceneId, selfId, x232002_g_MissionId )
		-- �i�m������to� � ���к�
		local	misIndexPre	= GetMissionIndexByID( sceneId, selfId, x232002_g_MissionIdPre )
		--�������кŰ��������to� � ��1λ��1 (����������)
		SetMissionByIndex( sceneId, selfId, misIndexPre, x232002_g_IsMissionOkFailPre, 1 )
	end

end

--**********************************
--ɱ����������
--**********************************
function x232002_OnKillObject( sceneId, selfId, objdataId, objId )

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x232002_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	--��������Ѿ����óɹر�״̬,��ɱ����Ч
	if leaveFlag == 1 then
		return
	end

	--ȡ �i�m��ǰ������to� � ����
	local num = LuaFnGetCopyScene_HumanCount( sceneId )

	--ȡ �i�mɱ������to� � GroupID,�����ж���ng����ng��C�n ɱ��to� � Boss
	local GroupID = GetMonsterGroupID( sceneId, objId )
	--����ng��C�n to� � Boss
	if GetMonsterNamebyDataId( objdataId ) ~= x232002_g_namMonster and GroupID ~= x232002_g_NeedMonsterGroupID then
		return
	end

	local killedbossnumber = LuaFnGetCopySceneData_Param( sceneId, 7 )			--ɱ��Bossto� � ����
	killedbossnumber = killedbossnumber + 1
	LuaFnSetCopySceneData_Param( sceneId, 7, killedbossnumber )					--����ɱ��Bossto� � ����

	local i
	local misIndex
	local humanObjId
	--local killedcount

	if killedbossnumber < x232002_g_TotalNeedKillBoss then

		local strText = format( "�� gi�t t�i ph�m: %d/%d", killedbossnumber, x232002_g_TotalNeedKillBoss )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )				--ȡ �i�m��ǰ��������to� � objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then					--��T�i ����to� � �����˲���
				x232002_NotifyTip( sceneId, humanObjId, strText )

				misIndex = GetMissionIndexByID( sceneId, humanObjId, x232002_g_MissionId )					--ȡ �i�m������������ֵ
				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x232002_g_Param_killcount )	--ȡ �i�m�Ѿ�ɱ��to� � ������
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x232002_g_Param_killcount, killedbossnumber )	--������������
			end
		end
	elseif killedbossnumber >= x232002_g_TotalNeedKillBoss then
		--����������ɱ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
		local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
		local strText = format( "�� gi�t t�i ph�m: %d/%d", x232002_g_TotalNeedKillBoss, x232002_g_TotalNeedKillBoss )
		local strText2 = format( "Nhi�m v� ho�n th�nh, sau %d gi�y s� chuy�n t�i v� tr� v�o c�a", x232002_g_CloseTick * x232002_g_TickTime )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )									--ȡ �i�m��ǰ��������to� � objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then										--��T�i ����to� � �����˲���
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x232002_g_MissionId)					--ȡ �i�m������������ֵ

				--killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x232002_g_Param_killcount )	--ȡ �i�m�Ѿ�ɱ��to� � ������
				--killedcount = killedcount + 1
				SetMissionByIndex( sceneId, humanObjId, misIndex, x232002_g_Param_killcount, x232002_g_TotalNeedKillBoss )	--������������

				--������to� � ��1����������Ϊ1,��ʾ���to� � ����
				SetMissionByIndex( sceneId, humanObjId, misIndex, x232002_g_IsMissionOkFail, 1 )					--������������
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, humanObjId, misIndex, x232002_g_Param_time, TickCount * x232002_g_TickTime )	--������������

				x232002_NotifyTip( sceneId, humanObjId, strText )
				x232002_NotifyTip( sceneId, humanObjId, strText2 )
			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x232002_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x232002_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x232002_OnCopySceneReady( sceneId, destsceneId )

	--���ø�����ڳ�����
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )

	local leaderguid	= LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId	= LuaFnGuid2ObjId( sceneId, leaderguid )
	--�Ҳ��������
	if leaderObjId == -1 then
		return
	end

	--�����޷�ִ���߼�to� � ״̬
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end

	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local numMem	= GetNearTeamCount( sceneId, leaderObjId )

	if numMem < x232002_g_LimitMembers then
		x232002_NotifyTip( sceneId, leaderObjId, "S� ng߶i trong �i ng� c�a c�c h� kh�ng ��" )
		return
	end

	local member
	local misIndex
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ���ڿ���ִ���߼�to� � ״̬
			if IsHaveMission( sceneId, member, x232002_g_MissionId ) > 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x232002_g_MissionId )

				--������to� � ��2����������Ϊ����to� � ������
				SetMissionByIndex( sceneId, member, misIndex, x232002_g_Param_sceneid, destsceneId )

				NewWorld( sceneId, member, destsceneId, x232002_g_Fuben_X, x232002_g_Fuben_Z )
			else
				x232002_NotifyTip( sceneId, member, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
			end
		end
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x232002_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x232002_g_MissionId ) == 0 then				--������븱��ǰɾ������,��ֱ�Ӵ��ͻ�
		x232002_NotifyTip( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x232002_g_Back_X, x232002_g_Back_Z )
		return
	end

	--��� gi�y����󸴻� �i�mλ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x232002_g_Fuben_X, x232002_g_Fuben_Z )
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x232002_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x232002_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	local TickCount	= LuaFnGetCopySceneData_Param( sceneId, x232002_g_keySD["tim"] )
	TickCount = TickCount + 1
	--������to� � ��ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, x232002_g_keySD["tim"], TickCount )

	if TickCount == 1 then
		--�ո�M� ra ����ʱ,T�i ÿc�iBoss��Χˢ����ֻС��
		local	iniLevel= LuaFnGetCopySceneData_Param( sceneId, x232002_g_keySD["lev"] )
		x232002_RefreshMonster( sceneId, iniLevel )
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--C�n �뿪
	if leaveFlag == 1 then
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount == x232002_g_CloseTick then										--����ʱ�䵽,��Ҷ���ȥ��
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--ȡ �i�m������ڳ�����

			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					NewWorld( sceneId, mems[i], oldsceneId, x232002_g_Back_X, x232002_g_Back_Z )
				end
			end
		elseif leaveTickCount < x232002_g_CloseTick then
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i ��y sau %d gi�y!", (x232002_g_CloseTick-leaveTickCount) * x232002_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x232002_NotifyTip( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == 1 then
		local	CloseMin	= floor( x232002_g_LimitTotalHoldTime * x232002_g_TickTime / 60 )
		if CloseMin > 0 then
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x232002_NotifyTip( sceneId, mems[i], "Ph� b�n hi�n t�i "..CloseMin.." Ph�t sau ��ng c�a!!" )
				end
			end
		end
	elseif TickCount >= x232002_g_LimitTotalHoldTime then						--������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x232002_NotifyTip( sceneId, mems[i], "Nhi�m v� th�t b�i, qu� gi�!" )
				--����th�t b�i,ɾ��֮
				x232002_MissionFailExe( sceneId, mems[i] )
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--��ʱ�������Աto� � �����,���������,���߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )		--ȡ �i�m����to� � �����
		local oldsceneId

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and IsHaveMission( sceneId, mems[i], x232002_g_MissionId ) > 0 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					--����th�t b�i,ɾ��֮
					x232002_NotifyTip( sceneId, mems[i], "Nhi�m v� th�t b�i, ng߽i kh�ng � trong ��ng nh�m" )
					x232002_MissionFailExe( sceneId, mems[i] )

					oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )	--ȡ �i�m������ڳ�����
					NewWorld( sceneId, mems[i], oldsceneId, x232002_g_Back_X, x232002_g_Back_Z )
				end
			end
		end

	end
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x232002_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x232002_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--T�i ÿc�iBoss��Χˢ����ֻС��
--**********************************
function x232002_RefreshMonster( sceneId, iniLevel )

	local	ini		= floor( iniLevel / 10 )
	if ini <= 0 then
		ini	= 1
	elseif ini > 10 then
		ini	= 10
	end
	local	typ		= x232002_g_typMonster[ini]	--������
	local	nai		= 0													--���ܱ��
	local	px, py														--����λ��

	--ȡ �i�m�˳�����to� � ��������
	local	numMon= GetMonsterCount( sceneId )
	--����to� � ObjId
	local idMon
	--����ֲ�
	local	lstLay	= { {-1,-1}, {1,-1}, {-1,1}, {1,1}, {0,0} }
	for i=0, numMon-1 do
		idMon				= GetMonsterObjID( sceneId, i )
		local	x, y
		x, y				= LuaFnGetWorldPos( sceneId, idMon )
		
		--�����ܱ�С��
		local	objId
		local	untLay
		for _, untLay in lstLay do
			px	= floor( x ) + untLay[1]
			py	= floor( y ) + untLay[2]
			objId = LuaFnCreateMonster( sceneId, typ, px, py, nai, -1, -1 )
			SetLevel( sceneId, objId, iniLevel )
		end
	end

end

--**********************************
--����th�t b�i
--**********************************
function x232002_MissionFailExe( sceneId, selfId )

	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x232002_g_MissionId )
	DelMission( sceneId, selfId, x232002_g_MissionIdPre )

	x232002_NotifyTip( sceneId, selfId, "Nhi�m v� b� h� th�ng t� �ng x�a" )
	
	-- �i�m������
	local	MissionRound= GetMissionData( sceneId, selfId, MD_BAIMASI_HUAN )
	--��������1
	-- SetMissionData( sceneId, selfId, MD_BAIMASI_HUAN, MissionRound + 1 )

end
