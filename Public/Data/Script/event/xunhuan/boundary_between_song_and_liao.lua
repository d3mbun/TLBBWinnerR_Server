-- ������������
-- ��Linh�߽�

--************************************************************************
--MisDescBegin

-- �ű���
x050100_g_ScriptId = 050100

-- �����
x050100_g_MissionId = 1260					-- 1260 - 1269

-- ��m�t c�i����to� �  ID
-- g_MissionIdPre = 1260

-- M�c ti�u nhi�m v� NPC
x050100_g_Name = "Ti�n H�ng V�"

--�������
x050100_g_MissionKind = 8

--��ng c�p nhi�m v� 
x050100_g_MissionLevel = 10000

-- �����ı�����
x050100_g_MissionName = "M�t t�n c�ng kh�ng th� tho�t"
x050100_g_MissionInfo = "    "				-- ��������
x050100_g_MissionTarget = "    "..x050100_g_Name.." � T� Ch�u #{_INFOAIM62,162,1, "..x050100_g_Name.."} y�u c�u c�c h� trong v�ng 30 ph�t ph�i d� v� gi�t ch�t D� еc.#r    #{FQSH_090206_01}"						-- M�c ti�u nhi�m v�
x050100_g_ContinueInfo = "    Tr�n chi�n v� c�ng tr�ng ��i, nh�t �nh kh�ng ���c khinh xu�t. C�c h� �� chu�n b� �n sao huy�t b�n c߾p ch�a?"	-- δHo�n t�t nhi�m v�to� � npc�Ի�
x050100_g_SubmitInfo = "    Nhi�m v� l�m th� n�o r�i?"										-- �ύʱto� � ��
x050100_g_MissionComplete = "    C�c h� l�m qu� t�t r�i, ch�ng ta c� th� c� th� th�ng qua l�nh b�i n�y t�m ���c doanh tr�i c�a b�n ph� � n�y. H�y �i �n ti�u c�c t�m #{_INFOAIM251,109,1, Hoa Ki�m �nh}, h�n c� th� cho ng߽i bi�t lai l�ch c�a l�nh b�i"	--Ho�n t�t nhi�m v�npc˵to� � ��

x050100_g_IsMissionOkFail = 0				-- 0 ��: ��ǰ������ng�����(0δ��ɣ�1��ɣ�2th�t b�i)
x050100_g_DemandKill = { { id = 4060, num = 50 }, { id = 4070, num = 10 }, { id = 4080, num = 1 }, { id = 4090, num = 1 }, { id = 4100, num = 1 } }	-- 1 ~ 5 ��,������Ϣ
x050100_g_Param_sceneid = 6					-- 6 ��: ��ǰ��������to� � ������

-- ������

--MisDescEnd
--************************************************************************

x050100_g_DemandKillGroup = { 4, 0, 1, 2, 3 }	-- 1 ~ 5 �Ź����Ӧto� �  GroupID ��,�� x050100_g_DemandKill m�t m�t ��Ӧ
x050100_g_DogfaceGroup = 0					-- ����С��to� �  Group ID
x050100_g_LittleBossGroup = 2				-- С Boss Group ID
x050100_g_ViceBossGroup = 1					-- �ξ�����ͳ
x050100_g_BossGroup = 3						-- Boss Group ID
x050100_g_Token = 40004315					-- ���ƺ�

x050100_g_NumText_Main = 1					-- ������to� � ѡ��
x050100_g_NumText_EnterCopyScene = 2		-- Ҫ����븱��to� � ѡ��

x050100_g_CopySceneMap = "songliao.nav"
x050100_g_CopySceneArea = "songliao_area.ini"
x050100_g_CopySceneMonsterIni = "songliao_monster_%d.ini"

x050100_g_CopySceneType = FUBEN_SONGLIAO	-- ��������,����T�i ScriptGlobal.lua����
x050100_g_LimitMembers = 1					-- ���Խ�����to� � ��С��������
x050100_g_LevelLimit = 30					-- ���Խ��븱��to� � ���c�p��
x050100_g_TickTime = 5						-- �ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x050100_g_LimitTotalHoldTime = 360			-- �������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x050100_g_CloseTick = 6						-- �����ر�ǰ����ʱ(��λ: ����)
x050100_g_NoUserTime = 30					-- ������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x050100_g_LoadBossTick = 180				-- 15  ph�tˢС Boss

