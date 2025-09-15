-- ������������
-- Ұ���կ

--************************************************************************
--MisDescBegin

-- �ű���
x050102_g_ScriptId = 050102

-- �����
x050102_g_MissionId = 1262					-- 1260 - 1269

-- ��m�t c�i����to� �  ID
-- g_MissionIdPre = 1260

-- M�c ti�u nhi�m v� NPC
x050102_g_Name = "Ti�n H�ng V�"

--�������
x050102_g_MissionKind = 8

--��ng c�p nhi�m v� 
x050102_g_MissionLevel = 10000

-- �����ı�����
x050102_g_MissionName = "S�o huy�t c�a ph�"
x050102_g_MissionInfo = "    Cu�i c�ng �� t�m ���c s�o huy�t c�a ph� �, %s, sau ��y c�n nhi�m v� quan tr�ng h�n giao cho c�c h�. V� qu� h߽ng c�a ch�ng t�i h�y �i gi�t ch�t Ph� а Th� L�nh C�t Vinh."	-- ��������
x050102_g_MissionTarget = "    T� Ch�u #{_INFOAIM62,162,1, Ti�n H�ng V�} y�u c�u c�c h� gi�t ch�t ph� � �u l�nh C�t Vinh.#r    #{FQSH_090206_01}"									-- M�c ti�u nhi�m v�
x050102_g_ContinueInfo = "    �i �n s�o huy�t ph� � kh� kh�n v� c�ng, %s, c�c h� �� chu�n b� ch�a?"			-- δHo�n t�t nhi�m v�to� � npc�Ի�
x050102_g_SubmitInfo = "    Nhi�m v� l�m th� n�o r�i?"										-- �ύʱto� � ��
x050102_g_MissionComplete = "    V� c�c h� hoan h�, t�n k�nh c�a %s, c�m �n c�c h�, v� ch�ng t�i �em l�i ho� b�nh. Xin h�y gi� l�y nh�ng m�n qu� n�y."	--Ho�n t�t nhi�m v�npc˵to� � ��

x050102_g_IsMissionOkFail = 0														-- 0 ��: ��ǰ������ng�����(0δ��ɣ�1��ɣ�2th�t b�i)
x050102_g_DemandKill = { { id = 4130, num = 1 } }									-- 1 ��,������Ϣ
x050102_g_Param_sceneid = 2															-- 2 ��: ��ǰ��������to� � ������

-- ������
-- ����Kinh nghi�m = ��ҵ�c�p * x050102_g_k - x050102_g_b
x050102_g_k = 3323
x050102_g_b = 45613

--MisDescEnd
--************************************************************************

x050102_g_DemandKillGroup = { 0 }			-- 1 �Ź����Ӧto� �  GroupID ��,�� x050102_g_DemandKill m�t m�t ��Ӧ
x050102_g_BossGroup = 0						-- Boss Group ID
x050102_g_Mail = 40004316					-- ����

x050102_g_NumText_Main = 1					-- ������to� � ѡ��
x050102_g_NumText_EnterCopyScene = 2		-- Ҫ����븱��to� � ѡ��

x050102_g_CopySceneMap = "yewai.nav"
x050102_g_CopySceneArea = "yewai_area.ini"
x050102_g_CopySceneMonsterIni = "yewai_monster_%d.ini"

x050102_g_CopySceneType = FUBEN_FEIZHAI		-- ��������,����T�i ScriptGlobal.lua����
x050102_g_LimitMembers = 1					-- ���Խ�����to� � ��С��������
x050102_g_LevelLimit = 30					-- ���Խ��븱��to� � ���c�p��
x050102_g_TickTime = 5						-- �ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x050102_g_LimitTotalHoldTime = 360			-- �������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x050102_g_CloseTick = 6						-- �����ر�ǰ����ʱ(��λ: ����)
x050102_g_NoUserTime = 30					-- ������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)

x050102_g_Fuben_X = 11
x050102_g_Fuben_Z = 24
x050102_g_Back_X = 60
x050102_g_Back_Z = 161

