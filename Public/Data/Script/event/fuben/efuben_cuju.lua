-- 402040 
-- ��ϸ���

--************************************************************************

--�ű���
x402040_g_ScriptId = 402040

x402040_TIME_2000_01_03_ = 946828868

--************************************************************************

--��������
x402040_g_CopySceneName = "M�u �an uy�n"

x402040_g_CopySceneType = FUBEN_CUJU	--��������,����T�i ScriptGlobal.lua����

x402040_g_CopySceneMap = "cuju.nav"
x402040_g_Exit = "cuju.ini"
x402040_g_LimitMembers = 3				--���Խ�����to� � ��С��������
x402040_g_TickTime = 1						--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x402040_g_LimitTotalHoldTime = 360--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x402040_g_LimitTimeSuccess = 500	--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x402040_g_CloseTick = 3						--�����ر�ǰ����ʱ(��λ: ����)
x402040_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x402040_g_DeadTrans = 0						--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x402040_g_Fuben_X = 38						--���븱��to� � λ��X
x402040_g_Fuben_Z = 32						--���븱��to� � λ��Z
x402040_g_Back_X = 203							--Դ����λ��X
x402040_g_Back_Z = 56							--Դ����λ��Z
x402040_g_Back_SceneId = 0				--Դ����Id

x402040_g_BossPoint={x=61, z=57}

x402040_g_MonsterPoint=
{
	{x=41,z=32},{x=46,z=32},{x=51,z=32},{x=56,z=32},{x=61,z=32},{x=66,z=32},
	{x=71,z=32},{x=76,z=32},{x=81,z=32},{x=86,z=32},{x=86,z=37},{x=86,z=42},
	{x=86,z=47},{x=86,z=52},{x=86,z=57},{x=86,z=62},{x=86,z=67},{x=86,z=72},
	{x=86,z=77},{x=86,z=82},{x=86,z=87},{x=86,z=92},{x=86,z=97},{x=86,z=102},
	{x=81,z=102},{x=76,z=102},{x=71,z=102},{x=66,z=102},{x=61,z=102},{x=56,z=102},
	{x=51,z=102},{x=46,z=102},{x=41,z=102},{x=41,z=97},{x=41,z=92},{x=41,z=87},
	{x=41,z=82},{x=41,z=77},{x=41,z=72},{x=41,z=67},{x=41,z=62},{x=41,z=57},
	{x=41,z=52},{x=41,z=47},{x=41,z=42},{x=41,z=37},{x=46,z=37},{x=51,z=37},
	{x=56,z=37},{x=61,z=37},{x=66,z=37},{x=71,z=37},{x=76,z=37},{x=81,z=37},
	{x=81,z=42},{x=81,z=47},{x=81,z=52},{x=81,z=57},{x=81,z=62},{x=81,z=67},
	{x=81,z=72},{x=81,z=77},{x=81,z=82},{x=81,z=87},{x=81,z=92},{x=81,z=97},
	{x=76,z=97},{x=71,z=97},{x=66,z=97},{x=61,z=97},{x=56,z=97},{x=51,z=97},
	{x=46,z=97},{x=46,z=92},{x=46,z=87},{x=46,z=82},{x=46,z=77},{x=46,z=72},
	{x=46,z=67},{x=46,z=62},{x=46,z=57},{x=46,z=52},{x=46,z=47},{x=46,z=42},
	{x=51,z=42},{x=56,z=42},{x=61,z=42},{x=66,z=42},{x=71,z=42},{x=76,z=42},
	{x=76,z=47},{x=76,z=52},{x=76,z=57},{x=76,z=62},{x=76,z=67},{x=76,z=72},
	{x=76,z=77},{x=76,z=82},{x=76,z=87},{x=76,z=92},{x=71,z=92},{x=66,z=92},
	{x=61,z=92},{x=56,z=92},{x=51,z=92},{x=51,z=87},{x=51,z=82},{x=51,z=77},
	{x=51,z=72},{x=51,z=67},{x=51,z=62},{x=51,z=57},{x=51,z=52},{x=51,z=47},
	{x=56,z=47},{x=61,z=47},{x=66,z=47},{x=71,z=47},{x=71,z=52},{x=71,z=57},
	{x=71,z=62},{x=71,z=67},{x=71,z=72},{x=71,z=77},{x=71,z=82},{x=71,z=87},
	{x=66,z=87},{x=61,z=87},{x=56,z=87},{x=56,z=82},{x=56,z=77},{x=56,z=72},
	{x=56,z=67},{x=56,z=62},{x=56,z=57},{x=56,z=52},{x=61,z=52},{x=66,z=52},
	{x=66,z=57},{x=66,z=62},{x=66,z=67},{x=66,z=72},{x=66,z=77},{x=66,z=82},
	{x=61,z=82},{x=61,z=77},{x=61,z=72},{x=61,z=67},{x=61,z=62},
}

