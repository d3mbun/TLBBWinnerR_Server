--������:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]

--R�a-Th� thi ch�y��������ʹ�ýű�


--�ű���
x808089_g_scriptId = 808089

--C�n to� � ��c�p
--C�n to� � ����ID
x808089_g_MissionID = 1000

--C�n to� � Ч��ID	���ʹ��
x808089_g_ImpactID 	= 5929

x808089_g_itemList = {}
x808089_g_SpecialList = {}
x808089_g_itemList[30505209] = { SpecialID=47 }			-- ����Ƥ
x808089_g_itemList[30505211] = { SpecialID=48 }			-- ���޼�

--����to� � ID	������������ SelfimpactID,��ʹ�� impactId01,����ʹ�� impactId02
x808089_g_SpecialList[47] = { SelfimpactID=5933, impactId01=5936, impactId02=5935 }
x808089_g_SpecialList[48] = { SelfimpactID=5933, impactId01=0, 	 impactId02=5937 }

-- ���弤���ӳ�ʱ��_�� gi�y
x808089_g_Special_DelayTime = 5000

--**********************************
--�¼��������
--**********************************
function x808089_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x808089_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x808089_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x808089_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	--���ʹ������û��Nhi�m v� R�a-Th� thi ch�y
	if IsHaveMission( sceneId, selfId, x808089_g_MissionID ) <= 0 then
		x808089_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_011}" )
		return 0
	end
	
	--���ʹ���ߵ���ʹ������
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808089_g_ImpactID) == 0 then
		x808089_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );

	local itemCur = x808089_g_itemList[itemTblIndex];
	if not itemCur then
		x808089_NotifyFailTips(sceneId, selfId, "Ch�a m� ��o c�, kh�ng th� s� d�ng.");
		return 0;
	end

	return 1

end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x808089_OnDeplete( sceneId, selfId )
	if(LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x808089_OnActivateOnce( sceneId, selfId )
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808089_g_itemList[itemTblIndex];
	if not itemCur then
		x808089_NotifyFailTips(sceneId, selfId, "Ch�a m� ��o c�, kh�ng th� s� d�ng.");
		return 0;
	end

	local posX,posZ = GetWorldPos(sceneId, selfId)
	CreateSpecialObjByDataIndex(sceneId, selfId, itemCur.SpecialID, posX, posZ, x808089_g_Special_DelayTime )
	return 1;

end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x808089_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

--**********************************
-- ��Ŀ��ʾ
--**********************************
function x808089_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--*****************************************************
-- ��Ҵ���Specialʱ�ص����ű�,����Tr� v�ֵX�c nh�n��ng����Ӧ
-- ����� �i�m�:����ID,����Ͷ����ID,���崥����ID,����ID
--*****************************************************
function x808089_OnSpecialCheck( sceneId, AttackObjID, SpringObjID, SpecialId )

	--���鴥��������
	if AttackObjID < 0 or SpringObjID < 0 then
		return 0
	end
  
  local SpecialCur = x808089_g_SpecialList[SpecialId];
	if not SpecialCur then		
		return 0;
	end
	
	-- ���޼в��ܶ��Լ�ʹ��....
	if SpecialId == 48 then
		if AttackObjID == SpringObjID then			
			return 0
		end
	end
  
	--��ⱻ��������û��Nhi�m v� R�a-Th� thi ch�y
	if IsHaveMission( sceneId, SpringObjID, x808089_g_MissionID ) <= 0 then
		return 0
	end
	
	--��ⱻ�����ߵ���ʹ������
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, SpringObjID, x808089_g_ImpactID) == 0 then
		return 0
	end
	
	return 1
end

--*************************************************
-- ��Ҵ���Specialʱ�ص������ű�,����Impact
-- ����� �i�m�:����ID,���崥����ID,����ID
--*************************************************
function x808089_OnSpecialFadeOut( sceneId, SpringObjID, SpecialId )

	--���鴥��������
	if SpringObjID < 0 then
		return 0
	end
  
  local SpecialCur = x808089_g_SpecialList[SpecialId];
	if not SpecialCur then		
		return 0;
	end

	--��ⱻ��������û��Nhi�m v� R�a-Th� thi ch�y
	if IsHaveMission( sceneId, SpringObjID, x808089_g_MissionID ) <= 0 then
		return 0
	end
	
	--��ⱻ�����ߵ���ʹ������
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, SpringObjID, x808089_g_ImpactID) == 0 then
		return 0
	end

	-- ��ⱻ������Impact
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, SpringObjID, SpecialCur.SelfimpactID) ~= 0 then
		if SpecialCur.impactId01 ~= 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, SpringObjID, SpringObjID, SpringObjID, SpecialCur.impactId01, 0);
		end
	else
		if SpecialCur.impactId02 ~= 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, SpringObjID, SpringObjID, SpringObjID, SpecialCur.impactId02, 0);
		end
	end

	return 1
end
