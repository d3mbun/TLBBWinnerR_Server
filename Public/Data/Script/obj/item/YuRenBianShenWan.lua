--л�p 2009-02-17

--�ο�JiaoZi.lua


------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�

--�ű���
x889031_g_scriptId = 889031

--buffto� � �б�

x889031_g_Impact = {
					[38000006] = { 4849, 4843, 4853, 4852, 4837},
					[38000007] = { 4868, 4866, 4828, 4846, 5723},
					[38000008] = { 4860, 4861, 4872, 4873, 4847}
					}

x889031_g_GiveItem =
{
	30509057,
	30509023,
	30509024,
	30509016,
	30509020,
	30509015,
	30509017,
	30509018,
	30509019,
	30505040,
	30505035,
	30505037,
	30505038,
	30505039,
	30505034,
	30505041
}

--**********************************
--�¼��������
--**********************************
function x889031_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889031_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889031_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889031_OnConditionCheck( sceneId, selfId )

	--�����ng����Ա�ʹ��
	if x889031_ItemCheckAndNotice( sceneId, selfId ) ~=1 then
		return 0
	end

	return 1;
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x889031_OnDeplete( sceneId, selfId )
	--������,��Ϊ��߻�Ҫʹ�ô浽��Ʒ��to� � ��Ϣ
	return 1;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889031_OnActivateOnce( sceneId, selfId )

	--�����ng����Ա�ʹ��
	if x889031_ItemCheckAndNotice( sceneId, selfId ) ~=1 then
		return
	end
	
	--����Ʒ
	if LuaFnDepletingUsedItem(sceneId, selfId) <= 0 then
		return
	end

	--���̻�
	local rollItem = random( 1, getn( x889031_g_GiveItem ) )
	local itemIndex = x889031_g_GiveItem[rollItem]
	TryRecieveItem( sceneId, selfId, itemIndex, QUALITY_MUST_BE_CHANGE )
	
	--���Լ��ӱ���BUFF,��ͬto� � ��Ʒ�Ӳ�ͬto� � BUFF
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	
	local impactList = x889031_g_Impact[itemTblIndex]
	if impactList ~= nil then
		local rollImpact = random( 1, getn( impactList ) )
		local impactId = impactList[rollImpact]
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactId, 0);
	end
	
	--��ʾ
	x889031_ShowMsg( sceneId, selfId, "#{TWYRJ_090217_1}" )
	
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889031_OnActivateEachTick( sceneId, selfId )
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889031_ItemCheckAndNotice( sceneId, selfId )
	
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	-- �i�m��S� d�ng v�t ph�m to� � tr� tay n�i
	local bagIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagIndex < 0 then
		return 0
	end
	
	--�Լ�to� � �������ܸ��Լ���
	local ownGUID	= GetBagItemParam( sceneId, selfId, bagIndex, 4, 2 ) + 2147483648
	local selfGUID = LuaFnGetGUID( sceneId, selfId )
	
	if ownGUID == selfGUID then
		x889031_ShowMsg( sceneId, selfId, "#{TWYRJ_090217_13}" )
		return 0
	end
	
	return 1
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x889031_ShowMsg( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent()
	DispatchMissionTips( sceneId, selfId )
	
end
