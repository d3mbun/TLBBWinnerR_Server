--��������
--����
--

--************************************************************************
--MisDescBegin
--�ű���
x808016_g_ScriptId	= 808016
--��������
x808016_g_CopySceneName	= "еng L�ng Ba"
--�����
x808016_g_MissionId			= 1250
--��m�t c�i����to� � ID
x808016_g_MissionIdPre	= 0
--Ŀ��NPC
x808016_g_Name					= "��nh l�n m�n ph�i"
--��ng����ngTinhӢ����
x808016_g_IfMissionElite= 1
--��ng c�p nhi�m v� 
x808016_g_MissionLevel	= 10000
--�������
x808016_g_MissionKind		= 1
--�����ı�����
x808016_g_MissionName			= "��nh l�n m�n ph�i"
--��������
x808016_g_MissionInfo			= "  "
--M�c ti�u nhi�m v�
x808016_g_MissionTarget		= "  Gi�t h�t qu�i v�t li�n c� th� ho�n t�t nhi�m v�"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x808016_g_ContinueInfo		= "  "
--Ho�n t�t nhi�m v�npc˵��to� � ��
x808016_g_MissionComplete	= "  "

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--ѭ������to� � ��������,�����������to� � ���� MD_SHUILAO_HUAN
--������ng���Ѿ����
--**********************************������ng��̬****************************
--��ɫMission����� �i�m�
x808016_g_Param_IsMissionOkFail	= 0						--0��: ��ǰ������ng�����(0δ��ɣ�1���)
x808016_g_Param_killmonstercount	= 1					--1��: ɱ������С��to� � ����
x808016_g_Param_killbosscount	= 2							--2��: ɱ������boss��to� � ����
x808016_g_Param_sceneid		= 3									--3��: ��ǰ��������to� � ������
x808016_g_Param_teamid		= 4									--4��: �Ӹ�������ʱ��to� � �����
x808016_g_Param_time			= 5									--5��: ��ɸ�������ʱ��(��λ:  gi�y)
																							--6��: ���帱���¼��ű�ռ��
																							--7��: ���帱���¼��ű�ռ��
--MisDescEnd
--************************************************************************

x808016_g_CopySceneType			= FUBEN_XIAOYAO1	--��������,����T�i ScriptGlobal.lua����
x808016_g_LimitMembers			= 1		--���Խ�����to� � ��С��������
x808016_g_TickTime					= 5		--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x808016_g_LimitTotalHoldTime= 360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x808016_g_LimitTimeSuccess	= 500	--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x808016_g_CloseTick					= 6		--�����ر�ǰ����ʱ(��λ: ����)
x808016_g_NoUserTime				= 300	--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x808016_g_Fuben_X						= 43	--���븱��to� � λ��X
x808016_g_Fuben_Z						= 128	--���븱��to� � λ��Z
x808016_g_Back_X						= 43	--Դ����λ��X
x808016_g_Back_Z						= 128	--Դ����λ��Z
x808016_g_Totalkillmonstercount	= 30	--C�n ɱ��monster����
x808016_g_Totalkillbosscount	= 1	--C�n ɱ��Boss����

--����������������
x808016_g_keySD					= {}
x808016_g_keySD["typ"]	= 0		--���ø�������
x808016_g_keySD["spt"]	= 1		--���ø��������¼��ű���
x808016_g_keySD["tim"]	= 2		--���ö�ʱ�����ô���
x808016_g_keySD["scn"]	= 3		--���ø�����ڳ�����, ��ʼ��
x808016_g_keySD["cls"]	= 4		--���ø����رձ�־, 0����,1�ر�
x808016_g_keySD["dwn"]	= 5		--�����뿪����ʱ����
x808016_g_keySD["tem"]	= 6		--��������
x808016_g_keySD["x"]	= 7			--����T�i ��ڳ�����to� � xλ��
x808016_g_keySD["z"]	= 8			--����T�i ��ڳ�����to� � zλ��
x808016_g_keySD["killedmonsternum"]	= 9		--ɱ�����to� � ����
x808016_g_keySD["killedbossnum"]	= 10		--ɱ��Bossto� � ����
x808016_g_keySD["mp"]	= 11		--��¼��ǰ����to� �  ����

--��ȡ����to� � ��͵�c�p
x808016_g_minLevel			= 20
--C�n ����С����
x808016_g_typMonster		= 749	--ˮ��̽��
--����id
x808016_g_MenPaiID		= MP_XIAOYAO

