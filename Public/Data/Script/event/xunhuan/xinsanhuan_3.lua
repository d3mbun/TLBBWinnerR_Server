-- ������������
-- ����֮��

--************************************************************************
--MisDescBegin

-- �ű���
x050222_g_ScriptId = 050222

-- �����
x050222_g_MissionId = 1258					--1256 �ƽ�֮��--1257 ������--1258 ����֮��

-- M�c ti�u nhi�m v� NPC
x050222_g_Name = "H� Duy�t"

--�������
x050222_g_MissionKind = 8

--��ng c�p nhi�m v� 
x050222_g_MissionLevel = 10000

-- �����ı�����
x050222_g_MissionName = "Dung Nham Chi иa"
x050222_g_MissionInfo = "    "														-- ��������
x050222_g_MissionTarget = "    #{LLFBM_80918_3}"						-- M�c ti�u nhi�m v�
--x050222_g_ContinueInfo = "    "					-- δHo�n t�t nhi�m v�to� � npc�Ի�
x050222_g_SubmitInfo = "#{LLFB_80816_53}"										-- �ύʱto� � ��
--x050222_g_MissionComplete = "   #{LLFB_80816_53}"	--Ho�n t�t nhi�m v�npc˵to� � ��

x050222_g_IsMissionOkFail = 0														-- 0 ��λ��: ��ǰ������ng�����(0δ��ɣ�1��ɣ�2th�t b�i)
x050222_g_IsKillBossFire = 1														-- 1 ��λ��: ɱ��H�a Di�m Y�u Ma����(0��1)
x050222_g_Param_sceneid = 3															-- 3 ��λ��: ��ǰ��������to� � 3λ������Ϊ����ID

-- ����������,���ݶ�̬ˢ��,���������to� � ��1λ��ʼ
x050222_g_Custom	= { {id="�� gi�t ch�t #r  H�a Di�m Y�u Ma",num=1} }

--MisDescEnd
--************************************************************************

--x050222_g_huangjinzhilian = 40004453	--�ƽ�֮��
--x050222_g_heyuanxin = 40004460	--����to� � ��
x050222_g_xuanfouzhu = 40004454	--������

x050222_g_MonsterSuiCong = "Y�u Ma T�y T�ng"			--С����ħ���
x050222_g_BossHuoYanYao = "H�a Di�m Y�u Ma"			-- bossH�a Di�m Y�u Ma

MonsterSuiCongIDTbl = {13240,13241,13242,13243,13244,13245,13246,13247,13248,13249}			--С����ħ���
BossHuoYanYaoIDTbl = {13260,13261,13262,13263,13264,13265,13266,13267,13268,13269}		-- bossH�a Di�m Y�u Ma

x050222_g_BossHuoYanYaoPos ={67,48}