x050100_g_LittleBoss = { 4080, 4081, 4082, 4083, 4084, 4085, 4086, 4087, 4088, 4089, 34080, 34081, 34082, 34083, 34084, 34085, 34086, 34087, 34088, 34089 }
x050100_g_Dogface = { 4070, 4071, 4072, 4073, 4074, 4075, 4076, 4077, 4078, 4079, 34070, 34071, 34072, 34073, 34074, 34075, 34076, 34077, 34078, 34079 }
x050100_g_DogfacePos = {
	{ 22, 70, 4 }, { 22, 70, 4 }, { 22, 70, 4 }, { 102, 67, 5 }, { 102, 67, 5 },
	{ 102, 67, 5 }, { 75, 83, 6 }, { 75, 83, 6 }, { 49, 84, 7 }, { 49, 84, 7 }
}
x050100_g_Boss = { 4100, 4101, 4102, 4103, 4104, 4105, 4106, 4107, 4108, 4109, 34100, 34101, 34102, 34103, 34104, 34105, 34106, 34107, 34108, 34109 }

x050100_g_Fuben_X = 60
x050100_g_Fuben_Z = 9
x050100_g_Back_X = 60
x050100_g_Back_Z = 161

x050100_g_Fuben_Relive_X = 60
x050100_g_Fuben_Relive_Z = 15


-- �㲥��Ϣ
x050100_g_BroadcastMsg = {
	"#Y"..x050100_g_Name..": #{_BOSS45}#cff99cc �� ch�t! H�n �� b� anh h�ng c�a ch�ng ta #{_INFOUSR$N}#cff99cc ti�u di�t! K� n�p m�ng ti�p theo l� ai? #{_BOSS46} hay l� #{_BOSS47}. Ha ha ha!",
	"#Y"..x050100_g_Name..": #cff99ccAnh h�ng c�a ch�ng ta #{_INFOUSR$N}#cff99cc, t� #Gbi�n gi�i T�ng Li�u#cff99cc mang tin vui t�i! T�n th� ph� �c �n #{_BOSS45}#cff99cc n�y, �� b� tr� kh�!",
	"#Y"..x050100_g_Name..": #cff99ccM�i ng߶i mau ra ��y xem v� anh h�ng c�a ch�ng ta m�t nh�t ki�m �� gi�t ch�t #{_BOSS45}! #{_INFOUSR$N}#cff99cc m�t huy�n tho�i s�ng, hi�p s� chi�n �u, ��i hi�p!"
}

x050100_g_TakeTimes = 5											-- ÿ�����L�nh ����

--**********************************
-- ������ں���
--**********************************
function x050100_OnDefaultEvent( sceneId, selfId, targetId )	--  �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x050100_g_Name then		-- �жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) == 0 then
		if numText == x050100_g_NumText_Main then
			if x050100_CheckAccept( sceneId, selfId ) > 0 then
				--��������Ti�p th�ʱ��ʾto� � ��Ϣ
				BeginEvent( sceneId )
					AddText( sceneId, x050100_g_MissionName )
					AddText( sceneId, "    R�t cu�c �� c� ng߶i t�i tr�ng tr� l� �c t�c n�y!" )
					AddText( sceneId, "    T�n th� ph� n�y � bi�n gi�i r�t x�o quy�t. Хu m�c l� m� ph� D� еc l� k� t�i � c�a C�i Bang c� v� c�ng cao v� r�t gi�i d�ng �c, ch� c� c�ch ngu� trang th�nh T�ng binh, T�ng ph� m�i c� th� d� h�n xu�t hi�n " .. GetName( sceneId, selfId ) .. ", � di�t t�n g�c b�n c߾p n�y, ng߽i c�n ph�i ti�u di�t ch�ng v�i t�c � nhanh nh�t, kh�ng th� � 1 t�n s�ng s�t!" )
					AddText( sceneId, "#{M_MUBIAO}" )
					AddText( sceneId, x050100_g_MissionTarget )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050100_g_ScriptId, x050100_g_MissionId )
			end
		end
	else
		if numText == x050100_g_NumText_Main then
			local bDone = x050100_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				AddText( sceneId, x050100_g_MissionName )

				if bDone == 1 then
					AddText( sceneId, x050100_g_SubmitInfo )
				else
					AddText( sceneId, x050100_g_ContinueInfo )
					x050100_AskEnterCopyScene( sceneId, selfId, targetId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			DispatchMissionDemandInfo( sceneId, selfId, targetId, x050100_g_ScriptId, x050100_g_MissionId, bDone )
		elseif numText == x050100_g_NumText_EnterCopyScene then
			x050100_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ����������to� � ����,û��Tr� v� 0,��Tr� v� 1
--**********************************
function x050100_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	for missionId = 1260, x050100_g_MissionId - 1 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	for missionId = x050100_g_MissionId + 1, 1269 do
		if IsHaveMission( sceneId, selfId, missionId ) > 0 then
			return 1
		end
	end

	return 0
end

--**********************************
-- �о��¼�
--**********************************
function x050100_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050100_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	-- ����������to� � ����
	if x050100_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050100_g_ScriptId, x050100_g_MissionName, 4, x050100_g_NumText_Main )