x808016_g_NianNum = 5
x808016_g_NianPos = {
											{x=150  ,y=118},
											{x=151  ,y=129},
											{x=115  ,y=136},
											{x=128  ,y=144},
											{x=63   ,y=68 },
										}
x808016_g_NianShou = {12200,12201,12202,12203,12204,12205,12206,12207,12208,12209,12210,12211}										
--**********************************
--������ں���
--**********************************
function x808016_OnDefaultEvent( sceneId, selfId, targetId )

	x808016_OnAccept( sceneId, selfId, targetId )


end

--**********************************
--�о��¼�
--**********************************
function x808016_OnEnumerate( sceneId, selfId, targetId )

	local	MenPaiID	=	GetMenPai(sceneId, selfId)
	--if(MenPaiID ~= x808016_g_MenPaiID) then
	--	x808016_NotifyTip( sceneId, selfId, "Ta t�i Ti�u Dao � h�i t�i, ng߽i kh�ng ph�i l� � t� c�a Ti�u Dao, mau mau tr�nh ra" )
	--	return
	--end

	local	lev	= GetLevel( sceneId, selfId )
	if lev < x808016_g_minLevel then
	  x808016_NotifyTip( sceneId, selfId, "��ng c�p c�a ng߽i qu� th�p, c� b�n kh�ng l�t v�o m�t ta. ��i sau khi ��t c�p 20, h�y t�i t�m ta" )
		return
	end

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808016_NotifyTip( sceneId, selfId, "Ng߽i mu�n t�i th� ta, nh�ng c� b�n ta kh�ng mu�n �ng th� v�i ng߽i" )
		return
	end
	--PrintNum(3)

	if GetTeamSize( sceneId, selfId ) < x808016_g_LimitMembers then
	  x808016_NotifyTip( sceneId, selfId, "Mu�n th� th�ch ta ch� �t c�ng ph�i t�i 3 ng߶i. C� t� ng߶i th� n�y, qu� coi th߶ng ta" )
	  return
	end
	--PrintNum(4)

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x808016_NotifyTip( sceneId, selfId, "Mu�n th� th�ch ta? G�i nh�m tr߷ng c�a c�c ng߽i ra ��y" )
		return
	end
	--PrintNum(5)
	-- ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x808016_NotifyTip( sceneId, selfId, "Trong �i ng� c�a c�c h� c� th�nh vi�n kh�ng � ph� c�n, xin h�y t�p trung r�i �n t�m ta ��a v�o ho�t �ng." )
		return
	end
	
	local namenum = 0;
	local notifyString = "Trong �i ng� c�a c�c h� c� th�nh vi�n (";
	for i=0, nearteammembercount-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		local	lev	= GetLevel( sceneId, nPlayerId )
		local	nam	= GetName( sceneId, nPlayerId )
		
		if(lev<x808016_g_minLevel) then
			notifyString = notifyString..nam.." ";
			namenum = 1;
		end
	end
	notifyString = notifyString..") ��ng c�p kh�ng ��.";	
	if(namenum>0) then
		x808016_NotifyTip( sceneId, selfId, notifyString )
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, "N�u c�c ng߽i �� kh�ng s� ch�t, ta c�ng kh�ng c�n thi�t ph�i l�u t�nh. L� o�t kia, � ta cho c�c ng߽i n�m m�i l�i h�i" )
		AddNumText( sceneId, x808016_g_ScriptId, "L� n�o ta l�i s� ng߽i.." ,10 ,0 )
  EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���Ti�p th�����
--**********************************
function x808016_CheckAccept( sceneId, selfId )
	local	MenPaiID	=	GetMenPai(sceneId, selfId)
	--if(MenPaiID ~= x808016_g_MenPaiID) then
	--	x808016_NotifyTip( sceneId, selfId, "Ta t�i Ti�u Dao � h�i t�i, ng߽i kh�ng ph�i l� � t� c�a Ti�u Dao, mau mau tr�nh ra" )
	--	return 0;
	--end

	local	lev	= GetLevel( sceneId, selfId )
	if lev < x808016_g_minLevel then
	  x808016_NotifyTip( sceneId, selfId, "��ng c�p c�a ng߽i qu� th�p, c� b�n kh�ng l�t v�o m�t ta. ��i sau khi ��t c�p 20, h�y t�i t�m ta" )
		return 0
	end

	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808016_NotifyTip( sceneId, selfId, "Ng߽i mu�n t�i th� ta, nh�ng c� b�n ta kh�ng mu�n �ng th� v�i ng߽i" )
		return 0
	end
	--PrintNum(3)

	if GetTeamSize( sceneId, selfId ) < x808016_g_LimitMembers then
	  x808016_NotifyTip( sceneId, selfId, "Mu�n th� th�ch ta ch� �t c�ng ph�i t�i 3 ng߶i. C� t� ng߶i th� n�y, qu� coi th߶ng ta" )
	  return 0
	end
	--PrintNum(4)

	if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
		x808016_NotifyTip( sceneId, selfId, "Mu�n th� th�ch ta? G�i nh�m tr߷ng c�a c�c ng߽i ra ��y" )
		return 0
	end
	--PrintNum(5)

	-- ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local nearteammembercount = GetNearTeamCount( sceneId, selfId )
	if nearteammembercount ~= LuaFnGetTeamSize( sceneId, selfId ) then
		x808016_NotifyTip( sceneId, selfId, "Trong �i ng� c�a c�c h� c� th�nh vi�n kh�ng � ph� c�n, xin h�y t�p trung r�i �n t�m ta ��a v�o ho�t �ng." )
		return 0
	end
	
	local namenum = 0;
	local notifyString = "Trong �i ng� c�a c�c h� c� th�nh vi�n (";
	for i=0, nearteammembercount-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		local	lev	= GetLevel( sceneId, nPlayerId )
		local	nam	= GetName( sceneId, nPlayerId )
		
		if(lev<x808016_g_minLevel) then
			notifyString = notifyString..nam.." ";
			namenum = 1;
		end
	end
	notifyString = notifyString..") ��ng c�p kh�ng ��.";	
	if(namenum>0) then
		x808016_NotifyTip( sceneId, selfId, notifyString )
		return 0
	end
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x808016_OnAccept( sceneId, selfId, targetId )
	if x808016_CheckAccept( sceneId, selfId ) == 0 then
		return
	end
	local teamid = GetTeamId( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x808016_g_MissionId ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x808016_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x808016_g_Param_sceneid )
		local saveteamid = GetMissionParam( sceneId, selfId, misIndex, x808016_g_Param_teamid )
		--��������
		if copysceneid >= 0 and teamid == saveteamid then
			--���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x808016_g_Fuben_X, x808016_g_Fuben_Z )
			else
				x808016_NotifyTip( sceneId, selfId, "Nhi�m v� th�t b�i, h�y b� �i v� nh�n l�i" )
				SetMissionByIndex( sceneId, selfId, misIndex, x808016_g_Param_IsMissionOkFail, 2 )
				DelMission(sceneId, selfId, x808016_g_MissionId);
			end
			return
		end
	end

	--������������б�
	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local numMem	= GetNearTeamCount( sceneId, selfId )
	local member
	local i
	local misIndex
	for i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, selfId, i );
		if IsMissionFull(sceneId, member) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, "Trong �i ng� c� ng߶i nhi�m v� �� �y!");
			EndEvent()
			DispatchMissionTips(sceneId, selfId);
			return
		end
	end
	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, selfId, i )

		if IsHaveMission( sceneId, member, x808016_g_MissionId ) > 0 then
			--ɾ����
			DelMission( sceneId, member, x808016_g_MissionId);
		end

		--��ÿc�i�����Ա��������
		AddMission( sceneId, member, x808016_g_MissionId, x808016_g_ScriptId, 1, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, member, x808016_g_MissionId )
		--������to� � ��0����������Ϊ0,��ʾδ���to� � ����
		SetMissionByIndex( sceneId, member, misIndex, x808016_g_Param_IsMissionOkFail, 0 )
		--������to� � ��2����������Ϊ-1, ���ڱ��渱��to� � ������
		SetMissionByIndex( sceneId, member, misIndex, x808016_g_Param_sceneid, -1 )
		--������to� � ��3�����ݶ����
		SetMissionByIndex( sceneId, member, misIndex, x808016_g_Param_teamid, teamid )
	end
	x808016_MakeCopyScene( sceneId, selfId, numMem )
	LuaFnDeleteMonster( sceneId, targetId)
end