x050222_g_MonsterSuiCongPos = {{187,	176},{172,	187},{187,	165},{164,	174},{148,	185},{152,	193},{144,	160},{208,	154},{151,	174},{134,	155},
{181,	168},{177,	146},{143,	128},{153,	124},{151,	113},{171,	117},{187,	94},{191,	80},{204,	97},{212,	102},
{207,	60},{191,	54},{184,	61},{162,	49},{152,	53},{143,	77},{149,	72},{147,	77},{106,	214},{97,	218},
{89,	202},{78,	208},{74,	204},{65,	212},{45,	203},{70,	174},{84,	164},{75,	151},{62,	150},{68,	142},
{58,	118},{69,	115},{89,	113},{98,	110},{91,	98},{54,	114},{43,	105},{52,	99},{69,	105}, --����1c�i
{80,	84},{85,	81},{97,	89},{105,	76},{51,	80},{45,	73},{80,	74},{97,	62},{50,	60},{69,	55},
{73,	51},{44,	49},{56,	42},{48,	32},{43,	34},{67,	28},{77,	35},{85,	38},{102,	31},--����1c�i
{106,	40},{108,	49},{72,	39},{186,	156},{147,	199},{137,	211},{130,	190},{139,	163},{211,	175},{216,	177},
{220,	167},{67,	88},{64,	91},{91,	130},{85,	133},{179,	101},--����4c�i
{186,	104},{139,	91},{215,	88},{176,	53},{135,	96},{139,	52},{135,	56},{133,	206},--����2c�i
{221,	198},{215,	192},{206,	199},{194,	205},{191,	213},{196,	193},{185,	198},{205,	182},{220,	184},{177,	207},
{188,	184},{172,	210},{172,	196},{226,	173},{175,	177},{177,	185},{197,	200},{205,	188},{224,	194},{182,	194},
{201,	170},{212,	171},{160,	196},{159,	210},{205,	160},{220,	159},{165,	182},{149,	215},{174,	165},{157,	179},
{143,	205},{137,	198},{144,	191},{155,	167},{178,	154},{195,	151},{213,	151},{135,	171},{142,	166},{157,	151},
{158,	60},{173,	64},{201,	45},{190,	34},{199,	66},{161,	77},{141,	83},{156,	107},{162,	119},{203,	89},
{177,	91},{195,	115},{134,	74},{144,	119},{162,	98},{190,	71},{141,	57},{211,	62},{159,	42},{196,	85},
{71,	45},{49,	50},{65,	58},{80,	54},{82,	46},{74,	60},{56,	60},{62,	42},{52,	40},{80,	33},
{84,	57},{43,	56},{46,	38},{63,	51},{68,	65},{58,	68},{85,	66},{94,	51},{71,	75},{53,	88},
{102,	210},{91,	215},{71,	195},{62,	214},{51,	203},{66,	184},{84,	157},{52,	211},{77,	169},{76,	134},
{214,	189},{221,	187},{207,	197},{217,	197},{201,	202},{221,	204},{208,	209},{215,	210}--��8c�i
}

x050222_g_NumText_Main = 1					-- ������to� � ѡ��
x050222_g_NumText_EnterCopyScene = 2		-- Ҫ����븱��to� � ѡ��

x050222_g_CopySceneMap = "huomuchang.nav"
x050222_g_CopySceneArea = "huomuchang_area.ini"
x050222_g_CopySceneMonsterIni = "huomuchang_monster.ini"

x050222_g_CopySceneType = FUBEN_RONGYANZHIDI		-- ��������,����T�i ScriptGlobal.lua����
x050222_g_LimitMembers = 1					-- ���Խ�����to� � ��С��������
x050222_g_TickTime = 5						-- �ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x050222_g_LimitTotalHoldTime = 360			-- �������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x050222_g_CloseTick = 6						-- �����ر�ǰ����ʱ(��λ: ����)
x050222_g_NoUserTime = 30					-- ������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)

x050222_g_Fuben_X = 217
x050222_g_Fuben_Z = 221
x050222_g_Back_X = 295
x050222_g_Back_Z = 68

x050222_g_TakeTimes = 10											-- ÿ�����L�nh ����
--**********************************
-- ������ں���
--**********************************
function x050222_OnDefaultEvent( sceneId, selfId, targetId )	--  �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		-- �жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) == 0 then
		if numText == x050222_g_NumText_Main then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
				BeginEvent( sceneId )
				AddText( sceneId, "#{LLFB_80816_44}" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			elseif x050222_CheckAccept( sceneId, selfId, targetId ) > 0 then
				--��������Ti�p th�ʱ��ʾto� � ��Ϣ
				BeginEvent( sceneId )
					AddText( sceneId, "#{LLFB_80816_45}" )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
			end
		end
	else
		if numText == x050222_g_NumText_Main then
			local bDone = x050222_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				--AddText( sceneId, x050222_g_MissionName )
	
				if bDone == 1 then
					AddText( sceneId, x050222_g_SubmitInfo )
				else
						AddText( sceneId, "#{LLFB_80816_47}" )
						AddNumText( sceneId, x050222_g_ScriptId, "Dung Nham Chi иa", 10, x050222_g_NumText_EnterCopyScene )
						EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			--DispatchMissionDemandInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId, bDone )
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
		elseif numText == x050222_g_NumText_EnterCopyScene then
			x050222_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ����������to� � ����,û��Tr� v� 0,��Tr� v� 1
