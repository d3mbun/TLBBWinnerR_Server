--------------------------------------------
--Title: 	2008 5.1��ű� ֮ ��������
--Author: 	����
--Date: 	2008-04-15
--------------------------------------------

--�ű���
x808092_g_ScriptId = 808092

--sceneId List
--9		Thi�u L�m��
--10	C�i Bang�ܶ�
--11	������
--12	V� �angɽ
--13	Thi�n Long��
--14	�貨��
--15	Nga Myɽ
--16	Tinh T�c��
--17	Thi�n S�n

--MenPaiId List
--0		Thi�u L�m
--1		Minh Gi�o
--2		C�i Bang
--3		V� �ang
--4		Nga My
--5		Tinh T�c
--6		��i L�
--7		Thi�n S�n
--8		Ti�u Dao
--9		��׼

--GlobalLaborDayActivityTable = {
--	PetCageCardID					= 40004446,
--	PetCageLv1 						= 30509500,
--	PetCageDelayBuff 				= 30187,
--	PetCagePresentStartTime 		= 20080415, --�m�t �������ʼʱ��
--	PetCagePresentEndTime 			= 20080417, --�m�t ���������ʱ��
--	CardPresentStartTime 			= 20080417,	--ǩ���ƿ��c�pm�t �ʱ��
--	CardPresentEndTime 				= 20080417,	--ǩ���ƽ����m�t �ʱ��
--	MailStartDayTime 				= 20080415,	--�����ʼ���ʼʱ��
--	MailEndDayTime 					= 20080418	--�����ʼ�����ʱ��
--}

function x808092_Scene2MenPaiID( sceneId )
	if (sceneId == 9) then
		return 0
	elseif (sceneId == 10) then
		return 2
	elseif (sceneId == 11) then
		return 1
	elseif (sceneId == 12) then
		return 3
	elseif (sceneId == 13) then
		return 6
	elseif (sceneId == 14) then
		return 8
	elseif (sceneId == 15) then
		return 4
	elseif (sceneId == 16) then
		return 5
	elseif (sceneId == 17) then
		return 7
	end
end

--**********************************
--������ں���
--**********************************
function x808092_OnDefaultEvent( sceneId, selfId, targetId )
	local ItemID = GetNumText()	
	if(ItemID == 808092000) then
		BeginEvent(sceneId)
			AddText(sceneId, "#{SL_20080416_12}")
			AddNumText( sceneId, x808092_g_ScriptId, "Ta mu�n l�nh th� lan", 6, 808092002 )
			AddNumText( sceneId, x808092_g_ScriptId, "Hay l� th�i �i", 11, 808092003 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif(ItemID == 808092001) then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SL_20080416_11}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif(ItemID == 808092002) then
		--�m�t �����
		local condition = x808092_CheckActivityCondition(sceneId, selfId, targetId)
		
		if (condition == 0) then
			if(x808092_PresentPetCage(sceneId, selfId) == 1) then
				--AuditPetCageActivity(sceneId, selfId)
				BeginEvent(sceneId)
					AddText(sceneId, "#{SL_20080416_19}")
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				x808092_PresentPetCageBuffer(sceneId, selfId)
				SetMissionFlag(sceneId, selfId, MF_LABORDAY_PETCAGE_GIFT, 1)
				AuditPetCagePresent(sceneId, selfId)
			end
			
		--L�nh ����to� � ʱ���Ѿ�����
		elseif (condition == 1) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_14}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)

		--�Ѿ��m�t ���������
		elseif(condition == 2) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_16}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)

		--û��ǩ����
		elseif(condition == 3) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_13}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)

		--�Ǳ��ŵ���
		elseif(condition == 4) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_15}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
			
		--��Ч��δ��ʧ
		elseif(condition == 5) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{SL_20080416_17}")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
		end
		
	elseif(ItemID == 808092003) then
		--�رս���
		DispatchUICommand(sceneId, selfId, 1000)
	end	