--**********************************
--����
--**********************************
function x808016_OnAbandon( sceneId, selfId )
	--��T�i ����to� � �����˲���
	if LuaFnIsObjValid( sceneId, selfId ) ~= 1 then
		return
	end

	--�����޷�ִ���߼�to� � ״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return
	end

	--����ngT�i ������ֱ��ɾ������
	local misIndex = GetMissionIndexByID( sceneId, selfId, x808016_g_MissionId )
	local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x808016_g_Param_sceneid )

	if(copysceneid ~= sceneId) then
		DelMission( sceneId, selfId, x808016_g_MissionId )
		return
	end

	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	--�Ҳ��������
	if leaderObjId == -1 then
		DelMission( sceneId, selfId, x808016_g_MissionId )
		return
	end

	--��ʱm�t ��T�i ������,���� ��t ���c��ڳ�����
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["scn"] )	--ȡ �i�m������ڳ�����
	if(selfId == leaderObjId) then
		--�ӳ�����,ȫ����������
		LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["cls"], 1 )
		local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
		local mems = {}
		local i
		for	i=0, membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
		end
		--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				DelMission( sceneId, mems[i], x808016_g_MissionId )
				x = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["x"] )
				z = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["z"] )
				NewWorld( sceneId, mems[i], oldsceneId, x, z )
			end
		end
	else
	--�Լ�����ng�ӳ�ֻ��ng�Լ�����,ֻ���Լ���������
		DelMission( sceneId, selfId, x808016_g_MissionId )
		x = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["x"] )
		z = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["z"] )
		NewWorld( sceneId, selfId, oldsceneId, x, z )
	end
end

--**********************************
--��������
--**********************************
function x808016_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	local mylevel = 0
	local i

-- 	PrintStr("sdlf")

	local member, mylevel, numerator, denominator = 0, 0, 0, 0

	for	i = 0, nearmembercount - 1 do
		member = GetNearTeamMember( sceneId, selfId, i )
		numerator = numerator + GetLevel( sceneId, member ) ^ 4
		denominator = denominator + GetLevel( sceneId, member ) ^ 3
		mems[i] = member
	end

	if denominator <= 0 then
		mylevel = 0
	else
		mylevel = numerator / denominator
	end

	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	--��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetSceneLoad_Map( sceneId, "xiaoyao_1.nav" )
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x808016_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x808016_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["typ"], x808016_g_CopySceneType )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["spt"], x808016_g_ScriptId )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["tim"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["scn"], -1 )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["cls"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["dwn"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["tem"], GetTeamId( sceneId, selfId ) )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["killedmonsternum"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["killedbossnum"], 0 )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["mp"], MP_XIAOYAO )

	local x,z = GetWorldPos( sceneId, selfId )