end

--**********************************
-- ���Ti�p th�����
--**********************************
function x050100_CheckAccept( sceneId, selfId )
	-- �Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) > 0 then
		return 0
	end

	-- ����������to� � ����
	if x050100_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end

	-- ��������ng����ϸշ�������
	local iTime = GetMissionData( sceneId, selfId, MD_ROUNDMISSION1 )			-- ��m�t �η�������to� � ʱ��(��λ: m�t ����)
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()												-- ��ǰʱ��(��λ: m�t ����)
	local CurTime = GetQuarterTime()												-- ��ǰʱ��(��λ: m�t ����)
	--end modified by zhangguoxin 090207

	if iTime+1 >= CurTime then
		x050100_NotifyFailTips( sceneId, selfId, "Sau khi t� b� nhi�m v� 30 ph�t, m�i c� th� nh�n l�n n�a." )
		return 0
	end

	-- m�t ��ֻ���� x050100_g_TakeTimes ��
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
	end

	if takenTimes >= x050100_g_TakeTimes then
		x050100_NotifyFailTips( sceneId, selfId, "S� l�n nh�n nhi�m v� c�a c�c h� h�m nay �� v��t qu� " .. x050100_g_TakeTimes .. " l�n, xin ng�y mai quay l�i nh�n" )
		return 0
	else
		DayTimes = nowDate + takenTimes * 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES, DayTimes )
	end

	return 1
end

--**********************************
-- ������븱������
--**********************************
function x050100_AskEnterCopyScene( sceneId, selfId, targetId )
	AddNumText( sceneId, x050100_g_ScriptId, "Th�ng ti�n bi�n c߽ng", 10, x050100_g_NumText_EnterCopyScene )
end

--**********************************
--Ti�p th�
--**********************************
function x050100_OnAccept( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) == 0 then					-- û������ſ���������
		if GetMissionCount( sceneId, selfId ) >= 20 then						-- ��������������ng��ﵽ����20c�i
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    Nhi�m v� ghi ch�p �� �y, kh�ng th� nh�n th�m nhi�m v�" )
			return
		end

		if GetLevel( sceneId, selfId ) < x050100_g_LevelLimit then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    ��ng c�p c�a ng߽i qu� th�p, kh�ng th� chi�n th�ng" )
			return
		end

		-- ����������to� � ����
		if x050100_CheckConflictMission( sceneId, selfId ) == 1 then
			return
		end

		-- ������������б�
		AddMission( sceneId, selfId, x050100_g_MissionId, x050100_g_ScriptId, 1, 0, 0 )			-- kill��area��item
		if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) <= 0 then
			return
		end

		-- m�t ��ֻ���� x050100_g_TakeTimes ��
		local DayTimes

		DayTimes = GetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES )
		DayTimes = DayTimes + 100000
		SetMissionData( sceneId, selfId, MD_ROUNDMISSION1_TIMES, DayTimes )