x050102_g_Fuben_Relive_X = 11
x050102_g_Fuben_Relive_Z = 24

-- �㲥��Ϣ
x050102_g_BroadcastMsg = {
	"#Y"..x050102_g_Name .. ": #PB�o cho m�i ng߶i 1 th�ng tin t�t l�nh, t�n th� l�nh danh ti�ng x�u xa c�a ph� � l� #{_BOSS47}#P, h�m nay cu�i c�ng c�ng �� ph�i �n t�i, ng߶i gi�t ch�t h�n ch�nh l� #{_INFOUSR$N}#P. m�i ng߶i c�ng v� tay nh�!",
	"#Y"..x050102_g_Name .. ": #Pch�ng ta h�y c�ng ch�c m�ng. #{_BOSS47}#P �� kh�ng th� l�m h�i m�i ng߶i n�a r�i, h�n �� ch�t trong tay c�a #{_INFOUSR$N}#P, m�i ng߶i h�y c�ng hoan h� nh�!",
	"#Y"..x050102_g_Name .. ": #{_BOSS47}#P ch�t r�i! B�t �u t� h�m nay, ch�ng ta kh�ng c�n ph�i s�ng trong tr�ng th�i th�p th�m lo s� n�a! H�y ca ng�i v� anh h�ng c�a ch�ng ta: #{_INFOUSR$N}#P c�c h� qu� th�t r�t t�i gi�i!"
}

x050102_g_TakeTimes = 10											-- ÿ�����L�nh ����
x050102_g_RelationReward = 10									-- ��ϵֵ����
x050102_g_MaxRelation = 9999									-- ��ϵ���ֵ

--**********************************
-- ������ں���
--**********************************
function x050102_OnDefaultEvent( sceneId, selfId, targetId )	--  �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x050102_g_Name then		-- �жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) == 0 then
		if numText == x050102_g_NumText_Main then
			if x050102_CheckAccept( sceneId, selfId ) > 0 then
				--��������Ti�p th�ʱ��ʾto� � ��Ϣ
				BeginEvent( sceneId )
					AddText( sceneId, x050102_g_MissionName )
					AddText( sceneId, format( x050102_g_MissionInfo, GetName( sceneId, selfId ) ) )
					AddText( sceneId, "#{M_MUBIAO}" )
					AddText( sceneId, x050102_g_MissionTarget )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050102_g_ScriptId, x050102_g_MissionId )
			end
		end
	else
		if numText == x050102_g_NumText_Main then
			local bDone = x050102_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				AddText( sceneId, x050102_g_MissionName )

				if bDone == 1 then
					AddText( sceneId, x050102_g_SubmitInfo )
				else
					AddText( sceneId, format( x050102_g_ContinueInfo, GetName( sceneId, selfId ) ) )
					x050102_AskEnterCopyScene( sceneId, selfId, targetId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x050102_g_ScriptId, x050102_g_MissionId, bDone )
		elseif numText == x050102_g_NumText_EnterCopyScene then
			x050102_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ����������to� � ����,û��Tr� v� 0,��Tr� v� 1
--**********************************
function x050102_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	for missionId = 1260, x050102_g_MissionId - 1 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	for missionId = x050102_g_MissionId + 1, 1269 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	return 0
end

--**********************************
-- �о��¼�
--**********************************
function x050102_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050102_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	-- ����������to� � ����
	if x050102_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050102_g_ScriptId, x050102_g_MissionName, 4, x050102_g_NumText_Main )
end

