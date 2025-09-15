--��������
--ľ��

--************************************************************************
--MisDescBegin

--�ű���
x210222_g_ScriptId = 210222

--��������
x210222_g_CopySceneName="H�u hoa vi�n"
x210222_g_CopySceneMap = "newbie_2.nav"
x210222_g_CopySceneMonster = "newbie_2_monster.ini"

--�����
x210222_g_MissionId = 702

--��m�t c�i����to� � ID
x210222_g_MissionIdPre = 701

--Ŀ��NPC
x210222_g_Name = "Th� Ph�"

--��ng����ngTinhӢ����
x210222_g_IfMissionElite = 1

--�������
x210222_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210222_g_MissionLevel = 7

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--ѭ������to� � ��������,�����������to� � ���� MD_MURENXIANG_HUAN
--g_MissionRound = 9
--**********************************������ng��̬****************************

--�����ı�����
x210222_g_MissionName="H�u hoa vi�n"
x210222_g_MissionInfo="#{event_dali_0032}"  --��������
x210222_g_MissionTarget="V�o c�a sau c�a Hoa Vi�n. "	--M�c ti�u nhi�m v�
x210222_g_ContinueInfo="V�o c�a sau c�a Hoa Vi�n. "	--δHo�n t�t nhi�m v�to� � npc�Ի�
x210222_g_MissionComplete="  Nhi�m v� ho�n th�nh"	--Ho�n t�t nhi�m v�npc˵��to� � ��
x210222_g_SignPost = {x = 275, z = 50, tip = "Ho�ng Mi T�ng "}
x210222_g_PetDataID=558	--�������to� � ���

--��ɫMission����� �i�m�
x210222_g_Param_huan		=0	--0��: �Ѿ����to� � ����,T�i ��������ʱ��ֵ
x210222_g_IsMissionOkFail	=1	--1��: ��ǰ������ng�����(0δ��ɣ�1���)
x210222_g_Param_sceneid		=2	--2��: ��ǰ��������to� � ������
x210222_g_Param_guid		=3	--3��: �Ӹ�������ʱ��to� � ���GUID
x210222_g_Param_killcount	=4	--4��: ɱ�������to� � ����
x210222_g_Param_time		=5	--5��: ��ɸ�������ʱ��(��λ:  gi�y)
--6��: δ��
--7��: δ��

--������
x210222_g_MoneyBonus=2

--MisDescEnd
--************************************************************************

x210222_g_CopySceneType=FUBEN_MURENXIANG_7	--��������,����T�i ScriptGlobal.lua����
x210222_g_LimitMembers=1			--���Խ�����to� � ��С��������
x210222_g_TickTime=5				--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x210222_g_LimitTotalHoldTime=360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x210222_g_LimitTimeSuccess=500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x210222_g_CloseTick=6				--�����ر�ǰ����ʱ(��λ: ����)
x210222_g_NoUserTime=300			--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x210222_g_DeadTrans=0				--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x210222_g_Fuben_X=44				--���븱��to� � λ��X
x210222_g_Fuben_Z=54				--���븱��to� � λ��Z
x210222_g_Back_X=275				--Դ����λ��X
x210222_g_Back_Z=50					--Դ����λ��Z
x210222_g_TotalNeedKill=0			--C�n ɱ����������
x210222_g_MissionIdPre=701			--C�n ��ǰӵ��to� � ����

--**********************************
--������ں���
--**********************************
function x210222_OnDefaultEvent( sceneId, selfId, targetId )
	if IsHaveMission(sceneId,selfId,x210222_g_MissionId) > 0  then	--�������Ѿ�����C�i n�y ����
		misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
		bDone = x210222_CheckSubmit( sceneId, selfId )
		if bDone==0 then						--����δ���
			BeginEvent(sceneId)
				AddText(sceneId,x210222_g_MissionName)
				AddText(sceneId,"Chu�n b� xong ch�a?")
				AddMoneyBonus( sceneId, x210222_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x210222_g_ScriptId,x210222_g_MissionId)
		elseif bDone==1 then					--�����Ѿ����
			BeginEvent(sceneId)
				AddText(sceneId,x210222_g_MissionName)
				AddText(sceneId,x210222_g_MissionComplete)
				--AddText(sceneId,"�㽫 �i�m��: ")
				--AddMoneyBonus(sceneId,x210222_g_MoneyBonus)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x210222_g_ScriptId,x210222_g_MissionId,bDone)
		end
    elseif x210222_CheckAccept(sceneId,selfId) > 0 then		--û������,Th�a m�n�����������
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210222_g_MissionName)
			AddText(sceneId,x210222_g_MissionInfo)
			--AddText(sceneId,"M�c ti�u nhi�m v�: ")
			--AddText(sceneId,x210222_g_MissionTarget)
			--AddText(sceneId,"�㽫 �i�m��: ")
			--AddMoneyBonus(sceneId,x210222_g_MoneyBonus)
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210222_g_ScriptId,x210222_g_MissionId)
    end
