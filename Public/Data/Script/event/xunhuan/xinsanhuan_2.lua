-- ������������
-- ������

--************************************************************************
--MisDescBegin

-- �ű���
x050221_g_ScriptId = 050221

-- �����
x050221_g_MissionId = 1257					--1256 �ƽ�֮��--1257 ������--1258 ����֮��

-- M�c ti�u nhi�m v� NPC
x050221_g_Name = "L�u My"

--�������
x050221_g_MissionKind = 8

--��ng c�p nhi�m v� 
x050221_g_MissionLevel = 10000

-- �����ı�����
x050221_g_MissionName = "Huy�n Ph�t Ch�u"
x050221_g_MissionInfo = "    "														-- ��������
x050221_g_MissionTarget = "    #{LLFBM_80918_2}"						-- M�c ti�u nhi�m v�
--x050221_g_ContinueInfo = "    ����׼�����˾���ǰȥ�������������!"					-- δHo�n t�t nhi�m v�to� � npc�Ի�
x050221_g_SubmitInfo = "#{LLFB_80816_43}"										-- �ύʱto� � ��
x050221_g_MissionComplete = "#{LLFB_80902_2}"	--Ho�n t�t nhi�m v�npc˵to� � ��

x050221_g_IsMissionOkFail = 0														-- 0 ������: ��ǰ������ng�����(0δ��ɣ�1��ɣ�2th�t b�i)
x050221_g_IsBossYaoWang = 1															-- 1 ������: ɱbossH�ng C�c Y�u V߽ngto� � ����
x050221_g_IsFindGoods = 2																-- 2 ������: ��ng���ҵ�������
x050221_g_Param_sceneid = 3															-- 3 ������: ��ǰ��������to� � 3λ������Ϊ����ID

x050221_g_Custom	= { {id="�� gi�t ch�t#r  H�ng C�c Y�u V߽ng",num=1},{id="�� t�m th�y#r  Huy�n Ph�t Ch�u",num=1} }

--MisDescEnd
--************************************************************************

--x050221_g_huangjinzhilian = 40004453	--�ƽ�֮��
x050221_g_heyuanxin = 40004460	--����to� � ��
x050221_g_xuanfouzhu = 40004454	--������

--x050221_g_yimouzhufeng = 	--��ħ��(��)
--x050221_g_yimouzhuyan = 	--��ħ��(��)
--x050221_g_yimouzhudi = 	--��ħ��(��)
--x050221_g_yimouzhuxuan = 	--��ħ��(��)
--x050221_g_yimouzhudu = 	--��ħ��(��)

x050221_g_Monster15ID = "еc Ch߾ng Ti�u Qu�i"			--С��
x050221_g_Monster10ID = "Tr�ch иa еc Chu"			--С��

x050221_g_BossID = {"T� Phong Ma","Ph� Di�m T�n Gi�","Li�t иa H�nh Gi�","V� Huy�n T߾ng","Ng� еc Ma S�"}
x050221_g_YinMoZhuID = {40004456,40004459,40004458,40004455,40004457}

x050221_g_BossYaoWang = "H�ng C�c Y�u V߽ng"			-- bossH�ng C�c Y�u V߽ng

Monster15IDTbl = {13080,13081,13082,13083,13084,13085,13086,13087,13088,13089}			--15С��
Monster10IDTbl = {13100,13101,13102,13103,13104,13105,13106,13107,13108,13109}			--10С��

BossIDTbl = {{13120,13121,13122,13123,13124,13125,13126,13127,13128,13129},	--��boss
{13200,13201,13202,13203,13204,13205,13206,13207,13208,13209},						--��boss
{13140,13141,13142,13143,13144,13145,13146,13147,13148,13149},					--��boss
{13160,13161,13162,13163,13164,13165,13166,13167,13168,13169},						--��boss
{13180,13181,13182,13183,13184,13185,13186,13187,13188,13189}}						--��boss

BossYaoWangIDTbl = {13220,13221,13222,13223,13224,13225,13226,13227,13228,13229}		-- bossH�ng C�c Y�u V߽ng

x050221_g_BossTalk = {"Ng߶i n�o d�m qu�y r�y ta ngh� ng�i?!", --boss˵��
"N�i n�y ch�nh l� ng߽i ch� ch�t!",
"Thi�n s�m ng� chi l�nh �a gi� t�!",
"L�i ��y ch�u ch�t!",
"Ha ha, r�t c�c l�i c� th� du�i th�ng tay ch�n!"}

x050221_g_YaoWangTalk = "Ph߶ng ti�u b�i n�o d�m gi�t ta, c� d�m ti�n �n nh�n l�y c�i ch�t?!"			-- bossH�ng C�c Y�u V߽ng˵��

x050221_g_Pos = {{left={130,191},right={137,200}},--��
 {left={68,132},right={77,142}},--��
 {left={77,65},right={87,73}},--��
 {left={176,158},right={188,169}},--��
 {left={175,62},right={188,72}}}--��

x050221_g_BossYaoWangPos ={127,118}