x402040_g_NianShouPoint = 
{
	{x=40,z=100},{x=40,z=92},{x=40,z=84},{x=40,z=76},{x=40,z=68},
	{x=40,z=60},{x=40,z=52}, {x=64,z=30},{x=50,z=30},{x=78,z=30},
	{x=90,z=100},{x=90,z=92},{x=90,z=84},{x=90,z=76},{x=90,z=68},
	{x=90,z=60},{x=90,z=52},{x=60,z=103},{x=50,z=103},{x=78,z=103},
	
}

-- ����,������������		
-- Ho�ng S�c T�c C�u
x402040_g_SmallMonsterId_1={3680,3681,3682,3683,3684,3685,3686,3687,3688,3689,33680,33681,33682,33683,33684,33685,33686,33687,33688,33689}
-- H�ng S�c T�c C�u
x402040_g_SmallMonsterId_2={3690,3691,3692,3693,3694,3695,3696,3697,3698,3699,33690,33691,33692,33693,33694,33695,33696,33697,33698,33699}
-- Lam S�c T�c C�u
x402040_g_SmallMonsterId_3={3700,3701,3702,3703,3704,3705,3706,3707,3708,3709,33700,33701,33702,33703,33704,33705,33706,33707,33708,33709}

-- �����to� � ������ Hoa S�c T�c C�u
x402040_g_MiddleMonsterId={3710,3711,3712,3713,3714,3715,3716,3717,3718,3719,33710,33711,33712,33713,33714,33715,33716,33717,33718,33719}

-- BOSS�� T�n M� M� (���ʮ����)
x402040_g_BossMonsterId={3720,3721,3722,3723,3724,3725,3726,3727,3728,3729,33720,33721,33722,33723,33724,33725,33726,33727,33728,33729}

--����
x402040_g_NianShouID  = {12200,12201,12202,12203,12204,12205,12206,12207,12208,12209,12210,12211}
--��ng�񴴽�to� � ����
x402040_paramonce  = 14

-- ��¼ɱ������to� � ��������
x402040_g_KillNum = 20

-- ������
x402040_g_BigFootBall = {9160,9170,9180,9190,39160,39170,39180,39190}