--		SetMissionEvent( sceneId, selfId, x050100_g_MissionId, 4 ) -- ע�� OnLockedTarget �¼�

		local misIndex = GetMissionIndexByID( sceneId, selfId, x050100_g_MissionId )

		SetMissionByIndex( sceneId, selfId, misIndex, x050100_g_IsMissionOkFail, 0 )	-- ������������Ϊδ���
		SetMissionByIndex( sceneId, selfId, misIndex, x050100_g_Param_sceneid, -1 )		-- ��������Ϊ -1

		--��ʾ���ݸ�������Ѿ�Ti�p th�������
		BeginEvent( sceneId )
			AddText( sceneId, x050100_g_MissionName )
			AddText( sceneId, x050100_g_ContinueInfo )
			AddText( sceneId, "#r    C�c h� �� nh�n " .. x050100_g_MissionName )

			x050100_AskEnterCopyScene( sceneId, selfId, targetId )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--**********************************
-- ������븱������
--**********************************
function x050100_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) > 0 then					-- ������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050100_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050100_g_Param_sceneid )
		if copysceneid >= 0 then												-- ��������
			-- ���Լ����͵���������
			if IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050100_g_Fuben_X, x050100_g_Fuben_Z )
			else
				x050100_NotifyFailBox( sceneId, selfId, targetId, "     R�t ti�c, nhi�m v� c�a ng߽i �� th�t b�i" )
			end

			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    L� ��o t�c n�y kh�ng ph�i v�a ��u, ng߽i c�n ph�i c� 1 nh�m m�nh" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    Ta ph�i ���c s� x�c nh�n c�a tr߷ng nh�m m�i c� th� y�n t�m � c�c ng߽i th�ng ti�n bi�n c߽ng" )
			return
		end
		
		--bug27726,2007.11.15 by alan,��ΪsceneMemberCount��m�t ��׼ȷ,���ø���еi vi�n �����������to� � �Ƚ��ж�
		--��������ʾ���岻T�i ����to� � еi vi�n ����
				
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);	
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);		
		if not teamMemberCount or not nearMemberCount or teamMemberCount ~= nearMemberCount then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� c� nh�m vi�n kh�ng � g�n ��y" )
			return
		end
		
		--bug27726 end
                                                               
		-- ȡ �i�m��Ҹ���to� � ��������(�����Լ�)
		--local teamMemberCount = GetTeamMemberCount(sceneId, selfId);		
		--local sceneMemberCount = GetTeamSceneMemberCount(sceneId, selfId);
		--if not teamMemberCount or not sceneMemberCount or teamMemberCount ~= sceneMemberCount + 1 then
		--	x050100_NotifyFailBox( sceneId, selfId, targetId, "    �㻹��еi vi�n ��T�i ����." )
		--	return
		--end
		
		--local nearMemberCount = GetNearTeamCount(sceneId, selfId)
		--if nearMemberCount ~= sceneMemberCount + 1 then
		--	local strOutmsg = "Trong �i ng� c� th�nh vi�n (";
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
		--		x050100_NotifyFailBox( sceneId, selfId, targetId, strOutmsg)
		--	end
		--	return 
		--end

		if nearMemberCount < x050100_g_LimitMembers then
			x050100_NotifyFailBox( sceneId, selfId, targetId, "    L� ��o t�c n�y kh�ng ph�i v�a ��u, ng߽i c�n ph�i c� 1 s� b�n l�nh v� 1 s� tr� th�, ta m�i y�n t�m. (trong nh�m t�i thi�u c�n ph�i c� "..x050100_g_LimitMembers.." nh�n v�t t� c�p 30 tr� l�n)" )
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

			if IsHaveMission( sceneId, member, x050100_g_MissionId ) <= 0 then
				if notAcceptMissionCount == 0 then
					outNotAcceptMissionStr = outNotAcceptMissionStr..GetName(sceneId, member);
				else
					outNotAcceptMissionStr = outNotAcceptMissionStr..","..GetName(sceneId, member);
				end
				notAcceptMissionCount = notAcceptMissionCount + 1;
			end

			if notAcceptMissionCount == 0 then
				misIndex = GetMissionIndexByID( sceneId, member, x050100_g_MissionId )
				if GetMissionParam( sceneId, member, misIndex, x050100_g_Param_sceneid ) >= 0 then
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
			x050100_NotifyFailBox( sceneId, selfId, targetId, outNotAcceptMissionStr);
			return
		end

		if doingMissionCount > 0 then
			outDoingMissionStr = outDoingMissionStr..") �� ho�c �ang l�m nhi�m v�.";
			x050100_NotifyFailBox( sceneId, selfId, targetId, outDoingMissionStr);
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
		LuaFnSetSceneLoad_Map( sceneId, x050100_g_CopySceneMap )						-- ��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050100_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050100_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050100_g_CopySceneType )				-- ���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050100_g_ScriptId )					-- ��1����������Ϊ���������¼��ű���
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ���ö�ʱ�����ô���
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ���ø�����ڳ�����, ��ʼ��
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ���ø����رձ�־, 0����,1�ر�
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- �����뿪����ʱ����
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ��������
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							-- ɱ��Boss1to� � ����
		LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							-- ɱ��Boss2to� � ����
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- ɱ��Boss3to� � ����
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- ɱ��Boss4to� � ����
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- ɱ��Boss5to� � ����
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- ��ng��ɱ��С Boss
		LuaFnSetCopySceneData_Param( sceneId, 13, iniLevel / 10 )				-- �洢�����to� � c�p�𵵴�
		LuaFnSetCopySceneData_Param( sceneId, 14, 0 )							-- ��ng���Ѿ���С������
		LuaFnSetCopySceneData_Param( sceneId, 15, 0 )							-- ��ng���Ѿ�ˢ���� Boss

		LuaFnSetCopySceneData_Param( sceneId, 16, 0 )							-- Check Mid Boss Time
		LuaFnSetCopySceneData_Param( sceneId, 17, 0 )							-- Check Mid Boss Live
		
		LuaFnSetSceneLoad_Area( sceneId, x050100_g_CopySceneArea )

		local monsterINI = format( x050100_g_CopySceneMonsterIni, iniLevel )
		LuaFnSetSceneLoad_Monster( sceneId, monsterINI )

		LuaFnSetCopySceneData_Param(sceneId, CopyScene_LevelGap, mylevel - iniLevel) -- c�p���,CopyScene_LevelGap T�i  scene.lua �и�ֵ

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ��ʼ����ɺ���ô�����������
		if bRetSceneID > 0 then
			x050100_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng!" )
		else
			x050100_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x050100_OnCopySceneReady( sceneId, destsceneId )
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
		if IsHaveMission( sceneId, member, x050100_g_MissionId ) > 0 then		-- ������
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	if validmembercount < x050100_g_LimitMembers then
		x050100_NotifyFailTips( sceneId, leaderObjId, "    L� ��o t�c n�y kh�ng ph�i v�a ��u, ng߽i c�n ph�i c� 1 s� b�n l�nh v� 1 s� tr� th�, ta m�i y�n t�m. (trong nh�m t�i thi�u c�n ph�i c� "..x050100_g_LimitMembers.." nh�n v�t t� c�p 30 tr� l�n)" )
		return
	end

	local misIndex
	for i = 1, validmembercount do
		misIndex = GetMissionIndexByID( sceneId, members[i], x050100_g_MissionId )

		if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ���ڿ���ִ���߼�to� � ״̬
			--������to� � ��1����������Ϊ����to� � ������
			SetMissionByIndex( sceneId, members[i], misIndex, x050100_g_Param_sceneid, destsceneId )
	--		SetMissionEvent( sceneId, members[i], x050100_g_MissionId, 0 )			-- ����ɱ���¼�
			NewWorld( sceneId, members[i], destsceneId, x050100_g_Fuben_X, x050100_g_Fuben_Z )
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x050100_OnPlayerEnter( sceneId, selfId )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x050100_g_Fuben_Relive_X, x050100_g_Fuben_Relive_Z )
end