x050221_g_BossPos ={{132,196},{72,135},{83,72},{182,166},{181,72}}
x050221_g_monster15Pos = {{132,199},{136,200},{138,196},{135,192},{134,189},{128,192},{127,197},{126,202},{142,202},{142,196},{140,190},{124,195},{136,187},{130,204},{143,192},
{75,136},{74,144},{77,138},{68,142},{64,138},{69,128},{79,128},{79,131},{82,139},{76,146},{65,143},{73,133},{73,129},{64,133},{71,140},
{85,73},{82,75},{77,75},{78,79},{79,68},{80,66},{84,64},{87,67},{89,69},{74,70},{76,62},{80,60},{88,62},{89,76},{93,68},
{183,168},{182,172},{178,168},{179,163},{177,160},{180,158},{187,160},{189,163},{190,168},{185,156},{174,166},{191,161},{178,173},{187,173},{191,172},
{184,74},{182,78},{179,75},{179,83},{190,76},{194,74},{191,63},{188,60},{180,61},{177,62},{173,68},{194,62},{175,74},{184,58},{171,63}
}

x050221_g_monster10Pos = {{132,199},{136,200},{138,196},{135,192},{134,189},{128,192},{127,197},{126,202},{142,202},{142,196},
{75,136},{74,144},{77,138},{68,142},{64,138},{69,128},{79,128},{79,131},{82,139},{76,146},
{85,73},{82,75},{77,75},{78,79},{79,68},{80,66},{84,64},{87,67},{89,69},{74,70},
{183,168},{182,172},{178,168},{179,163},{177,160},{180,158},{187,160},{189,163},{190,168},{185,156},
{184,74},{182,78},{179,75},{179,83},{190,76},{194,74},{191,63},{188,60},{180,61},{177,62}
}

x050221_g_NumText_Main = 1					-- ������to� � ѡ��
x050221_g_NumText_EnterCopyScene = 2		-- Ҫ����븱��to� � ѡ��

x050221_g_CopySceneMap = "dumuchang.nav"
x050221_g_CopySceneArea = "dumuchang_area.ini"
x050221_g_CopySceneMonsterIni = "dumuchang_monster.ini"

x050221_g_CopySceneType = FUBEN_XUANFOUZHU		-- ��������,����T�i ScriptGlobal.lua����
x050221_g_LimitMembers = 1					-- ���Խ�����to� � ��С��������
x050221_g_TickTime = 5						-- �ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x050221_g_LimitTotalHoldTime = 360			-- �������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,�����񽫻�th�t b�i
x050221_g_CloseTick = 6						-- �����ر�ǰ����ʱ(��λ: ����)
x050221_g_NoUserTime = 30					-- ������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)

x050221_g_Fuben_X = 220
x050221_g_Fuben_Z = 217
x050221_g_Back_X = 122
x050221_g_Back_Z = 56

x050221_g_TakeTimes = 10											-- ÿ�����L�nh ����
--**********************************
-- ������ں���
--**********************************
function x050221_OnDefaultEvent( sceneId, selfId, targetId )	--  �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x050221_g_Name then		-- �жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end
	
	local numText = GetNumText()

	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) == 0 then
		if numText == x050221_g_NumText_Main then
			if LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_heyuanxin ) < 1 then
				BeginEvent( sceneId )
				AddText( sceneId, "#{LLFB_80816_21}" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			elseif x050221_CheckAccept( sceneId, selfId, targetId ) > 0 then
				--��������Ti�p th�ʱ��ʾto� � ��Ϣ
				BeginEvent( sceneId )
					AddText( sceneId, "#{LLFB_80816_22}" )
				EndEvent( )
				DispatchMissionInfo( sceneId, selfId, targetId, x050221_g_ScriptId, x050221_g_MissionId )
			end
		end
	else
		if numText == x050221_g_NumText_Main then
			local bDone = x050221_CheckSubmit( sceneId, selfId )

			BeginEvent( sceneId )
				--AddText( sceneId, x050221_g_MissionName )
	
				if bDone == 1 then
					AddText( sceneId, x050221_g_SubmitInfo )
				else
						AddText( sceneId, "#{LLFB_80816_24}" )
						AddNumText( sceneId, x050221_g_ScriptId, "V�o еc Tr߾ng Tr�ch иa", 10, x050221_g_NumText_EnterCopyScene )
						EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
			EndEvent( )
			--DispatchMissionDemandInfo( sceneId, selfId, targetId, x050221_g_ScriptId, x050221_g_MissionId, bDone )
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x050221_g_ScriptId, x050221_g_MissionId )
		elseif numText == x050221_g_NumText_EnterCopyScene then
			x050221_AcceptEnterCopyScene( sceneId, selfId, targetId )
		end
	end
end

--**********************************
-- ����������to� � ����,û��Tr� v� 0,��Tr� v� 1
--**********************************
function x050221_CheckConflictMission( sceneId, selfId )
	local missionId = 0

	if IsHaveMission( sceneId, selfId, 1256 ) > 0 then
		return 1
	end
	
	if IsHaveMission( sceneId, selfId, 1258 ) > 0 then
		return 1
	end

	return 0
end

