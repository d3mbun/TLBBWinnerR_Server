-- ������: [ QUFEI 2007-09-12 21:51 UPDATE BugID 24674 ]
-- �������
--ע��: 

--��Ʒ����to� � �߼�ֻ��ʹ�û������ܺͽű���ʵ��

--�ű�:

--������ng�ű�����:


--jinbangtiming.lua
------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�

--�ű���
x335133_g_scriptId = 335133 --��ʱдC�i n�y ,������to� � ʱ��m�t ��Ҫ��.

--buff�б�
x335133_g_Impact = {

		8040,
		8041,
		8042,
		8043,
		8044,
		8045,
		30181,
		30182,
		30183,
		30184,
		30185,
		30186,
}

--**********************************
--�¼��������
--**********************************
function x335133_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x335133_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x335133_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x335133_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	local myLevel = GetLevel(sceneId, selfId)
    
  if myLevel < 20 then
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
function x335133_OnDeplete( sceneId, selfId )
		-- ������Ʒ....
	if LuaFnDepletingUsedItem(sceneId, selfId) <= 0 then
		return
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
function x335133_OnActivateOnce( sceneId, selfId )

	local myLevel = GetLevel(sceneId, selfId)

	-- �ӽ������Buff....	
	local impactID = x335133_g_Impact[1]
	local PlayerMaxLevel = GetHumanMaxLevelLimit()

  if myLevel > PlayerMaxLevel then
		impactID = x335133_g_Impact[12]
  elseif myLevel > 140 then
		impactID = x335133_g_Impact[11]
  elseif myLevel > 130 then
		impactID = x335133_g_Impact[10]
	elseif myLevel > 120 then
		impactID = x335133_g_Impact[9]
	elseif myLevel > 110 then
		impactID = x335133_g_Impact[8]
	elseif myLevel > 100 then
		impactID = x335133_g_Impact[7]
	elseif myLevel > 90 then
		impactID = x335133_g_Impact[6]
	elseif myLevel > 80 then
		impactID = x335133_g_Impact[5]
	elseif myLevel > 70 then
		impactID = x335133_g_Impact[4]
	elseif myLevel > 60 then
		impactID = x335133_g_Impact[3]
	elseif myLevel > 50 then
		impactID = x335133_g_Impact[2]
	elseif myLevel > 40 then
		impactID = x335133_g_Impact[1]
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
function x335133_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end