--**********************************
-- ���Ti�p th�����
--**********************************
function x050102_CheckAccept( sceneId, selfId )
	-- �Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) > 0 then
		return 0
	end

	-- ����������to� � ����
	if x050102_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end

	-- ��������ng����ϸշ�������
	local iTime = GetMissionData( sceneId, selfId, MD_ROUNDMISSION3 )			-- ��m�t �η�������to� � ʱ��(��λ: m�t ����)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()												-- ��ǰʱ��(��λ: m�t ����)
	local CurTime = GetQuarterTime()												-- ��ǰʱ��(��λ: m�t ����)
	--end modified by zhangguoxin 090208
	if iTime+1 >= CurTime then
		x050102_NotifyFailTips( sceneId, selfId, "Sau khi t� b� nhi�m v� 30 ph�t, m�i c� th� nh�n l�n n�a." )
		return 0
	end

	-- ���û��������ʾ
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050102_g_Mail ) < 1 then
		x050102_NotifyFailTips( sceneId, selfId, "    C�n c� #{_ITEM" .. x050102_g_Mail .."}!" )
		return 0
	end

	-- m�t ��ֻ���� x050102_g_TakeTimes ��
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION3_TIMES )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
	end

	if takenTimes >= x050102_g_TakeTimes then
		x050102_NotifyFailTips( sceneId, selfId, "S� l�n nh�n nhi�m v� c�a c�c h� h�m nay �� v��t qu� " .. x050102_g_TakeTimes .. " l�n, xin ng�y mai quay l�i nh�n" )
		return 0
	else
		DayTimes = nowDate + takenTimes * 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION3_TIMES, DayTimes )
	end

	return 1
end

--**********************************
-- ������븱������
--**********************************
function x050102_AskEnterCopyScene( sceneId, selfId, targetId )
	AddNumText( sceneId, x050102_g_ScriptId, "Ъn s�n tr�i ph� t�c", 10, x050102_g_NumText_EnterCopyScene )
end

--**********************************
--Ti�p th�
--**********************************
function x050102_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) == 0 then					-- û������ſ���������
		if GetMissionCount( sceneId, selfId ) >= 20 then						-- ��������������ng��ﵽ����20c�i
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    Nhi�m v� ghi ch�p �� �y, kh�ng th� nh�n th�m nhi�m v�" )
			return
		end

		if GetLevel( sceneId, selfId ) < x050102_g_LevelLimit then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    ��ng c�p c�a ng߽i qu� th�p, nhi�m v� n�y �i v�i ng߽i qu� nguy hi�m, h�y luy�n t�p tr߾c khi t�i" )
			return
		end

		-- ����������to� � ����
		if x050102_CheckConflictMission( sceneId, selfId ) == 1 then
			return
		end

		-- ���������Ͼ���m�t ������to� � ���ߡ�������to� � �š�, c� th� � ��Ti�p th�������,������to� � ͬʱ����m�t c�i��������to� � �š�.
		if LuaFnDelAvailableItem( sceneId, selfId, x050102_g_Mail, 1 ) == 0 then
			-- ������ʾ: C�n ��������to� � �š�
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    C�n ph�i #{_ITEM" .. x050102_g_Mail .."}!" )
			return
		end

		-- ������������б�
		AddMission( sceneId, selfId, x050102_g_MissionId, x050102_g_ScriptId, 1, 0, 0 )			-- kill��area��item
		if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) <= 0 then
			return
		end

		-- m�t ��ֻ���� x050102_g_TakeTimes ��
		local DayTimes

		DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION3_TIMES )
		DayTimes = DayTimes + 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION3_TIMES, DayTimes )

--		SetMissionEvent( sceneId, selfId, x050102_g_MissionId, 4 ) -- ע�� OnLockedTarget �¼�

		local misIndex = GetMissionIndexByID( sceneId, selfId, x050102_g_MissionId )

		SetMissionByIndex( sceneId, selfId, misIndex, x050102_g_IsMissionOkFail, 0 )	-- ������������Ϊδ���
		SetMissionByIndex( sceneId, selfId, misIndex, x050102_g_Param_sceneid, -1 )		-- ��������Ϊ -1

		--��ʾ���ݸ�������Ѿ�Ti�p th�������
		BeginEvent( sceneId )
			AddText( sceneId, x050102_g_MissionName )
			AddText( sceneId, format( x050102_g_ContinueInfo, GetName( sceneId, selfId ) ) )
			AddText( sceneId, "#r    C�c h� �� nh�n" .. x050102_g_MissionName )

			x050102_AskEnterCopyScene( sceneId, selfId, targetId )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