--**********************************
-- �о��¼�
--**********************************
function x050221_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x050221_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	-- ����������to� � ����
	if x050221_CheckConflictMission( sceneId, selfId ) == 1 then
		return
	end

	AddNumText( sceneId, x050221_g_ScriptId, x050221_g_MissionName, 4, x050221_g_NumText_Main )
end

--**********************************
-- ���Ti�p th�����
--**********************************
function x050221_CheckAccept( sceneId, selfId, targetId )
	-- �Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) > 0 then
		return 0
	end

	-- ����������to� � ����
	if x050221_CheckConflictMission( sceneId, selfId ) == 1 then
		return 0
	end
	
	-- m�t ��ֻ���� x050221_g_TakeTimes ��
	local DayTimes, oldDate, nowDate, takenTimes

	DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_2_DAYTIME )
	oldDate = mod( DayTimes, 100000 )
	takenTimes = floor( DayTimes/100000 )

	nowDate = GetDayTime()
	if nowDate ~= oldDate then
		takenTimes = 0
		SetMissionData( sceneId, selfId, MD_XINSANHUAN_2_DAYTIME, nowDate )
	end

	--5��
	if takenTimes >= x050221_g_TakeTimes then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_3}" )
		return 0
	end

	-- ��������ng����ϸշ�������
	local iTime = GetMissionData( sceneId, selfId, MD_XINSANHUAN_2_LAST )			-- ��m�t �η�������to� � ʱ��(��λ: m�t ����)
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()												-- ��ǰʱ��(��λ: m�t ����)
	local CurTime = GetQuarterTime()												-- ��ǰʱ��(��λ: m�t ����)
	--end modified by zhangguoxin 090208

	if iTime+1  >= CurTime then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_4}" )
		return 0
	end

	-- ��c�p�ﵽ75
	if GetLevel(sceneId, selfId) < 75 then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- �����ķ��ﵽ45
	if x050221_CheckAllXinfaLevel(sceneId, selfId, 45) == 0  then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_5}" )
		return 0
	end

	-- ��������������ng��ﵽ����20c�i
	if GetMissionCount( sceneId, selfId ) >= 20 then						
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_6}" )
		return 0
	end
	
	-- ����������Ʒ������
	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < 1 then
		x050221_NotifyFailTips( sceneId, selfId, "Thi�u m�t � kh�ng gian khung nhi�m v�" )
		return 0
	end
	
	if LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_heyuanxin ) < 1 then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_21}" )
		return 0
	end

	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x050221_OnAccept( sceneId, selfId, targetId )
	if LuaFnDelAvailableItem( sceneId, selfId, x050221_g_heyuanxin, 1 ) <= 0 then--C�n �۳�����to� � ��
		x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_21}" )
		return
	end

	-- ������������б�
	AddMission( sceneId, selfId, x050221_g_MissionId, x050221_g_ScriptId, 1, 0, 0 )			-- kill��area��item
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) <= 0 then
		return
	end

	-- m�t ��ֻ���� x050221_g_TakeTimes ��
	local DayTimes = GetMissionData( sceneId, selfId, MD_XINSANHUAN_2_DAYTIME )
	local takenTimes = floor( DayTimes/100000 )
	DayTimes = (takenTimes+1)*100000 + GetDayTime()
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_2_DAYTIME, DayTimes )

--	SetMissionEvent( sceneId, selfId, x050221_g_MissionId, 4 ) -- ע�� OnLockedTarget �¼�

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )

	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsMissionOkFail, 0 )	-- ������������Ϊδ���
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_Param_sceneid, -1 )		-- ��������Ϊ -1
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsBossYaoWang, 0 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsFindGoods, 0 )
	
	--C�n �۳�m�t ����ħ��,�ϴ�����th�t b�i�������ϻ�����ħ���T�i 
	for i = 1, getn( x050221_g_YinMoZhuID ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_YinMoZhuID[i] )
		if num > 0 then
			LuaFnDelAvailableItem( sceneId, selfId, x050221_g_YinMoZhuID[i], num )
		end
	end
	
	--����ħ��(��)
	BeginAddItem( sceneId )
	AddItem( sceneId, x050221_g_YinMoZhuID[1], 1 )
	local ret = EndAddItem( sceneId, selfId )
	if ret <= 0 then
		x050221_NotifyFailBox( sceneId, selfId, targetId, "tay n�i c�a b�n �� �y." )
		return
	end
	AddItemListToHuman(sceneId, selfId)

	--��ʾ���ݸ�������Ѿ�Ti�p th�������
	BeginEvent( sceneId )
		AddText( sceneId, "#{LLFB_80816_24}" )
		AddNumText( sceneId, x050221_g_ScriptId, "V�o еc Tr߾ng Tr�ch иa", 10, x050221_g_NumText_EnterCopyScene )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ������븱������
--**********************************
function x050221_AcceptEnterCopyScene( sceneId, selfId, targetId )
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) > 0 then					-- ������ſ���������
		local misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )
		local copysceneid = GetMissionParam( sceneId, selfId, misIndex, x050221_g_Param_sceneid )
		if copysceneid >= 0 then												-- ��������
		-- ���Լ����͵���������
			if GetMissionParam( sceneId, selfId, misIndex, x050221_g_IsMissionOkFail ) == 2 then
				x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_23}" )
			elseif IsCanEnterCopyScene( copysceneid, GetHumanGUID( sceneId, selfId ) ) == 1 then
				NewWorld( sceneId, selfId, copysceneid, x050221_g_Fuben_X, x050221_g_Fuben_Z )
			else
				x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_23}" )
			end
			return
		end

		if LuaFnHasTeam( sceneId, selfId ) == 0 then
			x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_25}" )
			return
		end

		if LuaFnIsTeamLeader( sceneId, selfId ) == 0 then
			x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_10}" )
			return
		end
		
		local teamMemberCount = GetTeamMemberCount(sceneId, selfId);
		local nearMemberCount = GetNearTeamCount(sceneId, selfId);
		if not nearMemberCount or nearMemberCount < x050221_g_LimitMembers then
			x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_26}" )
			return
		end

		if not teamMemberCount or teamMemberCount ~= nearMemberCount then
			x050221_NotifyFailBox( sceneId, selfId, targetId, "#{LLFB_80816_12}" )
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
			
			if x050221_CheckAllXinfaLevel(sceneId, memberID, 45) == 1 then
				outmessage = outmessage.."#{FB3}"
			else
				outmessage = outmessage.."#{FB4}"
				issatisfy = 0
			end
			
			if IsHaveMission( sceneId, memberID, x050221_g_MissionId ) > 0 then
				local misIndex = GetMissionIndexByID( sceneId, memberID, x050221_g_MissionId )

			 	if GetMissionParam( sceneId, memberID, misIndex, x050221_g_IsMissionOkFail ) == 0 then
			 		if GetMissionParam( sceneId, memberID, misIndex, x050221_g_Param_sceneid ) == -1 then
			 			outmessage = outmessage.."#{FB5}"
			 		else
			 			outmessage = outmessage.."#{FB6}"
						issatisfy = 0
						
						if isAccept == 0 then
							Acceptmessage = "#G"..GetName(sceneId, memberID)
						else
							Acceptmessage = Acceptmessage.."#W,#G"..GetName(sceneId, memberID)
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
			x050221_NotifyFailBox( sceneId, selfId, targetId, Acceptmessage)
			return
		end
		
		if issatisfy == 0 then
			x050221_NotifyFailBox( sceneId, selfId, targetId, outmessage)
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
		LuaFnSetSceneLoad_Map( sceneId, x050221_g_CopySceneMap )						-- ��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
		LuaFnSetCopySceneData_TeamLeader( sceneId, leaderguid )
		LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x050221_g_NoUserTime * 1000 )
		LuaFnSetCopySceneData_Timer( sceneId, x050221_g_TickTime * 1000 )
		LuaFnSetCopySceneData_Param( sceneId, 0, x050221_g_CopySceneType )				-- ���ø�������,���ｫ0������to� � ��������Ϊ999,���ڱ�ʾ������999(�����Զ���)
		LuaFnSetCopySceneData_Param( sceneId, 1, x050221_g_ScriptId )					-- ��1����������Ϊ���������¼��ű���
		LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ���ö�ʱ�����ô���
		LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ���ø�����ڳ�����, ��ʼ��
		LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ���ø����رձ�־, 0����,1�ر�
		LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- �����뿪����ʱ����
		LuaFnSetCopySceneData_Param( sceneId, 6, GetTeamId( sceneId, selfId ) )	-- ��������
		LuaFnSetCopySceneData_Param( sceneId, 7, mylevel )				-- ����to� � ������c�p
		LuaFnSetCopySceneData_Param( sceneId, 8, iniLevel )				-- 
		LuaFnSetCopySceneData_Param( sceneId, 9, 0 )							-- ��
		LuaFnSetCopySceneData_Param( sceneId, 10, 0 )							-- ��
		LuaFnSetCopySceneData_Param( sceneId, 11, 0 )							-- ��
		LuaFnSetCopySceneData_Param( sceneId, 12, 0 )							-- ��
		LuaFnSetCopySceneData_Param( sceneId, 13, 0 )							-- ��
		LuaFnSetCopySceneData_Param( sceneId, 14, 0 )							-- ��ng��ɱ��Ph� Di�m T�n Gi�
		LuaFnSetCopySceneData_Param( sceneId, 15, 0 )							-- ��ng������H�ng C�c Y�u V߽ng
		LuaFnSetCopySceneData_Param( sceneId, 16, 0 )							-- �״�����ʱ��

		LuaFnSetSceneLoad_Area( sceneId, x050221_g_CopySceneArea )

		LuaFnSetSceneLoad_Monster( sceneId, x050221_g_CopySceneMonsterIni )

		local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ��ʼ����ɺ���ô�����������
		if bRetSceneID > 0 then
			x050221_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng, vui l�ng ��i trong gi�y l�t!" )
			AuditXinSanHuanCreateFuben( sceneId, selfId, 2 )
		else
			x050221_NotifyFailTips( sceneId, selfId, "S� l��ng b�n sao �� �n gi�i h�n, � ngh� l�t n�a th� l�i!" )
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x050221_OnCopySceneReady( sceneId, destsceneId )
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
		if IsHaveMission( sceneId, member, x050221_g_MissionId ) > 0 then		-- ������
			validmembercount = validmembercount + 1
			members[validmembercount] = member
		end
	end

	local misIndex
	for i = 1, validmembercount do
		if IsHaveMission( sceneId, members[i], x050221_g_MissionId ) > 0 then
			misIndex = GetMissionIndexByID( sceneId, members[i], x050221_g_MissionId )
			if LuaFnIsCanDoScriptLogic( sceneId, members[i] ) == 1 then			-- ���ڿ���ִ���߼�to� � ״̬
				--������to� � ��1����������Ϊ����to� � ������

				SetMissionByIndex( sceneId, members[i], misIndex, x050221_g_Param_sceneid, destsceneId )
		--		SetMissionEvent( sceneId, members[i], x050221_g_MissionId, 0 )			-- ����ɱ���¼�
				NewWorld( sceneId, members[i], destsceneId, x050221_g_Fuben_X, x050221_g_Fuben_Z )
			end
		end
	end
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x050221_OnPlayerEnter( sceneId, selfId )
end

