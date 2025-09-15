--��������
--Thu� lao

--************************************************************************
--MisDescBegin

--�ű���
x401020_g_ScriptId = 401020

--��������
x401020_g_CopySceneName="Thu� lao"

--�����
x401020_g_MissionId = 1055

--Ŀ��NPC
x401020_g_Name = "Thu� lao"

--��ng����ngTinhӢ����
x401020_g_IfMissionElite = 1

--�������
x401020_g_MissionKind = 1

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--ѭ������to� � ��������,�����������to� � ���� MD_SHUILAO_HUAN
x401020_g_MissionRound = 7
--**********************************������ng��̬****************************

--�����ı�����
x401020_g_MissionName="Thu� lao"
x401020_g_MissionInfo="Gi�t h�t to�n b� qu�i v�t, 1 con c�ng kh�ng tha!"  --��������
x401020_g_MissionTarget="Gi�t h�t to�n b� qu�i v�t"	--M�c ti�u nhi�m v�
x401020_g_ContinueInfo="C�c h� ph�i ti�p t�c c� g�ng nh�!"	--δHo�n t�t nhi�m v�to� � npc�Ի�
x401020_g_MissionComplete="C�m �n, ch�ng t�i cu�i c�ng c�ng �� d�m ra kh�i c�a r�i"	--Ho�n t�t nhi�m v�npc˵��to� � ��


--������
x401020_g_MoneyBonus=9999

--MisDescEnd
--************************************************************************

--��ɫMission����� �i�m�
x401020_g_Param_huan		=0	--0��: �Ѿ����to� � ����,T�i ��������ʱ��ֵ
x401020_g_Param_ok			=1	--1��: ��ǰ������ng�����(0δ��ɣ�1���)
x401020_g_Param_sceneid		=2	--2��: ��ǰ��������to� � ������
x401020_g_Param_teamid		=3	--3��: �Ӹ�������ʱ��to� � �����
x401020_g_Param_killcount	=4	--4��: ɱ�������to� � ����
x401020_g_Param_time		=5	--5��: ��ɸ�������ʱ��(��λ:  gi�y)
--6��: δ��
--7��: δ��

x401020_g_CopySceneType=FUBEN_EXAMPLE	--��������,����T�i ScriptGlobal.lua����
x401020_g_LimitMembers=1			--���Խ�����to� � ��С��������
x401020_g_TickTime=5				--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x401020_g_LimitTotalHoldTime=360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x401020_g_LimitTimeSuccess=500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x401020_g_CloseTick=6				--�����ر�ǰ����ʱ(��λ: ����)
x401020_g_NoUserTime=300			--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x401020_g_DeadTrans=1				--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x401020_g_Fuben_X=64				--���븱��to� � λ��X
x401020_g_Fuben_Z=64				--���븱��to� � λ��Z
x401020_g_Back_X=234				--Դ����λ��X
x401020_g_Back_Z=69					--Դ����λ��Z
x401020_g_NeedMonsterGroupID=1		--C�n ɱ��to� � Bossto� � GroupID
x401020_g_TotalNeedKillBoss=10		--C�n ɱ��Boss����

--**********************************
--������ں���
--**********************************
function x401020_OnDefaultEvent( sceneId, selfId, targetId )
	if( IsHaveMission(sceneId,selfId,x401020_g_MissionId) > 0)  then	--�������Ѿ�����C�i n�y ����
		misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
		bDone = x401020_CheckSubmit( sceneId, selfId )
		if bDone==0 then						--����δ���
			BeginEvent(sceneId)
				AddText(sceneId,x401020_g_MissionName)
				AddText(sceneId,"Chu�n b� xong ch�a?")
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x401020_g_ScriptId,x401020_g_MissionId)
		elseif bDone==1 then					--�����Ѿ����
			BeginEvent(sceneId)
				AddText(sceneId,x401020_g_MissionName)
				AddText(sceneId,x401020_g_MissionComplete)
				AddText(sceneId,"C�c h� s� nh�n ���c: ")
				AddMoneyBonus(sceneId,x401020_g_MoneyBonus)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x401020_g_ScriptId,x401020_g_MissionId,bDone)
		end
    elseif x401020_CheckAccept(sceneId,selfId) > 0 then		--û������,Th�a m�n�����������
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x401020_g_MissionName)
			AddText(sceneId,x401020_g_MissionInfo)
			AddText(sceneId,"M�c ti�u nhi�m v�: ")
			AddText(sceneId,x401020_g_MissionTarget)
			AddText(sceneId,"C�c h� s� nh�n ���c: ")
			AddMoneyBonus(sceneId,x401020_g_MoneyBonus)
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x401020_g_ScriptId,x401020_g_MissionId)
    end