--	PrintStr("  "..x..z.." ")

	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["x"], x808016_g_Back_X )
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["z"], x808016_g_Back_Z )

	LuaFnSetSceneLoad_Monster( sceneId, "xiaoyao_1_monster_" .. iniLevel .. ".ini" )
	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ
  LuaFnSetCopySceneData_Param(sceneId, 13, mylevel)
  
	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x808016_NotifyTip( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x808016_NotifyTip( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )

		--ɾ����������б��ж�Ӧto� � ����
		for	i=0, nearmembercount-1 do
			DelMission( sceneId, mems[i], x808016_g_MissionId )
		end
	end

end

--**********************************
--����
--**********************************
function x808016_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--�����ng������ύ
--**********************************
function x808016_CheckSubmit( sceneId, selfId, selectRadioId )


end

--**********************************
--�ύ
--**********************************
function x808016_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--ɱ����������
--**********************************
function x808016_OnKillObject( sceneId, selfId, objdataId, objId )

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x808016_g_CopySceneType then
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

	local killedmonsternumber = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["killedmonsternum"] )			--ɱ��monsterto� � ����
	local killedbossnumber = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["killedbossnum"] )			--ɱ��bossto� � ����

	local MonsterName = GetName(sceneId, objId)
	local	isBoss

	if(MonsterName == "L�u La")then
		killedmonsternumber = killedmonsternumber + 1
		LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["killedmonsternum"], killedmonsternumber )					--����ɱ��monsterto� � ����
		isBoss = 0

		if killedmonsternumber ==  x808016_g_Totalkillmonstercount then

			local	Selflev	= GetLevel( sceneId, selfId )
			local PlayerMaxLevel = GetHumanMaxLevelLimit()
			local monsterLevel=0
			if Selflev < 10 then
				monsterLevel = 0
			elseif Selflev < 110 then
				monsterLevel = floor( Selflev/10 ) + 3670 - 1
			elseif Selflev < PlayerMaxLevel then
				monsterLevel = floor( Selflev/10 ) + 33670 - 11
			else
				monsterLevel = 9
			end

			local tmpMonsterId = LuaFnCreateMonster( sceneId, monsterLevel, 124, 88, 14, 138, -1 )
			local tmpsMessage = format("Th�t ��ng gh�t, nh�n th�y ch�ng ta s�p ��nh b�t ng� th�nh c�ng, t� nhi�n l�i nh� th�, ��ng tr�ch ta kh�ng kh�ch kh�")
			MonsterTalk(sceneId, tmpMonsterId, x808016_g_CopySceneName, tmpsMessage)
			local szName = GetName(sceneId, tmpMonsterId)
			if szName == "�c B�"   then
				SetCharacterTitle(sceneId, tmpMonsterId, "Th� s�n h�u l�")
			end
		end

	elseif ( MonsterName == "�c B�" ) then
		killedbossnumber = killedbossnumber + 1
		LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["killedbossnum"], killedbossnumber )					--����ɱ��bossto� � ����
		isBoss = 1
	end



	-------------------------------------------------------------------------------
	local membercount = LuaFnGetCopyScene_HumanCount(sceneId);
	local memId
	local teamLeaderName;
	local firstMemName;
	local firstMemId;

	teamLeaderName = ""
	for	i = 0, membercount - 1 do
		memId = LuaFnGetCopyScene_HumanObjId(sceneId, i);
		if LuaFnIsObjValid( sceneId, memId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, memId ) == 1 then
			local teamLeaderFlag = LuaFnIsTeamLeader(sceneId, memId);
			if teamLeaderFlag and teamLeaderFlag == 1 then
				teamLeaderName = LuaFnGetName(sceneId, memId);
				break;
			end
		end
	end

	if isBoss==1 and teamLeaderName ~= "" then

		
		local message;
		local randMessage = random(3);

		if randMessage == 1 then
			message = format("#B#{_INFOUSR%s}#{TouXi_00}#G#{MP_xiaoyao}#{TouXi_01}", teamLeaderName );
		elseif randMessage == 2 then
			message = format("#G#{MP_xiaoyao}#{TouXi_02}#{_INFOUSR%s}#{TouXi_03}#B#{_INFOUSR%s}#{TouXi_04}", teamLeaderName, teamLeaderName );
		else
			message = format("#{TouXi_05}#G#{MP_xiaoyao}#{TouXi_06}#{_INFOUSR%s}#{TouXi_07}", teamLeaderName );
		end

		BroadMsgByChatPipe(sceneId, selfId, message, 4);


	end
	-------------------------------------------------------------------------------


	local i
	local misIndex
	local humanObjId
	local	mppoint

	if (killedmonsternumber < x808016_g_Totalkillmonstercount ) or (killedbossnumber < x808016_g_Totalkillbosscount )then
		local strText = format( "�� gi�t ch�t b�n L�u la: %d/%d �� gi�t ch�t b�n �c B�: %d/%d" , killedmonsternumber, x808016_g_Totalkillmonstercount, killedbossnumber, x808016_g_Totalkillbosscount )
		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )				--ȡ �i�m��ǰ��������to� � objId
			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, humanObjId ) == 1 then					--��T�i ����to� � �����˲���
				x808016_NotifyTip( sceneId, humanObjId, strText )

				local	MenPaiID	=	GetMenPai(sceneId, humanObjId)
				if(MenPaiID == x808016_g_MenPaiID) then
					if isBoss == 0 then
						mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
						mppoint = mppoint+1
						SetHumanMenpaiPoint(sceneId, humanObjId, mppoint)
					else
						mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
						mppoint = mppoint+5
						SetHumanMenpaiPoint(sceneId, humanObjId, mppoint)
					end
				end

				misIndex = GetMissionIndexByID( sceneId, humanObjId, x808016_g_MissionId )					--ȡ �i�m������������ֵ
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808016_g_Param_killmonstercount, killedmonsternumber )	--������������
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808016_g_Param_killbosscount, killedbossnumber )	--������������
			end
		end
	else

		--����������ɱ�־
		LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["cls"], 1 )

		--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
		local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
		local strText = format( "�� gi�t ch�t b�n L�u la: %d/%d �� gi�t ch�t b�n �c B�: %d/%d", x808016_g_Totalkillmonstercount, x808016_g_Totalkillmonstercount, x808016_g_Totalkillbosscount, x808016_g_Totalkillbosscount)
		local strText2 = format( "Nhi�m v� ho�n th�nh, sau %d gi�y s� chuy�n t�i v� tr� v�o c�a", x808016_g_CloseTick * x808016_g_TickTime )

		for i=0, num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )									--ȡ �i�m��ǰ��������to� � objId

			if LuaFnIsObjValid( sceneId, humanObjId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, humanObjId ) == 1 then										--��T�i ����to� � �����˲���
				misIndex = GetMissionIndexByID( sceneId, humanObjId, x808016_g_MissionId)					--ȡ �i�m������������ֵ

				SetMissionByIndex( sceneId, humanObjId, misIndex, x808016_g_Param_killmonstercount, killedmonsternumber )	--������������
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808016_g_Param_killbosscount, killedbossnumber )	--������������

				--������to� � ��1����������Ϊ1,��ʾ���to� � ����
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808016_g_Param_IsMissionOkFail, 1 )					--������������
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, humanObjId, misIndex, x808016_g_Param_time, TickCount * x808016_g_TickTime )	--������������

				x808016_NotifyTip( sceneId, humanObjId, strText )
				x808016_NotifyTip( sceneId, humanObjId, strText2 )

				local	MenPaiID	=	GetMenPai(sceneId, humanObjId)
				if(MenPaiID == x808016_g_MenPaiID) then
					if isBoss == 0 then
						mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
						mppoint = mppoint+1
						SetHumanMenpaiPoint(sceneId, humanObjId, mppoint)
					else
						mppoint = GetHumanMenpaiPoint(sceneId, humanObjId)
						mppoint = mppoint+5
						SetHumanMenpaiPoint(sceneId, humanObjId, mppoint)
					end
				end

			end
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x808016_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x808016_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x808016_OnCopySceneReady( sceneId, destsceneId )

	--���ø�����ڳ�����
	LuaFnSetCopySceneData_Param( destsceneId, x808016_g_keySD["scn"], sceneId )
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

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
	local member
	local misIndex

	misIndex = GetMissionIndexByID( sceneId, leaderObjId, x808016_g_MissionId )
	SetMissionByIndex( sceneId, leaderObjId, misIndex, x808016_g_Param_sceneid, destsceneId )
	NewWorld( sceneId, leaderObjId, destsceneId, x808016_g_Fuben_X, x808016_g_Fuben_Z )
	
	--�ͳ��
	LuaFnAuditQuest(sceneId, leaderObjId, x808016_g_MissionName.."-"..x808016_g_CopySceneName)

	for	i=0, numMem-1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )

		if LuaFnIsCanDoScriptLogic( sceneId, member ) == 1 then			-- ���ڿ���ִ���߼�to� � ״̬
			if IsHaveMission( sceneId, member, x808016_g_MissionId ) > 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x808016_g_MissionId )

				--������to� � ��2����������Ϊ����to� � ������
				SetMissionByIndex( sceneId, member, misIndex, x808016_g_Param_sceneid, destsceneId )

				NewWorld( sceneId, member, destsceneId, x808016_g_Fuben_X, x808016_g_Fuben_Z )
				
				--�ͳ��
				LuaFnAuditQuest(sceneId, member, x808016_g_MissionName.."-"..x808016_g_CopySceneName)
	
			else
				x808016_NotifyTip( sceneId, member, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
			end
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x808016_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x808016_g_MissionId ) == 0 then				--������븱��ǰɾ������,��ֱ�Ӵ��ͻ�
		x808016_NotifyTip( sceneId, selfId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["scn"] )		--ȡ �i�m������ڳ�����
		x = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["x"] )
		z = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["z"] )
		NewWorld( sceneId, selfId, oldsceneId, x, z )
		return
	end


	--��� gi�y����󸴻� �i�mλ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x808016_g_Fuben_X, x808016_g_Fuben_Z )