-- ������븱������
--**********************************
function x050102_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) > 0 then					-- ������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050102_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050102_g_Param_sceneid )
		if copysceneid >= 0 then												-- ��������
			-- ���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050102_g_Fuben_X, x050102_g_Fuben_Z )
			else
				x050102_NotifyFailBox( sceneId, selfId, targetId, "    R�t ti�c, nhi�m v� c�a ng߽i �� th�t b�i" )
			end

			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    M�t m�nh ng߽i th�c l�c m�ng, h�y g�i th�m m�y ng߶i t�i gi�p �i" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    Ta c�n ph�i ���c �i tr߷ng x�c nh�n m�i c� th� y�n t�m � c�c ng߽i �n s�n tr�i c�a ph� ���c" )
			return
		end
		
		--bug27726,2007.11.15 by alan,��ΪsceneMemberCount��m�t ��׼ȷ,���ø���еi vi�n �����������to� � �Ƚ��ж�
		--��������ʾ���岻T�i ����to� � еi vi�n ����
				
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);	
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);		
		if not teamMemberCount or not nearMemberCount or teamMemberCount ~= nearMemberCount then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    Anh c�n c� nh�m vi�n � g�n ��y" )
			return
		end
		
		--bug27726 end

		-- ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
		--local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		--local sceneMemberCount = GetTeamSceneMemberCount(sceneId, selfId);
		--if not teamMemberCount or not sceneMemberCount or teamMemberCount ~= sceneMemberCount + 1 then
		--	x050102_NotifyFailBox( sceneId, selfId, targetId, "    �㻹��еi vi�n ��T�i ����." )
		--	return
		--end
		
		--local nearMemberCount = GetNearTeamCount(sceneId, selfId)
		--if nearMemberCount ~= sceneMemberCount + 1 then
		--	local strOutmsg = "B�n c� th�nh vi�n trong nh�m (";
		--	local checkNearCount = 0;
		--	for	i = 0, sceneMemberCount - 1 do
		--		local sceneMemId = LuaFnGetTeamSceneMember(sceneId, selfId, i);
		--		if sceneMemId and sceneMemId >= 0 then
		--			local findFlag = 0;
		--			for	j = 0, nearMemberCount - 1 do
		--				local nearMemId = GetNearTeamMember(sceneId, selfId, j);
		--				if nearMemId and nearMemId == sceneMemId then
		--					findFlag = 1;
		--					break;
		--				end
		--			end
					
		--			if findFlag == 0 then
		--				memName = GetName(sceneId, sceneMemId);
		--				if checkNearCount == 0 then
		--					strOutmsg = strOutmsg..memName;
		--				else
		--					strOutmsg = strOutmsg.."��"..memName;
		--				end
		--				checkNearCount = checkNearCount + 1;
		--			end
		--		end
		--	end
		--	if checkNearCount  > 0 then
		--		strOutmsg = strOutmsg..")��T�i ����,�뼯�Ϻ������ҽ���.";
		--		x050102_NotifyFailBox( sceneId, selfId, targetId, strOutmsg)
		--	end
		--	return 
		--end

		if nearMemberCount < x050102_g_LimitMembers then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    L� ��o t�c n�y kh�ng ph�i v�a ��u, ng߽i c�n ph�i c� 1 s� b�n l�nh v� 1 s� tr� th�, ta m�i y�n t�m. (trong nh�m t�i thi�u c�n ph�i c� 3 nh�n v�t t� c�p 30 tr� l�n)" )
			return
		end
		
		-- ������鴦����Ӹ���,��ô��ʾ�ӳ�C�n ���C�i n�y ״̬
		if IsTeamFollow(sceneId, selfId) == 1  then
			x050102_NotifyFailBox( sceneId, selfId, targetId, "    Ng߽i c� �i vi�n kh�ng nh�n nhi�m v� n�y" )
			return
		end

		-- ���С������ng�����������¼����, ������ng���Ѿ��ӹ�������
		local member, mylevel, numerator, denominator = 0, 0, 0, 0
		local outNotAcceptMissionStr = "B�n c� th�nh vi�n trong nh�m (";
		local notAcceptMissionCount = 0;
		local outDoingMissionStr = "B�n c� th�nh vi�n trong nh�m (";
		local doingMissionCount = 0;

		for	i = 0, nearMemberCount - 1 do
			member = GetNearTeamMember( sceneId, selfId, i )

			if IsHaveMission( sceneId, member, x050102_g_MissionId ) <= 0 then
				if notAcceptMissionCount == 0 then
					outNotAcceptMissionStr = outNotAcceptMissionStr..GetName(sceneId, member);
				else
					outNotAcceptMissionStr = outNotAcceptMissionStr..","..GetName(sceneId, member);
				end
				notAcceptMissionCount = notAcceptMissionCount + 1;
			end

			if notAcceptMissionCount == 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x050102_g_MissionId )
				if GetMissionParam( sceneId, member, misIndex, x050102_g_Param_sceneid ) >= 0 then
					if doingMissionCount == 0 then
						outDoingMissionStr = outDoingMissionStr..GetName(sceneId, member);
					else
						outDoingMissionStr = outDoingMissionStr..","..GetName(sceneId, member);
					end
					doingMissionCount = doingMissionCount + 1;
				end
			end

			numerator = numerator + GetLevel( sceneId, member ) ^ 4
			denominator = denominator + GetLevel( sceneId, member ) ^ 3
		end
		
		if notAcceptMissionCount > 0 then
			outNotAcceptMissionStr = outNotAcceptMissionStr..") ch�a nh�n nhi�m v� n�y";
			x050102_NotifyFailBox( sceneId, selfId, targetId, outNotAcceptMissionStr);
			return
		end
		
		if doingMissionCount > 0 then
			outDoingMissionStr = outDoingMissionStr..") �� ho�c �ang l�m nhi�m v�.";
			x050102_NotifyFailBox( sceneId, selfId, targetId, outDoingMissionStr);
			return
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
		LuaFnSetSceneLoad_Map( sceneId, x050102_g_CopySceneMap )						-- ��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050102_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050102_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050102_g_CopySceneType )				-- ���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050102_g_ScriptId )					-- ��1����������Ϊ���������¼��ű���
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ���ö�ʱ�����ô���
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ���ø�����ڳ�����, ��ʼ��
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ���ø����رձ�־, 0����,1�ر�
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- �����뿪����ʱ����
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ��������
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							-- ɱ��Boss1to� � ����
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- ��ng��ɱ������
		LuaFnSetCopySceneData_Param( sceneId, 13, iniLevel / 10 )				-- �洢�����to� � c�p�𵵴�

		LuaFnSetSceneLoad_Area( sceneId, x050102_g_CopySceneArea )

		local monsterINI = format( x050102_g_CopySceneMonsterIni, iniLevel )
		LuaFnSetSceneLoad_Monster( sceneId, monsterINI )

		LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) -- c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ��ʼ����ɺ���ô�����������
		if bRetSceneID > 0 then
			x050102_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
		else
			x050102_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x050102_OnCopySceneReady( sceneId, destsceneId )
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
	local i, nearMemberCount, member
	local members = {}
	local validmembercount = 0

	nearMemberCount = GetNearTeamCount( sceneId, leaderObjId )
	for i = 0, nearMemberCount - 1 do
		member = GetNearTeamMember( sceneId, leaderObjId, i )
		if IsHaveMission( sceneId, member, x050102_g_MissionId ) > 0 then		-- ������
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	if validmembercount < x050102_g_LimitMembers then
		x050102_NotifyFailTips( sceneId, leaderObjId, "    L� ��o t�c n�y kh�ng ph�i v�a ��u, ng߽i c�n ph�i c� 1 s� b�n l�nh v� 1 s� tr� th�, ta m�i y�n t�m. (trong nh�m t�i thi�u c�n ph�i c� 3 nh�n v�t t� c�p 30 tr� l�n)" )
		return
	end

	local misIndex
	for i = 1, validmembercount do
		misIndex = GetMissionIndexByID( sceneId, members[i], x050102_g_MissionId )

		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ���ڿ���ִ���߼�to� � ״̬
			--������to� � ��1����������Ϊ����to� � ������
			SetMissionByIndex( sceneId, members[i], misIndex, x050102_g_Param_sceneid, destsceneId )
	--		SetMissionEvent( sceneId, members[i], x050102_g_MissionId, 0 )			-- ����ɱ���¼�
			NewWorld( sceneId, members[i], destsceneId, x050102_g_Fuben_X, x050102_g_Fuben_Z )
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x050102_OnPlayerEnter( sceneId, selfId )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x050102_g_Fuben_Relive_X, x050102_g_Fuben_Relive_Z )
end

