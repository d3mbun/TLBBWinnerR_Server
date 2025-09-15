--������:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]

--R�a-Th� thi ch�y���������ʹ�ýű�


--�ű���
x808087_g_scriptId = 808087

--C�n to� � ��c�p
--C�n to� � ����ID
x808087_g_MissionID = 1000

--C�n to� � Ч��ID	���ʹ��
x808087_g_ImpactID 	= 5929

--Ч��to� � ID	������������ SelfimpactID,��ʹ�� impactId01,����ʹ�� impactId02
x808087_g_itemList = {}
x808087_g_itemList[30505210] = { SelfimpactID=5934, impactId01=5939, impactId02=0		 }			-- �˯��
x808087_g_itemList[30505212] = { SelfimpactID=5933, impactId01=0, 	 impactId02=5938 }			-- ������


--**********************************
--�¼��������
--**********************************
function x808087_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x808087_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x808087_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x808087_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	--���ʹ������û��Nhi�m v� R�a-Th� thi ch�y
	if IsHaveMission( sceneId, selfId, x808087_g_MissionID ) <= 0 then
		x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_011}" )
		return 0
	end
	
	--���ʹ���ߵ���ʹ������
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808087_g_ImpactID) == 0 then
		x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808087_g_itemList[itemTblIndex];
	if not itemCur then
		x808087_NotifyFailTips(sceneId, selfId, "Ch�a m� ��o c�, kh�ng th� s� d�ng.");
		return 0;
	end

	--���鹥��Ŀ��ʹ������
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then				--��to� � ��ng���....

		-- �˯��,�����򼲻�ܶ��Լ�ʹ��....
		if itemTblIndex == 30505210 or itemTblIndex == 30505212 then
			if selfId == targetId then
				LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
				return 0
			end
		end

		--��ⱻ��������û��Nhi�m v� R�a-Th� thi ch�y
		if IsHaveMission( sceneId, targetId, x808087_g_MissionID ) <= 0 then
			x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_061}" )
			return 0
		end
		
		--��ⱻ�����ߵ���ʹ������
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, targetId, x808087_g_ImpactID) == 0 then
			x808087_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_061}" )
			return 0
		end
	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 0

	end

	return 1

end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x808087_OnDeplete( sceneId, selfId )
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
function x808087_OnActivateOnce( sceneId, selfId )
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808087_g_itemList[itemTblIndex];
	if not itemCur then
		x808087_NotifyFailTips(sceneId, selfId, "Ch�a m� ��o c�, kh�ng th� s� d�ng.");
		return 0;
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--��to� � ��ng�������....
		-- ��ⱻ������Impact
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, targetId, itemCur.SelfimpactID) ~= 0 then
			if itemCur.impactId01 ~= 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, itemCur.impactId01, 0);
			end
		else
			if itemCur.impactId02 ~= 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, itemCur.impactId02, 0);
			end
		end
		
	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 1

	end

	return 1;

end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x808087_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

--**********************************
-- ��Ŀ��ʾ
--**********************************
function x808087_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