--**********************************
--obj����
--**********************************
function x050221_OnDie( sceneId, objId, selfId )--C�i n�y selfId������ng����
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --�����ng����to� � ��,��C�i n�y ID���ó�����ID
		selfId = GetPetCreator( sceneId, selfId )
	end
	
	if selfId == -1 then
		return
	end
	
	--if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) <= 0 then
	--	return
	--end
	
	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050221_g_CopySceneType then
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
	
	for i = 1, getn( x050221_g_BossID ) do
		if szName == x050221_g_BossID[i] then
		
			local dropthing = 0
			if i == 1 then--��
				dropthing = x050221_g_YinMoZhuID[3]
			elseif i == 2 then--��
			elseif i == 3 then--��
				dropthing = x050221_g_YinMoZhuID[5]
			elseif i == 4 then--��
				dropthing = x050221_g_YinMoZhuID[2]
			elseif i == 5 then--��
				dropthing = x050221_g_YinMoZhuID[4]
			end
			
			for j = 0, num - 1 do
				if LuaFnIsObjValid( sceneId, mems[j] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[j] ) == 1 then						-- ��T�i ����to� � �����˲���
					x050221_NotifyFailTips( sceneId, mems[j], "�� gi�t "..x050221_g_BossID[i]..": 1/1" )
				end
			end
			
			if i == 2 then--ɱ����Ph� Di�m T�n Gi�
				LuaFnSetCopySceneData_Param( sceneId, 14, 1 )
			else
				for j = 0, num - 1 do
					if LuaFnIsObjValid( sceneId, mems[j] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[j] ) == 1 then						-- ��T�i ����to� � �����˲���
						AddMonsterDropItem( sceneId, objId, mems[j], dropthing )
					end
				end
			end
			
			return
		end
	end
	
	if szName == x050221_g_BossYaoWang then
		local misIndex = 0
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then						-- ��T�i ����to� � �����˲���
				--x050221_NotifyFailTips( sceneId, mems[i], "M�c ti�u nhi�m v����" )
				x050221_NotifyFailTips( sceneId, mems[i], "�� gi�t "..x050221_g_BossYaoWang..": 1/1" )
				if IsHaveMission( sceneId, mems[i], x050221_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050221_g_MissionId )
					SetMissionByIndex( sceneId, mems[i], misIndex, x050221_g_IsBossYaoWang, 1 )--����ɱboss��־				
					--SetMissionByIndex( sceneId, mems[i], misIndex, x050221_g_IsMissionOkFail, 1 )	-- �������
				end
				AddMonsterDropItem( sceneId, objId, mems[i], x050221_g_xuanfouzhu )
			end
		end
		
		local BroadcastMsg = "#{LLFB_80816_41}#W#{_INFOUSR$N}#{LLFB_80816_42}"
		BroadcastMsg = gsub( BroadcastMsg, "%$N", GetName( sceneId, selfId ) )
		BroadMsgByChatPipe( sceneId, selfId, BroadcastMsg, 4 )
		
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )--�����뿪����
		return
	end
end

--**********************************
--ɱ����������
--**********************************
function x050221_OnKillObject( sceneId, selfId, objdataId, objId )						-- ������˼: �����š����objId�������λ�úš�����objId
	
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x050221_OnHumanDie( sceneId, selfId, killerId )
end

--**********************************
--�뿪����
--**********************************
function x050221_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ �i�m������ڳ�����
	NewWorld( sceneId, selfId, oldsceneId, x050221_g_Back_X, x050221_g_Back_Z )
end

--**********************************
--����
--**********************************
function x050221_OnContinue( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, x050221_g_MissionName )
		AddText( sceneId, "T� ti�p t�c" )
	EndEvent( )
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x050221_g_ScriptId, x050221_g_MissionId )
end

