--��������
--Tr�n Long k� cu�c

--************************************************************************
--MisDescBegin

--�ű���
x401000_g_ScriptId = 401000

--��������
x401000_g_CopySceneName="Tr�n Long k� cu�c"

--�����
x401000_g_MissionId = 1053

--Ŀ��NPC
x401000_g_Name = "Tr�n Long"

--��ng����ngTinhӢ����
x401000_g_IfMissionElite = 1

--�������
x401000_g_MissionKind = 1

--********���漸����ng��̬��ʾto� � ����,����T�i �����б��ж�̬��ʾ�������******
--ѭ������to� � ��������,�����������to� � ���� MD_LINGLONG_HUAN
x401000_g_MissionRound = 13
--**********************************������ng��̬****************************

--�����ı�����
x401000_g_MissionName="Tr�n Long k� cu�c"
x401000_g_MissionInfo="Gi�t h�t to�n b� qu�i v�t, 1 con c�ng kh�ng tha!"  --��������
x401000_g_MissionTarget="Gi�t h�t to�n b� qu�i v�t"	--M�c ti�u nhi�m v�
x401000_g_ContinueInfo="C�c h� ph�i ti�p t�c c� g�ng nh�!"	--δHo�n t�t nhi�m v�to� � npc�Ի�
x401000_g_MissionComplete="C�m �n, ch�ng t�i cu�i c�ng c�ng �� d�m ra kh�i c�a r�i"	--Ho�n t�t nhi�m v�npc˵��to� � ��


--������
x401000_g_MoneyBonus=7777

--MisDescEnd
--************************************************************************

--��ɫMission����� �i�m�
x401000_g_Param_huan		=0	--0��: �Ѿ����to� � ����,T�i ��������ʱ��ֵ
x401000_g_Param_ok			=1	--1��: ��ǰ������ng�����(0δ��ɣ�1���)
x401000_g_Param_sceneid		=2	--2��: ��ǰ��������to� � ������
x401000_g_Param_teamid		=3	--3��: �Ӹ�������ʱ��to� � �����
x401000_g_Param_killcount	=4	--4��: ɱ�������to� � ����
x401000_g_Param_time		=5	--5��: ��ɸ�������ʱ��(��λ:  gi�y)
--6��: δ��
--7��: δ��

x401000_g_CopySceneType=FUBEN_EXAMPLE	--��������,����T�i ScriptGlobal.lua����
x401000_g_LimitMembers=1			--���Խ�����to� � ��С��������
x401000_g_TickTime=5				--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x401000_g_LimitTotalHoldTime=360	--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x401000_g_LimitTimeSuccess=500		--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x401000_g_CloseTick=6				--�����ر�ǰ����ʱ(��λ: ����)
x401000_g_NoUserTime=300			--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x401000_g_DeadTrans=1				--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x401000_g_Fuben_X=64				--���븱��to� � λ��X
x401000_g_Fuben_Z=64				--���븱��to� � λ��Z
x401000_g_Back_X=234				--Դ����λ��X
x401000_g_Back_Z=69					--Դ����λ��Z
x401000_g_TotalNeedKill=10			--C�n ɱ����������

x401000_g_StartTick=5 --��ʼ����to� � ʱ��
x401000_g_A_B=7000	--�ɲ��ɹ���״̬��ɿɹ���״̬to� � ʱ��(��λ: �� gi�y)
x401000_g_B_C=15000	--�ɿɹ���״̬������ι���to� � ʱ��(��λ: �� gi�y)
x401000_g_MoTypeCount=9 --����������
x401000_g_Black_A={559,559,559,559,559,559,559,559,559}
x401000_g_Black_B={865,866,867,868,869,870,871,872,873}
x401000_g_Black_C={883,884,885,886,887,888,889,890,891}
x401000_g_White_A={558,558,558,558,558,558,558,558,558}
x401000_g_White_B={874,875,876,877,878,879,880,881,882}
x401000_g_White_C={892,893,894,895,896,897,898,899,900}
x401000_g_LastBoss={3010,3020,3040,3050,3070,3080,3100,3110,3140}
x401000_g_mListCount=1 --��������ѡ��to� � ��������
x401000_g_mListSize=100 --ÿc�i����ӵ��to� � ����
--��������
x401000_g_mList1=	{288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,127}
x401000_g_mList2=	{288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,127}
x401000_g_mList3=	{288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,127}
x401000_g_mList4=	{288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,127}
x401000_g_mList5=	{288,72,301,60,111,70,167,318,316,280,262,296,319,315,337,317,309,173,43,45,40,59,41,61,24,62,230,44,58,77,39,128,129,147,148,92,93,74,91,73,336,335,279,297,261,312,105,90,103,67,65,83,102,123,104,101,140,120,64,63,161,144,184,287,306,249,250,269,270,268,212,307,289,305,325,324,326,229,210,248,192,174,87,47,108,109,145,259,343,285,182,172,157,137,76,96,112,126,146,127}

