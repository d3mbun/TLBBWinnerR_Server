-- ���˸���

-- �ƾٻ,����
--MisDescBegin
-- �ű���
x801018_g_ScriptId = 801018

--�����
x801018_g_MissionId = 1220

--M�c ti�u nhi�m v�npc
x801018_g_Name = "Kh�ng bi�t"

--�������
x801018_g_MissionKind = 6


--��ng c�p nhi�m v� 
x801018_g_MissionLevel = 10000

--��ng����ngTinhӢ����
x801018_g_IfMissionElite = 0

--���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������**********************
x801018_g_IsMissionOkFail = 0							-- ������ɱ��

--������ng��̬**************************************************************

--���������m�t λ�����洢��� �i�m��to� � �ű���
--�����ı�����
x801018_g_TransScript = 400900
x801018_g_MissionName = "Kh�o tr߶ng"
x801018_g_MissionInfo = "��nh b�i t�t c� th� v� trong Kh�o tr߶ng c� th� gi�nh th�ng l�i"		--��������
x801018_g_MissionTarget = "��nh b�i t�t c� th� v� trong Kh�o tr߶ng c� th� gi�nh th�ng l�i"	--M�c ti�u nhi�m v�
x801018_g_ContinueInfo = "    Nhi�m v� c�a c�c h� v�n ch�a ho�n th�nh �?"						--δHo�n t�t nhi�m v�to� � npc�Ի�
x801018_g_MissionComplete = "    L�m t�t l�m, r�t t�t r�t t�t. "						--Ho�n t�t nhi�m v�npc˵��to� � ��
x801018_g_MissionRound = 38

--MisDescEnd

x801018_g_Pos = {{x=10,z=11},{x=31,z=13},{x=52,z=11},
								 {x=31,z=27},{x=14,z=34},{x=48,z=34},
								 {x=31,z=40},{x=14,z=49},{x=31,z=45},
								 {x=50,z=49}}

--��������
x801018_g_CopySceneName = "Kh�o tr߶ng"
x801018_g_CopySceneType = FUBEN_KAOCHANG	--��������,����T�i ScriptGlobal.lua����
x801018_g_CopySceneMap = "kaochang.nav"
x801018_g_LimitMembers = 1					--���Խ�����to� � ��С��������
x801018_g_TickTime = 5							--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x801018_g_LimitTotalHoldTime = 360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x801018_g_LimitTimeSuccess = 500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x801018_g_CloseTick = 6							--�����ر�ǰ����ʱ(��λ: ����)
x801018_g_NoUserTime = 300					--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x801018_g_DeadTrans = 0							--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
--x801018_g_Fuben_X = 50							--���븱��to� � λ��X
--x801018_g_Fuben_Z = 10							--���븱��to� � λ��Z
x801018_g_Back_X = 47								--Դ����λ��X
x801018_g_Back_Z = 92								--Դ����λ��Z
x801018_g_NeedMonsterGroupID = 1		--Boss to� � ���
x801018_g_TotalNeedKillBoss = 5			--C�n ɱ��Boss����

x801018_g_TargetNPC = "Kh�o Tr߶ng H� V�"
x801018_g_Param_sceneid = 2
x801018_g_Param_nPosRandom = 3

--**********************************
--������ں���
--**********************************
function x801018_OnDefaultEvent( sceneId, selfId )	-- �i�m���������ִ�д˽ű�

--	if GetName( sceneId, targetId ) ~= x801018_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
--		return
--	end
	local targetId = GetMissionData(sceneId,selfId,MD_EXAM_TARGETID)
	--����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x801018_g_MissionId ) > 0 then
		x801018_MakeCopyScene( sceneId, selfId )
		--������������to� � ��Ϣ