end

--**********************************
--�����T�i �����������¼�
--**********************************
function x808016_OnHumanDie( sceneId, selfId, killerId )
--	x = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["x"] )
--	z = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["z"] )
--	NewWorld( sceneId, selfId, oldsceneId, x, z )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x808016_OnCopySceneTimer( sceneId, nowTime )

	local once = LuaFnGetCopySceneData_Param( sceneId, 16 )

	if (once == 0) then
		LuaFnSetCopySceneData_Param(sceneId, 16, 1)
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 13 )
		
		local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel;
		if mylevel < 10 then
			iniLevel = 10;
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor(mylevel/10) * 10;
		else
			iniLevel = PlayerMaxLevel;
		end
	 
		local iNianShouIdx = iniLevel / 10
	
		for i=1,x808016_g_NianNum do
			local objId = LuaFnCreateMonster( sceneId, x808016_g_NianShou[iniLevel/10], x808016_g_NianPos[i].x, x808016_g_NianPos[i].y, 1, 272, -1 )
			SetLevel( sceneId, objId, mylevel )
			LuaFnSendSpecificImpactToUnit(sceneId, objId, objId, objId, 10472, 0); -- zchw
		end  
	end

	--����ʱ�Ӷ�ȡ������
	--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["tim"] )
	TickCount = TickCount + 1
	--������to� � ��ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["tim"], TickCount )

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["cls"] )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	if membercount==0 and leaveFlag~=1 then
		LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["cls"], 1 )
		return
	end



	for	i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--C�n �뿪
	if leaveFlag == 1 then
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["dwn"] )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["dwn"], leaveTickCount )

		if leaveTickCount == x808016_g_CloseTick then										--����ʱ�䵽,��Ҷ���ȥ��
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["scn"] )	--ȡ �i�m������ڳ�����

			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					DelMission( sceneId, mems[i], x808016_g_MissionId )
					x = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["x"] )
					z = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["z"] )
					NewWorld( sceneId, mems[i], oldsceneId, x, z )
				end
			end

		--	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )

		elseif leaveTickCount < x808016_g_CloseTick then
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i ��y sau %d gi�y!", (x808016_g_CloseTick-leaveTickCount) * x808016_g_TickTime )

			for	i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x808016_NotifyTip( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x808016_g_LimitTimeSuccess then
		--�˴�������ʱ������to� � ������ɴ���
		local misIndex
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then

			DelMission( sceneId, mems[i], x808016_g_MissionId )

				x808016_NotifyTip( sceneId, mems[i], "Th�i gian ho�n t�t nhi�m v� �� t�i, ho�n th�nh!" )

				--ȡ �i�m������������ֵ
				misIndex = GetMissionIndexByID( sceneId, mems[i], x808016_g_MissionId )
				--������to� � ��1����������Ϊ1,��ʾ���to� � ����
				--������������
				SetMissionByIndex( sceneId, mems[i], misIndex, x808016_g_Param_IsMissionOkFail, 1 )
				--��ɸ�������ʱ��
				SetMissionByIndex( sceneId, mems[i], misIndex, x808016_g_Param_time, TickCount * x808016_g_TickTime )	--������������
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["cls"], 1 )
	elseif TickCount == x808016_g_LimitTotalHoldTime then						--������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				DelMission( sceneId, mems[i], x808016_g_MissionId )				--����th�t b�i,ɾ��֮
				x808016_NotifyTip( sceneId, mems[i], "Nhi�m v� th�t b�i, qu� gi�!" )
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, x808016_g_keySD["cls"], 1 )
	else
		--��ʱ�������Աto� � �����,���������,���߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["tem"] )		--ȡ �i�m����to� � �����
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["scn"] )	--ȡ �i�m������ڳ�����

		for	i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and IsHaveMission( sceneId, mems[i], x808016_g_MissionId ) > 0 then
				if oldteamid ~= GetTeamId( sceneId, mems[i] ) then
					DelMission( sceneId, mems[i], x808016_g_MissionId )			--����th�t b�i,ɾ��֮
					x808016_NotifyTip( sceneId, mems[i], "Nhi�m v� th�t b�i, ng߽i kh�ng � trong ��ng nh�m" )

					x = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["x"] )
					z = LuaFnGetCopySceneData_Param( sceneId, x808016_g_keySD["z"] )
					NewWorld( sceneId, mems[i], oldsceneId, x, z )
				end
			end
		end

	end
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808016_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x808016_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808016_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