--**********************************
--����
--**********************************
function x050221_OnAbandon( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) == 0 then
		return
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )
	local copyscene = GetMissionParam( sceneId, selfId, misIndex, x050221_g_Param_sceneid )

	-- ���÷�����������to� � ʱ��
	--begin modified by zhangguoxin 090208
	--local CurTime = GetHourTime()											-- ��ǰʱ��
	local CurTime = GetQuarterTime()											-- ��ǰʱ��
	--begin modified by zhangguoxin 090208
	SetMissionData( sceneId, selfId, MD_XINSANHUAN_2_LAST, CurTime )

	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x050221_g_MissionId )
	
	--C�n �۳��м�������Ʒ,��ħ��
	for i = 1, getn( x050221_g_YinMoZhuID ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_YinMoZhuID[i] )
		if num > 0 then
			LuaFnDelAvailableItem( sceneId, selfId, x050221_g_YinMoZhuID[i], num )
		end
	end
	
	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )

	if sceneId == copyscene and fubentype == x050221_g_CopySceneType then											-- ���T�i ������ɾ������,��ֱ�Ӵ��ͻ�
		x050221_NotifyFailTips( sceneId, selfId, "Nhi�m v� th�t b�i!" )
		local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )		-- ȡ �i�m������ڳ�����
		NewWorld( sceneId, selfId, oldsceneId, x050221_g_Back_X, x050221_g_Back_Z )
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x050221_OnCopySceneTimer( sceneId, nowTime )
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

		if leaveTickCount >= x050221_g_CloseTick then										-- ����ʱ�䵽,��Ҷ���ȥ��
			--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050221_Exit( sceneId, mems[i] )
				end
			end
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "B�n s� r�i kh�i ��y sau %d gi�y!", ( x050221_g_CloseTick - leaveTickCount ) * x050221_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x050221_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
		end
	elseif TickCount == x050221_g_LimitTotalHoldTime then									-- ������ʱ�����Ƶ���
		--�˴����ø���������ʱ������to� � ���,��ʱ�䵽����...
		local misIndex = 0
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x050221_NotifyFailTips( sceneId, mems[i], "�� h�t th�i gian, r�i c�nh..." )
				if IsHaveMission( sceneId, mems[i], x050221_g_MissionId ) > 0 then
					misIndex = GetMissionIndexByID( sceneId, mems[i], x050221_g_MissionId )
					if GetMissionParam( sceneId, mems[i], misIndex, x050221_g_IsMissionOkFail ) ~= 1 then
						SetMissionByIndex( sceneId, mems[i], misIndex, x050221_g_IsMissionOkFail, 2 )	-- ���û����ɾ�����Ϊth�t b�i
					end
				end
				x050221_Exit( sceneId, mems[i] )
			end
		end
		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	else
		--��ʱ�������Աto� � �����,���������,���߳�����
		local oldteamid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � �����

		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and oldteamid ~= GetTeamId( sceneId, mems[i] ) then
				x050221_NotifyFailTips( sceneId, mems[i], "B�n kh�ng c�n trong �i ng�, r�i c�nh..." )
				x050221_Exit( sceneId, mems[i] )
			end
		end
		
		local isFireBoss = LuaFnGetCopySceneData_Param( sceneId, 14 )				-- ��ng��ɱ��Ph� Di�m T�n Gi�
		local isYaoWang = LuaFnGetCopySceneData_Param( sceneId, 15 )			-- ��ng������H�ng C�c Y�u V߽ng
		local NotifyTime = LuaFnGetCopySceneData_Param( sceneId, 16 )			-- ����ʱ��
		
		--ÿ2 ph�t��ʾm�t ��,������ʱ
		local isPreNotify = 0
		if mod( TickCount*x050221_g_TickTime, 60 ) == 0 and mod( TickCount*x050221_g_TickTime+60, 120 ) == 0 then
			isPreNotify = 1
			for	i = 0, membercount - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					local Minute = floor( (360 - TickCount)*x050221_g_TickTime/60 )
					x050221_NotifyFailTips( sceneId, mems[i], "Th�i gian c�n l�i "..Minute.." ph�t" )
				end
			end	
		end

		--С��15 ph�tto� � ʱ��,ɱ����Ph� Di�m T�n Gi�,C�n ÿ2������m�t ��boss����ʱ��
		if TickCount < 50 and isFireBoss == 1 then
			if NotifyTime == 0 then --�״�����
				for	i = 0, membercount - 1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						local Minute = 0
						if 180 - TickCount < 12 then--С��1 ph�t��1 ph�t��ʾ
							Minute = 1
						else
							Minute = floor( (180 - TickCount)*x050221_g_TickTime/60 )
						end
						x050221_NotifyFailTips( sceneId, mems[i], "#{LLFB_80819_6}"..Minute.."#{LLFB_80819_7}" )
					end
				end
				LuaFnSetCopySceneData_Param( sceneId, 16, TickCount )