--		BeginEvent( sceneId )
--			AddText( sceneId, x801018_g_MissionName )
--			AddText( sceneId, x801018_g_ContinueInfo )
--		EndEvent( )
--		local bDone = x801018_CheckSubmit( sceneId, selfId )
--		DispatchMissionDemandInfo( sceneId, selfId, targetId, x801018_g_ScriptId, x801018_g_MissionId, bDone )
	--Th�a m�n�����������
	elseif x801018_CheckAccept( sceneId, selfId ) > 0 then
		x801018_OnAccept( sceneId, selfId, targetId )
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x801018_OnEnumerate( sceneId, selfId, targetId )
--	if GetName( sceneId, targetId ) ~= x801018_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
--		return
--	end
   --����ѽӴ�����
	if IsHaveMission( sceneId, selfId, x801018_g_MissionId ) > 0 then
		AddNumText( sceneId, x801018_g_ScriptId, x801018_g_MissionName, 4,-1 )
	end
end

--**********************************
--Ti�p th�
--**********************************
function x801018_OnAccept( sceneId, selfId, targetId )
--	if GetName( sceneId, targetId ) ~= x801018_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
--		return
--	end

	--������������б�
	AddMission( sceneId, selfId, x801018_g_MissionId, x801018_g_ScriptId, 1, 0, 0 )	-- kill��area��item
	if IsHaveMission( sceneId, selfId, x801018_g_MissionId ) <= 0 then
		return
	end

	-- ��������to� � ��� �i�m
	local nPos  = random( getn(x801018_g_Pos) )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x801018_g_MissionId)
	
	SetMissionByIndex(sceneId, selfId, misIndex, x801018_g_Param_nPosRandom, nPos)

	--��ʾ���ݸ�������Ѿ�Ti�p th�������
	local missionInfo = "    ��nh b�i t�t c� th� v� trong Kh�o tr߶ng c� th� gi�nh th�ng l�i."

	BeginEvent( sceneId )
		AddText( sceneId, "C�c h� �� nh�n nhi�m v�: " .. x801018_g_MissionName )
		AddText( sceneId, missionInfo )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	x801018_MakeCopyScene( sceneId, selfId )
end

--**********************************
--���Ti�p th�����
--**********************************
function x801018_CheckAccept( sceneId, selfId )
--	local ret = CallScriptFunction( x801018_g_MilitaryScript, "CheckAccept", sceneId, selfId )
--	return ret
	--��ô���??
	return 1
end

--**********************************
--�����ng������ύ
--**********************************
function x801018_CheckSubmit( sceneId, selfId )
	local misIndex = GetMissionIndexByID( sceneId, selfId, x801018_g_MissionId )
	if  GetMissionParam(sceneId, selfId, misIndex, x801018_g_IsMissionOkFail) >0  then
		return 1
	end 
	return 0
end

--**********************************
--��������
--**********************************
function x801018_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	local misIndex = GetMissionIndexByID( sceneId, selfId, x801018_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x801018_g_Param_sceneid )

--	if IsHaveMission( sceneId, selfId, x801018_g_UpMissionId ) > 0 then				--���������ó�th�t b�i
--		misIndex = GetMissionIndexByID( sceneId, selfId, x801018_g_UpMissionId )
--		SetMissionByIndex( sceneId, selfId, misIndex, x801018_g_IsMissionOkFail, 2 )
--		ResetMissionEvent( sceneId, selfId, x801018_g_UpMissionId, 4 )
--	end

	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x801018_g_MissionId )

	if sceneId == copyscene then											--���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		x801018_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
	end
	--��ôɾ������??
end

--**********************************
--ɱ����������
--**********************************
function x801018_OnKillObject( sceneId, selfId, objdataId ,objId )

	-- ʹ�������м�¼to� � ���ж���ng����ngɱ������
	if IsHaveMission( sceneId, selfId, x801018_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x801018_g_MissionId )

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x801018_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														--��������Ѿ����óɹر�״̬,��ɱ����Ч
		return
	end

	local monsterName = GetName(sceneId, objId)
	
	if monsterName ~= x801018_g_TargetNPC   then
		return
	end
	
	local monstercount = LuaFnGetCopySceneData_Param( sceneId, 6 )
	monstercount = monstercount - 1
	LuaFnSetCopySceneData_Param( sceneId, 6, monstercount )						--ʣ�࿼������to� � ����

	local strText

	if monstercount > 0 then
		strText = format( "C�n l�i %d h� v� t�i kh�o tr߶ng", monstercount )
		x801018_NotifyFailTips( sceneId, selfId, strText )
	else
		--����������ɱ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )

		SetMissionData(sceneId,selfId,MD_EXAM_FLAG,1)
		
		strText = format( "Ho�n t�t nhi�m v�, trong v�ng %d gi�y n�a s� ��a �n ch� ra v�o", x801018_g_CloseTick * x801018_g_TickTime )
		x801018_NotifyFailTips( sceneId, selfId, strText )