end

--**********************************
--�о��¼�
--**********************************
function x210222_OnEnumerate( sceneId, selfId, targetId )
	if IsMissionHaveDone(sceneId,selfId,x210222_g_MissionId) > 0 then
		return
	end
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x210222_g_MissionId) > 0 then
		AddNumText(sceneId, x210222_g_ScriptId,x210222_g_MissionName,2,-1);
	--Th�a m�n�����������
    elseif x210222_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210222_g_ScriptId,x210222_g_MissionName,1,-1);
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210222_CheckAccept( sceneId, selfId )
	if IsHaveMission(sceneId,selfId,x210222_g_MissionIdPre) <= 0    then
		return 0
	end

	local petcount = LuaFnGetPetCount(sceneId, selfId) --ȡ �i�m��������
	for	i=0,petcount-1 do
		petdataid = LuaFnGetPet_DataID(sceneId, selfId, i) --ȡ �i�m������
		if petdataid==x210222_g_PetDataID then
			return	0
		end
	end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x210222_OnAccept( sceneId, selfId )

	local selfguid = LuaFnGetGUID( sceneId, selfId)

	if( IsHaveMission(sceneId,selfId,x210222_g_MissionId) > 0)  then	--�Ѿ�������to� � 
		misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, x210222_g_Param_sceneid)
		saveguid = GetMissionParam( sceneId, selfId, misIndex, x210222_g_Param_guid)

		if copysceneid>=0 and selfguid==saveguid then --��������
			--���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x210222_g_Fuben_X, x210222_g_Fuben_Z )
			else
				x210222_NotifyFailTips( sceneId, selfId, "B�n Th�m �� ��ng, Xin sau khi b� nhi�m v� n�y h�y nh�n l�i nhi�m v�" )
			end
		else
			x210222_NotifyFailTips( sceneId, selfId, "H�y nh�n l�i nhi�m v� n�y" )
		end
	else
		--������������б�
		if x210222_CheckAccept(sceneId,selfId) <= 0 then	--�жϽ�������
			return 0
		end

		--��ÿc�i�����Ա��������
		AddMission( sceneId, selfId, x210222_g_MissionId, x210222_g_ScriptId, 0, 0, 0 )

		misIndex = GetMissionIndexByID( sceneId, selfId, x210222_g_MissionId )

		--������to� � ��1����������Ϊ0,��ʾδ���to� � ����
		SetMissionByIndex(sceneId,selfId,misIndex,x210222_g_IsMissionOkFail,0)

		--������to� � ��2����������Ϊ-1, ���ڱ��渱��to� � ������
		SetMissionByIndex(sceneId,selfId,misIndex,x210222_g_Param_sceneid,-1)

		--������to� � ��3�����ݶ����
		SetMissionByIndex(sceneId,selfId,misIndex,x210222_g_Param_guid,selfguid)
		Msg2Player( sceneId, selfId,"#YNh�n nhi�m v�#W: H�u hoa vi�n",MSG2PLAYER_PARA )
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, x210222_g_SignPost.x, x210222_g_SignPost.z, x210222_g_SignPost.tip )
		x210222_MakeCopyScene( sceneId, selfId, 0 )
	end
end

--**********************************
--����
--**********************************
function x210222_OnAbandon( sceneId, selfId )
	misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x210222_g_Param_sceneid)
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x210222_g_MissionId )

	if sceneId==copyscene then --���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� k�t th�c cu�c th�m hi�m H�u hoa vi�n, h�y quay v� th�nh ��i L�!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����

		NewWorld( sceneId, selfId, oldsceneId, x210222_g_Back_X, x210222_g_Back_Z )
	end
end