--			elseif TickCount - NotifyTime >= 24 then --����to� � ����
--				for	i = 0, membercount - 1 do
--					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
--						local Minute = 0
--						if 180 - TickCount < 12 then--С��1 ph�t��1 ph�t��ʾ
--							Minute = 1
--						else
--							Minute = floor( (180 - TickCount)*x050221_g_TickTime/60 )
--						end
--						x050221_NotifyFailTips( sceneId, mems[i], "#{LLFB_80819_6}"..Minute.."#{LLFB_80819_7}" )
--					end
--				end
--				LuaFnSetCopySceneData_Param( sceneId, 16, TickCount )
			end
		--���ڵ���15 ph�t
		elseif isFireBoss == 1 and isYaoWang == 0 then
			local mylevel = LuaFnGetCopySceneData_Param( sceneId, 7 )
			local iniLevel = LuaFnGetCopySceneData_Param( sceneId, 8 )

			local YaoWangID = BossYaoWangIDTbl[1]
			if BossYaoWangIDTbl[iniLevel] then
				YaoWangID = BossYaoWangIDTbl[iniLevel]
			end

			local monsterID = LuaFnCreateMonster( sceneId, YaoWangID, x050221_g_BossYaoWangPos[1], x050221_g_BossYaoWangPos[2], 14, 268, 050221 )
			SetLevel( sceneId, monsterID, mylevel+3 )--��c�p��m�t ��С�ָ�3c�p
			SetCharacterName( sceneId, monsterID, x050221_g_BossYaoWang )
			MonsterTalk(sceneId,monsterID,"еc ch߾ng tr�ch �a",x050221_g_YaoWangTalk)
			
			LuaFnSetCopySceneData_Param( sceneId, 15, 1 )
		end
	end
end

--**********************************
--�����ng������ύ
--**********************************
function x050221_CheckSubmit( sceneId, selfId )
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) <= 0 then
		return 0
	end

	local misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )				--  �i�m������to� � ���к�
	if GetMissionParam( sceneId, selfId, misIndex, x050221_g_IsMissionOkFail ) ~= 1 then
		return 0
	end

	if LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_xuanfouzhu ) < 1 then
		return 0
	end

	return 1
end

--**********************************
--�ύ
--**********************************
function x050221_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x050221_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end
	
	if x050221_CheckSubmit( sceneId, selfId ) == 1 then
		x050221_NotifyFailBox( sceneId, selfId, targetId, x050221_g_MissionComplete )

		--C�n �۳�m�t ���м�������Ʒ��ħ��,û�оͲ�����
		for i = 1, getn( x050221_g_YinMoZhuID ) do
			local num = LuaFnGetAvailableItemCount( sceneId, selfId, x050221_g_YinMoZhuID[i] )
			if num > 0 then
				LuaFnDelAvailableItem( sceneId, selfId, x050221_g_YinMoZhuID[i], num )
			end
		end

		DelMission( sceneId, selfId, x050221_g_MissionId )
		-- ����m�t ͳ��
		LuaFnAuditQuest(sceneId, selfId, "L�u Lan li�n ho�n nhi�m v� Huy�n Ph�t Ch�u")
	end
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x050221_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x050221_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--����ķ���ng����������
--**********************************
function x050221_CheckAllXinfaLevel(sceneId, selfId, level)
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
--�жϲ���monster����,����ħ��ű�338510~338514���õ�����
--**********************************
function x050221_IsMonster(sceneId, selfId, flag)

	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_31}" )
		return 0
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x050221_g_CopySceneType then
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_31}" )
		return 0
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	local nAliveMonsterNum = nMonsterNum
	for i=0, nMonsterNum-1 do
		local MonsterId = GetMonsterObjID(sceneId,i)
		if (LuaFnIsCharacterLiving( sceneId, MonsterId ) == 0) or (GetName(sceneId,MonsterId) == "�ε���") then
			nAliveMonsterNum = nAliveMonsterNum - 1
		end
	end
	if nAliveMonsterNum > 1 then
		--PrintStr(nMonsterNum)
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80819_5}" )
		return 0
	end

	local posX,posZ = GetWorldPos(sceneId, selfId)
	local inpostype = -1
	
	for i = 1, getn( x050221_g_Pos ) do
		if x050221_g_Pos[i].left[1] <= posX and posX <= x050221_g_Pos[i].right[1] and x050221_g_Pos[i].left[2] <= posZ and posZ <= x050221_g_Pos[i].right[2] then
			inpostype = i
			break
		end
	end
	
	if inpostype == -1 then
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_31}" )
		return 0
	end
	
	return 1
end
	