--**********************************
--ɱ����������
--**********************************
function x050100_OnKillObject( sceneId, selfId, objdataId, objId )						-- ������˼: �����š����objId�������λ�úš�����objId
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) == 0 then
		return
	end

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050100_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- ��������Ѿ����óɹر�״̬,��ɱ����Ч
		return
	end

	--ȡ �i�mɱ������to� � GroupID
	local GroupID = GetMonsterGroupID( sceneId, objId )
	local killedMonsterIndex, killedCount = 0, 0
	for i = 1, getn( x050100_g_DemandKillGroup ) do
		if GroupID == x050100_g_DemandKillGroup[i] then
			killedMonsterIndex = i
			killedCount = LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) + 1
			LuaFnSetCopySceneData_Param( sceneId, 7 + i - 1, killedCount )		-- ɱ��Bossito� � ����
			break
		end
	end

	if killedMonsterIndex == 0 then													-- ɱ����m�t c�i����ع�
		return
	end
	
	if x050100_g_BossGroup == GroupID then
		local BroadcastMsg = x050100_g_BroadcastMsg[ random( getn(x050100_g_BroadcastMsg) ) ]
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
	end

	local maxKilledCount = x050100_g_DemandKill[killedMonsterIndex].num

	--ȡ �i�m��ǰ������to� � ����
	local i, humanObjId, misIndex
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local strText = format( "�� gi�t %s: %d/%d", GetName( sceneId, objId ), killedCount, maxKilledCount )
	for i = 0, num - 1 do
		humanObjId = LuaFnGetCopyScene_HumanObjId( sceneId, i )					-- ȡ �i�m��ǰ��������to� � objId

		if LuaFnIsObjValid( sceneId, humanObjId ) == 1 then						-- ��T�i ����to� � �����˲���
			x050100_NotifyFailTips( sceneId, humanObjId, strText )
			Msg2Player( sceneId, humanObjId, strText, MSG2PLAYER_PARA )
			misIndex = GetMissionIndexByID( sceneId, humanObjId, x050100_g_MissionId )
			SetMissionByIndex( sceneId, humanObjId, misIndex, killedMonsterIndex, killedCount )	-- ˢ��ɱ������

			-- ɱ�����й�û�з���m�t c�i��T�i �����Ӫǰˢ��boss[�඾],ɱ���󸱱��������.(�඾���ϱص�������ߡ��඾to� � ���ơ�)
			if x050100_g_BossGroup == GroupID then
				-- ɱ����Ҳ���رո���,��ΪҪ�������˶������ơ���
				AddMonsterDropItem( sceneId, objId, humanObjId, x050100_g_Token )

				SetMissionByIndex( sceneId, humanObjId, misIndex, x050100_g_IsMissionOkFail, 1 )	-- �������
			end
		end
	end

	-- ɱ����ͼ����to� � Сboss[αװto� � �α���ͳ]5 gi�y��,T�i ��ͼ�·�ˢ��10ֻ��·���Ӵ�to� � С��
	if x050100_g_LittleBossGroup == GroupID then									-- ɱ����С Boss
		LuaFnSetCopySceneData_Param( sceneId, 12, 1 )							-- ��ng��ɱ��С Boss
	end

	-- ɱ�����й�û�з���m�t c�i��T�i �����Ӫǰˢ��boss[�඾]
	local bigBossFlag = 1
	for i = 1, 4 do
		if LuaFnGetCopySceneData_Param( sceneId, 7 + i - 1 ) < x050100_g_DemandKill[i].num then
			bigBossFlag = 0
			break
		end
	end

	if bigBossFlag == 1 then
		if LuaFnGetCopySceneData_Param( sceneId, 15 ) > 0 then					-- ��C�n ��ˢ Boss ��
			return
		end

		local bossGrade = LuaFnGetCopySceneData_Param( sceneId, 13 )
		if not x050100_g_Boss[bossGrade] then
			return
		end

		local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )
		local bossId = LuaFnCreateMonster( sceneId, x050100_g_Boss[bossGrade], 55, 67, 14, 126, -1 )
		SetLevel( sceneId, bossId, GetLevel( sceneId, bossId ) + LevelGap )
		SetCharacterTitle(sceneId, bossId, "")
		SetMonsterGroupID( sceneId, bossId, x050100_g_BossGroup )
		LuaFnSetCopySceneData_Param( sceneId, 15, 1 )
	end
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x050100_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--�뿪����
--**********************************
function x050100_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ �i�m������ڳ�����
	NewWorld( sceneId, selfId, oldsceneId, x050100_g_Back_X, x050100_g_Back_Z )
