--�ռ�ǩ������ ����� 
--Created by zchw

--�ű���
x300102_g_scriptId = 300102
x300102_g_piece =
{
	[1] = 20501000,		--�޲���Ƭ20501000��
	[2] = 20500000,		--Tinh����Ƭ20500000��
	[3] = 20502000,   --������Ƭ20502000
}

x300102_g_prizeInfo =
{
	{id = 30509020, rate = 78}, --�̻� ���豦��
	{id = 0, rate = 20}, 				--��Tinh��Ƭ
	{id = 10124112, rate = 2}, 	--ѧ��ʱװ 
}

--**********************************
-- Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ִ�� OnDefaultEvent.
--**********************************
function x300102_IsSkillLikeScript( sceneId, selfId )
	return 1
end

--**********************************
-- Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300102_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
-- ����������: Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300102_OnConditionCheck( sceneId, selfId )
	-- У��ʹ��to� � ��Ʒ
	if LuaFnVerifyUsedItem( sceneId, selfId ) ~= 1 then
		return 0;
	end
	if LuaFnGetPropertyBagSpace(sceneId, selfId) == 0 or LuaFnGetMaterialBagSpace(sceneId, selfId) == 0 then
		x300102_NotifyFailTips(sceneId, selfId, "#{SJQM_8819_21}");
		return 0;
	end
	return 1;
end

--**********************************
--���ļ�⼰�������,��������to� � ����ִ��: 
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--**********************************
function x300102_OnDeplete( sceneId, selfId )
	--ɾ�������
	if LuaFnDepletingUsedItem( sceneId, selfId ) <= 0 then
		return 0;
	end
	return 1;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300102_OnActivateOnce( sceneId, selfId )
	local rand = random(100);
	local PrizePos = "";
	local itemId = "";
	if rand < x300102_g_prizeInfo[1].rate then
		-- ������
		itemId = x300102_g_prizeInfo[1].id;
		PrizePos = TryRecieveItem(sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE );
	elseif rand < x300102_g_prizeInfo[1].rate + x300102_g_prizeInfo[2].rate then
		local rdm = random(3);
		itemId = x300102_g_piece[rdm];
		PrizePos = TryRecieveItem(sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE );
	else
		itemId = x300102_g_prizeInfo[3].id;
		PrizePos = TryRecieveItem(sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE );
	end
	
	if PrizePos == -1 then
		x300102_NotifyFailTips(sceneId, selfId, "C�p th߷ng th�t b�i!!");
		return 0;
	end
	--��־
	AuditExchangeFriendGift(sceneId, selfId, itemId);
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng��������ʱ��Чto� � ���
--**********************************
function x300102_OnActivateEachTick( sceneId, selfId )
	return 1
end

----------------------
--th�t b�i��ʾ
----------------------
function x300102_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