--**********************************
--������ں���
--**********************************
function x401000_OnDefaultEvent( sceneId, selfId, targetId )
	if( IsHaveMission(sceneId,selfId,x401000_g_MissionId) > 0)  then	--�������Ѿ�����C�i n�y ����
		misIndex = GetMissionIndexByID(sceneId,selfId,x401000_g_MissionId)
		bDone = x401000_CheckSubmit( sceneId, selfId )
		if bDone==0 then						--����δ���
			BeginEvent(sceneId)
				AddText(sceneId,x401000_g_MissionName)
				AddText(sceneId,"S�n s�ng!")
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x401000_g_ScriptId,x401000_g_MissionId)
		elseif bDone==1 then					--�����Ѿ����
			BeginEvent(sceneId)
				AddText(sceneId,x401000_g_MissionName)
				AddText(sceneId,x401000_g_MissionComplete)
				AddText(sceneId,"C�c h� s� nh�n ���c: ")
				AddMoneyBonus(sceneId,x401000_g_MoneyBonus)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x401000_g_ScriptId,x401000_g_MissionId,bDone)
		end
    elseif x401000_CheckAccept(sceneId,selfId) > 0 then		--û������,Th�a m�n�����������
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x401000_g_MissionName)
			AddText(sceneId,x401000_g_MissionInfo)
			AddText(sceneId,"M�c ti�u nhi�m v�: ")
			AddText(sceneId,x401000_g_MissionTarget)
			AddText(sceneId,"C�c h� s� nh�n ���c: ")
			AddMoneyBonus(sceneId,x401000_g_MoneyBonus)
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x401000_g_ScriptId,x401000_g_MissionId)
    end
end

--**********************************
--�о��¼�
--**********************************
function x401000_OnEnumerate( sceneId, selfId, targetId )
	--����ѽӴ�����
	if IsHaveMission(sceneId,selfId,x401000_g_MissionId) > 0 then
		AddNumText(sceneId, x401000_g_ScriptId,x401000_g_MissionName,3,-1)
	--Th�a m�n�����������
    elseif x401000_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x401000_g_ScriptId,x401000_g_MissionName,4,-1);
    end
end