function x050221_GenerateMonster(sceneId, selfId, flag)

	local posX,posZ = GetWorldPos(sceneId, selfId)
	local inpostype = -1
	
	for i = 1, getn( x050221_g_Pos ) do
		if x050221_g_Pos[i].left[1] <= posX and posX <= x050221_g_Pos[i].right[1] and x050221_g_Pos[i].left[2] <= posZ and posZ <= x050221_g_Pos[i].right[2] then
			inpostype = i
			break
		end
	end
	
	if inpostype == -1 then
		x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_31}" )
		return
	end

	local ret = 0 --Tr� v�ֵ,1��ħ�����ʧ,0������ʧ
	if flag >= 1 and flag <= 5 then
		local mylevel = LuaFnGetCopySceneData_Param( sceneId, 7 )
		local iniLevel = LuaFnGetCopySceneData_Param( sceneId, 8 )
		local isboss = LuaFnGetCopySceneData_Param( sceneId, 8+flag )
		local monsterID = 0
		
		local monster15ID = Monster15IDTbl[1]
		if Monster15IDTbl[iniLevel] then
			monster15ID = Monster15IDTbl[iniLevel]
		end
		
		local monster10ID = Monster10IDTbl[1]
		if Monster10IDTbl[iniLevel] then
			monster10ID = Monster10IDTbl[iniLevel]
		end
		
		local bossID = BossIDTbl[flag][1]
		if BossIDTbl[flag][iniLevel] then
			bossID = BossIDTbl[flag][iniLevel]
		end
		
		--PrintStr("monster15ID "..monster15ID.."monster10ID "..monster10ID.."bossID "..bossID)

		if inpostype == flag then--�� �i�m����,��ng��ɱboss���
			if isboss == 0 then--û������boss
				for i = (flag-1)*15+1,flag*15  do
					monsterID = LuaFnCreateMonster( sceneId, monster15ID, x050221_g_monster15Pos[i][1], x050221_g_monster15Pos[i][2], 14, -1, 050221 )
					SetLevel( sceneId, monsterID, mylevel )
					SetCharacterName( sceneId, monsterID, x050221_g_Monster15ID )
				end
			
				local extAIScript = -1
				if flag == 1 then--��
					extAIScript = 263
				elseif flag == 2 then--��
					extAIScript = 267
				elseif flag == 3 then--��
					extAIScript = 264
				elseif flag == 4 then--��
					extAIScript = 265
				elseif flag == 5 then--��
					extAIScript = 266
				end

				monsterID = LuaFnCreateMonster( sceneId, bossID, x050221_g_BossPos[flag][1], x050221_g_BossPos[flag][2], 14, extAIScript, 050221 )
				SetLevel( sceneId, monsterID, mylevel+2 )--��c�p��m�t ��С�ָ�2c�p
				SetCharacterName( sceneId, monsterID, x050221_g_BossID[flag] )
				MonsterTalk(sceneId,monsterID,"еc ch߾ng tr�ch �a",x050221_g_BossTalk[flag])
				
				LuaFnSetCopySceneData_Param( sceneId, 8+flag, 1)
				
				if flag == 1 then--��
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_29}" )
				elseif flag == 2 then--��
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_38}" )
				elseif flag == 3 then--��
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_32}" )
				elseif flag == 4 then--��
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_34}" )
				elseif flag == 5 then--��
					x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_36}" )
				end
				
				ret = 1
			else--�Ѿ�����boss
				for i = (flag-1)*10+1,flag*10  do
					monsterID = LuaFnCreateMonster( sceneId, monster10ID, x050221_g_monster10Pos[i][1], x050221_g_monster10Pos[i][2], 14, -1, 050221 )
					SetLevel( sceneId, monsterID, mylevel )
					SetCharacterName( sceneId, monsterID, x050221_g_Monster10ID )
				end
				
				x050221_NotifyFailTips( sceneId, selfId, x050221_g_BossID[flag].."#{LLFB_80816_28}" )
			end
		else--����ng��ȷ�� �i�m
			for i = (inpostype-1)*10+1,inpostype*10  do--T�i ʹ�õ�����10c�iС��,������ngT�i ��ħ��to� � ԭ���ط�
				monsterID = LuaFnCreateMonster( sceneId, monster10ID, x050221_g_monster10Pos[i][1], x050221_g_monster10Pos[i][2], 14, -1, 050221 )
				SetLevel( sceneId, monsterID, mylevel )
				SetCharacterName( sceneId, monsterID, x050221_g_Monster10ID )
			end
			
			if flag == 1 then--��
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_30}" )
			elseif flag == 2 then--��
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_39}" )
			elseif flag == 3 then--��
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_33}" )
			elseif flag == 4 then--��
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_35}" )
			elseif flag == 5 then--��
				x050221_NotifyFailTips( sceneId, selfId, "#{LLFB_80816_37}" )
			end
		end
	end

	return ret
end

--**********************************
-- ʰȡ���� scene.luato� � x888888_OnPlayerPickupItemFromDropBox���õ�����
--**********************************
function x050221_PickupItem(sceneId, selfId, itemId, bagidx )
	if IsHaveMission( sceneId, selfId, x050221_g_MissionId ) <= 0 then
		return
	end
	
	if itemId ~= x050221_g_xuanfouzhu then
		return
	end
	
	x050221_NotifyFailTips( sceneId, selfId, "�� t�m th�y Huy�n Ph�t Ch�u 1/1" )
	x050221_NotifyFailTips( sceneId, selfId, "Nhi�m v� ho�n th�nh" )
	misIndex = GetMissionIndexByID( sceneId, selfId, x050221_g_MissionId )
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsFindGoods, 1 )
	SetMissionByIndex( sceneId, selfId, misIndex, x050221_g_IsMissionOkFail, 1 )	-- �������
end