--		if IsHaveMission( sceneId, selfId, x801018_g_UpMissionId ) > 0 then				--�����������½׶�
--			misIndex = GetMissionIndexByID( sceneId, selfId, x801018_g_UpMissionId )
--			SetMissionByIndex( sceneId, selfId, misIndex, 2, 4 )
--		end

		--ɾ����������б��ж�Ӧto� � ����
		DelMission( sceneId, selfId, x801018_g_MissionId )
	end
end

--**********************************
--����
--**********************************
function x801018_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x801018_g_MissionName )
		AddText( sceneId, x801018_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x801018_g_ScriptId, x801018_g_MissionId )
end

--**********************************
--�ύ
--**********************************
function x801018_OnSubmit( sceneId, selfId, targetId, selectRadioId )
--	if GetName( sceneId, targetId ) ~= x801018_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
--		return
--	end

	if x801018_CheckSubmit( sceneId, selfId ) == 1 then
		-- ɾ��C�i n�y ����
	  DelMission( sceneId, selfId, x801018_g_MissionId )
	end
end



--**********************************
--���ͬ����븱��
--**********************************
function x801018_AcceptEnterCopyScene( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x801018_g_MissionId ) > 0 then					--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x801018_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x801018_g_Param_sceneid )
--		local teamid = GetTeamId( sceneId, selfId )

		if copysceneid >= 0 then						--��������
			--���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				local nPos = GetMissionParam(sceneId, selfId, misIndex, x801018_g_Param_nPosRandom)
		
				if nPos < 1 or nPos > 10 then
					nPos = 1
				end
				local go_Fuben_X = x801018_g_Pos[nPos].x
				local go_Fuben_Z = x801018_g_Pos[nPos].z

				NewWorld( sceneId, selfId, copysceneid, go_Fuben_X, go_Fuben_Z )
			else		-- ֻҪT�i ����û�����,����th�t b�i,C�n ����
				x801018_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i, h�y b� �i v� nh�n l�i" )
			end
			return
		end

		SetMissionByIndex( sceneId, selfId, misIndex, x801018_g_IsMissionOkFail, 0 )	--������to� � ��0����������Ϊ0,��ʾδ���to� � ����
		SetMissionByIndex( sceneId, selfId, misIndex, x801018_g_Param_sceneid, -1 )		--������to� � ��3����������Ϊ-1, ���ڱ��渱��to� � ������
		--SetMissionByIndex( sceneId, selfId, misIndex, x801018_g_Param_teamid, teamid )	--������to� � ��4�����ݶ����
		x801018_MakeCopyScene( sceneId, selfId )
	end

end

function x801018_MakeCopyScene( sceneId, selfId )

	local mylevel = GetLevel( sceneId, selfId )

	local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
	LuaFnSetSceneLoad_Map( sceneId, x801018_g_CopySceneMap )						--��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x801018_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_Timer( sceneId, x801018_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x801018_g_CopySceneType )				--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x801018_g_ScriptId )					--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							--���ø���������
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							--���ý��븱��to� � ���λ��
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 6, x801018_g_TotalNeedKillBoss )	--C�n ɱ��to� � ��������
	
	local x, z = LuaFnGetWorldPos( sceneId, selfId )
	LuaFnSetCopySceneData_Param( sceneId, 7, x )							--��ҳ���ʱ��to� � λ��
	LuaFnSetCopySceneData_Param( sceneId, 8, z )							--��ҳ���ʱ��to� � λ��
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor( mylevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Monster( sceneId, "kaochang_monster_" .. tostring(iniLevel) .. ".ini" )
	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) --c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ
	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						--��ʼ����ɺ���ô�����������
	
	if bRetSceneID > 0 then
		x801018_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
	else
		x801018_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
	end
