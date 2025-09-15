-- 402105
-- �����ڱ���

--************************************************************************
--MisDescBegin
--�ű���
x402105_g_ScriptId = 402105

--MisDescEnd
--************************************************************************


--��������
x402105_g_CopySceneName = "Ho�t �ng Tr�n �p b�o t�u"

x402105_g_CopySceneType = FUBEN_CATCH_PET	--��������,����T�i ScriptGlobal.lua����

x402105_g_CopySceneMap = "zhenshoulan.nav"
x402105_g_Exit = "zhenshoulan.ini"
x402105_g_LimitMembers = 1				--���Խ�����to� � ��С��������
x402105_g_TickTime = 1						--�ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x402105_g_LimitTotalHoldTime = 360--�������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x402105_g_LimitTimeSuccess = 500	--����ʱ������(��λ: ����),�����ʱ�䵽��,�������
x402105_g_CloseTick = 3						--�����ر�ǰ����ʱ(��λ: ����)
x402105_g_NoUserTime = 300				--������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x402105_g_DeadTrans = 0						--����ת��ģʽ,0: �����󻹿��Լ���T�i ����,1: ������ǿ���Ƴ�����
x402105_g_Fuben_X = 36						--���븱��to� � λ��X
x402105_g_Fuben_Z = 97						--���븱��to� � λ��Z
x402105_g_Back_X = 141							--Դ����λ��X
x402105_g_Back_Z = 114							--Դ����λ��Z
x402105_g_Back_SceneId = 158			--Դ����Id
	
-- ������Ʒ
x402105_g_Item = 40004429

-- Th�nh Th� S�n����Id
x402105_g_PetSceneId = 158

-- Ұ��to� � ��Ϣ
x402105_g_MonsterInfo_1 = {id=3800,ai=17,aif=207}
x402105_g_MonsterPos = {
		{x=65.5176,z=	79.0207,},{x=69.8164,z=	88.1377,},{x=83.8354,z=	92.4449,},
		{x=77.5097,z=	74.2288,},{x=87.9545,z=	70.4181,},{x=74.7209,z=	60.9159,},
		{x=60.6836,z=	56.8568,},{x=71.8951,z=	46.935 ,},{x=86.682	,z= 44.4101,},
		{x=98.8462,z=	37.5822,},{x=60.1058,z=	35.1054,},{x=45.9477,z=	34.18  ,},
		{x=25.7361,z=	43.8625,},{x=34.4459,z=	55.7157,},{x=42.0419,z=	45.9647,},
		{x=48.4925,z=	58.1778,},{x=74.1362,z=	29.3186,},{x=89.6256,z=	29.2022,},
		{x=56.631	,z= 45.7225,},{x=94.1026,z=	57.7871,},{x=97.1927,z=	90.8149,},
		{x=52.1854,z=	84.1242,},{x=58.4518,z=	70.0597,},{x=66.7249,z=	100.087,},
		{x=29.7832,z=	25.596 ,},{x=34.8878,z=	35.452 ,},{x=80.2963,z=	37.4068,},
		{x=93.935	,z= 78.0536,},{x=83.9264,z=	54.9693,},{x=64.3749,z=	24.8037,},
}

--boss��Ϣ
x402105_g_BossInfo_1 = {id=3810,ai=16,aif=208,x=73,z=50,script=-1}
x402105_g_BossInfo_2 = {id=3820,ai=17,aif=209,x=73,z=50,script=501000}
x402105_g_BossRand_2 = 10

