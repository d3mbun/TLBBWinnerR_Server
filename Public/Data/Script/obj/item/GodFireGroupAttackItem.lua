--������:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]

--R�a-Th� thi ch�y���ݻȺ��������ʹ�ýű�


--�ű���
x808088_g_scriptId = 808088

--C�n to� � ��c�p
--C�n to� � ����ID
x808088_g_MissionID = 1000

--C�n to� � Ч��ID	���ʹ��
x808088_g_ImpactID 	= 5929

--Ч��to� � ID	������������ SelfimpactID,��ʹ�� impactId01,����ʹ�� impactId02
x808088_g_itemList = {}
x808088_g_itemList[30505213] = { SelfimpactID=5933, impactId01=0, impactId02=5940 }			-- �����

--������Χ
x808088_g_AttackRange = 5


--**********************************
--�¼��������
--**********************************
function x808088_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x808088_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x808088_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x808088_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	--���ʹ������û��Nhi�m v� R�a-Th� thi ch�y
	if IsHaveMission( sceneId, selfId, x808088_g_MissionID ) <= 0 then
		x808088_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_011}" )
		return 0
	end
	
	--���ʹ���ߵ���ʹ������
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x808088_g_ImpactID) == 0 then
		x808088_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end

	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808088_g_itemList[itemTblIndex];
	if not itemCur then
		x808088_NotifyFailTips(sceneId, selfId, "Ch�a m� ��o c�, kh�ng th� s� d�ng.");
		return 0;
	end

	--���鹥��Ŀ��ʹ������
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then				--��to� � ��ng���....
		
		-- �����ng����Լ�
		if selfId == targetId then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0
		end
		
		--��ⱻ��������û��Nhi�m v� R�a-Th� thi ch�y
		if IsHaveMission( sceneId, targetId, x808088_g_MissionID ) <= 0 then
			x808088_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_061}" )
			return 0
		end
		
		--��ⱻ�����ߵ���ʹ������
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, targetId, x808088_g_ImpactID) == 0 then
			x808088_NotifyFailTips( sceneId, selfId, "#{GodFire_Info_061}" )
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
function x808088_OnDeplete( sceneId, selfId )
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
function x808088_OnActivateOnce( sceneId, selfId )
	
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId );
	local itemCur = x808088_g_itemList[itemTblIndex];
	if not itemCur then
		x808088_NotifyFailTips(sceneId, selfId, "Ch�a m� ��o c�, kh�ng th� s� d�ng.");
		return 0;
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--��to� � ��ng�������....
	
		--ȡ �i�m��������to� � ��ǰ����	
		local PlayerX = GetHumanWorldX(sceneId,targetId)
		local PlayerY = GetHumanWorldZ(sceneId,targetId)
		
		-- �����������������,�����뱻�����߹�����Χ��to� � ��Ҽ�Impact
		local nPlayerCnt = LuaFnGetCopyScene_HumanCount( sceneId )
		for i=0, nPlayerCnt-1 do
			local OtherPlayerId = LuaFnGetCopyScene_HumanObjId( sceneId, i )
			
			--ȡ �i�m����������Χ�������to� � ��ǰ����	
			local OtherPlayerX = GetHumanWorldX(sceneId,OtherPlayerId)
			local OtherPlayerY = GetHumanWorldZ(sceneId,OtherPlayerId)
			
			local Distance = floor(sqrt((OtherPlayerX-PlayerX)*(OtherPlayerX-PlayerX)+(OtherPlayerY-PlayerY)*(OtherPlayerY-PlayerY)))
			if Distance < x808088_g_AttackRange then
				
				-- ��ⱻ��������Χ�������Impact
				if IsHaveMission( sceneId, OtherPlayerId, x808088_g_MissionID ) > 0
					 and LuaFnHaveImpactOfSpecificDataIndex(sceneId, OtherPlayerId, x808088_g_ImpactID) ~= 0 then									
					if LuaFnHaveImpactOfSpecificDataIndex(sceneId, OtherPlayerId, itemCur.SelfimpactID) ~= 0 then
						if itemCur.impactId01 ~= 0 then
							LuaFnSendSpecificImpactToUnit(sceneId, OtherPlayerId, OtherPlayerId, OtherPlayerId, itemCur.impactId01, 0);
						end
					else
						if itemCur.impactId02 ~= 0 then
							LuaFnSendSpecificImpactToUnit(sceneId, OtherPlayerId, OtherPlayerId, OtherPlayerId, itemCur.impactId02, 0);
						end
					end
				end
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
function x808088_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

--**********************************
-- ��Ŀ��ʾ
--**********************************
function x808088_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