end

--**********************************
--�����¼�
--**********************************
function x801018_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )					--���ø�����ڳ�����
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local leaderObjId = LuaFnGuid2ObjId( sceneId, leaderguid )

	if leaderObjId == -1 then
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼�to� � ״̬
		return
	end

	if IsHaveMission( sceneId, leaderObjId, x801018_g_MissionId ) > 0 then			--������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, leaderObjId, x801018_g_MissionId )

		--������to� � ��2����������Ϊ����to� � ������
		SetMissionByIndex( sceneId, leaderObjId, misIndex, x801018_g_Param_sceneid, destsceneId )
		
		--  ��t ���c���븱��to� � λ��
		local misIndex = GetMissionIndexByID(sceneId,leaderObjId,x801018_g_MissionId)
		local nPos = GetMissionParam(sceneId, leaderObjId, misIndex, x801018_g_Param_nPosRandom)
		
		if nPos < 1 or nPos > 10 then
			nPos = 1
		end
		local go_Fuben_X = x801018_g_Pos[nPos].x
		local go_Fuben_Z = x801018_g_Pos[nPos].z
		
		NewWorld( sceneId, leaderObjId, destsceneId, go_Fuben_X, go_Fuben_Z )

	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x801018_OnPlayerEnter( sceneId, selfId )
--	LuaFnSetCopySceneData_Param( sceneId, 8, LuaFnGetCopySceneData_Param( sceneId, 8 ) + 1 )
	local x = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local z = LuaFnGetCopySceneData_Param( sceneId, 8 )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", 2, x, z );

end

--**********************************
--�����T�i �����������¼�
--**********************************
function x801018_OnHumanDie( sceneId, selfId, killerId )
	local leaderguid = LuaFnGetCopySceneData_TeamLeader( sceneId )

	-- ����������,����th�t b�i,��Ϸ����
	if leaderguid == LuaFnGetGUID( sceneId, selfId ) then
--		x801018_OnAbandon( sceneId, selfId )
		local	oldsceneId	= LuaFnGetCopySceneData_Param( sceneId, 3 )
		x801018_BackToCity( sceneId, selfId )
	end
end

function x801018_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- �س�
--**********************************
function x801018_BackToCity( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )			--ȡ �i�m������ڳ�����
	local x = LuaFnGetCopySceneData_Param( sceneId, 7 )
	local z = LuaFnGetCopySceneData_Param( sceneId, 8 )
	CallScriptFunction( x801018_g_TransScript, "TransferFunc", sceneId, selfId, oldsceneId, x, z )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x801018_OnCopySceneTimer( sceneId, nowTime )
local monstercount = GetMonsterCount( sceneId )
		local monsterId
		for i = 0, monstercount - 1 do
			--�ҵ�Boss
			monsterId		= GetMonsterObjID( sceneId, i )
--			if GetMonsterGroupID( sceneId, monsterId ) == x600042_g_BossGroupId then
--				SetCharacterName( sceneId, monsterId, BossName )
--			end
		end
		
		
	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							--������to� � ��ʱ�����ô���

	-- ��Monster����
	if TickCount == 1 then
		local monsterId
		for i = 0, monstercount - 1 do
			monsterId		= GetMonsterObjID( sceneId, i )
			SetCharacterName( sceneId, monsterId, x801018_g_TargetNPC )
		end
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i=0, membercount-1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	if leaveFlag == 1 then															--C�n �뿪
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x801018_g_CloseTick then										--����ʱ�䵽,��Ҷ���ȥ��
			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x801018_BackToCity( sceneId, mems[i] )
				end
			end
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a..", ( x801018_g_CloseTick - leaveTickCount ) * x801018_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x801018_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x801018_g_LimitTotalHoldTime then --������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
  		x801018_BackToCity(sceneId,mems[i])
		end
	end
end
