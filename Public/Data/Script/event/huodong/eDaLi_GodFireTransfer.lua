--������[ QUFEI 2008-03-05 10:27 UPDATE BugID 32710 ]
--��i L�Nhi�m v� R�a-Th� thi ch�y�¼��ű�
--���ÿ��M� ra ����,ÿc�i���ÿ��ֻ�ܲμ�m�t ��

--MisDescBegin
--�ű���
x808082_g_ScriptId	= 808082

--Ti�p th�����NPC����
x808082_g_Position_X=54.9700
x808082_g_Position_Z=192.5128
x808082_g_SceneID=2
x808082_g_AccomplishNPC_Name="V߽ng Nh��c V�"

--�����
x808082_g_MissionId			= 1000
--��m�t c�i����to� � ID
x808082_g_MissionIdNext	= 1000
--M�c ti�u nhi�m v�npc
x808082_g_Name 					= "V߽ng Nh��c V�"
--�������
x808082_g_MissionKind			= 13
--��ng c�p nhi�m v� 
x808082_g_MissionLevel		= 20
--��ng����ngTinhӢ����
x808082_g_IfMissionElite	= 0
--������ng���Ѿ����
x808082_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x808082_g_MissionName			= "Nhi�m v� R�a-Th� thi ch�y"
--��������
x808082_g_MissionInfo			= "#{GodFire_Info_001}"
--M�c ti�u nhi�m v�
x808082_g_MissionTarget		= "#{GodFire_Info_006}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x808082_g_ContinueInfo		= "#{GodFire_Info_007}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x808082_g_MissionComplete	= "#{GodFire_Info_008}"
--ÿ��R�a-Th� thi ch�y�C�n ��to� � Th�nh th�����
x808082_g_MaxRound	= 3
--���ƽű�
x808082_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,�ֱ�ռ���������to� � ��1,2,3,4λ
x808082_g_Custom	= { {id="�� c�ng L�c D߽ng Tri�u Minh Th�nh �i tho�i",num=1}, {id="�� c�ng T� Ch�u L�c S� Tranh �i tho�i",num=1}, {id="�� c�ng ��i L� V߽ng Nh��c V� �i tho�i",num=1}, {id="�� ch�m to�n b� ��n Kh�ng Minh",num=24} }
--MisDescEnd

--������ng�����
x808082_g_Mission_IsComplete = 0		--�������to� � ��0λ
--R�a-Th� thi ch�y��i L��򿨱��
x808082_g_RecordIdx 				 = 3		--�������to� � ��3λ 1.L�c D߽ng 2.T� Ch�u 3.��i L�
--����������������
x808082_g_KongMing_Lighten	 = 4		--�������to� � ��4λ
--����ű��ż�¼
x808082_g_MissScriptID_Idx	 = 5		--�������to� � ��5λ
--���񷢲�NPC���
x808082_g_AcceptNPC_Idx			 = 6		--�������to� � ��6λ 1.L�c D߽ngNPC 2.T� Ch�uNPC 3.��i L�NPC
--Nhi�m v� R�a-Th� thi ch�yÿ���������
x808082_g_RoundIndex 				 = 7		--�������to� � ��7λ


x808082_g_AcceptMission_IDX		= 720	--R�a-Th� thi ch�y������������
x808082_g_CompleteMission_IDX	= 721	--R�a-Th� thi ch�y�ύ��������
x808082_g_MissionInfo_IDX			= 722	--����� �i�m�����

x808082_g_Jion_Count = 0						--�����������
x808082_g_Join_CountMax = 50				--������������

x808082_g_KongMingLighten_MaxCnt	=	24	-- R�a-Th� thi ch�y�C�n  �i�mȼto� � ����������

--��ӵ��to� � �¼�ID�б�
x808082_g_EventList	= {}

x808082_g_Impact_Accept_Mission 	= 47	-- Ti�p th�����ʱto� � ��ЧID
x808082_g_Impact_Light_Complete 	= 38	--  �i�m��������ʱto� � ��Ч
x808082_g_Impact_Transport_Mission = 113 -- ����״̬��Ч
x808082_g_Impact_GodOfFire_Mission = 5929 -- R�a-Th� thi ch�y״̬��Ч
x808082_g_PlayerSlow_LVL					= 20	-- Ti�p th�����to� � ��͵�c�p

