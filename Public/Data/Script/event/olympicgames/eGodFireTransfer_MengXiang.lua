--������[ QUFEI 2008-04-18 10:27 UPDATE BugID 34369 ]
--��ʥ�𴫵ݻ��������֮�˶�to� � �����¼��ű�
--���ÿ��M� ra ����,ÿc�i���ÿ��ֻ�ܲμ�m�t ��

--MisDescBegin
--�ű���
x808102_g_ScriptId	= 808102

--Ti�p th�����NPC����
x808102_g_Position_X=111.0545
x808102_g_Position_Z=211.7807
x808102_g_SceneID=0
x808102_g_AccomplishNPC_Name="����"

--��ǰ�����
x808102_g_MissionId			= 1008
--��m�t c�i����to� � ID
x808102_g_MissionIdNext	= 1009
--M�c ti�u nhi�m v�npc
x808102_g_Name 					= "����"
--�������
x808102_g_MissionKind			= 13
--��ng c�p nhi�m v� 
x808102_g_MissionLevel		= 10
--��ng����ngTinhӢ����
x808102_g_IfMissionElite	= 0
--������ng���Ѿ����
x808102_g_IsMissionOkFail	= 0		--�������to� � ��0λ

--�����ı�����
x808102_g_MissionName			= "�˶�to� � ����"
--��������
x808102_g_MissionInfo			= "#{XSHCD_20080418_029}"
--M�c ti�u nhi�m v�
x808102_g_MissionTarget		= "#{XSHCD_20080418_049}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x808102_g_ContinueInfo		= "#{XSHCD_20080418_030}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x808102_g_MissionComplete	= "#{XSHCD_20080418_031}"
--ÿ�λ�������to� � ����
x808102_g_MaxRound	= 3
--���ƽű�
x808102_g_ControlScript		= 001066

-- ����������,���ݶ�̬ˢ��,ռ���������to� � ��1λ
x808102_g_Custom	= { {id="�������������to� � 5c�i����",num=1} }
--MisDescEnd

--������ng�����
x808102_g_Mission_IsComplete = 0		--�������to� � ��0λ
--������
x808102_g_AnswerCntIdx			 = 1		--�������to� � ��1λ

x808102_g_AcceptMission_IDX		= 575	--�˶�to� � ���������������
x808102_g_CompleteGengGao_IDX	=	576	--�˶�to� � �����ύ��������
x808102_g_MissionInfo_IDX			= 577	--�˶�to� � ��������� �i�m�����

--��ӵ��to� � �¼�ID�б�
x808102_g_EventList	= {}

x808102_g_Impact_Accept_Mission 	 = 47		-- Ti�p th�����ʱto� � ��ЧID
x808102_g_Impact_Transport_Mission = 113 	-- ����״̬��Ч
x808102_g_Impact_GodOfFireMan_Mission  = 5942 -- ʥ�𴫵��б�����Ч
x808102_g_Impact_GodOfFireGirl_Mission = 5943 -- ʥ�𴫵�Ů������Ч
x808102_g_Impact_DelGodOfFire_Mission  = 5944 -- ɾ��ʥ����Чto� � ��Ч
x808102_g_PlayerSlow_LVL					 = 10		-- Ti�p th�����to� � ��͵�c�p

x808102_g_Mission_StepNum					 = 5		-- ������T�i ������to� � �ڼ���

x808102_g_ItemId = { id=40004447,num=1 }	-- ������Ʒ

-- ʥ��ʱ��
x808102_g_Activity_Day						 = { dstart=504,  dend=510 }
x808102_g_Activity_Time						 = { tstart=1945, tend=2245 }

-- 5��10�ź�to� � �M� ra ʱ��,ÿ����
x808102_g_Activity_DayTime				 = 5

