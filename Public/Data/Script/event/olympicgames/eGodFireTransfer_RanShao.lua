--������[ QUFEI 2008-04-18 10:27 UPDATE BugID 34369 ]
--��ʥ�𴫵ݻ֮ȼ��to� � ʥ���¼��ű�
--���ÿ��M� ra ����,ÿc�i���ÿ��ֻ�ܲμ�m�t ��

--MisDescBegin
--�ű���
x808095_g_ScriptId	= 808095

--Ti�p th�����NPC����
x808095_g_Position_X=164.5310
x808095_g_Position_Z=262.5004
x808095_g_SceneID=30
x808095_g_AccomplishNPC_Name="T� Phi"

--�����
x808095_g_MissionId			= 1001
--��m�t c�i����to� � ID
x808095_g_MissionIdNext	= 1002
--M�c ti�u nhi�m v���T�i ����
x808095_g_AcceptNPC_SceneID	=	1
--M�c ti�u nhi�m v�npc
x808095_g_Name 					= "Th�nh ho� ��n"
--�������
x808095_g_MissionKind			= 13
--��ng c�p nhi�m v� 
x808095_g_MissionLevel		= 10
--��ng����ngTinhӢ����
x808095_g_IfMissionElite	= 0
--������ng���Ѿ����
x808095_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x808095_g_MissionName			= "Thi�u �t th�nh h�a"
--��������
x808095_g_MissionInfo			= "#{XSHCD_20080418_008}"
--M�c ti�u nhi�m v�
x808095_g_MissionTarget		= "#{XSHCD_20080418_042}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x808095_g_ContinueInfo		= "#{XSHCD_20080418_009}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x808095_g_MissionComplete	= "#{XSHCD_20080418_010}"
--ÿ�λ�������to� � ����
x808095_g_MaxRound	= 3
--���ƽű�
x808095_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x808095_g_Custom	= { {id="�� xem th�nh h�a giao cho T�y h�  T� Phi",num=1} }
--MisDescEnd

--������ng�����
x808095_g_Mission_IsComplete = 0		--�������to� � ��0λ
--ʥ�𽻸�T� Phito� � ���
x808095_g_RecordIdx 				 = 1		--�������to� � ��1λ
--����ű��ż�¼
x808095_g_MissScriptID_Idx	 = 2		--�������to� � ��2λ
--���񷢲�NPC���
x808095_g_AcceptNPC_Idx			 = 3		--�������to� � ��3λ 2.T� Ch�uNPC


x808095_g_AcceptMission_IDX		= 565	--ȼ��to� � ʥ�������������
x808095_g_CompleteMission_IDX	= 566	--ȼ��to� � ʥ���ύ��������
x808095_g_MissionInfo_IDX			= 567	--����� �i�m�����
x808095_g_AfreshMission_IDX		= 568	--���¿�ʼʥ�𴫵�����

--��ӵ��to� � �¼�ID�б�
x808095_g_EventList	= {}

x808095_g_Impact_Accept_Mission 	 = 47		-- Ti�p th�����ʱto� � ��ЧID
x808095_g_Impact_Transport_Mission = 113 	-- ����״̬��Ч
x808095_g_Impact_GodOfFireMan_Mission  = 5942 -- ʥ�𴫵��б�����Ч
x808095_g_Impact_GodOfFireGirl_Mission = 5943 -- ʥ�𴫵�Ů������Ч
x808095_g_Impact_DelGodOfFire_Mission  = 5944 -- ɾ��ʥ����Чto� � ��Ч
x808095_g_PlayerSlow_LVL					 = 10		-- Ti�p th�����to� � ��͵�c�p

x808095_g_Mission_StepNum					 = 0		-- ������T�i ������to� � �ڼ���

x808095_g_ItemId = { id=40004447,num=1 }	-- ������Ʒ

-- ʥ��ʱ��
x808095_g_Activity_Day						 = { dstart=504,  dend=510 }
x808095_g_Activity_Time						 = { tstart=1945, tend=2245 }

-- 5��10�ź�to� � �M� ra ʱ��,ÿ����
x808095_g_Activity_DayTime				 = 5