-- ��������ʱ��( ph�t)
x808082_g_Along_Time							= 5
-- ÿ��R�a-Th� thi ch�y�M� ra ʱ��
x808082_g_ActivityTime						= { {tstart=1230, tend=1330},
																		  {tstart=1930, tend=2030},
																		  {tstart=2130, tend=2230} }

x808082_g_ItemId = { id=40004444,num=1 }				-- ������Ʒ

-- ����
x808082_g_GodFireMis_PaiMing = 0
-- �ϴ��������to� � ����
x808082_g_ClearPaiMing_Round = 0


-- ����to� � �ƺ� ��Ʒ��ë��
x808082_g_GodFire_Title = 241
-- �ƺ���Ч��(��)
x808082_GodFireTitle_AlongTime = 7


-- ����Kinh nghi�m����ֵ(�������й�)
x808082_g_BonusEXP_ListEX = { 3.0000,2.9592,2.9184,2.8776,2.8367,2.7959,2.7551,2.7143,2.6735,2.6327,
															2.5918,2.5510,2.5102,2.4694,2.4286,2.3878,2.3469,2.3061,2.2653,2.2245,
															2.1837,2.1429,2.1020,2.0612,2.0204,1.9796,1.9388,1.8980,1.8571,1.8163,
															1.7755,1.7347,1.6939,1.6531,1.6122,1.5714,1.5306,1.4898,1.4490,1.4082,
															1.3673,1.3265,1.2857,1.2449,1.2041,1.1633,1.1224,1.0816,1.0408,1.0000 }
											  	
x808082_g_BonusEXP_List = { 0,0,0,0,0,0,0,0,0,0,
														0,0,0,0,0,0,0,0,0,19008,
														19872,20628,21384,22212,22968,23832,24588,25344,26208,30852,
														31788,32652,33588,34416,35388,36324,37188,38124,38988,44928,
														45972,46944,47952,48996,50040,51084,52020,53064,54108,61308,
														62460,63576,64728,65844,66996,68112,69264,70416,71532,79848,
														81180,82404,83664,84888,86112,87444,88668,89892,91116,100764,
														102204,103536,104868,106272,107604,109008,110340,111672,113076,123984,
														125496,126900,128412,129852,131364,132876,134280,135792,137232,141948,
														143460,144972,146484,147996,149508,151020,152460,153972,155484,159372,
														160992,162504,164016,165528,167040,168624,170172,171684,173196,176040,
														177552,179064,180648,182268,183780,185292,186804,188316,189936,191448,
														193068,194580,196092,197712,199224,200736,202248,203760,205380,206964,
														208476,209988,211500,213120,214632,216144,217656,219276,220896,222408,
														223920,225432,226944,228564,230076,231660,233208,234720,236304,236304 }