-- ����Kinh nghi�m�ͽ�Ǯ(���c�p�й�)
x808102_g_MoneyBonus_Param1				 = 30 
x808102_g_MoneyBonus_Param2				 = 320
x808102_g_ExpBonus_Param1				 	 = 160
x808102_g_ExpBonus_Param2				 	 = 500

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x808102_OnDefaultEvent( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808102_g_Name then
		x808102_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
			
	local	key	= GetNumText()
	if key == x808102_g_AcceptMission_IDX then		
		-- ������ng������
		if IsMissionFull( sceneId, selfId ) == 1 then
			x808102_NotifyTip( sceneId, selfId, "#{QIANXUN_INFO_23}" )
			return 0
		end
		
		-- �������Ti�p th�����
		if x808102_CheckAccept( sceneId, selfId, targetId )<=0 then
			return 0
		end

		-- ����Ti�p th��������			
		x808102_AcceptMission( sceneId, selfId, targetId )				
	
	elseif key == x808102_g_CompleteGengGao_IDX then		
		-- ����Ѿ���������ʥ�𴫵��˶�to� � ����
		if IsHaveMission( sceneId, selfId, x808102_g_MissionId ) > 0 then
												
			--������������to� � ��Ϣ
			BeginEvent(sceneId)
				AddText(sceneId, x808102_g_MissionName)
				AddText(sceneId, x808102_g_ContinueInfo)			
			EndEvent( )
			
			local bDone = x808102_CheckSubmit( sceneId, selfId, targetId )				
			DispatchMissionDemandInfo(sceneId, selfId, targetId, x808102_g_ScriptId, x808102_g_MissionId, bDone)
			
		else			
			x808102_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_079}" )
			return 0
		end

	elseif key == x808102_g_MissionInfo_IDX then
		x808102_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_007}" )		
		return 0

	else
		x808102_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

end

--**********************************
--�о��¼�
--**********************************
function x808102_OnEnumerate( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808102_g_Name
		 or sceneId ~= x808102_g_SceneID then
		return 0
	end

	if IsHaveMission( sceneId, selfId, x808102_g_MissionId ) <= 0 then
		local	nStepNum = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM )
		if nStepNum == x808102_g_Mission_StepNum then
			AddNumText( sceneId, x808102_g_ScriptId, "Ta mu�n tham gia: �˶�to� � ����", 7, x808102_g_AcceptMission_IDX )
		end
	else
		local misIndex = GetMissionIndexByID(sceneId,selfId,x808102_g_MissionId)

		-- ���������ng�����	
		if GetMissionParam(sceneId, selfId, misIndex, x808102_g_Mission_IsComplete) > 0 then
			AddNumText( sceneId, x808102_g_ScriptId, "���Ѿ����: �˶�to� � ����", 7, x808102_g_CompleteGengGao_IDX )
		end
	end
	-- AddNumText( sceneId, x808102_g_ScriptId, "�˶�to� � �������", 11, x808102_g_MissionInfo_IDX )

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x808102_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808102_g_Name then
		x808102_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
	
	--�����ng�����
	if x808102_CheckHuoDongTime() <= 0 then
		x808102_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_069}" )
		return 0
	end
	
	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x808102_g_PlayerSlow_LVL then		
		x808102_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_064}" )
		return 0
	end

	--�������״̬פ��Ч��
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_Transport_Mission) ~= 0
		 or LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_DelGodOfFire_Mission) ~= 0 then
		x808102_TalkInfo( sceneId, selfId, targetId, "#{GodFire_Info_014}" )
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x808102_g_MissionId ) > 0 then
		x808102_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_067}" )
		return 0
	end

	--�����Ҳμӱ��λ�������ڼ���
	local	nStepNum = GetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM )
	if nStepNum ~= x808102_g_Mission_StepNum then
		x808102_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_066}" )
		return 0
	end

	--�����ng����˫�����״̬
	if LuaFnGetDRideFlag(sceneId, selfId) ~= 0  then
		x808102_TalkInfo( sceneId, selfId, targetId, "#{ResultText_117}" )
		return 0
	end
	
	return 1
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x808102_OnAccept( sceneId, selfId, targetId, scriptId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x808102_g_Name then
 		x808102_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	if x808102_CheckAccept( sceneId, selfId, targetId )<=0 then
		return 0
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < x808102_g_ItemId.num then
		x808102_NotifyTip( sceneId, selfId, "#{QX_20071129_027}" )		
		return 0
	end

	BeginAddItem(sceneId)
	AddItem(sceneId,x808102_g_ItemId.id, x808102_g_ItemId.num)
	local canAdd = EndAddItem(sceneId,selfId)						
	if canAdd > 0 then
		--������������б�
		local bAdd = AddMission( sceneId, selfId, x808102_g_MissionId, x808102_g_ScriptId, 0, 0, 0 )
		if bAdd >= 1 then				
			AddItemListToHuman(sceneId,selfId)
			
			-- �i�m������to� � ���к�
			local	misIndex		= GetMissionIndexByID( sceneId, selfId, x808102_g_MissionId )
			
			--�������кŰ��������to� � ��0λ��0 (����������)
			SetMissionByIndex( sceneId, selfId, misIndex, x808102_g_Mission_IsComplete, 0 )

			SetMissionByIndex( sceneId, selfId, misIndex, x808102_g_AnswerCntIdx, 0 )		

			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808102_g_Impact_Transport_Mission, 0 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808102_g_Impact_DelGodOfFire_Mission, 0 )

			BeginEvent(sceneId)
				AddText(sceneId,x808102_g_MissionName)
				AddText(sceneId,x808102_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,"#{XSHCD_20080418_049}")				
				AddText(sceneId,"#{XSHCD_20080418_007}")				
			EndEvent( )					
			DispatchEventList(sceneId, selfId, targetId)
			
			-- LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808102_g_Impact_Accept_Mission, 0 )
		end
	end

	return 1