end

--**********************************
--����
--**********************************
function x050100_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050100_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050100_g_Param_sceneid )


	-- ���÷�����������to� � ʱ��
	--begin modified by zhangguoxin 090207
	--local CurTime = GetHourTime()											-- ��ǰʱ��
	local CurTime = GetQuarterTime()											-- ��ǰʱ��
	--end modified by zhangguoxin 090207
	SetMissionData( sceneId, selfId, MD_ROUNDMISSION1, CurTime )

	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x050100_g_MissionId )
	
	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050100_g_CopySceneType then											-- ���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		x050100_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x050100_g_Back_X, x050100_g_Back_Z )
	end
end


--**********************************
--����������ʱ���¼�
--**********************************
function x050100_OnCopySceneTimer( sceneId, nowTime )
	local Monster1 = LuaFnGetCopySceneData_Param(sceneId, 7)
	local Monster2 = LuaFnGetCopySceneData_Param(sceneId, 8)
	local Monster3 = LuaFnGetCopySceneData_Param(sceneId, 10)
	local CheckMidBoss = LuaFnGetCopySceneData_Param(sceneId, 16)
	
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

		if leaveTickCount >= x050100_g_CloseTick then										-- ����ʱ�䵽,��Ҷ���ȥ��
			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050100_Exit( sceneId, mems[i] )
				end
			end
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "C�c h� s� r�i kh�i n�i n�y trong v�ng %d gi�y n�a!", ( x050100_g_CloseTick - leaveTickCount ) * x050100_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050100_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050100_g_LimitTotalHoldTime then									-- ������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
				x050100_NotifyFailTips( sceneId, mems[i], "Th�i gian nhi�m v� �� h�t, r�i c�nh..." )
				x050100_Exit( sceneId, mems[i] )
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
				x050100_NotifyFailTips( sceneId, mems[i], "Ng߽i kh�ng � trong ��ng �i, r�i c�nh..." )
				x050100_Exit( sceneId, mems[i] )
			end
		end

		-- ÿ ph�t��ʾ���ʣ��ʱ��
		if mod( x050100_g_TickTime * TickCount, 60 ) < x050100_g_TickTime and TickCount < x050100_g_LimitTotalHoldTime then
			local str = "C�n l�i " .. ( x050100_g_LimitTotalHoldTime - TickCount ) * x050100_g_TickTime / 60 .. " Ph�t..."
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
					x050100_NotifyFailTips( sceneId, mems[i], str )
				end
			end
		end

		-- ��������15 ph�tʱ��T�i �ӳ�������ˢ��Сboss: αװto� � �α�����ͳ
		if Monster1 >= 50 and Monster2 >= 10 and Monster3 >= 1 and CheckMidBoss == 0 then
			LuaFnSetCopySceneData_Param(sceneId, 16, TickCount)
		end
		
		if LuaFnGetCopySceneData_Param(sceneId, 16) ~= 0 and LuaFnGetCopySceneData_Param(sceneId, 16) <= TickCount - 12 then
			if LuaFnGetCopySceneData_Param(sceneId, 17) == 0 then
				local bossGrade = LuaFnGetCopySceneData_Param( sceneId, 13 )
				if not x050100_g_LittleBoss[bossGrade] then
					return
				end

				local PosX, PosZ = 55, 66												-- ������ֶ����Ա����Ⱑ�����
				for	i = 0, membercount - 1 do
					PosX, PosZ = LuaFnGetWorldPos( sceneId, mems[i] )					-- �������δ�ҵ��ӳ�to� � ����
					if LuaFnIsTeamLeader( sceneId, mems[i] ) == 1 then
						break
					end
				end

				local bossId = LuaFnCreateMonster( sceneId, x050100_g_LittleBoss[bossGrade], PosX, PosZ, 14, 124, -1 )
				SetLevel( sceneId, bossId, GetLevel( sceneId, bossId ) + LevelGap )
				SetMonsterGroupID( sceneId, bossId, x050100_g_ViceBossGroup )
				LuaFnSetCopySceneData_Param(sceneId, 17, 1)
			end
		end
		
		-- ɱ����ͼ����to� � Сboss[αװto� � �α���ͳ]5 gi�y��,T�i ��ͼ�·�ˢ��10ֻ��·���Ӵ�to� � С��
		local flag = LuaFnGetCopySceneData_Param( sceneId, 12 )
		if flag > 0 then
			if flag == 1 then
				LuaFnSetCopySceneData_Param( sceneId, 12, 2 )						-- ��m�t ���ٳ�С��
			elseif flag == 2 then
				LuaFnSetCopySceneData_Param( sceneId, 12, 0 )

				local bossGrade = LuaFnGetCopySceneData_Param( sceneId, 13 )
				if not x050100_g_Dogface[bossGrade] then
					return
				end

				local dogfaceId = -1
				for i = 1, getn( x050100_g_DogfacePos ) do
					if x050100_g_DogfacePos[i] then
						dogfaceId = LuaFnCreateMonster( sceneId, x050100_g_Dogface[bossGrade], x050100_g_DogfacePos[i][1], x050100_g_DogfacePos[i][2], 1, 4, -1 )
						SetLevel( sceneId, dogfaceId, GetLevel( sceneId, dogfaceId ) + LevelGap )
						SetMonsterGroupID( sceneId, dogfaceId, x050100_g_DogfaceGroup )
						SetPatrolId( sceneId, dogfaceId, x050100_g_DogfacePos[i][3] )		-- ����Ѳ��·��
					end
				end
			end
		end

		-- С����·�ߵ���ָ����������ʧ
		-- ����m�t c�iС�����ߺ�T�i ��Ļ�Ϸ���ʾ���: ���Ӵܷ����ӳ�,����ͷĿ�ŷ����,����th�t b�i.��
		local monstercount = GetMonsterCount( sceneId )
		local monsterId, GroupID, DogX, DogZ, misIndex
		local x, z = GetLastPatrolPoint( sceneId, 5 )

		for i = 0, monstercount - 1 do
			monsterId = GetMonsterObjID( sceneId, i )
			GroupID = GetMonsterGroupID( sceneId, monsterId )

			if GroupID == x050100_g_DogfaceGroup
			 and LuaFnIsCharacterLiving( sceneId, monsterId ) == 1 then			-- �жϻ���to� � С����ng�����ܳɹ�
				DogX, DogZ = GetWorldPos( sceneId, monsterId )

				if (x - DogX) * (x - DogX) + (z - DogZ) * (z - DogZ) < 25 then	-- ���� �i�m���� 5 ��
					if LuaFnGetCopySceneData_Param( sceneId, 14 ) < 1 then		-- ��m�t ��С������
						LuaFnSetCopySceneData_Param( sceneId, 14, 1 )			-- ��ng���Ѿ���С������

						for	i = 0, membercount - 1 do
							if LuaFnIsObjValid( sceneId, mems[i] ) == 1 then
								misIndex = GetMissionIndexByID( sceneId, mems[i], x050100_g_MissionId )
								SetMissionByIndex( sceneId, mems[i], misIndex, x050100_g_IsMissionOkFail, 2 )	-- ����th�t b�i
								x050100_NotifyFailTips( sceneId, mems[i], "B�n c߾p �� ch�y tr�n ra kh�i n�i, t�n c�m �u �� ��nh ���c h�i tr�n m�t, nhi�m v� th�t b�i" )
							end
						end
					end

					LuaFnDeleteMonster( sceneId, monsterId )
				end
			end
		end