-- ��������to� � ������ƷID
x808082_g_ItemBox_ItemID = 40004445

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x808082_OnDefaultEvent( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808082_g_Name then
		x808082_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
			
	local	key	= GetNumText()	
	if key == x808082_g_AcceptMission_IDX then		
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x808082_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end

		-- ��ⱨ��ʱ��
		if x808082_CheckApplyTime() == 0 then
			x808082_NotifyTip( sceneId, selfId, "#{GodFire_Info_018}" )					
			return 0
		end
		
		-- �������Ti�p th�����
		if x808082_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x808082_AcceptMission( sceneId, selfId, targetId )				

	elseif key == x808082_g_CompleteMission_IDX then
		-- ����Ѿ���������
		if IsHaveMission( sceneId, selfId, x808082_g_MissionId ) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x808082_g_MissionName)
				AddText(sceneId, x808082_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x808082_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x808082_g_ScriptId, x808082_g_MissionId, bDone)
			
		else			
			x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_011}" )
			return 0
		end
		
	elseif key == x808082_g_MissionInfo_IDX then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_009}" )		
		return 0

	else
		x808082_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x808082_OnEnumerate( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808082_g_Name then
		return 0
	end
	
	AddNumText( sceneId, x808082_g_ScriptId, "Ta mu�n tham gia R�a-Th� thi ch�y", 7, x808082_g_AcceptMission_IDX )
	AddNumText( sceneId, x808082_g_ScriptId, "Ta �� mu�n ho�n th�nh R�a-Th� thi ch�y", 7, x808082_g_CompleteMission_IDX )
	AddNumText( sceneId, x808082_g_ScriptId, "V� ho�t �ng R�a-Th� thi ch�y", 11, x808082_g_MissionInfo_IDX )

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x808082_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808082_g_Name then
		x808082_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
	
	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x808082_g_PlayerSlow_LVL then		
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_013}" )
		return 0
	end

	--�������״̬פ��Ч��
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808082_g_Impact_Transport_Mission) ~= 0
		 or LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808082_g_Impact_GodOfFire_Mission) ~= 0 then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_014}" )
		return 0
	end

	local nTimePoint = x808082_CheckHuoDongTime()
	-- �������
	if x808082_g_ClearPaiMing_Round ~= nTimePoint then
		x808082_g_Jion_Count = 0
		x808082_g_GodFireMis_PaiMing = 0
		x808082_g_ClearPaiMing_Round = nTimePoint
	end

	--��ⱨ����������
	if x808082_g_Jion_Count >= x808082_g_Join_CountMax then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_015}" )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x808082_g_MissionId ) > 0 then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_016}" )
		return 0
	end
	
	--�����Ҳμӻto� � ʱ��
	local	nDayTime = GetMissionData( sceneId, selfId, MD_GODOFFIRE_DAYTIME )
	
	local nDay = LuaFnGetDayOfThisMonth()
	if nDayTime == nDay then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_017}" )
		return 0
	end
	
	--��������ng����Ӹ���
	if IsTeamFollow( sceneId, selfId ) == 1 then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GCTeamFollowErrorHandler_Info_In_Mis_GodOfFire}" )		
		return 0
	end
	
	--�����ng����˫�����״̬
	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{ResultText_117}" )
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x808082_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x808082_g_Name then
 		x808082_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x808082_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < x808082_g_ItemId.num then
		x808082_NotifyTip( sceneId, selfId, "#{QX_20071129_027}" )		
		return 0
	end

  local nDay   = LuaFnGetDayOfThisMonth()

	BeginAddItem(sceneId)
	AddItem(sceneId,x808082_g_ItemId.id, x808082_g_ItemId.num)
	local canAdd = EndAddItem(sceneId,selfId)						
	if canAdd > 0 then
		--������������б�
		local bAdd = AddMission( sceneId, selfId, x808082_g_MissionId, x808082_g_ScriptId, 0, 0, 0 )
		if bAdd >= 1 then				
			AddItemListToHuman(sceneId,selfId)
			
			-- �i�m������to� � ���к�
			local	misIndex		= GetMissionIndexByID( sceneId, selfId, x808082_g_MissionId )
			
			--�������кŰ��������to� � ��0λ��0 (����������)
			SetMissionByIndex( sceneId, selfId, misIndex, x808082_g_Mission_IsComplete, 0 )
			--�������кŰ��������to� � ��1λ��Ϊ����ű���
			SetMissionByIndex( sceneId, selfId, misIndex, x808082_g_MissScriptID_Idx, scriptId )		
			SetMissionByIndex(sceneId, selfId, misIndex, x808082_g_AcceptNPC_Idx, 3)
			SetMissionByIndex(sceneId, selfId, misIndex, x808082_g_RecordIdx, 1)
			SetMissionByIndex(sceneId, selfId, misIndex, x808082_g_KongMing_Lighten, 0)

			local nTimePoint = x808082_CheckHuoDongTime()

			SetMissionByIndex(sceneId, selfId, misIndex, x808082_g_RoundIndex, nTimePoint)
			
			SetMissionData( sceneId, selfId, MD_GODOFFIRE_DAYTIME, nDay )

			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808082_g_Impact_Transport_Mission, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808082_g_Impact_GodOfFire_Mission, 0 )

			x808082_g_Jion_Count = x808082_g_Jion_Count + 1

			-- ֪ͨ�ͻ���			
			BeginEvent(sceneId)				
				AddText(sceneId, "#{GodFire_Info_020}")				
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)

			BeginEvent(sceneId)
				AddText(sceneId,x808082_g_MissionName)
				AddText(sceneId,x808082_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,"#{GodFire_Info_006}")				
				AddText(sceneId,"#{GodFire_Info_019}")				
			EndEvent( )					
			DispatchEventList(sceneId, selfId, targetId)
			
			-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808082_g_Impact_Accept_Mission, 0 )
		end
	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x808082_OnAbandon( sceneId, selfId )
  
  --ɾ����������б��ж�Ӧto� � ����,��Ʒ��פ��Ч��
  if HaveItem(sceneId, selfId, x808082_g_ItemId.id) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808082_g_ItemId.id) >= x808082_g_ItemId.num then
  		DelItem( sceneId, selfId, x808082_g_ItemId.id, LuaFnGetAvailableItemCount(sceneId, selfId, x808082_g_ItemId.id) )
  	else
	  	x808082_NotifyTip( sceneId, selfId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a." )			
			return 0
  	end
  end
  
  if HaveItem(sceneId, selfId, x808082_g_ItemBox_ItemID) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808082_g_ItemBox_ItemID) >= 1 then
  		DelItem( sceneId, selfId, x808082_g_ItemBox_ItemID, LuaFnGetAvailableItemCount(sceneId, selfId, x808082_g_ItemBox_ItemID) )
  	else
	  	x808082_NotifyTip( sceneId, selfId, "V�t ph�m c�a c�c h� hi�n kh�ng d�ng ���c ho�c �� b� kh�a." )			
			return 0
  	end
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808082_g_Impact_Transport_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808082_g_Impact_Transport_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808082_g_Impact_GodOfFire_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808082_g_Impact_GodOfFire_Mission )
  end
  
  if IsHaveMission( sceneId, selfId, x808082_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x808082_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x808082_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808082_g_Name then
		x808082_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x808082_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x808082_g_MissionName)
		AddText( sceneId, x808082_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x808082_g_ScriptId,x808082_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x808082_CheckSubmit( sceneId, selfId, targetId )

	if IsHaveMission( sceneId, selfId, x808082_g_MissionId ) <= 0 then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_011}" )
		return 0
	end

	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x808082_g_PlayerSlow_LVL then		
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_013}" )
		return 0
	end

	--�����Ҳμӻto� � ʱ��
	local	nDayTime = GetMissionData( sceneId, selfId, MD_GODOFFIRE_DAYTIME )
	
	local nDay = LuaFnGetDayOfThisMonth()
	if nDayTime ~= nDay then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_017}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x808082_g_MissionId)
	local nTimePoint = x808082_CheckHuoDongTime()
	if nTimePoint ~= GetMissionParam(sceneId, selfId, misIndex, x808082_g_RoundIndex) then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_024}" )
		return 0
	end
	
	-- �����ng����ng���񷢲�NPC
	if GetMissionParam(sceneId, selfId, misIndex, x808082_g_AcceptNPC_Idx) == 1 then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_025}" )
		return 0
	elseif GetMissionParam(sceneId, selfId, misIndex, x808082_g_AcceptNPC_Idx) == 2 then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_026}" )
		return 0
	elseif GetMissionParam(sceneId, selfId, misIndex, x808082_g_AcceptNPC_Idx) ~= 3 then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_027}" )
		return 0
	end
	
	--��������ng����Ӹ���
	if IsTeamFollow( sceneId, selfId ) == 1 then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{GCTeamFollowErrorHandler_Info_In_Mis_GodOfFire}" )		
		return 0
	end
	
	--�����ng����˫�����״̬
	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		x808082_TalkInfo( sceneId, selfId, targetId, "#{ResultText_117}" )
		return 0
	end

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x808082_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x808082_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808082_g_Name then
		x808082_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x808082_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x808082_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end
	
	local strText = ""
	x808082_g_GodFireMis_PaiMing = x808082_g_GodFireMis_PaiMing + 1

	if x808082_g_GodFireMis_PaiMing <= 3 then
		strText = format("#{_INFOUSR%s}#{GodFire_Info_029}%d#{GodFire_Info_030}", GetName(sceneId,selfId), x808082_g_GodFireMis_PaiMing )
		BroadMsgByChatPipe( sceneId, 0, strText, 4 )
		
		-- ���ü�Ʒ��ë�ȳƺ�
		if x808082_g_GodFire_Title == GetTitle( sceneId, selfId, 14 ) then
			DeleteTitle( sceneId, selfId, 14 )			
		end
		AwardTitle( sceneId, selfId, 14, x808082_g_GodFire_Title, 24 * x808082_GodFireTitle_AlongTime )
		SetCurTitle( sceneId, selfId, 14, x808082_g_GodFire_Title )
		DispatchAllTitle( sceneId, selfId )
	end

	local playerlvl = LuaFnGetLevel( sceneId, selfId )
	local nExpNum = x808082_g_BonusEXP_List[playerlvl]
	local nExpEx = x808082_g_BonusEXP_ListEX[x808082_g_GodFireMis_PaiMing]

	nExpNum = floor(nExpNum * nExpEx)
	LuaFnAddExp( sceneId, selfId, nExpNum )
	strText = format("#{_INFOUSR%s}#{GodFire_Info_031}%d#{GodFire_Info_032}%d.#{GodFire_Info_033}", GetName(sceneId,selfId), x808082_g_GodFireMis_PaiMing, nExpNum )
	x808082_TalkInfo( sceneId, selfId, targetId, strText )
	
	-- �˳�����
	x808082_NotifyTip( sceneId, selfId, "#{GodFire_Info_063}" )
	BroadMsgByChatPipe( sceneId, selfId, "#{GodFire_Info_063}", 8 )
	
	if IsHaveMission( sceneId, selfId, x808082_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x808082_g_MissionId )
	end
	
	x808082_DelMissionInfo( sceneId, selfId )

