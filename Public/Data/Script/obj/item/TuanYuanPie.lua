--ע��: 

--��Ʒ����to� � �߼�ֻ��ʹ�û������ܺͽű���ʵ��

--�ű�:

--������ng�ű�����:


--TuanYuanPie.lua
------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�

--�ű���
x300058_g_scriptId = 300058 --��ʱдC�i n�y ,������to� � ʱ��m�t ��Ҫ��.

--buffto� � �б�
x300058_g_Impact = {

		8020,
		8021,
		8022,
		8023,
		8024,
		8025,
		8026,
		8027,
		8028,
		8029,
		30161,
		30162,
		30163,
		30164,
		30165,
		30166,
		30167,
		30168,
		30169,
		30170,
}

--**********************************
--�¼��������
--**********************************
function x300058_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x300058_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300058_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300058_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	return 1; --��C�n �κ�����,����ʼ��Tr� v�1.
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x300058_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
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
function x300058_OnActivateOnce( sceneId, selfId )

	local myLevel = GetLevel(sceneId, selfId)
	local impactID = x300058_g_Impact[1]
	local PlayerMaxLevel = GetHumanMaxLevelLimit()

  if myLevel > PlayerMaxLevel then
		impactID = x300058_g_Impact[16]
	elseif myLevel > 140 then
		impactID = x300058_g_Impact[15]
	elseif myLevel > 130 then
		impactID = x300058_g_Impact[14]
	elseif myLevel > 120 then
		impactID = x300058_g_Impact[13]
	elseif myLevel > 110 then
		impactID = x300058_g_Impact[12]
	elseif myLevel > 100 then
		impactID = x300058_g_Impact[11]
	elseif myLevel > 90 then
		impactID = x300058_g_Impact[10]
	elseif myLevel > 80 then
		impactID = x300058_g_Impact[9]
	elseif myLevel > 70 then
		impactID = x300058_g_Impact[8]
	elseif myLevel > 60 then
		impactID = x300058_g_Impact[7]
	elseif myLevel > 50 then
		impactID = x300058_g_Impact[6]
	elseif myLevel > 40 then
		impactID = x300058_g_Impact[5]
	elseif myLevel > 30 then
		impactID = x300058_g_Impact[4]
	elseif myLevel > 20 then
		impactID = x300058_g_Impact[3]
	elseif myLevel > 10 then
		impactID = x300058_g_Impact[2]
	else
		impactID = x300058_g_Impact[1]
	end

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactID, 0);

	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300058_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end