--**********************************
--ɱ����������
--**********************************
function x050102_OnKillObject( sceneId, selfId, objdataId, objId )						-- ������˼: �����š����objId�������λ�úš�����objId
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) == 0 then
		return
	end

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050102_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- ��������Ѿ����óɹر�״̬,��ɱ����Ч
		return
	end
	
	--ȡ �i�mɱ������to� � GroupID
	local GroupID = GetMonsterGroupID( sceneId, objId )
	if GroupID == x050102_g_BossGroup then
		LuaFnSetCopySceneData_Param( sceneId, 12, 1 )							-- ��ng��ɱ������

		local BroadcastMsg = x050102_g_BroadcastMsg[ random( getn(x050102_g_BroadcastMsg) ) ]
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
	end

	local killedMonsterIndex, killedCount = 0, 0
	for i = 1, getn( x050102_g_DemandKillGroup ) do
		if GroupID == x050102_g_DemandKillGroup[i] then
			killedMonsterIndex = i
			killedCount = LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) + 1
			LuaFnSetCopySceneData_Param( sceneId, 7 + i - 1, killedCount )		-- ɱ��Bossito� � ����
			break
		end
	end

	if killedMonsterIndex == 0 then													-- ɱ����m�t c�i����ع�
		return
	end

	local maxKilledCount = x050102_g_DemandKill[killedMonsterIndex].num

	--ȡ �i�m��ǰ������to� � ����
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local misIndex
	local strText = format( "�� gi�t %s: %d/%d", GetName( sceneId, objId ), killedCount, maxKilledCount )
	for i = 0, num - 1 do
		mems[i + 1] = LuaFnGetCopyScene_HumanObjId( sceneId, i )					-- ȡ �i�m��ǰ��������to� � objId

		if LuaFnIsObjValid( sceneId, mems[i + 1] ) == 1 then						-- ��T�i ����to� � �����˲���
			x050102_NotifyFailTips( sceneId, mems[i + 1], strText )
			Msg2Player( sceneId, mems[i + 1], strText, MSG2PLAYER_PARA )
			misIndex = GetMissionIndexByID( sceneId, mems[i + 1], x050102_g_MissionId )
			SetMissionByIndex( sceneId, mems[i + 1], misIndex, killedMonsterIndex, killedCount )	-- ˢ��ɱ������
		end
	end

	local leaveFlag = 1
	for i = 1, getn( x050102_g_DemandKillGroup ) do
		if LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) < x050102_g_DemandKill[i].num then
			leaveFlag = 0
			break
		end
	end

	-- ɱ�����й���֪ͨ�������
	if leaveFlag == 1 then
		local misIndex

		for i = 1, num do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then						-- ��T�i ����to� � �����˲���
				x050102_NotifyFailTips( sceneId, mems[i], "M�c ti�u nhi�m v� ho�n th�nh" )
				misIndex = GetMissionIndexByID( sceneId, mems[i], x050102_g_MissionId )
				SetMissionByIndex( sceneId, mems[i], misIndex, x050102_g_IsMissionOkFail, 1 )	-- �������
			end
		end
	end
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x050102_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--�뿪����
--**********************************
function x050102_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ �i�m������ڳ�����
	NewWorld( sceneId, selfId, oldsceneId, x050102_g_Back_X, x050102_g_Back_Z )