end

--**********************************
--�о��¼�
--**********************************
function x401020_OnEnumerate( sceneId, selfId, targetId )
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x401020_g_MissionId) > 0 then
		AddNumText(sceneId, x401020_g_ScriptId,x401020_g_MissionName,3,-1);
	--Th�a m�n�����������
    elseif x401020_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x401020_g_ScriptId,x401020_g_MissionName,4,-1);
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x401020_CheckTeamLeader( sceneId, selfId )
	if	GetTeamId( sceneId, selfId)<0	then	--�ж���ng���ж���
		BeginEvent(sceneId)
	  		AddText(sceneId,"C�c h� ph�i gia nh�p v�o m�t �i ng�");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	0
	end
	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 
	
	if	nearteammembercount<x401020_g_LimitMembers	then
		BeginEvent(sceneId)
	  		AddText(sceneId,"S� ng߶i trong �i ng� c�a c�c h� kh�ng ��");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	 0
	end
	
	if	LuaFnIsTeamLeader( sceneId, selfId)==0	then	--ֻ�жӳ����ܽ�����
		BeginEvent(sceneId)
	  		AddText(sceneId,"Ng߶i kh�ng ph�i l� nh�m tr߷ng");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	 0
	end
	
	return nearteammembercount
end

--**********************************
--���Ti�p th�����
--**********************************
function x401020_CheckAccept( sceneId, selfId )
	if	GetTeamId( sceneId, selfId)<0	then	--�ж���ng���ж���
		BeginEvent(sceneId)
	  		AddText(sceneId,"C�c h� ph�i gia nh�p v�o m�t �i ng�");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	0
	end
	
	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 

	if	nearteammembercount<x401020_g_LimitMembers	then
		BeginEvent(sceneId)
	  		AddText(sceneId,"S� ng߶i trong �i ng� c�a c�c h� kh�ng ��");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	 0
	end
	
	if	LuaFnIsTeamLeader( sceneId, selfId)==0	then	--ֻ�жӳ����ܽ�����
		BeginEvent(sceneId)
	  		AddText(sceneId,"Ng߶i kh�ng ph�i l� nh�m tr߷ng");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	 0
	end
	
	--���С������ng�����������¼����, ������ng���Ѿ��ӹ�������
	local mems = {}
	for	i=0,nearteammembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, selfId, i)
		if GetMissionCount( sceneId, mems[i]) >= 20 then	--������������������ng��ﵽ����20c�i
			BeginEvent(sceneId)
				AddText(sceneId,"Ghi ch�p nhi�m v� c�a ng߶i trong �i ng� �� �y");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		elseif IsHaveMission(sceneId,mems[i],x401020_g_MissionId)>0 then
			--������ng���Ѿ��ӹ��������������m�t c�i����
			BeginEvent(sceneId)
				AddText(sceneId,"Trong �i �� c� ng߶i nh�n nhi�m v� n�y");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	return	1
end