-- ����Kinh nghi�m�ͽ�Ǯ(���c�p�й�)
x808095_g_MoneyBonus_Param1				 = 30 
x808095_g_MoneyBonus_Param2				 = 320
x808095_g_ExpBonus_Param1				 	 = 160
x808095_g_ExpBonus_Param2				 	 = 500

-- ʥ�������б�
x808095_g_GodFire_MissionList			 = { 1001, 1002, 1003, 1004, 1005, 1006, 1007, 1008, 1009, 1010, 1011 }

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x808095_OnDefaultEvent( sceneId, selfId, targetId )

	local	key	= GetNumText()	
	if key == x808095_g_AcceptMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
			x808095_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
			return 0
		end
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x808095_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- �������Ti�p th�����
		if x808095_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x808095_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x808095_g_CompleteMission_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x808095_g_AccomplishNPC_Name then
			x808095_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
			return 0
		end
		-- ����Ѿ���������ȼ��to� � ʥ��
		if IsHaveMission( sceneId, selfId, x808095_g_MissionId) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x808095_g_MissionName)
				AddText(sceneId, x808095_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x808095_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x808095_g_ScriptId, x808095_g_MissionId, bDone)
			
		else			
			x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_072}" )
			return 0
		end
	elseif key == x808095_g_MissionInfo_IDX then
		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
			x808095_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
			return 0
		end
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_007}" )		
		return 0

	elseif key == x808095_g_AfreshMission_IDX then
	
		for i, MissionId in x808095_g_GodFire_MissionList do
			if IsHaveMission( sceneId, selfId, MissionId) > 0 then
				x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_070}" )
				return 0
			end
		end
	
		SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM, 0 )
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_068}" )
		return 0
	else
		x808095_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x808095_OnEnumerate( sceneId, selfId, targetId )
	
	--�����ng�����
	if x808095_CheckHuoDongTime() <= 0 then
		return 0
	end

	if LuaFnGetName( sceneId, targetId ) == x808095_g_Name
		 and sceneId == x808095_g_AcceptNPC_SceneID then
		AddNumText( sceneId, x808095_g_ScriptId, "Ta mu�n chuy�n Th�nh Ho� m�t l�n n�a.", 7, x808095_g_AfreshMission_IDX )
		
		if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) <= 0 then
			local	nStepNum = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM )
			if nStepNum == x808095_g_Mission_StepNum then
				AddNumText( sceneId, x808095_g_ScriptId, "Ta mu�n tham gia: Thi�u �t th�nh h�a", 7, x808095_g_AcceptMission_IDX )
			end
		end
		AddNumText( sceneId, x808095_g_ScriptId, "V� ho�t �ng Thi�u �t th�nh ho�", 11, x808095_g_MissionInfo_IDX )
	elseif LuaFnGetName( sceneId, targetId ) == x808095_g_AccomplishNPC_Name
				 and sceneId == x808095_g_SceneID then
	
		if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) > 0 then
			local misIndex = GetMissionIndexByID(sceneId,selfId,x808095_g_MissionId)

			-- ���������ng�����	
			if GetMissionParam(sceneId, selfId, misIndex, x808095_g_Mission_IsComplete) <= 0 then
				SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_Mission_IsComplete, 1 )
				SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_RecordIdx, 1 )
				x808095_NotifyTip( sceneId, selfId, "#{XSHCD_20080418_100}" )
				x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_098}" )
				return 0
			else
				AddNumText( sceneId, x808095_g_ScriptId, "Ta �� ho�n th�nh: Thi�u �t th�nh h�a", 7, x808095_g_CompleteMission_IDX )
			end
		end
	else
		return 0
	end

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x808095_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
		x808095_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
	
	--�����ng�����
	if x808095_CheckHuoDongTime() <= 0 then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_069}" )
		return 0
	end
	
	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x808095_g_PlayerSlow_LVL then		
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_064}" )
		return 0
	end

	--�������״̬פ��Ч��
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_Transport_Mission) ~= 0
		 or LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission) ~= 0 then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_014}" )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) > 0 then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end

	--�����Ҳμӱ��λ�������ڼ���
	local	nStepNum = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM )
	if nStepNum ~= x808095_g_Mission_StepNum then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_066}" )
		return 0
	end

	--��m�t �����������
	local nThisTime = GetDayTime()
	local	nDayTime = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_DAYTIME )
	if nDayTime ~= nThisTime then
		SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_COUNT, 0 )
	end
	
	--�����ҽ���μӻto� � ����
	local	nComCount = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_COUNT )
	if nComCount >= x808095_g_MaxRound then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_065}" )
		return 0
	end

	--�����ng����˫�����״̬
	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{ResultText_117}" )
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x808095_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
 		x808095_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x808095_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < x808095_g_ItemId.num then
		x808095_NotifyTip( sceneId, selfId, "#{QX_20071129_027}" )		
		return 0
	end

	BeginAddItem(sceneId)
	AddItem(sceneId,x808095_g_ItemId.id, x808095_g_ItemId.num)
	local canAdd = EndAddItem(sceneId,selfId)						
	if canAdd > 0 then
		--������������б�
		local bAdd = AddMission( sceneId, selfId, x808095_g_MissionId, x808095_g_ScriptId, 0, 0, 0 )
		if bAdd >= 1 then				
			AddItemListToHuman(sceneId,selfId)
			
			-- �i�m������to� � ���к�
			local	misIndex		= GetMissionIndexByID( sceneId, selfId, x808095_g_MissionId )
			
			--�������кŰ��������to� � ��0λ��0 (����������)
			SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_Mission_IsComplete, 0 )
			SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_RecordIdx, 0 )
			--�������кŰ��������to� � ��2λ��Ϊ����ű���
			SetMissionByIndex( sceneId, selfId, misIndex, x808095_g_MissScriptID_Idx, scriptId )		
			SetMissionByIndex(sceneId, selfId, misIndex, x808095_g_AcceptNPC_Idx, 2)

			local nDayTime = GetDayTime()
			SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_DAYTIME, nDayTime )

			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_Transport_Mission, 0 )
			
			-- �����Ա������Buffer
			if GetSex( sceneId, selfId ) == 1 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_GodOfFireMan_Mission, 0 )
			else
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_GodOfFireGirl_Mission, 0 )
			end
			
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_DelGodOfFire_Mission, 0 )

			BeginEvent(sceneId)
				AddText(sceneId,x808095_g_MissionName)
				AddText(sceneId,x808095_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,"#{XSHCD_20080418_042}")				
				AddText(sceneId,"#{XSHCD_20080418_007}")				
			EndEvent( )					
			DispatchEventList(sceneId, selfId, targetId)
			
			-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808095_g_Impact_Accept_Mission, 0 )
		end
	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x808095_OnAbandon( sceneId, selfId )
  
  --ɾ����������б��ж�Ӧto� � ����,��Ʒ��פ��Ч��
  if HaveItem(sceneId, selfId, x808095_g_ItemId.id) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808095_g_ItemId.id) >= x808095_g_ItemId.num then
  		DelItem( sceneId, selfId, x808095_g_ItemId.id, LuaFnGetAvailableItemCount(sceneId, selfId, x808095_g_ItemId.id) )
  	else
	  	x808095_NotifyTip( sceneId, selfId, "Kh�ng th� d�ng v�t ph�m hi�n t�i." )			
			return 0
  	end
  end

  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_Transport_Mission) ~= 0 then
  	-- ��������T�i ���˻����̾Ͳ��������Buff
  	if IsHaveMission( sceneId, selfId, 4021 ) <= 0
  		 and GetItemCount(sceneId, selfId, 40002000) <= 0 then  	
  		LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_Transport_Mission )
  	end
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_GodOfFireMan_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_GodOfFireMan_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_GodOfFireGirl_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_GodOfFireGirl_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission )
  end
  
  if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x808095_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x808095_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_AccomplishNPC_Name then
		x808095_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x808095_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x808095_g_MissionName)
		AddText( sceneId, x808095_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x808095_g_ScriptId,x808095_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x808095_CheckSubmit( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_AccomplishNPC_Name then
		x808095_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) <= 0 then
		x808095_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_072}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x808095_g_MissionId)

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x808095_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x808095_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_AccomplishNPC_Name then
		x808095_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x808095_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x808095_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end
	
	local strText = ""

	local playerlvl = LuaFnGetLevel( sceneId, selfId )
	local nExpNum = x808095_g_ExpBonus_Param1*playerlvl+x808095_g_ExpBonus_Param2
	local nMoneyNum = x808095_g_MoneyBonus_Param1*playerlvl+x808095_g_MoneyBonus_Param2

	nExpNum = floor(nExpNum)
	nMoneyNum = floor(nMoneyNum)
	LuaFnAddExp( sceneId, selfId, nExpNum )
	AddMoney( sceneId, selfId, nMoneyNum )
	-- x808095_TalkInfo( sceneId, selfId, targetId, strText )
	
	-- �˳�����
	x808095_NotifyTip( sceneId, selfId, "#{XSHCD_20080418_083}" )

	x808095_DelMissionInfo( sceneId, selfId )
	
	-- ʥ�������m�t �����
	SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM, 1 )
	local	nStepNum = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_COUNT )
	SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_COUNT, nStepNum+1 )
	
	-- ֱ�Ӹ���Ҹ�������
	CallScriptFunction( 808096, "OnAccept", sceneId, selfId, targetId, x808095_g_ScriptId )