end

--**********************************
--����,�������������
--**********************************
function x808102_OnAbandon( sceneId, selfId )
  
  --ɾ����������б��ж�Ӧto� � ����,��Ʒ��פ��Ч��
  if HaveItem(sceneId, selfId, x808102_g_ItemId.id) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808102_g_ItemId.id) >= x808102_g_ItemId.num then
  		DelItem( sceneId, selfId, x808102_g_ItemId.id, LuaFnGetAvailableItemCount(sceneId, selfId, x808102_g_ItemId.id) )
  	else
	  	x808102_NotifyTip( sceneId, selfId, "V�t ph�m hi�n t�i kh�ng th� d�ng ho�c �� b� kho�!" )			
			return 0
  	end
  end

  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_Transport_Mission) ~= 0 then
  	-- ��������T�i ���˻����̾Ͳ��������Buff
  	if IsHaveMission( sceneId, selfId, 4021 ) <= 0
  		 and GetItemCount(sceneId, selfId, 40002000) <= 0 then  	
  		LuaFnCancelSpecificImpact( sceneId, selfId, x808102_g_Impact_Transport_Mission )
  	end
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_GodOfFireMan_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808102_g_Impact_GodOfFireMan_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_GodOfFireGirl_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808102_g_Impact_GodOfFireGirl_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_DelGodOfFire_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808102_g_Impact_DelGodOfFire_Mission )
  end
  
  if IsHaveMission( sceneId, selfId, x808102_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x808102_g_MissionId )
	end
	
	return 0

end

--**********************************
--����
--**********************************
function x808102_OnContinue( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808102_g_AccomplishNPC_Name then
		x808102_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	-- ���������ng�����
	if x808102_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x808102_g_MissionName)
		AddText( sceneId, x808102_g_MissionComplete )				
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x808102_g_ScriptId,x808102_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x808102_CheckSubmit( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808102_g_AccomplishNPC_Name then
		x808102_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

	if IsHaveMission( sceneId, selfId, x808102_g_MissionId ) <= 0 then
		x808102_TalkInfo( sceneId, selfId, targetId, "#{XSHCD_20080418_079}" )
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId,selfId,x808102_g_MissionId)

	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x808102_g_Mission_IsComplete) > 0 then
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x808102_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808102_g_AccomplishNPC_Name then
		x808102_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end

  -- ���������ng�����
	if x808102_CheckSubmit( sceneId, selfId, targetId ) ~= 1 then
		x808102_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )				
		return 0
	end
	
	local strText = ""

	local playerlvl = LuaFnGetLevel( sceneId, selfId )
	local nExpNum = x808102_g_ExpBonus_Param1*playerlvl+x808102_g_ExpBonus_Param2
	local nMoneyNum = x808102_g_MoneyBonus_Param1*playerlvl+x808102_g_MoneyBonus_Param2

	nExpNum = floor(nExpNum)
	nMoneyNum = floor(nMoneyNum)
	LuaFnAddExp( sceneId, selfId, nExpNum )
	AddMoney( sceneId, selfId, nMoneyNum )
	-- x808102_TalkInfo( sceneId, selfId, targetId, strText )
	
	-- �˳�����
	x808102_NotifyTip( sceneId, selfId, "#{XSHCD_20080418_090}" )

	x808102_DelMissionInfo( sceneId, selfId )
	
	-- ʥ���������������2���
	SetMissionData( sceneId, selfId, MD_GODOFFIRE_COMPLETE_STEPNUM, 6 )
	