--**********************************
function x050222_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	if IsHaveMission( sceneId, selfId, 1256 ) > 0 then
		return 1
	end
	
	if IsHaveMission( sceneId, selfId, 1257 ) > 0 then
		return 1
	end

	return 0
end

--**********************************
-- �о��¼�
--**********************************
function x050222_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	-- ����������to� � ����
	if x050222_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050222_g_ScriptId, x050222_g_MissionName, 4, x050222_g_NumText_Main )
end

--**********************************
-- ���Ti�p th�����
--**********************************
function x050222_CheckAccept( sceneId, selfId, targetId )
	-- �Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) > 0 then
		return 0
	end

	-- ����������to� � ����
	if x050222_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end
	
	-- m�t ��ֻ���� x050222_g_TakeTimes ��
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME, nowDate )
	end

	--5��
	if takenTimes >= x050222_g_TakeTimes then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_3}" )
		return 0
	end

	-- ��������ng����ϸշ�������
	local iTime = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_LAST )			-- ��m�t �η�������to� � ʱ��(��λ: m�t ����)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()												-- ��ǰʱ��(��λ: m�t ����)
	local CurTime = GetQuarterTime()												-- ��ǰʱ��(��λ: m�t ����)
	--end modified by zhangguoxin 090208

	if iTime+1  >= CurTime then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_4}" )
		return 0
	end

	-- ��c�p�ﵽ75
	if GetLevel(sceneId, selfId) < 75 then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- �����ķ��ﵽ45
	if x050222_CheckAllXinfaLevel(sceneId, selfId, 45) == 0  then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- ��������������ng��ﵽ����20c�i
	if GetMissionCount( sceneId, selfId ) >= 20 then						
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_6}" )
		return 0
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
		x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_44}" )
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x050222_OnAccept( sceneId, selfId, targetId )
	-- ������������б�
	AddMission( sceneId, selfId, x050222_g_MissionId, x050222_g_ScriptId, 1, 0, 0 )			-- kill��area��item
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) <= 0 then
		return
	end

	-- m�t ��ֻ���� x050222_g_TakeTimes ��
	local DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME )
	local takenTimes = floor( DayTimes/100000 )
	DayTimes = (takenTimes+1)*100000 + GetDayTime()
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_DAYTIME, DayTimes )

--	SetMissionEvent( sceneId, selfId, x050222_g_MissionId, 4 ) -- ע�� OnLockedTarget �¼�

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )

	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail, 0 )	-- ������������Ϊδ���
	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_IsKillBossFire, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050222_g_Param_sceneid, -1 )		-- ��������Ϊ -1

	--��ʾ���ݸ�������Ѿ�Ti�p th�������
	BeginEvent( sceneId )
			AddText( sceneId, "#{LLFB_80816_47}" )
			AddNumText( sceneId, x050222_g_ScriptId, "Dung Nham Chi иa", 10, x050222_g_NumText_EnterCopyScene )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ������븱������
--**********************************
function x050222_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) > 0 then					-- ������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050222_g_Param_sceneid )
		if copysceneid >= 0 then												-- ��������
		-- ���Լ����͵���������
			if GetMissionParam( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail ) == 2 then
				x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_46}" )--��ʾ����th�t b�i
			elseif IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050222_g_Fuben_X, x050222_g_Fuben_Z )
			else
				x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_46}" )--��ʾ����th�t b�i
			end
			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_48}" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_10}" )
			return
		end
		
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);
		if not nearMemberCount or nearMemberCount < x050222_g_LimitMembers then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_49}" )
			return
		end

		if not teamMemberCount or teamMemberCount ~= nearMemberCount then
			x050222_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_12}" )
			return
		end
		
		local outmessage = "#{FB0}"
		local issatisfy = 1 --��ng��Th�a m�n����
		local memberID = 0
		local isAccept = 0 --��ng�������Ѿ���������
		local Acceptmessage = "" --�Ѿ���������to� � ��ʾ������������ʾ��ͬ
		for	i = 0, nearMemberCount - 1 do
			memberID = GetNearTeamMember( sceneId, selfId, i )
			outmessage = outmessage.."#r#BTh�nh vi�n  "..GetName(sceneId, memberID)
			if GetLevel(sceneId, memberID) >= 75 then
				outmessage = outmessage.."#{FB1}"
			else
				outmessage = outmessage.."#{FB2}"
				issatisfy = 0
			end
			
			if x050222_CheckAllXinfaLevel(sceneId, memberID, 45) == 1 then
				outmessage = outmessage.."#{FB3}"
			else
				outmessage = outmessage.."#{FB4}"
				issatisfy = 0
			end
			
			if IsHaveMission( sceneId, memberID, x050222_g_MissionId ) > 0 then
				local misIndex = GetMissionIndexByID( sceneId, memberID, x050222_g_MissionId )

			 	if GetMissionParam( sceneId, memberID, misIndex, x050222_g_IsMissionOkFail ) == 0 then
			 		if GetMissionParam( sceneId, memberID, misIndex, x050222_g_Param_sceneid ) == -1 then
						outmessage = outmessage.."#{FB5}"
					else
						outmessage = outmessage.."#{FB6}"
						issatisfy = 0
						
						if isAccept == 0 then
							Acceptmessage = "#G"..GetName(sceneId, memberID)
						else
							Acceptmessage = Acceptmessage.."#W, #G"..GetName(sceneId, memberID)
						end
						isAccept = 1
					end
				else
					outmessage = outmessage.."#{FB6}"
					issatisfy = 0
				end
			else
				outmessage = outmessage.."#{FB6}"
				issatisfy = 0
			end
		end
		
		if isAccept == 1 then
			Acceptmessage = "#{FB7}"..Acceptmessage.."#{FB8}"
			x050222_NotifyFailBox( sceneId, selfId, targetId, Acceptmessage)
			return
		end
		
		if issatisfy == 0 then
			x050222_NotifyFailBox( sceneId, selfId, targetId, outmessage)
			return
		end
		
		--���㸱���й�to� � ��c�p....
		local mylevel = 0
		local memId
		local tempMemlevel = 0
		local level0 = 0
		local level1 = 0
	
		for	i = 0, nearMemberCount - 1 do
			memId = GetNearTeamMember(sceneId, selfId, i)
			tempMemlevel = GetLevel(sceneId, memId)
			level0 = level0 + (tempMemlevel ^ 4 )
			level1 = level1 + (tempMemlevel ^ 3 )
		end
	
		if level1 == 0 then
			mylevel = 0
		else
			mylevel = level0/level1
		end
	
		if nearMemberCount == -1 then
			mylevel = GetLevel(sceneId, selfId)
		end
	
		--�����c�p��....
		local PlayerMaxLevel = GetHumanMaxLevelLimit()
		local iniLevel
		if mylevel < 10 then
			iniLevel = 1
		elseif mylevel < PlayerMaxLevel then
			iniLevel = floor((mylevel-75)/5) + 1
			if iniLevel < 0 then
				iniLevel = 1
			elseif iniLevel > 10 then
				iniLevel = 10
			end
		else
			iniLevel = 10
		end

		local leaderguid = LuaFnObjId2Guid( sceneId, selfId )
		LuaFnSetSceneLoad_Map( sceneId, x050222_g_CopySceneMap )						-- ��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050222_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050222_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050222_g_CopySceneType )				-- ���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050222_g_ScriptId )					-- ��1����������Ϊ���������¼��ű���
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ���ö�ʱ�����ô���
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ���ø�����ڳ�����, ��ʼ��
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ���ø����رձ�־, 0����,1�ر�
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- �����뿪����ʱ����
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ��������
		LuaFnSetCopySceneData_Param( sceneId, 7, mylevel )				-- ����to� � ������c�p
		LuaFnSetCopySceneData_Param( sceneId, 8, iniLevel )				-- 
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- 
		LuaFnSetCopySceneData_Param( sceneId, 13, 0 )							-- 

		LuaFnSetSceneLoad_Area( sceneId, x050222_g_CopySceneArea )

		LuaFnSetSceneLoad_Monster( sceneId, x050222_g_CopySceneMonsterIni )

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ��ʼ����ɺ���ô�����������
		if bRetSceneID > 0 then
			x050222_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng, vui l�ng ��i gi�y l�t!" )
			AuditXinSanHuanCreateFuben( sceneId, selfId, 3 )
		else
			x050222_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x050222_OnCopySceneReady( sceneId, destsceneId )
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
		if IsHaveMission( sceneId, member, x050222_g_MissionId ) > 0 then		-- ������
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	local misIndex  
	for i = 1, validmembercount do 
		if IsHaveMission( sceneId, members[i], x050222_g_MissionId ) > 0 then
			misIndex = GetMissionIndexByID( sceneId, members[i], x050222_g_MissionId )
			if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ���ڿ���ִ���߼�to� � ״̬
				--������to� � ��1����������Ϊ����to� � ������  
				SetMissionByIndex( sceneId, members[i], misIndex, x050222_g_Param_sceneid, destsceneId )
		--		SetMissionEvent( sceneId, members[i], x050222_g_MissionId, 0 )			-- ����ɱ���¼�
				NewWorld( sceneId, members[i], destsceneId, x050222_g_Fuben_X, x050222_g_Fuben_Z )
			end  
		end
	end  