--**********************************
--������ں���
--**********************************
function x402105_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText()==1010 then
		BeginEvent(sceneId)
				AddText(sceneId,"#{YZBZ_20070930_004}");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if LuaFnHasTeam(sceneId,selfId) < 0  then
		BeginEvent(sceneId)
			AddText(sceneId,"#B�u�i b�t D� Tr� V߽ng");
			AddText(sceneId,"  Nhi�u ng߶i s�c m�nh l�n, ch�ng ta quay v� g�i th�m tr� th�. #R(B�n ph�i l� �i tr߷ng, v� trong �i c� �t nh�t 3 ng߶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 2,��������ng����ng�����
	if GetTeamSize(sceneId,selfId) < x402105_g_LimitMembers  then
		BeginEvent(sceneId)
			AddText(sceneId,"#B�u�i b�t D� Tr� V߽ng");
			AddText(sceneId,"  Nhi�u ng߶i s�c m�nh l�n, ch�ng ta quay v� g�i th�m tr� th�. #R(B�n ph�i l� �i tr߷ng, v� trong �i c� �t nh�t 3 ng߶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 3,��������ng����ng�ӳ�
	if GetTeamLeader(sceneId,selfId) ~= selfId    then
		BeginEvent(sceneId)
			AddText(sceneId,"#B�u�i b�t D� Tr� V߽ng");
			AddText(sceneId,"  Nhi�u ng߶i s�c m�nh l�n, ch�ng ta quay v� g�i th�m tr� th�. #R(B�n ph�i l� �i tr߷ng, v� trong �i c� �t nh�t 3 ng߶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	-- 4,�����ng����ng�˶���λ��
	if GetTeamSize(sceneId,selfId) ~= GetNearTeamCount(sceneId,selfId)  then
		BeginEvent(sceneId)
			AddText(sceneId,"#B�u�i b�t D� Tr� V߽ng");
			AddText(sceneId,"  Nhi�u ng߶i s�c m�nh l�n, ch�ng ta quay v� g�i th�m tr� th�. #R(B�n ph�i l� �i tr߷ng, v� trong �i c� �t nh�t 3 ng߶i)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- ֻC�n �ӳ���������Ʒ�Ϳ���,���ӳ�������ng����ng��C�i n�y ��Ʒ
	if LuaFnGetAvailableItemCount(sceneId,selfId,x402105_g_Item) < 1  then
		BeginEvent(sceneId)
			AddText(sceneId,"#B�u�i b�t D� Tr� V߽ng");
			AddText(sceneId,"  N�u mu�n t�m �n D� Tr� V߽ng, ch�ng ta c� c�ng ��  manh m�i m�i ���c. #R(C�n mang theo ��o c� #GTung t�ch D� Tr� V߽ng.#R)");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	-- 1,��ҵ�c�p
	local nPlayerNum = GetNearTeamCount(sceneId,selfId)
	local strName = {}
	strName[1] = ""
	strName[2] = ""
	strName[3] = ""
	strName[4] = ""
	strName[5] = ""
	strName[6] = ""
	local ret = 1
 	
	for i=0, nPlayerNum-1  do
		local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
		if GetLevel(sceneId, nPlayerId) < 40  then
			ret = 0
			strName[i+1] = GetName(sceneId, nPlayerId)
		end
	end
	
	local nCount = 0
	if ret == 0  then
		local szAllName = ""
		for i=1, 6  do
			if strName[i] ~= ""  then
				if nCount == 0  then
					szAllName = strName[i]
				else
					szAllName = szAllName .. "��" .. strName[i]
				end
				nCount = nCount+1
			end
		end
		BeginEvent(sceneId)
			AddText(sceneId,"#B�u�i b�t D� Tr� V߽ng");
			AddText(sceneId,"  N�u mu�n ��nh b�i D� Tr� V߽ng, c�p b�c th�p kh�ng th� ���c.#r#RTrong �i ng� c� th�nh vi�n " .. szAllName .. " c�p nh� h�n 40.");
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	
	-- ����to� � ���ͨ��,��������,ɾ���Ի�����
	-- ��m�t c�i��ȫ���
	if sceneId==x402105_g_PetSceneId  then
		x402105_MakeCopyScene(sceneId, selfId, targetId)
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x402105_OnEnumerate( sceneId, selfId, targetId )
	-- ���T�i ������m�t c�iT�n�ж�
	AddNumText( sceneId, x402105_g_ScriptId, "�u�i b�t D� Tr� V߽ng",10 ,-1  )
	AddNumText( sceneId, x402105_g_ScriptId, "#{YZBZ_20070930_003}",11 ,1010  )	
	
end

--**********************************
--���Ti�p th�����
--**********************************
function x402105_CheckAccept( sceneId, selfId )
	
end

--**********************************
--ѯ�������ng��Ҫ���븱��
--**********************************
function x402105_AskEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--Ti�p th�
--**********************************
function x402105_OnAccept( sceneId, selfId, targetId )
	
end

--**********************************
--���ͬ����븱��
--**********************************
function x402105_AcceptEnterCopyScene( sceneId, selfId )
	
end

--**********************************
--��������
--**********************************
function x402105_MakeCopyScene( sceneId, selfId, targetId )
	
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
	
	leaderguid=LuaFnObjId2Guid(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "zhenshoulan.nav"); --��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid);
	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x402105_g_NoUserTime*1000);
	LuaFnSetCopySceneData_Timer(sceneId, x402105_g_TickTime*1000);
	LuaFnSetCopySceneData_Param(sceneId, 0, x402105_g_CopySceneType);--���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
	LuaFnSetCopySceneData_Param(sceneId, 1, x402105_g_ScriptId);--��1����������Ϊ���������¼��ű���
	LuaFnSetCopySceneData_Param(sceneId, 2, 0);		--���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param(sceneId, 3, -1);	--���ø�����ڳ�����, ��ʼ��
	LuaFnSetCopySceneData_Param(sceneId, 4, 0);		--���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param(sceneId, 5, 0);		--�����뿪����ʱ����
	LuaFnSetCopySceneData_Param(sceneId, 6, GetTeamId(sceneId,selfId)); --��������
	LuaFnSetCopySceneData_Param(sceneId, 7, 0) ;	--ɱ��Bossto� � ����
	
	-- �����õ�to� � �������
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
		iniLevel = floor(PlayerMaxLevel/10);
	end
	
	-- ʹ�õ�8λ,��¼����ʵ��to� � ��c�p
	LuaFnSetCopySceneData_Param(sceneId,8, mylevel)
	LuaFnSetCopySceneData_Param(sceneId,9, iniLevel)
	
	-- ԭ��to� � ģʽ ��to� � �����û�� -1 ��¼ҪTi�p c�u to� � ����to� � ����Id
	--LuaFnSetCopySceneData_Param(sceneId,10, GetMonsterDataID(sceneId, targetId)+iniLevel)
	
	local nMonterID = 0
	if iniLevel >= 11 then
	   nMonterID = GetMonsterDataID(sceneId, targetId)+iniLevel - 10 + 30000
	else
	   nMonterID = GetMonsterDataID(sceneId, targetId)+iniLevel
	end
	-- ��¼ҪTi�p c�u to� � ����to� � ����Id
	LuaFnSetCopySceneData_Param(sceneId,10, nMonterID)
	
	--���ó�����to� � ����Npc������
	--LuaFnSetSceneLoad_Area( sceneId, "zhenshoulan_area.ini" )
	--LuaFnSetSceneLoad_Monster( sceneId, "zhenshoulan_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)

	if bRetSceneID>0 then			
		-- ��������ng�ӳ�,�۳��������							modify by WTT		20090225
		if IsCaptain(sceneId,selfId) == 1    then
			if DelItem(sceneId, selfId, x402105_g_Item, 1) == 0  then
				LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			end
		end
		BeginEvent(sceneId)
			AddText(sceneId,"D�ch chuy�n th�nh c�ng!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	else
		BeginEvent(sceneId)
			AddText(sceneId,"S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end

end

--**********************************
--�����¼�
--**********************************
function x402105_OnCopySceneReady( sceneId, destsceneId )
	
	--���븱��to� � ����
	-- 1,���C�i n�y �ļ�û�����,�ʹ���C�i n�y ����Լ����븱��
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
		x402105_GotoScene(sceneId, leaderObjId, destsceneId)
	else
		if IsCaptain(sceneId, leaderObjId) == 0  then
			x402105_GotoScene(sceneId, leaderObjId, destsceneId)
		else
			local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
			local mems = {}
			for	i=0,nearteammembercount-1 do
				mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
				x402105_GotoScene(sceneId, mems[i], destsceneId)
			end
		end
	end

end

function x402105_GotoScene(sceneId, ObjId, destsceneId)
	NewWorld( sceneId, ObjId, destsceneId, x402105_g_Fuben_X, x402105_g_Fuben_Z) ;
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x402105_OnPlayerEnter( sceneId, selfId )
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x402105_OnHumanDie( sceneId, selfId, killerId )
	
end

--**********************************
--����
--**********************************
function x402105_OnAbandon( sceneId, selfId )
	
end

--**********************************
-- �س�,ֻ��Th�nh ph� ���񸱱����Ե��ô˽ӿ�
--**********************************
function x402105_BackToCity( sceneId, selfId )
	
end

--**********************************
--����
--**********************************
function x402105_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--�����ng������ύ
--**********************************
function x402105_CheckSubmit( sceneId, selfId, selectRadioId )
	
end

--**********************************
--�ύ
--**********************************
function x402105_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--��ʾ���и��������
--**********************************
function x402105_TipAllHuman( sceneId, Str )
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

--**********************************
--ɱ����������
--**********************************
function x402105_OnKillObject( sceneId, selfId, objdataId, objId )
	
end

--**********************************
--ɱ����������
--**********************************
function x402105_OnDie( sceneId, objId, killerId )
	local nKillCount = LuaFnGetCopySceneData_Param(sceneId,20)
	if GetName(sceneId, objId) == "Ti�m Nha D� Tr�"  then
		LuaFnSetCopySceneData_Param(sceneId,20,nKillCount+1)
		x402105_TipAllHuman(sceneId, "�� gi�t ch�t Ti�m Nha D� Tr� " .. tostring(nKillCount+1) .. "/30")
	end
end
--**********************************
--���������¼�
--**********************************
function x402105_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--���߸ı�
--**********************************
function x402105_OnItemChanged( sceneId, selfId, itemdataId )
	
end

--**********************************
--����������ʱ���¼�
--**********************************
function x402105_OnCopySceneTimer( sceneId, nowTime )
	local nStep =	LuaFnGetCopySceneData_Param(sceneId, 11)
	if nStep == 0  then
		x402105_CreateMonster_1(sceneId)
		LuaFnSetCopySceneData_Param(sceneId, 11, 1)
	end

	if nStep == 1  then
		local nCount = GetMonsterCount(sceneId)
		local nHaveMonster = 0
		
		for i=0, nCount-1  do
			local nMonterId = GetMonsterObjID(sceneId, i)
			if GetName(sceneId, nMonterId) == "Ti�m Nha D� Tr�"  then
				nHaveMonster = 1
			end
		end
		
		if nHaveMonster == 0  then
			x402105_CreateMonster_2(sceneId)
			LuaFnSetCopySceneData_Param(sceneId, 11, 2)
		end
	end

	-- �������ȫ��ɱ��,�����m�t ���ֺ������
	if nStep == 2  then
		local nCount = GetMonsterCount(sceneId)
		local nHaveMonster = 0
		
		for i=0, nCount-1  do
			local nMonterId = GetMonsterObjID(sceneId, i)
			if GetName(sceneId, nMonterId) == "Ti�m Nha D� Tr�" 
					or GetName(sceneId, nMonterId) == "Ti�m Nha D� Tr� V߽ng"  
					or GetName(sceneId, nMonterId) == "Cu�ng B�o Long"  then
				nHaveMonster = 1
			end
		end
		
		if nHaveMonster == 0  then
			LuaFnSetCopySceneData_Param(sceneId, 11, 3)
			--��¼ʱ��
			LuaFnSetCopySceneData_Param(sceneId, 13, LuaFnGetCurrentTime())
		
			local nType = LuaFnGetCopySceneData_Param(sceneId,12)
			local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
			if nHumanNum < 1 then
				return
			end
			local nLeaderId = 0
			for i=0, nHumanNum-1  do
				local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
				if GetTeamLeader(sceneId, nPlayerId) == nPlayerId  then
					nLeaderId = nPlayerId
				end
			end
			if nLeaderId == 0  then
				return
			end
			
			local szLeaderName = GetName(sceneId, nLeaderId)
			local str = ""
			-- �����繫��
			if nType == 0  then
				str = format("#{_INFOUSR%s}#P d�n d�t �i ng� t�i #GN�ng tr߶ng D� Tr� #Pti�u di�t D� Tr� Th� L�nh #{_BOSS20}#P.",szLeaderName)
			else
				str = format("#{_INFOUSR%s}#P d�n d�t �i ng� t�i #GN�ng tr߶ng D� Tr� #Pdi�t tr� �u s� #{_BOSS21}#P, cu�i c�nb b�nh �n tr�n phong ba n�y.",szLeaderName)
			end
			BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)
			x402105_TipAllHuman(sceneId,"D� Tr� b�o lo�n K�t th�c sau 180 gi�y n�a.")
		end
	end
	
	if nStep == 3  then
		local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 13)
		if LuaFnGetCurrentTime()-nPreTime >= 165  then
			x402105_TipAllHuman(sceneId,"D� Tr� b�o lo�n K�t th�c sau 15 gi�y n�a.")
			LuaFnSetCopySceneData_Param(sceneId, 11, 4)
		end
	end
	if nStep == 4  then
		local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 13)
		if LuaFnGetCurrentTime()-nPreTime >= 175  then
			x402105_TipAllHuman(sceneId,"D� Tr� b�o lo�n K�t th�c sau 5 gi�y n�a.")
			LuaFnSetCopySceneData_Param(sceneId, 11, 5)
		end
	end
	
	if nStep == 5  then
		local nPreTime = LuaFnGetCopySceneData_Param(sceneId, 13)
		if LuaFnGetCurrentTime()-nPreTime >= 30  then
			-- � gi�y������뿪����
			local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
			if nHumanNum < 1 then
				return
			end
			local PlayerId = 0
			for i=0, nHumanNum-1  do
				PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
				NewWorld( sceneId, PlayerId, x402105_g_Back_SceneId, x402105_g_Back_X, x402105_g_Back_Z)
			end
			LuaFnSetCopySceneData_Param(sceneId, 11, 7)
		end
	end
	
end

--**********************************
--x402105_CreateMonster_1
--**********************************
function x402105_CreateMonster_1(sceneId)
	local mylevel = LuaFnGetCopySceneData_Param(sceneId,8)
	local nInilevel = LuaFnGetCopySceneData_Param(sceneId,9)
	
	local nMonterID = 0
	if nInilevel >= 11 then
	   nMonterID = x402105_g_MonsterInfo_1.id + nInilevel - 11 + 30000
	else
	   nMonterID = x402105_g_MonsterInfo_1.id + nInilevel - 1
	end
	
	for i, Npc in x402105_g_MonsterPos  do
		local nNpcId = LuaFnCreateMonster(sceneId, 
																		 nMonterID, 
																		 Npc.x, 
																		 Npc.z,	
																		 x402105_g_MonsterInfo_1.ai, 
																		 x402105_g_MonsterInfo_1.aif, 
																		 402105)
	end
end

--**********************************
--x402105_CreateMonster_2
--**********************************
function x402105_CreateMonster_2(sceneId)
	local mylevel = LuaFnGetCopySceneData_Param(sceneId,8)
	local nInilevel = LuaFnGetCopySceneData_Param(sceneId,9)
	
	local nMonterID = 0
	if nInilevel >= 11 then
	   nMonterID = x402105_g_BossInfo_1.id + nInilevel - 11 + 30000
	else
	   nMonterID = x402105_g_BossInfo_1.id + nInilevel - 1
	end
	
	local nNpcId = LuaFnCreateMonster( sceneId, 
																		nMonterID, 
																		x402105_g_BossInfo_1.x, 
																		x402105_g_BossInfo_1.z,	
																		x402105_g_BossInfo_1.ai, 
																		x402105_g_BossInfo_1.aif, 
																		x402105_g_BossInfo_1.script)
	SetCharacterTitle(sceneId, nNpcId, "Ti�m Nha V߽ng")
	x402105_TipAllHuman(sceneId, "Ph�t hi�n Ti�m Nha D� Tr� V߽ng.")
																		
	-- m�t c�i�������ˢ��to� � boss
	local nRand = random(100)
	if nRand <= x402105_g_BossRand_2   then
		LuaFnSetCopySceneData_Param(sceneId,12,1)
		
		nMonterID = 0
	  if nInilevel >= 11 then
	    nMonterID = x402105_g_BossInfo_2.id + nInilevel - 11 + 30000
	  else
	    nMonterID = x402105_g_BossInfo_2.id + nInilevel - 1
	  end
	
		local nNpcId = LuaFnCreateMonster( sceneId, 
																			nMonterID, 
																			x402105_g_BossInfo_2.x, 
																			x402105_g_BossInfo_2.z,	
																			x402105_g_BossInfo_2.ai, 
																			x402105_g_BossInfo_2.aif, 
																			x402105_g_BossInfo_2.script)
		SetCharacterTitle(sceneId, nNpcId, "Thi�n ni�n thi�n th�nh th�")
		-- ���ˢ��C�i n�y ���boss,�ͷ����繫��
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		if nHumanNum < 1 then
			return
		end
		
		local nLeaderId = 0
		for i=0, nHumanNum-1  do
			local nPlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if GetTeamLeader(sceneId, nPlayerId) == nPlayerId  then
				nLeaderId = nPlayerId
			end
		end
		if nLeaderId == 0  then
			return
		end
	
		local szLeaderName = GetName(sceneId, nLeaderId)
		local str = ""
		
		str = format("#P� #{_INFOUSR%s}#P d�n d�t �i ng�, � Th�nh Th� S�n tr�n �p ��n D� Tr� th�ng l�i, �t nhi�n nh�y ra #{_BOSS21}.",szLeaderName)
		BroadMsgByChatPipe(sceneId, nLeaderId, str, 4)

	end
	
end