--**********************************
--���Ti�p th�����
--**********************************
function x401000_CheckTeamLeader( sceneId, selfId )
	if	GetTeamId( sceneId, selfId)<0	then	--�ж���ng���ж���
		BeginEvent(sceneId)
	  		AddText(sceneId,"C�c h� ph�i gia nh�p v�o m�t �i ng�.");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	0
	end
	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 
	
	if	nearteammembercount<x401000_g_LimitMembers	then
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
function x401000_CheckAccept( sceneId, selfId )
	if	GetTeamId( sceneId, selfId)<0	then	--�ж���ng���ж���
		BeginEvent(sceneId)
	  		AddText(sceneId,"C�c h� ph�i gia nh�p v�o m�t �i ng�.");
	  	EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return	0
	end
	
	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 

	if	nearteammembercount<x401000_g_LimitMembers	then
		BeginEvent(sceneId)
	  		AddText(sceneId,"S� ng߶i trong �i ng� c�a c�c h� kh�ng ��.");
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
		elseif IsHaveMission(sceneId,mems[i],x401000_g_MissionId)>0 then
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
function x401000_OnAccept( sceneId, selfId )
	
	local teamid = GetTeamId( sceneId, selfId)
	
	if( IsHaveMission(sceneId,selfId,x401000_g_MissionId) > 0)  then	--�Ѿ�������to� � 
		misIndex = GetMissionIndexByID(sceneId,selfId,x401000_g_MissionId)
		copysceneid = GetMissionParam( sceneId, selfId, misIndex, x401000_g_Param_sceneid)
		saveteamid = GetMissionParam( sceneId, selfId, misIndex, x401000_g_Param_teamid)
		
		if copysceneid>=0 and teamid==saveteamid then --��������
			--���Լ����͵���������
			NewWorld( sceneId, selfId, copysceneid, x401000_g_Fuben_X, x401000_g_Fuben_Z) ;
		else
			BeginEvent(sceneId)
				AddText(sceneId,"�i�u ki�n kh�ng ph� h�p");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	else
		--������������б�
		if x401000_CheckAccept(sceneId,selfId) <= 0 then	--�жϽ�������
			return 0
		end

		--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
		local	nearteammembercount = GetNearTeamCount( sceneId, selfId) 
		local mems = {}
		for	i=0,nearteammembercount-1 do
			mems[i] = GetNearTeamMember(sceneId, selfId, i)
			--��ÿc�i�����Ա��������
			AddMission( sceneId, mems[i], x401000_g_MissionId, x401000_g_ScriptId, 1, 0, 0 )
			
			misIndex = GetMissionIndexByID( sceneId, mems[i], x401000_g_MissionId )
			
			local huan = GetMissionData(sceneId,selfId,x401000_g_MissionRound)
			
			--������to� � ��0����������Ϊ�Ѿ����to� � 
			SetMissionByIndex(sceneId,mems[i],misIndex,x401000_g_Param_huan,huan)
			
			--������to� � ��1����������Ϊ0,��ʾδ���to� � ����
			SetMissionByIndex(sceneId,mems[i],misIndex,x401000_g_Param_ok,0)
			
			--������to� � ��2����������Ϊ-1, ���ڱ��渱��to� � ������
			SetMissionByIndex(sceneId,mems[i],misIndex,x401000_g_Param_sceneid,-1)

			--������to� � ��3�����ݶ����
			SetMissionByIndex(sceneId,mems[i],misIndex,x401000_g_Param_teamid,teamid)
		end
		
		x401000_MakeCopyScene( sceneId, selfId, nearteammembercount ) ;
	end
end

--**********************************
--����
--**********************************
function x401000_OnAbandon( sceneId, selfId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x401000_g_MissionId)
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x401000_g_Param_sceneid)
	
	--ɾ����������б��ж�Ӧto� � ����
    DelMission( sceneId, selfId, x401000_g_MissionId )
	
	if sceneId==copyscene then --���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		BeginEvent(sceneId)
			AddText(sceneId,"Nhi�m v� th�t b�i!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		
		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
		
		NewWorld( sceneId, selfId, oldsceneId, x401000_g_Back_X, x401000_g_Back_Z )
	end
end

--**********************************
--��������
--**********************************
function x401000_MakeCopyScene( sceneId, selfId, nearmembercount )

	local mems = {}
	mylevel = 0 
	for	i=0,nearmembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, selfId, i)
		mylevel = mylevel+GetLevel(sceneId,mems[i])
	end
	mylevel = mylevel/nearmembercount
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "zhenlong.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x401000_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x401000_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x401000_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x401000_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;--ɱ����to� � ����
	LuaFnSetCopySceneData_Param(sceneId, 8, random(1,x401000_g_mListCount)) ;--ѡ��to� � ����
	LuaFnSetCopySceneData_Param(sceneId, 9, 0) ;--�Ѿ�����to� � ����

	
	if	mylevel<=10	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 1) ;--��¼������to� � ������
	elseif	mylevel<=15	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 2) ;--��¼������to� � ������
	elseif	mylevel<=20	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 3) ;--��¼������to� � ������
	elseif	mylevel<=25	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 4) ;--��¼������to� � ������
	elseif	mylevel<=30	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 5) ;--��¼������to� � ������
	elseif	mylevel<=35	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 6) ;--��¼������to� � ������
	elseif	mylevel<=40	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 7) ;--��¼������to� � ������
	elseif	mylevel<=45	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 8) ;--��¼������to� � ������
	elseif	mylevel<=50	 then
		LuaFnSetCopySceneData_Param(sceneId,10, 9) ;--��¼������to� � ������
	end	
	

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!");
		else
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!");
			--ɾ����������б��ж�Ӧto� � ����
			DelMission( sceneId, selfId, x401000_g_MissionId )
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--����
--**********************************
function x401000_OnContinue( sceneId, selfId, targetId )

	misIndex = GetMissionIndexByID(sceneId,selfId,x401000_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x401000_g_Param_sceneid)>=1	then
		DispatchMissionContinueInfo(sceneId, selfId, targetId, x401000_g_ScriptId, x401000_g_MissionId)
	end