--**********************************
--��������
--**********************************
function x210222_MakeCopyScene( sceneId, selfId, nearmembercount )

	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, x210222_g_CopySceneMap); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x210222_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x210222_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x210222_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x210222_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, leaderguid); --������Һ�
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ��Bossto� � ����
	LuaFnSetSceneLoad_Monster(sceneId, x210222_g_CopySceneMonster)	--7c�p��԰׽�踱��

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!");
		else
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!");
			--ɾ����������б��ж�Ӧto� � ����
			DelMission( sceneId, selfId, x210222_g_MissionId )
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--����
--**********************************
function x210222_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x210222_g_Param_sceneid)>=1	then
		BeginEvent(sceneId)
			AddText(sceneId,x210222_g_MissionComplete);
		EndEvent(sceneId)
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x210222_g_ScriptId, x210222_g_MissionId)
	end

end

--**********************************
--�����ng������ύ
--**********************************
function x210222_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x210222_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--�ж�������ng���Ѿ����
	misIndex = GetMissionIndexByID(sceneId,selfId,x210222_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x210222_g_IsMissionOkFail)>=1 then
		return	1
	else
		return	0
	end
	return 0
end

--**********************************
--�ύ
--**********************************
function x210222_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x210222_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		-- �Ѿ�Ho�n t�t nhi�m v���
		--���������
		money = x210222_g_MoneyBonus									-- *iDayHuan
		AddMoney(sceneId,selfId,money );

		BeginEvent(sceneId)
	  		AddText(sceneId,"Nhi�m v� ho�n th�nh")
	  	EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)

		--���������Ѿ�����ɹ�
		DelMission( sceneId, selfId, x210222_g_MissionId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x210222_OnKillObject( sceneId, selfId, objdataId, objId )
end

--**********************************
--���������¼�
--**********************************
function x210222_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210222_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x210222_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) == 1 then			-- ���ڿ���ִ���߼�to� � ״̬
		if IsHaveMission( sceneId, leaderObjId, x210222_g_MissionId ) > 0 then
			misIndex = GetMissionIndexByID( sceneId, leaderObjId, x210222_g_MissionId )

			--������to� � ��2����������Ϊ����to� � ������
			SetMissionByIndex( sceneId, leaderObjId, misIndex, x210222_g_Param_sceneid, destsceneId )

			NewWorld( sceneId, leaderObjId, destsceneId, x210222_g_Fuben_X, x210222_g_Fuben_Z )
		else
			x210222_NotifyFailTips( sceneId, leaderObjId, "C�c h� �� kh�ng nh�n nhi�m v� n�y t� tr߾c" )
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x210222_OnPlayerEnter( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x210222_g_MissionId ) == 0 then				--������븱��ǰɾ������,��ֱ�Ӵ��ͻ�
		x210222_NotifyFailTips( sceneId, selfId, "C�c h� hi�n ch�a nh�n nhi�m v� n�y, h�y quay v� th�nh ��i L�!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x210222_g_Back_X, x210222_g_Back_Z )
		return
	end

	--��� gi�y����󸴻� �i�mλ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x210222_g_Fuben_X, x210222_g_Fuben_Z );
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x210222_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x210222_OnCopySceneTimer( sceneId, nowTime )

	--����ʱ�Ӷ�ȡ������
	TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount+1 ;
	LuaFnSetCopySceneData_Param(sceneId, 2, TickCount);--������to� � ��ʱ�����ô���

	--�����رձ�־
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;

	if leaveFlag == 1 then --C�n �뿪

		--�뿪����ʱ��to� � ��ȡ������
		leaveTickCount = LuaFnGetCopySceneData_Param(sceneId, 5) ;
		leaveTickCount = leaveTickCount+1 ;
		LuaFnSetCopySceneData_Param(sceneId, 5, leaveTickCount) ;

		if leaveTickCount == x210222_g_CloseTick then --����ʱ�䵽,��Ҷ���ȥ��

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����

			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x210222_g_Back_X, x210222_g_Back_Z )
			end

		elseif leaveTickCount<x210222_g_CloseTick then

			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����

			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
	  		local strText = format("C�c h� s� r�i kh�i ��y sau %d gi�y!", (x210222_g_CloseTick-leaveTickCount)*x210222_g_TickTime )
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x210222_g_LimitTotalHoldTime then --������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x210222_g_MissionId );--����th�t b�i,ɾ��֮

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi�m v� th�t b�i, qu� gi�!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;
	end
end

function x210222_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent(sceneId)
		AddText(sceneId, Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