end

--**********************************
--����
--**********************************
function x050102_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050102_g_MissionName )
		AddText( sceneId, format( x050102_g_MissionComplete, GetName( sceneId, selfId ) ) )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050102_g_ScriptId, x050102_g_MissionId )
end

--**********************************
--����
--**********************************
function x050102_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050102_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050102_g_Param_sceneid )

	-- ���÷�����������to� � ʱ��
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()											-- ��ǰʱ��
	local CurTime = GetQuarterTime()											-- ��ǰʱ��
	SetMissionData( sceneId, selfId, MD_ROUNDMISSION3, CurTime )
	--ene modified by zhangguoxin 090208

	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x050102_g_MissionId )
	
	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050102_g_CopySceneType then											-- ���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		x050102_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x050102_g_Back_X, x050102_g_Back_Z )
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x050102_OnCopySceneTimer( sceneId, nowTime )
	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- ������to� � ��ʱ�����ô���

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )

	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- C�n �뿪
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050102_g_CloseTick then										-- ����ʱ�䵽,��Ҷ���ȥ��
			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050102_Exit( sceneId, mems[i] )
				end
			end
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a", ( x050102_g_CloseTick - leaveTickCount ) * x050102_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050102_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050102_g_LimitTotalHoldTime then									-- ������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050102_NotifyFailTips( sceneId, mems[i], "Th�i gian nhi�m v� �� h�t, r�i c�nh..." )
				x050102_Exit( sceneId, mems[i] )
			end
		end

		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--��ʱ�������Աto� � �����,���������,���߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � �����
		local oldsceneId

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050102_NotifyFailTips( sceneId, mems[i], "Ng߽i kh�ng � trong ��ng �i, r�i c�nh..." )
				x050102_Exit( sceneId, mems[i] )
			end
		end

		-- ÿ ph�t��ʾ���ʣ��ʱ��
		if mod( x050102_g_TickTime * TickCount, 60 ) < x050102_g_TickTime and TickCount < x050102_g_LimitTotalHoldTime then
			local str = "C�n l�i " .. ( x050102_g_LimitTotalHoldTime - TickCount ) * x050102_g_TickTime / 60 .. " Ph�t..."
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050102_NotifyFailTips( sceneId, mems[i], str )
				end
			end
		end

	end