end

--**********************************
--�����ng������ύ
--**********************************
function x401000_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x401000_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

--�ж�������ng���Ѿ����
	misIndex = GetMissionIndexByID(sceneId,selfId,x401000_g_MissionId)
	if	GetMissionParam( sceneId, selfId, misIndex, x401000_g_Param_ok)>=1 then 
		return	1
	else
		return	0
	end
end

--**********************************
--�ύ
--**********************************
function x401000_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	if x401000_CheckSubmit( sceneId, selfId, selectRadioId )>0 then		--�Ѿ�Ho�n t�t nhi�m v���
	
		local	iHuan=GetMissionData(sceneId,selfId,MD_LINGLONG_HUAN)	--ȡ �i�m�ܹ�����to� � ����
		iHuan=iHuan+1
		local iDayCount=GetMissionData(sceneId,selfId,MD_LINGLONG_DAYCOUNT)
		local iDayTime = mod(iDayCount,100000)	--��m�t �ν�����to� � ʱ��
		local iDayHuan = floor(iDayCount/100000) --���������to� � ������
		
		local CurDaytime = GetDayTime()
		
		if CurDaytime==iDayTime then --�ϴ�Ho�n t�t nhi�m v���ngͬm�t ����
			iDayHuan = iDayHuan+1
		else
			iDayTime = CurDaytime
			iDayHuan = 1
		end
		iDayCount = iDayHuan*100000+iDayTime
		
		--���������
		money = 100*iDayHuan
		AddMoney(sceneId,selfId,money );
		
		--����ѭ������to� � ����
		SetMissionData(sceneId,selfId,MD_LINGLONG_HUAN,iHuan)
		SetMissionData(sceneId,selfId,MD_LINGLONG_DAYCOUNT,iDayCount)
		
		BeginEvent(sceneId)
			strText_M = format("Ng߽i �� �o�t ���c %d ng�n l��ng",money)
	  		strText = format("Nhi�m v� ho�n th�nh, hi�n �ang l� v�ng th� %d",iDayHuan)
	  		AddText(sceneId,strText);
	  		AddText(sceneId,strText_M);
	  	EndEvent(sceneId)
	  	DispatchMissionTips(sceneId,selfId)
	  	
		--���������Ѿ�����ɹ�
		DelMission( sceneId,selfId,  x401000_g_MissionId )
	end
end

