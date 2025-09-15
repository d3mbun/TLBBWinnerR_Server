-- ������[ QUFEI 2007-09-26 22:53 UPDATE BugID 25292 ]

-- ����ҳ���_�̲��� (�ĳ���ȷT�n)
-- ItemID = 30607000
-- 702000
-- ���ӳ�������ֵ�Ϳ��ֶ�
-- ��Ʒ����ʹ��100��
-- �Ժ�ÿ��ʹ�ÿ�m�t ��,�����ɾ����Ʒ

-- ����ͨ�ù��ܽű�
x702000_g_petCommonId = PETCOMMON

--******************************************************************************
-- ���²���C�n ��ngC�n �޸�to� � ����
--******************************************************************************

--�ű��� (�ĳ���ȷ�ű���)
x702000_g_scriptId = 702000

-- ����ֵ (����Ҫ���д������ֵ)
x702000_g_HPValue = 5000			-- ����ֵ����ֵ
x702000_g_MaxHPValue = 0			-- �������ֵ����ֵ
x702000_g_LifeValue = 0				-- ��������ֵ
x702000_g_HappinessValue = 1	-- ���ֶ�����ֵ
x702000_g_MaxUseCount = 100		-- ���ʹ�ô���100��

--��׼Ч��ID (�ĳɳ���Գ���to� � ��Ч)
--g_ImpactID = 0

--******************************************************************************
-- ���ϲ���C�n ��ngC�n �޸�to� � ����
--******************************************************************************

--�ű�

--**********************************
--����Tr� v� 1 ������ȷִ����������
--**********************************
function x702000_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x702000_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	--  �i�m����ǰ��T�i ʹ��to� � ��Ʒto� � tr� tay n�i
	nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	
	ret = CallScriptFunction( x702000_g_petCommonId, "IsPetCanUseFood", sceneId, selfId, nIndex )
	return ret
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x702000_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
	end
	return 0
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x702000_OnActivateOnce( sceneId, selfId )

	local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
  local ValidValue = x702000_g_MaxUseCount - UseValue

	-- PrintNum(UseValue)
	
	local petGUID_H = LuaFnGetHighSectionOfTargetPetGuid( sceneId, selfId )
	local petGUID_L = LuaFnGetLowSectionOfTargetPetGuid( sceneId, selfId )	
	
	local valueHP = LuaFnGetPetHP( sceneId, selfId, petGUID_H, petGUID_L )
	local MaxHP = LuaFnGetPetMaxHP( sceneId, selfId, petGUID_H, petGUID_L )
	
	local valueHappy = LuaFnGetPetHappiness( sceneId, selfId, petGUID_H, petGUID_L )
	local MaxHappiness = 100
	
	-- PrintNum(valueHP)
	-- PrintNum(MaxHP)
	-- PrintNum(valueHappy)
	
	if valueHP == MaxHP and valueHappy == MaxHappiness then
		x702000_ShowMsg( sceneId, selfId, "Tr�n th� kh�ng c�n s� d�ng th�c �n")
		return 0
	end

	--����m�t �������̲���
	if bagId >= 0 then		
	
		if UseValue >= x702000_g_MaxUseCount then   --��¼to� � ʹ�ô������ڵ��������ô���,�����ϲ����ܳ���.
		    return 0
		end
		
		local CurValue = UseValue + 1
		
		-- PrintNum(CurValue)
		
		SetBagItemParam( sceneId, selfId, bagId, 4, 2, x702000_g_MaxUseCount ) --����������
		SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --�������ô���
				
		--------------�������ð�ȫ�Լ��,��Ȼ�����ϲ������ò���th�t b�i
		local CheckParam1 = GetBagItemParam( sceneId, selfId, bagId, 4, 2 )   
		local CheckParam2 = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
		
		-- PrintNum(CheckParam1)
		-- PrintNum(CheckParam2)
		
		if CheckParam1 ~= x702000_g_MaxUseCount then
		    return 0
		end
		if CheckParam2 ~= CurValue then
		    return 0
		end
		--------------�������ð�ȫ�Լ��,��Ȼ�����ϲ������ò���th�t b�i
		
		
		LuaFnRefreshItemInfo( sceneId, selfId, bagId )	--ˢ�±�����Ϣ
	    
		if CurValue >= x702000_g_MaxUseCount then  --��ʹ�ô����ﵽ������ʱ,��ɾ������Ʒ
			local EraseRet = EraseItem( sceneId, selfId, bagId )
			
			-- PrintStr("ɾ��")
			-- PrintNum(EraseRet)
			
			if EraseRet < 0 then      --���ɾ��th�t b�i,����������κ�Ч��
			  local strMsg = "C�n �����̲���"
				x702000_ShowMsg( sceneId, selfId, strMsg)
				return 0
			end
			
		end
	else
		local strMsg = "C�n �����̲���"
		x702000_ShowMsg( sceneId, selfId, strMsg)
		return 0
	end

	-- ���������̲������

	-- PrintNum(x702000_g_HPValue)

	if x702000_g_HPValue > 0 then
		CallScriptFunction( x702000_g_petCommonId, "IncPetHP", sceneId, selfId, x702000_g_HPValue )
	end

	if x702000_g_MaxHPValue > 0 then
		CallScriptFunction( x702000_g_petCommonId, "IncPetMaxHP", sceneId, selfId, x702000_g_MaxHPValue )
	end

	if x702000_g_LifeValue > 0 then
		CallScriptFunction( x702000_g_petCommonId, "IncPetLife", sceneId, selfId, x702000_g_LifeValue )
	end

	if x702000_g_HappinessValue > 0 then
		local happy = LuaFnGetPet_Happyness(sceneId, selfId, 0)
		
		-- PrintNum(happy)
		
		if valueHappy < 60 then
			local happyes = 61 - valueHappy
			
			-- PrintNum(happyes)
			
			CallScriptFunction( x702000_g_petCommonId, "IncPetHappiness", sceneId, selfId, happyes )
		else
			CallScriptFunction( x702000_g_petCommonId, "IncPetHappiness", sceneId, selfId, x702000_g_HappinessValue )
		end
	end

--	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, g_ImpactID, 0)
	return 1
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x702000_OnActivateEachTick( sceneId, selfId )
	return 1
end

-- C�i n�y ����û��ʲô��,����ng������
function x702000_CancelImpacts( sceneId, selfId )
	return 0
end

function x702000_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