end

--**********************************
--�����ng������ύ
--**********************************
function x050102_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050102_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050102_g_MissionId )				--  �i�m������to� � ���к�
	if GetMissionParam( sceneId, selfId, misIndex, x050102_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x050102_NotifyFailTips( sceneId, selfId, "Thi�u m�t � v�t ph�m nhi�m v�" )
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x050102_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050102_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x050102_CheckSubmit( sceneId, selfId ) == 1 then
		x050102_NotifyFailBox( sceneId, selfId, targetId, format( x050102_g_MissionComplete, GetName( sceneId, selfId ) ) )
		local exp = GetLevel( sceneId, selfId ) * x050102_g_k - x050102_g_b
		if exp < 1 then
			exp = 1
		end

		AddExp( sceneId, selfId, exp )

	--	TryRecieveItem( sceneId, selfId, x050102_g_Mail, 1 )
		DelMission( sceneId, selfId, x050102_g_MissionId )
		-- ����m�t ͳ��
		LuaFnAuditQuest(sceneId, selfId, "D� ngo�i tr�i ph�")
		local strText = x050102_g_MissionName .. "nhi�m v� �� ho�n th�nh"
		x050102_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		local newRelation = GetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU ) + x050102_g_RelationReward
		if x050102_g_MaxRelation < newRelation then
			newRelation = x050102_g_MaxRelation
		end

		SetMissionData( sceneId, selfId, MD_RELATION_QIANHONGYU, newRelation )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )

	end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x050102_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x050102_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