--**********************************
--ɱ����������
--**********************************
function x401000_OnKillObject( sceneId, selfId, objdataId ,objId )
	
	--��ng����ng����
	sceneType = LuaFnGetSceneType(sceneId) ;
	if sceneType~=1 then
		return
	end 
	--��ng����ng��C�n to� � ����
	fubentype = LuaFnGetCopySceneData_Param(sceneId,0)
	if fubentype~=x401000_g_CopySceneType then
		return
	end
	--�����رձ�־
	leaveFlag = LuaFnGetCopySceneData_Param(sceneId, 4) ;
	if 	leaveFlag==1 then --��������Ѿ����óɹر�״̬,��ɱ����Ч
		return 
	end
	
	--ȡ �i�m��ǰ������to� � ����
	num = LuaFnGetCopyScene_HumanCount(sceneId)
	
	killednumber = LuaFnGetCopySceneData_Param(sceneId, 7) ;--ɱ����to� � ����
	killednumber = killednumber+1
	LuaFnSetCopySceneData_Param(sceneId, 7, killednumber) ;--����ɱ����to� � ����
	
	if killednumber<x401000_g_TotalNeedKill then

		BeginEvent(sceneId)
			strText = format("�� gi�t %d/%d", killednumber, x401000_g_TotalNeedKill )
			AddText(sceneId,strText);
		EndEvent(sceneId)

		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)--ȡ �i�m��ǰ��������to� � objId
			DispatchMissionTips(sceneId,humanObjId)

			misIndex = GetMissionIndexByID(sceneId,humanObjId,x401000_g_MissionId) --ȡ �i�m������������ֵ
			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x401000_g_Param_killcount) --ȡ �i�m�Ѿ�ɱ��to� � ������
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401000_g_Param_killcount,killedcount) --������������
		end
	elseif killednumber>=x401000_g_TotalNeedKill then
		--����������ɱ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1)
		
		--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
		TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;
		
		for i=0,num-1 do
			humanObjId = LuaFnGetCopyScene_HumanObjId(sceneId,i)	--ȡ �i�m��ǰ��������to� � objId
			misIndex = GetMissionIndexByID(sceneId,humanObjId,x401000_g_MissionId)--ȡ �i�m������������ֵ

			local killedcount = GetMissionParam( sceneId, humanObjId, misIndex, x401000_g_Param_killcount) --ȡ �i�m�Ѿ�ɱ��to� � ������
			killedcount = killedcount +1 ;
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401000_g_Param_killcount,killedcount) --������������
			
			--������to� � ��1����������Ϊ1,��ʾ���to� � ����
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401000_g_Param_ok,1)--������������
			--��ɸ�������ʱ��
			SetMissionByIndex(sceneId,humanObjId,misIndex,x401000_g_Param_time,TickCount*x401000_g_TickTime)--������������

			BeginEvent(sceneId)
				strText = format("Nhi�m v� ho�n th�nh, sau %d gi�y s� chuy�n t�i v� tr� v�o c�a", x401000_g_CloseTick*x401000_g_TickTime )
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,humanObjId)
		end
	end
end