end  

--**********************************  
--����ҽ��븱���¼�  
--**********************************  
function x050222_OnPlayerEnter( sceneId, selfId )  
end

--**********************************
--obj����
--**********************************
function x050222_OnDie( sceneId, objId, selfId )--C�i n�y selfId������ng����
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --�����ng����to� � ��,��C�i n�y ID���ó�����ID
		selfId = GetPetCreator( sceneId, selfId )
	end
	
	if selfId == -1 then
		return
	end
	
	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050222_g_CopySceneType then
		return
	end

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 then														-- ��������Ѿ����óɹر�״̬,��ɱ����Ч
		return
	end

	--ȡ �i�m��ǰ������to� � ����
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--ȡ �i�mɱ������to� � name
	local szName = GetName( sceneId, objId )

	if szName == x050222_g_BossHuoYanYao then
		local nLevelMonster = GetLevel(sceneId, objId)
		if nLevelMonster >= 80 and nLevelMonster <= 89 then
			local nHuman = GetNearTeamCount(sceneId, selfId)
			for i = 0, nHuman - 1 do
				local playerId = GetNearTeamMember(sceneId, selfId, i)
				local nRan  =random(100)
				if nRan <= 50 then
					AddMonsterDropItem(sceneId, objId, playerId, 30505804)
				end
			end
		elseif  nLevelMonster >= 90 and nLevelMonster >= 99 then
			local nHuman = GetNearTeamCount(sceneId, selfId)
			for i = 0, nHuman - 1 do
				local playerId = GetNearTeamMember(sceneId, selfId, i)
				local nRan  =random(100)
				if nRan <= 50 then
					AddMonsterDropItem(sceneId, objId, playerId, 30505805)
				end
			end	
		elseif nLevelMonster >= 100 then
			local nHuman = GetNearTeamCount(sceneId, selfId)
			for i = 0, nHuman - 1 do
				local playerId = GetNearTeamMember(sceneId, selfId, i)
				local nRan  =random(100)
				if nRan <= 50 then
					AddMonsterDropItem(sceneId, objId, playerId, 30505806)
				end
			end	
		end
		local misIndex = 0
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- ��T�i ����to� � �����˲���
				x050222_NotifyFailTips( sceneId, mems[i], "M�c ti�u nhi�m v�" )
				x050222_NotifyFailTips( sceneId, mems[i], "Gi�t ch�t "..x050222_g_BossHuoYanYao..": 1/1" )
				if IsHaveMission( sceneId, mems[i], x050222_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050222_g_MissionId )
					SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsKillBossFire, 1 )
					SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail, 1 )	-- �������
				end
			end
		end

		local BroadcastMsg = "#W#{_INFOUSR$N}#{LLFB_80816_51}#{LLFB_80816_52}"
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
		
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )--�����뿪����
	end