end

--**********************************
--ɱ����������
--**********************************
function x808095_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����
end

--**********************************
--���������¼�
--**********************************
function x808095_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x808095_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x808095_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x808095_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808095_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x808095_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x808095_GetEventMissionId( sceneId, selfId )	
	return x808095_g_MissionId
end

function x808095_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808095_g_Name then
		x808095_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x808095_g_MissionName)
		AddText( sceneId, x808095_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{XSHCD_20080418_042}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddText(sceneId,"#{XSHCD_20080418_096}")
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x808095_g_ScriptId,x808095_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x808095_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--���ʱ��
--**********************************
function x808095_CheckHuoDongTime()

	if 1 == 1 then
			return 0
		end

	local nMonth = GetTodayMonth()+1
	local nDate	 = GetTodayDate()
	local nHour	 = GetHour()
	local nMinute = GetMinute()
	local nThisDay = GetTodayWeek()
	local curDateTime = nMonth*100+nDate
  local curHourTime = nHour*100+nMinute
  
  if curHourTime >= x808095_g_Activity_Time.tstart and curHourTime <= x808095_g_Activity_Time.tend then
  	if curDateTime >= x808095_g_Activity_Day.dstart and curDateTime <= x808095_g_Activity_Day.dend then
  		return 1
 		elseif curDateTime > x808095_g_Activity_Day.dend and nThisDay == x808095_g_Activity_DayTime then
  		return 1
  	end
  end


	return 0

end

--**********************************
--����ʹ��
--**********************************
function x808095_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x808095_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ɾ�����Ϣ
--ɾ����������б��ж�Ӧto� � ����,��Ʒ��פ��Ч��
--**********************************
function x808095_DelMissionInfo( sceneId, selfId )

  if HaveItem(sceneId, selfId, x808095_g_ItemId.id) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808095_g_ItemId.id) >= x808095_g_ItemId.num then
  		DelItem( sceneId, selfId, x808095_g_ItemId.id, LuaFnGetAvailableItemCount(sceneId, selfId, x808095_g_ItemId.id) )  	
  	end
  end

  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_Transport_Mission) ~= 0 then
  	-- ��������T�i ���˻����̾Ͳ��������Buff
  	if IsHaveMission( sceneId, selfId, 4021 ) <= 0
  		 and GetItemCount(sceneId, selfId, 40002000) <= 0 then  	
  		LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_Transport_Mission )
  	end
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_GodOfFireMan_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_GodOfFireMan_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_GodOfFireGirl_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_GodOfFireGirl_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_DelGodOfFire_Mission )
  end
  
  if IsHaveMission( sceneId, selfId, x808095_g_MissionId ) > 0 then  	
	 	DelMission( sceneId, selfId, x808095_g_MissionId )
	end
	
	return 0

end

--*************************************
-- ʥ����Ч��Ч�ڵ�ʱ�Զ�ɾ������Buffer
--*************************************
function x808095_OnImpactFadeOut( sceneId, selfId, impactId )

	if impactId == x808095_g_Impact_DelGodOfFire_Mission then
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808095_g_Impact_Transport_Mission) ~= 0 then
  		LuaFnCancelSpecificImpact( sceneId, selfId, x808095_g_Impact_Transport_Mission )
  	end
	end

end