--**********************************
--������ں���
--**********************************
function x402040_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText() == 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BV� tr�n �u T�c C�u");
			AddText(sceneId,"#{CUDS_20071010}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetTodayWeek() ~= 0 then
		BeginEvent(sceneId)
			AddText(sceneId,"��i h�i t�c c�u ch� di�n ra l�c 19h-23h59 ng�y ch� nh�t.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetHour() < 19 or GetHour() > 23 then
		BeginEvent(sceneId)
			AddText(sceneId,"��i h�i t�c c�u ch� di�n ra l�c 19h-23h59 ng�y ch� nh�t.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 2���������ǲ��������
	if LuaFnHasTeam(sceneId,selfId) ~= 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n");
			AddText(sceneId,"  Mu�n th� th�ch ta ch� �t c�ng ph�i t�i 3 ng߶i. C� t� ng߶i th� n�y, qu� coi th߶ng ta");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 3,�����Ҷ�������
	if GetTeamSize(sceneId,selfId) < x402040_g_LimitMembers then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n");
			AddText(sceneId,"  Mu�n th� th�ch ta ch� �t c�ng ph�i t�i 3 ng߶i. C� t� ng߶i th� n�y, qu� coi th߶ng ta");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 4,��������ng����ng�ӳ�
	if GetTeamLeader(sceneId,selfId) ~= selfId then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n");
			AddText(sceneId,"  Mu�n th� th�ch ta? G�i nh�m tr߷ng c�a c�c ng߽i ra ��y");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
		
	end
	
	-- 5,�����ng����ng�˶���λ��
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n");
			AddText(sceneId,"  еi h�u c�a ng߽i kh�ng � g�n ��y");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--  ��t ���c�������������
	local nearteammembercount = GetNearTeamCount(sceneId, selfId)
	
	-- 6,������еi vi�n ��ͷ��û��ɱ������to� � 
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local pk_value = LuaFnGetHumanPKValue( sceneId, memId )
		if pk_value and pk_value > 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n");
				AddText(sceneId,"  Trong �i c� ng߶i s�t kh� qu� n�ng kh�ng th�ch h�p ti�n v�o.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			
			return
		end
	end

	-- 7,��ҵ�c�p���ܵ���30c�p
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local level = GetLevel( sceneId, memId )
		if level < 30   then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n");
				AddText(sceneId,"  Trong nh�m c�a ng߽i c� ng߶i c� ��ng c�p kh�ng �� c�p 30!");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 8,�����ng����ng�����Ѿ��μӹ���ϻ
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		local time = GetMissionData(sceneId, memId, MD_CUJU_PRE_TIME)
		local nCurTime = LuaFnGetCurrentTime()
		-- ���ϴβμ�to� � ʱ����ng����ng����T�i ��12c�iСʱ����to� � CD
		if nCurTime-time < 60*60*12   then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n");
				AddText(sceneId,"  ��ng cho l� ta �nh m�t l� chuy�n m�n l�y �n xem m� n� d� nh�n . C�i kia ai! Ng߽i kh�ng ph�i m�i v�a �� mu�n t�i tham gia qu� tr�n �u  sao?#G th�nh qu� 4 gi� l�i �n �i!!");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 9,ÿc�iеi vi�n ��C�n ǰ6���ķ��ﵽ30c�p
	for	i=0, nearteammembercount-1    do
		local memId = GetNearTeamMember(sceneId, selfId, i)
		if x402040_CheckAllXinfaLevel(sceneId, memId, 30) == 0  then
			BeginEvent(sceneId)
				AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n");
				AddText(sceneId,"  C�a ng߽i �i ng� trung c� �i vi�n  t�m ph�p c�p b�c kh�ng �� 30 c�p, n�y kh� n�ng kh�ng th� th�ch �ng m�u �n c� tay ��i t�i  k�ch li�t chi�n �u.");
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
	end
	
	-- 10,Th�a m�n����������
	local str = "Ta ch�nh th�c tuy�n b� " .. GetName(sceneId,selfId) .. " C�ng �i ng� �� mu�n c� th� ch�nh th�c v�o b�n, tham gia m�t th�ng m�t l�n  qu�t ngang m�u �n c� tay x�c c�c ��i t�i!#r" .. GetName(sceneId,selfId) .. "#W, ch�c ng߽i may m�n."
	BeginEvent(sceneId)
		AddText(sceneId,"#BHo�nh t�o M�u �an Uy�n")
		AddText(sceneId, str)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x402040_MakeCopyScene(sceneId, selfId)
end

--**********************************
--�о��¼�
--**********************************
function x402040_OnEnumerate( sceneId, selfId, targetId )
	local nWeek =  GetTodayWeek()
	local nDay =mod(GetTime2Day(),100)
	AddNumText( sceneId, x402040_g_ScriptId, "Li�n quan h�i thi T�c C�u",11 ,1  )

	if (nWeek == 0 and nDay <=7) or (nWeek == 0 and nDay <=21 and nDay >=15) then
		AddNumText( sceneId, x402040_g_ScriptId, "Thi�n long T�c C�u",10 ,-1  )
	end

	--AddNumText( sceneId, x402040_g_ScriptId, "Thi�n long T�c C�u",10 ,-1  )
end

--**********************************
--���Ti�p th�����
--**********************************
function x402040_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x402040_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x402040_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x402040_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x402040_MakeCopyScene( sceneId, selfId )
	
	-- ʹ��еi vi�n to� � ��c�p���������to� � ��c�p
	local param0 = 4;
	local param1 = 3;

	--���ս��
	local mylevel = 0;

	--��ʱ����
	local memId;
	local tempMemlevel = 0;
	local level0 = 0;
	local level1 = 0;
	local i;
	
	local nearmembercount = GetNearTeamCount(sceneId,selfId)
	for	i = 0, nearmembercount - 1 do
		memId = GetNearTeamMember(sceneId, selfId, i);
		tempMemlevel = GetLevel(sceneId, memId);
		level0 = level0 + (tempMemlevel ^ param0);
		level1 = level1 + (tempMemlevel ^ param1);
	end
	
	if level1 == 0 then
		mylevel = 0
	else
		mylevel = level0/level1;
	end
	
	if nearmembercount == -1  then  --û�ж���
		mylevel = GetLevel(sceneId, selfId)
	end
	
	local x
	local z
	x,z = LuaFnGetWorldPos(sceneId,selfId)
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, x402040_g_CopySceneMap); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402040_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402040_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402040_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402040_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)	--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, x);				--���ø���to� � ��ڳ���λ��x
	LuaFnSetCopySceneData_Param(sceneId, 5, z);				--���ø���to� � ��ڳ���λ��Z
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--ɱ��Bossto� � ����
	
	for i=8, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)
	end
	
	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel;
	if mylevel < 10 then
		iniLevel = 1;
	elseif mylevel < PlayerMaxLevel then
		iniLevel = floor(mylevel/10);
	else
		iniLevel = PlayerMaxLevel/10;
	end

	-- ʹ�ø�������8,9,10�����������
	LuaFnSetCopySceneData_Param(sceneId, 8, x402040_g_SmallMonsterId_1[iniLevel]) --С��ID
	LuaFnSetCopySceneData_Param(sceneId, 9, x402040_g_SmallMonsterId_2[iniLevel]) --С��ID
	LuaFnSetCopySceneData_Param(sceneId,10, x402040_g_SmallMonsterId_3[iniLevel]) --С��ID

	LuaFnSetCopySceneData_Param(sceneId,11, x402040_g_MiddleMonsterId[iniLevel])--TinhӢID
	LuaFnSetCopySceneData_Param(sceneId,12, x402040_g_BossMonsterId[iniLevel]) 	--BossID
	
	-- ʹ�õ�11λ,��¼����ʵ��to� � ��c�p
	LuaFnSetCopySceneData_Param(sceneId,13, mylevel)
	LuaFnSetCopySceneData_Param(sceneId,21, iniLevel-1)
	
	--���ó�����to� � ����Npc������
	LuaFnSetSceneLoad_Area( sceneId, "cuju_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "cuju_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId); --��ʼ����ɺ���ô�����������
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!");
		else
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
--�����¼�
--**********************************
function x402040_OnCopySceneReady( sceneId, destsceneId )

	--���븱��to� � ����
	-- 1,���C�i n�y ���û�����,�ʹ���C�i n�y ����Լ����븱��
	-- 2, �������ж���,����ng��Ҳ���ng�ӳ�,�ʹ����Լ����븱��
	-- 3,�������ж���,����C�i n�y �����ng�ӳ�,�ʹ����Լ��͸�������m�t ���ȥ

	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId) --���ø�����ڳ�����
	leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)
	
	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then			-- �����޷�ִ���߼�to� � ״̬
		return
	end

	-- ��������ng����ng�ж���
	if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then   -- û�ж���
		NewWorld( sceneId, leaderObjId, destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			NewWorld( sceneId, leaderObjId, destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				NewWorld( sceneId, mems[i], destsceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z) ;
			end
		end		
	end

end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x402040_OnPlayerEnter( sceneId, selfId )
	
	-- 2,��¼ʱ��
	local nPreTime = GetMissionData(sceneId,selfId, MD_CUJU_PRE_TIME)
	local nCurTime = LuaFnGetCurrentTime()

	SetMissionData(sceneId, selfId, MD_CUJU_PRE_TIME, nCurTime)
	
	-- 3,��� gi�y����¼�
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%50", -1, "0", sceneId, x402040_g_Fuben_X, x402040_g_Fuben_Z )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x402040_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x402040_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x402040_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x402040_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x402040_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x402040_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x402040_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--���������¼�
--**********************************
function x402040_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x402040_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x402040_OnCopySceneTimer( sceneId, nowTime )
	local once = LuaFnGetCopySceneData_Param( sceneId, x402040_paramonce )

	if (once == 0) then
	
		LuaFnSetCopySceneData_Param(sceneId, x402040_paramonce, 1)
		--��������
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
	
		for i=1, 20 do
			local objId = LuaFnCreateMonster( sceneId, x402040_g_NianShouID[iNianShouIdx], x402040_g_NianShouPoint[i].x, x402040_g_NianShouPoint[i].z, 1, 272, -1)
			SetLevel( sceneId, objId, mylevel )
			LuaFnSendSpecificImpactToUnit(sceneId, objId, objId, objId, 10472, 0); -- zchw
		end  
	end

		local nKillNum = LuaFnGetCopySceneData_Param(sceneId, 20)
		
		--PrintNum(nKillNum)

	-- ��ʱ����ҪҪ����ʱ��������ˢ��
	local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 15)
	local nCurTime = LuaFnGetCurrentTime()
	local nStep = LuaFnGetCopySceneData_Param(sceneId, 16)

	local SmallMonsterId_1	= LuaFnGetCopySceneData_Param(sceneId, 8)
	local SmallMonsterId_2	= LuaFnGetCopySceneData_Param(sceneId, 9)
	local SmallMonsterId_3	= LuaFnGetCopySceneData_Param(sceneId,10)
	local MiddleMonsterId	= LuaFnGetCopySceneData_Param(sceneId,11)
	local BossMonsterId		= LuaFnGetCopySceneData_Param(sceneId,12)
	
	local nMonsterLevel = LuaFnGetCopySceneData_Param(sceneId,13)
	
	local nPreBossSpeakTime = LuaFnGetCopySceneData_Param(sceneId,20)
	
	local arrayex = 0;           --��չ100c�p����,����ƫ����
	local levelex = 0;           --��չ100c�p����,��Hoa S�c T�c C�u��c�pƫ����
	if(nMonsterLevel >= 110) then
	   arrayex = 4
	   levelex = 10
	end

	-- ��m�t ��ִ�м�ʱ��	
	if nPreTime == 0 then
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		x402040_TipAllHuman( sceneId, "Thi�n Long T�c C�u s� b�t �u sau 60s .." )
		return
	end
	
	-- ÿ���10 gi�y��ʾ���,��Thi�n Long T�c C�u s� b�t �u sau AAs ..��
	if nStep==0 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Thi�n Long T�c C�u s� b�t �u sau 50s .." )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==1 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Thi�n Long T�c C�u s� b�t �u sau 40s .." )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==2 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Thi�n Long T�c C�u s� b�t �u sau 30s .." )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==3 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Thi�n Long T�c C�u s� b�t �u sau 20s .." )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
	end
	if nStep==4 and nCurTime-nPreTime>=10  then
		x402040_TipAllHuman( sceneId, "Thi�n Long T�c C�u s� b�t �u sau 10s .." )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime+5)
		return
	end
	
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for ii=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,ii)
		if GetName(sceneId, nMonsterId)== "Ho�ng S�c T�c C�u" or 
			 GetName(sceneId, nMonsterId)== "H�ng S�c T�c C�u" or 
			 GetName(sceneId, nMonsterId)== "Lam S�c T�c C�u" 		 then
			if nowTime - GetObjCreateTime(sceneId, nMonsterId) > 60000  then
				-- ���C�i n�y ��to� � ��ǰѪ����ng����ng�������Ѫ��to� � 1%,
				if GetHp(sceneId,nMonsterId) > 0  then
					-- ɾ��C�i n�y ��,T�i C�i n�y λ�ô���m�t c�i��to� � ��
					local PosX, PosZ = LuaFnGetWorldPos(sceneId, nMonsterId);
					PosX = floor(PosX);
					PosZ = floor(PosZ);
					
					LuaFnDeleteMonster(sceneId, nMonsterId)
					local nMiddleMonster = LuaFnCreateMonster(sceneId, MiddleMonsterId, PosX, PosZ, 3, 0, 402045);
					
					SetLevel(sceneId, nMiddleMonster, nMonsterLevel)
					SetNPCAIType(sceneId, nMiddleMonster, 0)
					SetCharacterName(sceneId, nMiddleMonster, "Hoa S�c T�c C�u")
				end
			end	
		end
		
		if GetName(sceneId, nMonsterId)== "Ho�ng S�c ��i T�c C�u" or 
			 GetName(sceneId, nMonsterId)== "H�ng S�c ��i T�c C�u" or 
			 GetName(sceneId, nMonsterId)== "Lam S�c ��i T�c C�u" 		 then
			if nowTime - GetObjCreateTime(sceneId, nMonsterId) > 60000  then
				-- ���C�i n�y ��to� � ��ǰѪ����ng����ng�������Ѫ��to� � 1%,
				if GetHp(sceneId,nMonsterId) > 0  then
					-- ɾ��C�i n�y ��,T�i C�i n�y λ�ô���m�t c�i��to� � ��
					local PosX, PosZ = LuaFnGetWorldPos(sceneId, nMonsterId);
					PosX = floor(PosX);
					PosZ = floor(PosZ);
					
					LuaFnDeleteMonster(sceneId, nMonsterId)
					local nIniLevel = LuaFnGetCopySceneData_Param(sceneId, 21)
					local nBigBallId =x402040_g_BigFootBall[4 + arrayex]+nIniLevel-levelex
					local nMiddleMonster = LuaFnCreateMonster(sceneId, nBigBallId, PosX, PosZ, 3, 0, 402045);
					
					SetLevel(sceneId, nMiddleMonster, nMonsterLevel)
					SetNPCAIType(sceneId, nMiddleMonster, 0)
					SetCharacterName(sceneId, nMiddleMonster, "Hoa S�c T�c C�u")
				end
			end	
		end
	end

	if nStep>=5 and nStep<154 and nCurTime-nPreBossSpeakTime>=60 then
		LuaFnSetCopySceneData_Param(sceneId,20,nCurTime)
		
		local nRand = random(6)
		local str = ""
		if nRand == 1  then
			str = "#{_BOSS4}#P:Ch�ng ta l� ng߶i n�i nghi�p T�c C�u Trung Hoa! K� th�a cao c�u �ng qu�n  quang vinh truy�n th�ng!"
		elseif nRand == 2  then
			str = "#{_BOSS4}#P:Mau mau mau, ph�n bi�n l�p! H� � l�p! Truy�n trung l�p! Хu c�u c�ng m�n l�p!"
		elseif nRand == 3  then
			str = "#{_BOSS4}#P:Hoa S�c T�c C�u, Ho�ng S�c T�c C�u, H�ng S�c T�c C�u, Lam S�c T�c C�ut, t�i ��y m�t kh�c linh h�n chi�m ���c!"
		elseif nRand == 4  then
			str = "#{_BOSS4}#P:Хy tr�i tinh ��i bi�u  ta t�n m� m�  quang vinh truy�n th�ng! N� kh�ng ph�i m�t ng߶i! N� kh�ng ph�i m�t ng߶i!"
		elseif nRand == 5  then
			str = "#{_BOSS4}#P:Ai nha c�c ng߽i h�o b�n a! Ho�ng S�c T�c C�u, ng߽i n�i, ng߽i nh� th� n�o t�ng ��ng l�m cho ng߶i ta gia ��nh a?"
		else
			str = "#{_BOSS4}#P:Ng߽i l�i ��nh T�c C�u, ng߶i ta s� kh�ng v�i ng߽i t�t l�m!"
		end
		
		-- T�i ������Χ�ں���
		CallScriptFunction((200060), "Duibai",sceneId, "", "M�u �an Uy�n", str)
	end
	
	-- T�i ˢ��20,50,120c�i����֮ǰ,C�n ��m�t ЩС���
	if nStep==24 or nStep==54 or nStep==124  then
		local nStep_1 = LuaFnGetCopySceneData_Param(sceneId, 25)
		local nStep_1_T = LuaFnGetCopySceneData_Param(sceneId, 26)
		if nStep_1 == 0  then
			LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
			LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			
			local str = ""
			if nStep==24 then
				str = "#{_BOSS4}#P:��ng qu� �c � ! Ch� ta thay �i ng߶i! L�i h�i  c�n t�i m�t sau ��u!"
			elseif nStep==24 then
				str = "#{_BOSS4}#P:Ai c߶i ��p cu�i c�ng! Ai c߶i  t�t nh�t! Ta c�n mu�n thay �i ng߶i!"
			else
				str = "#{_BOSS4}#P:Ng߽i xong r�i! Ta mu�n �n l��t ta c߶ng ��i nh�t �a c�u �i l�n s�n kh�u !"
			end
			CallScriptFunction((200060), "Duibai",sceneId, "", "M�u �an Uy�n", str)
			x402040_TipAllHuman( sceneId, "T�n M� M� th�nh c�u thay �i ng߶i, 30 gi�y sau tr�n �u ti�p t�c ti�n h�nh." )
			
		elseif nStep_1 == 1  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "T�n M� M� th�nh c�u thay �i ng߶i, 20 gi�y sau tr�n �u ti�p t�c ti�n h�nh." )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			end
			
		elseif nStep_1 == 2  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "T�n M� M� th�nh c�u thay �i ng߶i, 10 gi�y sau tr�n �u ti�p t�c ti�n h�nh." )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			end
			
		elseif nStep_1 == 3  then
			if nCurTime-nStep_1_T >= 10 then
				x402040_TipAllHuman( sceneId, "Tr�n �u m�t l�n n�a b�t �u." )
				
				LuaFnSetCopySceneData_Param(sceneId, 25, nStep_1+1)
				LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
				
				-- ˢm�t c�i������
				local nIniLevel = LuaFnGetCopySceneData_Param(sceneId, 21)
				
				local nBigFootballId = 0
				local ran = random(3)
				local szName = ""
				if ran == 1  then
					nBigFootballId  = x402040_g_BigFootBall[1 + arrayex]+nIniLevel-levelex
					szName = "Ho�ng S�c ��i T�c C�u"
				elseif ran == 2  then
					nBigFootballId  = x402040_g_BigFootBall[2 + arrayex]+nIniLevel-levelex
					szName = "H�ng S�c ��i T�c C�u"
				else
					nBigFootballId  = x402040_g_BigFootBall[3 + arrayex]+nIniLevel-levelex
					szName = "Lam S�c ��i T�c C�u"
				end
				
				local Point = x402040_g_MonsterPoint[nStep-4]
				local nNpc1 = LuaFnCreateMonster(sceneId, nBigFootballId, 
																					Point.x+random(2), 
																					Point.z, 
																					3, 0, 402045)
				SetLevel(sceneId, nNpc1, nMonsterLevel)
				SetCharacterName(sceneId, nNpc1, szName)
			end
			
		elseif nStep_1 == 4  then
			LuaFnSetCopySceneData_Param(sceneId, 25, 0)
			LuaFnSetCopySceneData_Param(sceneId, 26, nCurTime)
			
			LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
			LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		end
		
	end

	-- �ְ��ռ�to� � ÿ10 gi�yˢm�t �ι�
	if 	(nStep>=5   and nStep<24  and nCurTime-nPreTime >= 15) or
			(nStep>=25  and nStep<54  and nCurTime-nPreTime >= 12) or
			(nStep>=55  and nStep<124 and nCurTime-nPreTime >= 10) or
			(nStep>=125 and nStep<154	and nCurTime-nPreTime >= 5)   then
		
		-- �������� �i�m
		if nStep == 5  then
			x402040_TipAllHuman( sceneId, "Tr�n �u T�c C�u ch�nh th�c b�t �u" )
		end
		
		local Point = x402040_g_MonsterPoint[nStep-4]
	
		-- ����ID
		local nMonsterId = 0 
		local ran = random(3)
		if ran == 1  then
			nMonsterId = SmallMonsterId_1
		elseif ran == 2  then
			nMonsterId = SmallMonsterId_2
		else
			nMonsterId = SmallMonsterId_3
		end
		
		local nNpc1 = LuaFnCreateMonster(sceneId, nMonsterId, Point.x+random(2), Point.z, 3, 0, 402045)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		--SetNPCAIType(sceneId, nNpc1, 0)
		
		if ran == 1  then
			SetCharacterName(sceneId, nNpc1, "Ho�ng S�c T�c C�u")
		elseif ran == 2  then
			SetCharacterName(sceneId, nNpc1, "H�ng S�c T�c C�u")
		else
			SetCharacterName(sceneId, nNpc1, "Lam S�c T�c C�u")
		end
		
		nStep = nStep+1
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
	end
		
	if nStep==154 then
		-- �����ng����ng����to� � С�ֶ�����,�������,10 gi�y��̶��ص gi�y�BOSS
		local nMonsterNum = GetMonsterCount(sceneId)
		local bHaveMonster = 0
		for ii=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,ii)
			if GetName(sceneId, nMonsterId)== "Ho�ng S�c T�c C�u" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "H�ng S�c T�c C�u" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "Lam S�c T�c C�u" then
				bHaveMonster = 1
				break
			end
			if GetName(sceneId, nMonsterId)== "Hoa S�c T�c C�u" then
				bHaveMonster = 1
				break
			end
		end

		if bHaveMonster == 0   then
			nStep = nStep+1
			LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
			LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
		end
	end
	
	if 	nStep==155 then
		x402040_TipAllHuman( sceneId, "T�n M� M� 10 gi�y sau s� xu�t hi�n" )
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep+1)
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		return
		
	end
	
	if 	nStep==156 and nCurTime-nPreTime>=10  then
		nStep = nStep+1
		LuaFnSetCopySceneData_Param(sceneId, 15, nCurTime)
		LuaFnSetCopySceneData_Param(sceneId, 16, nStep)
		local nNpc1 = LuaFnCreateMonster(sceneId, BossMonsterId, x402040_g_BossPoint.x, x402040_g_BossPoint.z, 19, 216, 402040)
		SetLevel(sceneId, nNpc1, nMonsterLevel)
		SetNPCAIType(sceneId, nNpc1, 0)
		SetCharacterName(sceneId, nNpc1, "T�n M� M�")
		SetCharacterTitle(sceneId, nNpc1, "T�c C�u th�p tam mu�i")
		
		x402040_TipAllHuman( sceneId, "T�n M� M� xu�t hi�n" )
	end
	