--**********************************
--Ti�p th�
--**********************************
function x401020_OnAccept( sceneId, selfId )
	
	local teamid = GetTeamId( sceneId, selfId)
	
	if( IsHaveMission(sceneId,selfId,x401020_g_MissionId) > 0)  then	--�Ѿ�������to� � 
		misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_sceneid)
		saveteamid = GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_teamid)
		
		if copysceneid>=0 and teamid==saveteamid then --��������
			--���Լ����͵���������
			NewWorld( sceneId, selfId, copysceneid, x401020_g_Fuben_X, x401020_g_Fuben_Z) ;
		else
			BeginEvent(sceneId)
				AddText(sceneId,"�i�u ki�n kh�ng ph� h�p");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	else
		--������������б�
		if x401020_CheckAccept(sceneId,selfId) <= 0 then	--�жϽ�������
			return 0
		end

		--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
		local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 
		local mems = {}
		for	i=0,nearteammembercount-1 do
			mems[i] = GetNearTeamMember(sceneId, selfId, i)
			--��ÿc�i�����Ա��������
			AddMission( sceneId, mems[i], x401020_g_MissionId, x401020_g_ScriptId, 1, 0, 0 )
			
			misIndex = GetMissionIndexByID( sceneId, mems[i], x401020_g_MissionId )
			
			local huan = GetMissionData(sceneId,selfId,x401020_g_MissionRound)
			
			--������to� � ��0����������Ϊ�Ѿ����to� � 
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_huan,huan)
			
			--������to� � ��1����������Ϊ0,��ʾδ���to� � ����
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_ok,0)
			
			--������to� � ��2����������Ϊ-1, ���ڱ��渱��to� � ������
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_sceneid,-1)

			--������to� � ��3�����ݶ����
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_teamid,teamid)
		end
		
		x401020_MakeCopyScene( sceneId, selfId, nearteammembercount ) ;
	end
end

--**********************************
--����
--**********************************
function x401020_OnAbandon( sceneId, selfId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_sceneid)
	
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x401020_g_MissionId )
	
	if sceneId==copyscene then --���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi�m v� th�t b�i!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
		
		NewWorld( sceneId, selfId, oldsceneId, x401020_g_Back_X, x401020_g_Back_Z )
	end
end

--**********************************
--��������
--**********************************
function x401020_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	mylevel = 0 
	for	i=0,nearmembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, selfId, i)
		mylevel = mylevel+GetLevel(sceneId,mems[i])
	end
	mylevel = mylevel/nearmembercount
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "shuilao.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x401020_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x401020_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x401020_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x401020_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ��Bossto� � ����
	
	if	mylevel<=10	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_10.ini")
	elseif	mylevel<=15	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_15.ini")
	elseif	mylevel<=20	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_20.ini")
	elseif	mylevel<=25	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_25.ini")
	elseif	mylevel<=30	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_30.ini")
	elseif	mylevel<=35	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_35.ini")
	elseif	mylevel<=40	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_40.ini")
	elseif	mylevel<=45	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_45.ini")
	elseif	mylevel<=50	 then
		LuaFnSetSceneLoad_Monster(sceneId, "shuilao_monster_50.ini")
	end	
	

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!");
		else
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!");
			--ɾ����������б��ж�Ӧto� � ����
			DelMission( sceneId, selfId, x401020_g_MissionId )
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--����
--**********************************
function x401020_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_sceneid)>=1	then
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x401020_g_ScriptId, x401020_g_MissionId)
	end

end

--**********************************
--�����ng������ύ
--**********************************
function x401020_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x401020_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--�ж�������ng���Ѿ����
	misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x401020_g_Param_ok)>=1 then 
		return	1
	else
		return	0
	end
end