end

--**********************************
--�о��¼�
--**********************************
function x808092_OnEnumerate( sceneId, selfId, targetId )
	if (x808092_IsActivityTimeOut() == 0) then
		AddNumText(sceneId, x808092_g_ScriptId, "Tham gia s� ki�n s� m�n t�ng l�", 1, 808092000 )
		AddNumText(sceneId, x808092_g_ScriptId, "V� s� ki�n s� m�n t�ng l�", 11, 808092001 )	
	end
end

--**********************************
--�����ng�����
--**********************************
function x808092_IsActivityTimeOut( )
	local curDayTime = GetTime2Day()
	if (curDayTime < GlobalLaborDayActivityTable.PetCagePresentStartTime) then 
		return 1
	
	elseif (curDayTime > GlobalLaborDayActivityTable.PetCagePresentEndTime) then
		return 1
	end
	return 0
end

--**********************************
--L�nh ����
--**********************************
function x808092_PresentPetCage(sceneId, selfId, targetId)	
	--���߱�������
	local condition = x808092_CheckPresentCageCondition(sceneId, selfId)
	if (condition == 0) then
		--��ɾ��,�����
		LuaFnDelAvailableItem(sceneId, selfId, GlobalLaborDayActivityTable.PetCageCardID, 1)

		--����������....
		local bagIndex = TryRecieveItem( sceneId, selfId, GlobalLaborDayActivityTable.PetCageLv1, QUALITY_MUST_BE_CHANGE )
		if bagIndex > 0 then
			LuaFnItemBind( sceneId, selfId, bagIndex)
		end

		--��������Լ�
		BroadMsgByChatPipe( sceneId, selfId, "Ng߽i th�nh c�ng �i m�t c�i th� lan c�p 1", MSG2PLAYER_PARA )	
		
		--��Ŀ��ʾ
		BeginEvent( sceneId )
			AddText( sceneId, "Ng߽i th�nh c�ng �i m�t c�i th� lan c�p 1" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		
		x808092_PresentPetCageBuffer(sceneId, selfId)
		return 1
	elseif (condition == 1) then
		BeginEvent(sceneId)
			AddText(sceneId, "� ��o c� �� �y, xin h�y s�p x�p l�i")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return 0
	end
	return 0
	
end


--**********************************
--������to� � ���
--**********************************
function x808092_CheckActivityCondition(sceneId, selfId)
	--L�nh ����to� � ʱ���Ѿ�����
	if (x808092_IsActivityTimeOut() == 1) then
		return 1
	end

	--�Ѿ��m�t ���������
	local flag = GetMissionFlag(sceneId, selfId, MF_LABORDAY_PETCAGE_GIFT)
	if(flag > 0) then
		return 2
	end

	--û��ǩ����
	local card_count = GetItemCount( sceneId, selfId, GlobalLaborDayActivityTable.PetCageCardID )
	if (card_count < 1) then
		return 3
	end

	--�Ǳ��ŵ���
	local menpaiId = GetMenPai(sceneId, selfId)
	local curSceneMenPaiId = x808092_Scene2MenPaiID(sceneId)
	if ( menpaiId ~= curSceneMenPaiId ) then
		return 4
	end
	
	--��Ч��δ��ʧ
	local hasImapct = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff)
	if ( hasImapct > 0 ) then
		return 5
	end

	return 0
end

--**********************************
--���Ti�p th�������Ʒ���
--**********************************
function x808092_CheckPresentCageCondition(sceneId, selfId)
	--���߰����Ѿ�����
	if (LuaFnGetPropertyBagSpace(sceneId, selfId) < 1) then
		return 1
	end
	return 0
end

--**********************************
--���L�nh �ɹ�to� � Ч��
--**********************************
function x808092_PresentPetCageBuffer(sceneId, selfId)
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 49, 0 )
end