--		if GetMonsterCount( sceneId ) < 1 then
--			LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
--		end
	end
end

--**********************************
--����
--**********************************
function x050100_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050100_g_MissionName )
		AddText( sceneId, x050100_g_MissionComplete )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050100_g_ScriptId, x050100_g_MissionId )
end

--**********************************
--�����ng������ύ
--**********************************
function x050100_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050100_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050100_g_MissionId )				--  �i�m������to� � ���к�
	if GetMissionParam( sceneId, selfId, misIndex, x050100_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	local nItemNum = GetItemCount( sceneId, selfId, x050100_g_Token )
	if nItemNum < 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x050100_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050100_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	if x050100_CheckSubmit( sceneId, selfId ) == 1 then
		-- ���۶���,ֱ�����
		x050100_NotifyFailBox( sceneId, selfId, targetId, x050100_g_MissionComplete )
		DelMission( sceneId, selfId, x050100_g_MissionId )
		-- ����m�t ͳ��
		LuaFnAuditQuest(sceneId, selfId, "Bi�n gi�i T�ng Li�u")
		local strText = x050100_g_MissionName .. "Nhi�m v� �� ho�n th�nh"
		x050100_NotifyFailTips( sceneId, selfId, strText )
		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
		CallScriptFunction( SCENE_SCRIPT_ID, "PlaySoundEffect", sceneId, selfId, 66 )
	end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x050100_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x050100_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