end

--**********************************
--ɱ����������
--**********************************
function x050222_OnKillObject( sceneId, selfId, objdataId, objId )						-- ������˼: �����š����objId�������λ�úš�����objId
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x050222_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--�뿪����
--**********************************
function x050222_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ �i�m������ڳ�����
	NewWorld( sceneId, selfId, oldsceneId, x050222_g_Back_X, x050222_g_Back_Z )
end

--**********************************
--����
--**********************************
function x050222_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050222_g_MissionName )
		AddText( sceneId, "T�t ti�p t�c" )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050222_g_ScriptId, x050222_g_MissionId )
end

--**********************************
--����
--**********************************
function x050222_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) == 0 then
		return
	end
	
	--C�n �۳�������,ֻ��m�t c�i
	if LuaFnDelAvailableItem( sceneId, selfId, x050222_g_xuanfouzhu, 1 ) > 0 then
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )
		local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050222_g_Param_sceneid )
	
		-- ���÷�����������to� � ʱ��
		--begin modified by zhangguoxin 090208
		--local CurTime = GetHourTime()											-- ��ǰʱ��
		local CurTime = GetQuarterTime()											-- ��ǰʱ��
		--end modified by zhangguoxin 090208
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_3_LAST, CurTime )
	
		--ɾ����������б��ж�Ӧto� � ����
		DelMission( sceneId, selfId, x050222_g_MissionId )
		
		--��ng����ng��C�n to� � ����
		local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	
		if sceneId == copyscene and fubentype == x050222_g_CopySceneType then											-- ���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
			x050222_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
			local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- ȡ �i�m������ڳ�����
			NewWorld( sceneId, selfId, oldsceneId, x050222_g_Back_X, x050222_g_Back_Z )
		end
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x050222_OnCopySceneTimer( sceneId, nowTime )
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

