--���뱦��--���˸���
--

--************************************************************************
--MisDescBegin

--�ű���
x229021_g_ScriptId = 229021

--��������
x229021_g_CopySceneName="Kho b�u"

--�����
x229021_g_MissionId = 702

--��m�t c�i����to� � ID
x229021_g_MissionIdPre = 701

--��ng����ngTinhӢ����
x229021_g_IfMissionElite = 1

--�������
x229021_g_MissionKind = 13

--��ng c�p nhi�m v� 
x229021_g_MissionLevel = 7

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--ѭ������to� � ��������,�����������to� � ���� MD_MURENXIANG_HUAN
--g_MissionRound = 9
--**********************************������ng��̬****************************

--�����ı�����
x229021_g_MissionName=""
x229021_g_MissionInfo=""  --��������
x229021_g_MissionTarget=""	--M�c ti�u nhi�m v�
x229021_g_ContinueInfo=""	--δHo�n t�t nhi�m v�to� � npc�Ի�
x229021_g_MissionComplete=""	--Ho�n t�t nhi�m v�npc˵��to� � ��

--������
x229021_g_MoneyBonus=1

--MisDescEnd
--************************************************************************

--��ɫMission����� �i�m�
x229021_g_Param_huan		=0	--0��: �Ѿ����to� � ����,T�i ��������ʱ��ֵ
x229021_g_Param_ok			=1	--1��: ��ǰ������ng�����(0δ��ɣ�1���)
x229021_g_Param_sceneid		=2	--2��: ��ǰ��������to� � ������
x229021_g_Param_guid		=3	--3��: �Ӹ�������ʱ��to� � ���GUID
x229021_g_Param_killcount	=4	--4��: ɱ�������to� � ����
x229021_g_Param_time		=5	--5��: ��ɸ�������ʱ��(��λ:  gi�y)
--6��: δ��
--7��: δ��

x229021_g_CopySceneType=FUBEN_BAOZANG	--��������,����T�i ScriptGlobal.lua����
x229021_g_LimitMembers=1			--���Խ�����to� � ��С��������
x229021_g_TickTime=5				--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x229021_g_LimitTotalHoldTime=36000	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x229021_g_LimitTimeSuccess=50000		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x229021_g_CloseTick=210				--�����ر�ǰ����ʱ(��λ: ����)
x229021_g_NoUserTime=300			--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x229021_g_DeadTrans=0				--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x229021_g_Fuben_X=23				--���븱��to� � λ��X
x229021_g_Fuben_Z=23				--���븱��to� � λ��Z
x229021_g_Back_X=160				--Դ����λ��X
x229021_g_Back_Z=150				--Դ����λ��Z
x229021_g_TotalNeedKill=1000			--C�n ɱ����������
x229021_g_MissionIdPre=701			--C�n ��ǰӵ��to� � ����
x229021_g_CopySceneTotalTime=6000

--**********************************
--������ں���
--**********************************
function x229021_OnDefaultEvent( sceneId, selfId, targetId )
end

--**********************************
--�о��¼�
--**********************************
function x229021_OnEnumerate( sceneId, selfId, targetId )
end

--**********************************
--������Ti�p th�����
--**********************************
function x229021_CheckTeamLeader( sceneId, selfId )
end

--**********************************
--���Ti�p th�����
--**********************************
function x229021_CheckAccept( sceneId, selfId )
	--if IsHaveMission(sceneId,selfId,x229021_g_MissionIdPre) > 0 then
		return 1
	--end
end

--**********************************
--Ti�p th�
--**********************************
function x229021_OnAccept( sceneId, selfId )
	local selfguid = LuaFnGetGUID( sceneId, selfId)
	x229021_MakeCopyScene( sceneId, selfId, 0 ) ;
end

--**********************************
--����
--**********************************
function x229021_OnAbandon( sceneId, selfId )
end

--**********************************
--��������
--**********************************
function x229021_MakeCopyScene( sceneId, selfId, nearmembercount )

	--PrintStr("MakeCopyScene")
	local leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "muxue.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x229021_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x229021_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x229021_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x229021_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, leaderguid); --������Һ�
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ��Bossto� � ����
	--LuaFnSetSceneLoad_Monster(sceneId, "muxue_monster_10.ini")	--7c�pľ����׽�踱��

  local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel = 0
	local playerLevel = GetLevel(sceneId, selfId)
	if playerLevel < 10 then
		iniLevel = 10
	elseif playerLevel < PlayerMaxLevel then
		iniLevel = floor( playerLevel/10 ) * 10
	else
		iniLevel = PlayerMaxLevel
	end

	LuaFnSetSceneLoad_Monster( sceneId, "muxue_monster_" .. tostring(iniLevel) .. ".ini" )

	LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, playerLevel - iniLevel) --c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!");
		else
			AddText(sceneId,"X�y d�ng ph� b�n th�t b�i");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--����
--**********************************
function x229021_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--�����ng������ύ
--**********************************
function x229021_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x229021_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--�ж�������ng���Ѿ����

end

--**********************************
--�ύ
--**********************************
function x229021_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--ɱ����������
--**********************************
function x229021_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--�����¼�
--**********************************
function x229021_OnCopySceneReady( sceneId, destsceneId )
	--PrintStr("OnCopySceneReady...")
	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--���ø�����ڳ�����
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;	
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	--local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
	--PrintNum(nearteammembercount)
	--local mems = {}
	--for	i=0,nearteammembercount-1 do
		--mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
		--misIndex = GetMissionIndexByID(sceneId,leaderObjId,x229021_g_MissionId)
		
		--������to� � ��2����������Ϊ����to� � ������
		--SetMissionByIndex(sceneId,leaderObjId,misIndex,x229021_g_Param_sceneid,destsceneId)
	
		--PrintStr("OnCopySceneReady...NewWorld...")			
		NewWorld( sceneId, leaderObjId, destsceneId, x229021_g_Fuben_X, x229021_g_Fuben_Z) ;
	--end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x229021_OnPlayerEnter( sceneId, selfId )
	--��� gi�y����󸴻� �i�mλ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", 2, x229021_g_Fuben_X, x229021_g_Fuben_Z );
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x229021_OnHumanDie( sceneId, selfId, killerId )
	if x229021_g_DeadTrans==1 then --������C�n ��ǿ���߳�����
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x229021_g_Back_X, x229021_g_Back_Z )
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x229021_OnCopySceneTimer( sceneId, nowTime )
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(sceneId) ;	
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);
	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--������to� � ��ʱ�����ô���
		
	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	
	--�뿪����ʱ��to� � ��ȡ������
	local leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
	local leaveTickCount = leaveTickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;
	
	if leaveTickCount == x229021_g_CloseTick then --����ʱ�䵽,��Ҷ���ȥ��
	
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
		
		--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			NewWorld( sceneId, mems[i], oldsceneId, x229021_g_Back_X, x229021_g_Back_Z )
		end
		
	elseif leaveTickCount>x229021_g_CloseTick-4 then
	
		local oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����

		--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
  			BeginEvent(sceneId)
  				local strText = format("C�c h� s� r�i kh�i ��y sau %d gi�y!", (x229021_g_CloseTick-leaveTickCount)*x229021_g_TickTime )
  				AddText(sceneId,strText);
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end
	elseif TickCount == x229021_g_CopySceneTotalTime then
		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;

	end

end