--**********************************
--�ύ
--**********************************
function x401020_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x401020_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		--�Ѿ�Ho�n t�t nhi�m v���
	
		local	iHuan=GetMissionData(sceneId,selfId,MD_SHUILAO_HUAN)	--ȡ �i�m�ܹ�����to� � ����
		iHuan=iHuan+1
		--begin modified by zhangguoxin 090207
		local iDayCount=GetMissionData(sceneId,selfId,MD_SHUILAO_DAYCOUNT)
		local iTime = mod(iDayCount,100000)
		--local iDayTime = floor(iTime/100)	--��m�t �ν�����to� � ʱ��(����)
		local iDayTime = iTime							--��m�t �ν�����to� � ʱ��(����)
		--local iHourTime = mod(iTime,100)	--��m�t �ν�����to� � ʱ��(Сʱ)
		local iDayHuan = floor(iDayCount/100000) --���������to� � S� l�n nhi�m v� 
		
		--local CurTime = GetHourTime()		--��ǰʱ��
		local CurDaytime = GetDayTime()	--��ǰʱ��(��)
		--local CurHourTime = mod(CurTime,100)	--��ǰʱ��(Сʱ)
		
		if CurDaytime==iDayTime then 	--�ϴ�Ho�n t�t nhi�m v���ngͬm�t ����
			iDayHuan = iDayHuan+1
		else				--�ϴ�Ho�n t�t nhi�m v���T�i ͬm�t ��,����
			iDayTime = CurDaytime
			iDayHuan = 1
		end
		
		--iDayCount = iDayHuan*100000+iDayTime*100+CurHourTime
		iDayCount = iDayHuan*100000 + CurDaytime;
		
		--���������
		money = 100*iDayHuan
		AddMoney(sceneId,selfId,money );
		
		--����ѭ������to� � ����
		SetMissionData(sceneId,selfId,MD_SHUILAO_HUAN,iHuan)
		SetMissionData(sceneId,selfId,MD_SHUILAO_DAYCOUNT,iDayCount)
		--end modified by zhangguoxin 090207
		
		BeginEvent(sceneId)
			strText_M = format("Ng߽i �� �o�t ���c %d ng�n l��ng",money)
	  		strText = format("Nhi�m v� ho�n th�nh, hi�n �ang l� v�ng th� %d",iDayHuan)
	  		AddText(sceneId,strText);
	  		AddText(sceneId,strText_M);
	  	EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
	  	
		--���������Ѿ�����ɹ�
		DelMission( sceneId,selfId,  x401020_g_MissionId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x401020_OnKillObject( sceneId, selfId, objdataId ,objId )
	
	--��ng����ng����
	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType~=1 then
		return
	end 
	--��ng����ng��C�n to� � ����
	fubentype = LuaFnGetCopySceneData_Param(sceneId,0)
	if fubentype~=x401020_g_CopySceneType then
		return
	end
	--�����رձ�־
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	if 	leaveFlag==1 then --��������Ѿ����óɹر�״̬,��ɱ����Ч
		return 
	end
	
	--ȡ �i�m��ǰ������to� � ����
	num = LuaFnGetCopyScene_HumanCount(sceneId)
	
	--ȡ �i�mɱ������to� � GroupID,�����ж���ng����ng��C�n ɱ��to� � Boss
	GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID ~= x401020_g_NeedMonsterGroupID then
		return --����ng��C�n to� � Boss
	end
	
	killedbossnumber = LuaFnGetCopySceneData_Param(sceneId, 7) ;--ɱ��Bossto� � ����
	killedbossnumber = killedbossnumber+1
	LuaFnSetCopySceneData_Param(sceneId, 7, killedbossnumber) ;--����ɱ��Bossto� � ����
	
	if killedbossnumber<x401020_g_TotalNeedKillBoss then

		BeginEvent(sceneId)
			strText = format("�� gi�t tr�m %d/%d", killedbossnumber, x401020_g_TotalNeedKillBoss )
			AddText(sceneId,strText);
		EndEvent(sceneId)

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--ȡ �i�m��ǰ��������to� � objId
			DispatchMissionTips(sceneId,humanObjId)

			misIndex = GetMissionIndexByID(sceneId,humanObjId,x401020_g_MissionId) --ȡ �i�m������������ֵ
			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x401020_g_Param_killcount) --ȡ �i�m�Ѿ�ɱ��to� � ������
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401020_g_Param_killcount,killedcount) --������������
		end
	elseif killedbossnumber>=x401020_g_TotalNeedKillBoss then
		--����������ɱ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1)
		
		--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
		TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;
		
		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)	--ȡ �i�m��ǰ��������to� � objId
			misIndex = GetMissionIndexByID(sceneId,humanObjId,x401020_g_MissionId)--ȡ �i�m������������ֵ

			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x401020_g_Param_killcount) --ȡ �i�m�Ѿ�ɱ��to� � ������
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401020_g_Param_killcount,killedcount) --������������

			--������to� � ��1����������Ϊ1,��ʾ���to� � ����
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401020_g_Param_ok,1)--������������
			--��ɸ�������ʱ��
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401020_g_Param_time,TickCount*x401020_g_TickTime)--������������

			BeginEvent(sceneId)
				strText = format("Nhi�m v� ho�n th�nh, sau %d gi�y s� chuy�n t�i v� tr� v�o c�a", x401020_g_CloseTick*x401020_g_TickTime )
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,humanObjId)
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x401020_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x401020_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x401020_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;	
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
	local mems = {}
	for	i=0,nearteammembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
		misIndex = GetMissionIndexByID(sceneId,mems[i],x401020_g_MissionId)
		
		--������to� � ��2����������Ϊ����to� � ������
		SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_sceneid,destsceneId)
				
		NewWorld( sceneId, mems[i], destsceneId, x401020_g_Fuben_X, x401020_g_Fuben_Z) ;
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x401020_OnPlayerEnter( sceneId, selfId )
	--��� gi�y����󸴻� �i�mλ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x401020_g_Fuben_X, x401020_g_Fuben_Z );
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x401020_OnHumanDie( sceneId, selfId, killerId )
	if x401020_g_DeadTrans==1 then --������C�n ��ǿ���߳�����
	
		misIndex = GetMissionIndexByID(sceneId,selfId,x401020_g_MissionId)--ȡ �i�m������������ֵ
		
		--������to� � ��1����������Ϊ1,��ʾ���to� � ����
		SetMissionByIndex(sceneId,selfId,misIndex,x401020_g_Param_ok,1)--������������
		local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
		--��ɸ�������ʱ��
		SetMissionByIndex(sceneId,selfId,misIndex,x401020_g_Param_time,TickCount*x401020_g_TickTime)--������������

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x401020_g_Back_X, x401020_g_Back_Z )
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x401020_OnCopySceneTimer( sceneId, nowTime )
	
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
		
		if leaveTickCount == x401020_g_CloseTick then --����ʱ�䵽,��Ҷ���ȥ��
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
			
			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x401020_g_Back_X, x401020_g_Back_Z )
			end
			
		elseif leaveTickCount<x401020_g_CloseTick then
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����

			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
	  			BeginEvent(sceneId)
	  				strText = format("C�c h� s� r�i kh�i ��y sau %d gi�y!", (x401020_g_CloseTick-leaveTickCount)*x401020_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
			end
		end
	elseif TickCount == x401020_g_LimitTimeSuccess then
		--�˴�������ʱ������to� � ������ɴ���
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			
  			BeginEvent(sceneId)
  				AddText(sceneId,"Th�i gian ho�n t�t nhi�m v� �� t�i, ho�n th�nh!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
  			
			misIndex = GetMissionIndexByID(sceneId,mems[i],x401020_g_MissionId)--ȡ �i�m������������ֵ
			--������to� � ��1����������Ϊ1,��ʾ���to� � ����
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_ok,1)--������������
			--��ɸ�������ʱ��
			SetMissionByIndex(sceneId,mems[i],misIndex,x401020_g_Param_time,TickCount*x401020_g_TickTime)--������������
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;
		
	elseif TickCount == x401020_g_LimitTotalHoldTime then --������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x401020_g_MissionId );--����th�t b�i,ɾ��֮

  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi�m v� th�t b�i, qu� gi�!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;
		
	else 
		--��ʱ�������Աto� � �����,���������,���߳�����
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if IsHaveMission(sceneId,mems[i],x401020_g_MissionId) > 0 then
				oldteamid = LuaFnGetCopySceneData_Param(sceneId, 6) ; --ȡ �i�m����to� � �����
				if oldteamid ~= GetTeamId(sceneId,mems[i]) then
				
					DelMission( sceneId, mems[i], x401020_g_MissionId );--����th�t b�i,ɾ��֮

  					BeginEvent(sceneId)
  						AddText(sceneId,"Nhi�m v� th�t b�i, ng߽i kh�ng � trong ��ng nh�m");
  					EndEvent(sceneId)
  					DispatchMissionTips(sceneId,mems[i])
  					
 					oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
					NewWorld( sceneId, mems[i], oldsceneId, x401020_g_Back_X, x401020_g_Back_Z )
  				end
  			end
		end
		
	end
end