--	local LevelGap = LuaFnGetCopySceneData_Param( sceneId, CopyScene_LevelGap )

	if leaveFlag == 1 then															-- C�n �뿪
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )

		if leaveTickCount >= x050222_g_CloseTick then										-- ����ʱ�䵽,��Ҷ���ȥ��
			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050222_Exit( sceneId, mems[i] )
				end
			end
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "B�n s� r�i kh�i hi�n tr߶ng sau %d gi�y!", ( x050222_g_CloseTick - leaveTickCount ) * x050222_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050222_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050222_g_LimitTotalHoldTime then									-- ������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		local misIndex = 0
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x050222_NotifyFailTips( sceneId, mems[i], "�� h�t th�i gian, r�i c�nh..." )
				if IsHaveMission( sceneId, mems[i], x050222_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050222_g_MissionId )
					if GetMissionParam( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail ) ~= 1 then
						SetMissionByIndex( sceneId, mems[i], misIndex, x050222_g_IsMissionOkFail, 2 )	-- ���û����ɾ�����Ϊth�t b�i
					end
				end
				x050222_Exit( sceneId, mems[i] )
			end
		end
		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == 1 then									-- ˢ��
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 7 )
		local iniLevel = LuaFnGetCopySceneData_Param( sceneId, 8 )

		local HuoYanYaoID = BossHuoYanYaoIDTbl[1]
		if BossHuoYanYaoIDTbl[iniLevel] then
			HuoYanYaoID = BossHuoYanYaoIDTbl[iniLevel]
		end
		
		local SuiCongID = MonsterSuiCongIDTbl[1]
		if MonsterSuiCongIDTbl[iniLevel] then
			SuiCongID = MonsterSuiCongIDTbl[iniLevel]
		end

		local monsterID = LuaFnCreateMonster( sceneId, HuoYanYaoID, x050222_g_BossHuoYanYaoPos[1], x050222_g_BossHuoYanYaoPos[2], 14, 269, 050222 )
		SetLevel( sceneId, monsterID, mylevel+3 )--��c�p��m�t ��С�ָ�3c�p
		SetCharacterName( sceneId, monsterID, x050222_g_BossHuoYanYao )
		MonsterTalk(sceneId,monsterID,"Dung Nham Chi иa", "Ng߽i d�m x�ng v�o n�i n�y, c�c ng߽i s� b� thi�u th�nh tro b�i! ha!ha!ha..")
		
		for i = 1, getn( x050222_g_MonsterSuiCongPos ) do
			monsterID = LuaFnCreateMonster( sceneId, SuiCongID, x050222_g_MonsterSuiCongPos[i][1], x050222_g_MonsterSuiCongPos[i][2], 14, -1, 050222 )
			SetLevel( sceneId, monsterID, mylevel )
			SetCharacterName( sceneId, monsterID, x050222_g_MonsterSuiCong )
		end

	else
		--��ʱ�������Աto� � �����,���������,���߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � �����

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050222_NotifyFailTips( sceneId, mems[i], "B�n kh�ng c�n trong �i ng�, r�i c�nh..." )
				x050222_Exit( sceneId, mems[i] )
			end
		end
		
		--ÿ2 ph�t��ʾm�t ��,������ʱ
		if mod( TickCount*x050222_g_TickTime, 60 ) == 0 and mod( TickCount*x050222_g_TickTime+60, 120 ) == 0 then
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					local Minute = floor( (360 - TickCount)*x050222_g_TickTime/60 )
					x050222_NotifyFailTips( sceneId, mems[i], "Th�i gian c�n l�i "..Minute.." ph�t" )
				end
			end	
		end
		
	end
end

--**********************************
--�����ng������ύ
--**********************************
function x050222_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050222_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050222_g_MissionId )				--  �i�m������to� � ���к�
	if GetMissionParam( sceneId, selfId, misIndex, x050222_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetAvailableItemCount( sceneId, selfId, x050222_g_xuanfouzhu ) < 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x050222_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050222_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end
	
	if x050222_CheckSubmit( sceneId, selfId ) == 1 then
		--x050222_NotifyFailBox( sceneId, selfId, targetId, x050222_g_MissionComplete )
		if LuaFnDelAvailableItem( sceneId, selfId, x050222_g_xuanfouzhu, 1 ) > 0 then--C�n �۳�������,ֻ��m�t c�i
			DelMission( sceneId, selfId, x050222_g_MissionId )
		
			local exp = GetLevel( sceneId, selfId ) * 3323 - 45613 --�ο�������������to� � Kinh nghi�m����
			-- ��t ���cKinh nghi�m
			if exp < 1 then
				exp = 1
			end
			AddExp(sceneId, selfId, exp)

			-- ����m�t ͳ��
			LuaFnAuditQuest(sceneId, selfId, "Dung Nham Chi иa nhi�m v� tu�n ho�n L�u Lan")
		end
	end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x050222_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x050222_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--����ķ���ng����������
--**********************************
function x050222_CheckAllXinfaLevel(sceneId, selfId, level)
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