end

function x808102_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����
end

--**********************************
--���������¼�
--**********************************
function x808102_OnEnterArea( sceneId, selfId, zoneId )	
end

--**********************************
--���߸ı�
--**********************************
function x808102_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x808102_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x808102_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808102_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--��NPC�Ի�
--**********************************
function x808102_TalkInfo( sceneId, selfId, targetId, msg )

	BeginEvent(sceneId)
		AddText( sceneId, msg )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x808102_GetEventMissionId( sceneId, selfId )	
	return x808102_g_MissionId
end

function x808102_AcceptMission( sceneId, selfId, targetId )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x808102_g_Name then
		x808102_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x808102_g_MissionName)
		AddText( sceneId, x808102_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{XSHCD_20080418_049}")
		AddText(sceneId,"#{M_SHOUHUO}")
		AddText(sceneId,"#{XSHCD_20080418_096}")
		
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x808102_g_ScriptId,x808102_g_MissionId)	

end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x808102_GetItemDetailInfo(itemId)
	return 0
end	

--**********************************
--���ʱ��
--**********************************
function x808102_CheckHuoDongTime()

	local nMonth = GetTodayMonth()+1
	local nDate	 = GetTodayDate()
	local nHour	 = GetHour()
	local nMinute = GetMinute()
	local nThisDay = GetTodayWeek()
	local curDateTime = nMonth*100+nDate
  local curHourTime = nHour*100+nMinute
  
  if curHourTime >= x808102_g_Activity_Time.tstart and curHourTime <= x808102_g_Activity_Time.tend then
  	if curDateTime >= x808102_g_Activity_Day.dstart and curDateTime <= x808102_g_Activity_Day.dend then
  		return 1
 		elseif curDateTime > x808102_g_Activity_Day.dend and nThisDay == x808102_g_Activity_DayTime then
  		return 1
  	end
  end


	return 0

end

--**********************************
--����ʹ��
--**********************************
function x808102_OnUseItem( sceneId, selfId, bagIndex )	
end

--**********************************
--�����¼�
--**********************************
function x808102_OnDie( sceneId, selfId, killerId )
end

--**********************************
--ɾ�����Ϣ
--ɾ����������б��ж�Ӧto� � ����,��Ʒ��פ��Ч��
--**********************************
function x808102_DelMissionInfo( sceneId, selfId )

  if HaveItem(sceneId, selfId, x808102_g_ItemId.id) > 0 then
  	if LuaFnGetAvailableItemCount(sceneId, selfId, x808102_g_ItemId.id) >= x808102_g_ItemId.num then
  		DelItem( sceneId, selfId, x808102_g_ItemId.id, LuaFnGetAvailableItemCount(sceneId, selfId, x808102_g_ItemId.id) )  	
  	end
  end

  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_Transport_Mission) ~= 0 then
  	-- ��������T�i ���˻����̾Ͳ��������Buff
  	if IsHaveMission( sceneId, selfId, 4021 ) <= 0
  		 and GetItemCount(sceneId, selfId, 40002000) <= 0 then  	
  		LuaFnCancelSpecificImpact( sceneId, selfId, x808102_g_Impact_Transport_Mission )
  	end
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_GodOfFireMan_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808102_g_Impact_GodOfFireMan_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_GodOfFireGirl_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808102_g_Impact_GodOfFireGirl_Mission )
  end
  
  if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808102_g_Impact_DelGodOfFire_Mission) ~= 0 then
  	LuaFnCancelSpecificImpact( sceneId, selfId, x808102_g_Impact_DelGodOfFire_Mission )
  end
  
  if IsHaveMission( sceneId, selfId, x808102_g_MissionId ) > 0 then
	 	DelMission( sceneId, selfId, x808102_g_MissionId )
	end
	
	return 0

end