--**********************************
--���������¼�
--**********************************
function x401000_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x401000_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x401000_OnCopySceneReady( sceneId, destsceneId )

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId);--���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId) ;	
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid);

	--ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
	local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
	local mems = {}
	for	i=0,nearteammembercount-1 do
		mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
		misIndex = GetMissionIndexByID(sceneId,mems[i],x401000_g_MissionId)
		
		--������to� � ��2����������Ϊ����to� � ������
		SetMissionByIndex(sceneId,mems[i],misIndex,x401000_g_Param_sceneid,destsceneId)
				
		NewWorld( sceneId, mems[i], destsceneId, x401000_g_Fuben_X, x401000_g_Fuben_Z) ;
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x401000_OnPlayerEnter( sceneId, selfId )
	--��� gi�y����󸴻� �i�mλ��
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x401000_g_Fuben_X, x401000_g_Fuben_Z );
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x401000_OnHumanDie( sceneId, selfId, killerId )
	if x401000_g_DeadTrans==1 then --������C�n ��ǿ���߳�����
	
		misIndex = GetMissionIndexByID(sceneId,selfId,x401000_g_MissionId)--ȡ �i�m������������ֵ
		
		--������to� � ��1����������Ϊ1,��ʾ���to� � ����
		SetMissionByIndex(sceneId,selfId,misIndex,x401000_g_Param_ok,1)--������������
		local TickCount = LuaFnGetCopySceneData_Param(sceneId, 2) ;--ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
		--��ɸ�������ʱ��
		SetMissionByIndex(sceneId,selfId,misIndex,x401000_g_Param_time,TickCount*x401000_g_TickTime)--������������

		oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x401000_g_Back_X, x401000_g_Back_Z )
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x401000_OnCopySceneTimer( sceneId, nowTime )
	
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
		
		if leaveTickCount == x401000_g_CloseTick then --����ʱ�䵽,��Ҷ���ȥ��
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
			
			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				NewWorld( sceneId, mems[i], oldsceneId, x401000_g_Back_X, x401000_g_Back_Z )
			end
			
		elseif leaveTickCount<x401000_g_CloseTick then
		
			oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����

			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
			local mems = {}
			for	i=0,membercount-1 do
				mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
				if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
	  			BeginEvent(sceneId)
	  				strText = format("C�c h� s� r�i kh�i ��y sau %d gi�y!", (x401000_g_CloseTick-leaveTickCount)*x401000_g_TickTime )
	  				AddText(sceneId,strText);
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,mems[i])
	  		end
			end
		end
	elseif TickCount == x401000_g_LimitTimeSuccess then
		--�˴�������ʱ������to� � ������ɴ���
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
  			BeginEvent(sceneId)
  				AddText(sceneId,"Th�i gian ho�n t�t nhi�m v� �� t�i, ho�n th�nh!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
  		end
  			
			misIndex = GetMissionIndexByID(sceneId,mems[i],x401000_g_MissionId)--ȡ �i�m������������ֵ
			--������to� � ��1����������Ϊ1,��ʾ���to� � ����
			SetMissionByIndex(sceneId,mems[i],misIndex,x401000_g_Param_ok,1)--������������
			--��ɸ�������ʱ��
			SetMissionByIndex(sceneId,mems[i],misIndex,x401000_g_Param_time,TickCount*x401000_g_TickTime)--������������
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;
		
	elseif TickCount == x401000_g_LimitTotalHoldTime then --������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			DelMission( sceneId, mems[i], x401000_g_MissionId );--����th�t b�i,ɾ��֮
			if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
  			BeginEvent(sceneId)
  				AddText(sceneId,"Nhi�m v� th�t b�i, qu� gi�!");
  			EndEvent(sceneId)
  			DispatchMissionTips(sceneId,mems[i])
  		end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param(sceneId, 4, 1) ;
		
	else 
		--��ʱ�������Աto� � �����,���������,���߳�����
		local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
		local mems = {}
		for	i=0,membercount-1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
			if IsHaveMission(sceneId,mems[i],x401000_g_MissionId) > 0 then
				oldteamid = LuaFnGetCopySceneData_Param(sceneId, 6) ; --ȡ �i�m����to� � �����
				if oldteamid ~= GetTeamId(sceneId,mems[i]) then
				
					DelMission( sceneId, mems[i], x401000_g_MissionId );--����th�t b�i,ɾ��֮
					if LuaFnIsObjValid(sceneId, mems[i]) == 1 and LuaFnIsCanDoScriptLogic(sceneId, mems[i]) == 1 then
  					BeginEvent(sceneId)
  						AddText(sceneId,"Nhi�m v� th�t b�i, ng߽i kh�ng � trong ��ng nh�m!");
  					EndEvent(sceneId)
  					DispatchMissionTips(sceneId,mems[i])
  				end	
 					oldsceneId = LuaFnGetCopySceneData_Param(sceneId, 3) ;--ȡ �i�m������ڳ�����
					NewWorld( sceneId, mems[i], oldsceneId, x401000_g_Back_X, x401000_g_Back_Z )
  				end
  			end
		end
		
		--��������߼�
		if TickCount>=x401000_g_StartTick and membercount>0 then --ʱ�䵽,��ʼ����
		
			mgroup = LuaFnGetCopySceneData_Param(sceneId,10) ;--��¼������to� � ������
			if mgroup > x401000_g_MoTypeCount then
				print( "Error! " )
				mgroup = 1
			end
		
			--�仯����
			local monsterobjid = -1
			monstercount = GetMonsterCount(sceneId)
			for i=0, monstercount-1 do
				monsterobjid = GetMonsterObjID(sceneId,i)
				if LuaFnIsCharacterLiving(sceneId, monsterobjid)>0 then --��to� � ����
					monstertype = GetMonsterDataID(sceneId, monsterobjid) --��������
					mcreatetime = GetObjCreateTime(sceneId, monsterobjid) --���ﴴ��ʱ��
					local PosX,PosZ=LuaFnGetWorldPos(sceneId, monsterobjid)
					PosX=floor(PosX)
					PosZ=floor(PosZ)
					
					if monstertype==x401000_g_Black_A[mgroup] then
						if nowTime>=mcreatetime+x401000_g_A_B then --C�n ��������B״̬��
							LuaFnDeleteMonster(sceneId, monsterobjid)
							LuaFnCreateMonster(sceneId,x401000_g_Black_B[mgroup],PosX,PosZ,7,0,-1)
						end
					elseif monstertype==x401000_g_Black_B[mgroup] then
						if nowTime>=mcreatetime+x401000_g_A_B+x401000_g_B_C then --C�n ��������C״̬��
							LuaFnDeleteMonster(sceneId, monsterobjid)
							LuaFnCreateMonster(sceneId,x401000_g_Black_C[mgroup],PosX,PosZ,5,0,-1)
						end
					elseif monstertype==x401000_g_White_A[mgroup] then
						if nowTime>=mcreatetime+x401000_g_A_B then --C�n ��������B״̬��
							LuaFnDeleteMonster(sceneId, monsterobjid)
							LuaFnCreateMonster(sceneId,x401000_g_White_B[mgroup],PosX,PosZ,7,0,-1)
						end
					elseif monstertype==x401000_g_White_B[mgroup] then
						if nowTime>=mcreatetime+x401000_g_A_B+x401000_g_B_C then --C�n ��������C״̬��
							LuaFnDeleteMonster(sceneId, monsterobjid)
							LuaFnCreateMonster(sceneId,x401000_g_White_C[mgroup],PosX,PosZ,5,0,-1)
						end
					else
					end
				else
				end
			end
		
			if TickCount==x401000_g_StartTick then
				local membercount = LuaFnGetCopyScene_HumanCount(sceneId)
				local mems = {}
				for	i=0,membercount-1 do
					mems[i] = LuaFnGetCopyScene_HumanObjId(sceneId,i)
  					BeginEvent(sceneId)
  						AddText(sceneId,"Cu�c chi�n b�t �u!");
  					EndEvent(sceneId)
  					DispatchMissionTips(sceneId,mems[i])
				end
			end
			
			QiPu = LuaFnGetCopySceneData_Param(sceneId, 8) ;--ȡ �i�m����
			PressStep = LuaFnGetCopySceneData_Param(sceneId, 9) ;--ȡ �i�m�Ѿ�����to� � ����
			if PressStep<x401000_g_mListSize then
				PressStep = PressStep+1 ;
				local QiPuValue = 0 
				if QiPu==1 then
					QiPuValue = x401000_g_mList1[PressStep]
				elseif QiPu==2 then
					QiPuValue = x401000_g_mList2[PressStep]
				elseif QiPu==3 then
					QiPuValue = x401000_g_mList3[PressStep]
				elseif QiPu==4 then
					QiPuValue = x401000_g_mList4[PressStep]
				else
					QiPuValue = x401000_g_mList5[PressStep]
				end
				
				--�����������ɹ���
				local xPos,zPos=x401000_IndexToPos(QiPuValue)
				MonsterType = mod(PressStep,2)
				mobjid = 0
				if PressStep==x401000_g_mListSize then --���m�t c�iˢto� � �������
					mobjid = LuaFnCreateMonster(sceneId,x401000_g_LastBoss[mgroup],xPos,zPos,3,0,-1)
				else
					if MonsterType==0 then
						mobjid = LuaFnCreateMonster(sceneId,x401000_g_Black_A[mgroup],xPos,zPos,3,0,-1)
					else
						mobjid = LuaFnCreateMonster(sceneId,x401000_g_White_A[mgroup],xPos,zPos,3,0,-1)
					end
				end
				--print(QiPu,PressStep,QiPuValue,MonsterType,mobjid)
				
				LuaFnSetCopySceneData_Param(sceneId, 9, PressStep);--������to� � ��ʱ�����ô���
			end				
		end
	end
end

function x401000_GetDisplayPos( x, z )
	return x*3+36+1,z*3+36+1
end

function x401000_IndexToPos( index )
	xP = floor(index/19)
	zP = mod(index,19)
	return xP*3+36+1,zP*3+36+1
end