end

--**********************************
--ɱ����������
--**********************************
function x808082_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����
end

--**********************************
--���������¼�
--**********************************
function x808082_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x808082_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x808082_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x808082_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808082_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x808082_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x808082_GetEventMissionId( sceneId, selfId )	
	return x808082_g_MissionId
end

function x808082_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808082_g_Name then
		x808082_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x808082_g_MissionName)
		AddText( sceneId, x808082_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{GodFire_Info_006}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddText(sceneId,"#{GodFire_Info_012}")
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x808082_g_ScriptId,x808082_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x808082_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--�������ʱ��
--**********************************
function x808082_CheckApplyTime()

	local nHour	 = GetHour()
	local nMinute = GetMinute()  
  local curHourTime = nHour*100+nMinute

	for i=1, getn(x808082_g_ActivityTime) do
	  if curHourTime >= x808082_g_ActivityTime[i].tstart and curHourTime < (x808082_g_ActivityTime[i].tstart+x808082_g_Along_Time) then
	  	return 1		
	  end
	end

	return 0
end

--**********************************
--���ʱ��
--**********************************
function x808082_CheckHuoDongTime()

	local nHour	 = GetHour()
	local nMinute = GetMinute()  
  local curHourTime = nHour*100+nMinute


	for i=1, getn(x808082_g_ActivityTime) do
	  if curHourTime >= x808082_g_ActivityTime[i].tstart and curHourTime <= x808082_g_ActivityTime[i].tend then
	  	return i		
	  end
	end

	return 0

end

--**********************************
--����ʹ��
--**********************************
function x808082_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x808082_OnDie( sceneId, selfId, killerId )
	x808082_NotifyTip( sceneId, selfId, "#{GodFire_Info_034}" )
	x808082_DelMissionInfo( sceneId, selfId )
end

--**********************************
--ɾ�����Ϣ
--ɾ����������б��ж�Ӧto� � ����,��Ʒ��פ��Ч��
--**********************************
function x808082_DelMissionInfo( sceneId, selfId )

  if HaveItem(sceneId, selfId, x808082_g_ItemId.id) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808082_g_ItemId.id) >= x808082_g_ItemId.num then
  		DelItem( sceneId, selfId, x808082_g_ItemId.id, LuaFnGetAvailableItemCount(sceneId, selfId, x808082_g_ItemId.id) )  	
  	end
  end
  
  if HaveItem(sceneId, selfId, x808082_g_ItemBox_ItemID) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808082_g_ItemBox_ItemID) >= 1 then
  		DelItem( sceneId, selfId, x808082_g_ItemBox_ItemID, LuaFnGetAvailableItemCount(sceneId, selfId, x808082_g_ItemBox_ItemID) )  	
  	end
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808082_g_Impact_Transport_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808082_g_Impact_Transport_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808082_g_Impact_GodOfFire_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808082_g_Impact_GodOfFire_Mission )
  end
  
  if IsHaveMission( sceneId, selfId, x808082_g_MissionId ) > 0 then
  	x808082_NotifyTip( sceneId, selfId, "#{GodFire_Info_034}" )
	 	DelMission( sceneId, selfId, x808082_g_MissionId )
	end
	
	return 0

end

--**********************************
-- �����Ч��Ч�ڵ�ʱ�Զ�ɾ��������Ϣ
--**********************************
-- function x808082_OnImpactFadeOut( sceneId, selfId, impactId )
-- 
-- 	if impactId == x808082_g_Impact_GodOfFire_Mission then
-- 		x808082_DelMissionInfo( sceneId, selfId )
-- 	end
-- 
-- end