end

--**********************************
--����ķ���ng����������
--**********************************
function x402040_OnDie(sceneId, objId, killerId)
	--ɱ������to� � ��ng�����m�t �ȡ������to� � ID....
	local playerID = killerId
	local objType = GetCharacterType( sceneId, killerId )
	if objType == 3 then
		playerID = GetPetCreator( sceneId, killerId )
	end
		--������˶��m�t �ȡ�ӳ�to� � ID....
	local nLeaderId = GetTeamLeader(sceneId, playerID)
	if nLeaderId < 1   then
		nLeaderId = playerID
	end
	
	local str = ""
	str = format("#PT�i M�u �ang Uy�n, #{_INFOUSR%s}#P th�ng l�nh �i ng� ��nh b�i #{_BOSS4}#P, ��t ���c m�t h�i nh� nh�ng vui v� �m ��a  ��i th�ng!", GetName(sceneId,nLeaderId))
	BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
	
end

--**********************************
--����ķ���ng����������
--**********************************
function x402040_CheckAllXinfaLevel(sceneId, selfId, level)
	local nMenpai = GetMenPai(sceneId, selfId)
	if nMenpai<0 or nMenpai>8   then
		return 0
	end
	
	for i=1, 6 do
		local nXinfaLevel = LuaFnGetXinFaLevel(sceneId, selfId, nMenpai*6 + i)
		if nXinfaLevel < level    then
			return 0
		end
	end
	return 1
end

--**********************************
--��ʾ���и��������
--**********************************
function x402040_TipAllHuman( sceneId, Str )
	--  ��t ���c������ͷto� � ������
	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	
	-- û����to� � ����,ʲô������
	if nHumanNum < 1 then
		return
	end
	
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		BeginEvent(sceneId)
			AddText(sceneId, Str)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId, PlayerId)
	end
end

