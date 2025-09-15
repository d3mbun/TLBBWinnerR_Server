--��Ĺ�й�Y�u Quy�t

--���񴲹m�t ���to� � ��....��RMB��....

x300066_g_scriptId = 300066

x300066_g_NoRMBBuffID = 5901	--��RMB�m�t �to� � buffto� � ID....
x300066_g_RMBBuffID = 5902		--RMB�m�t �to� � buffto� � ID....
x300066_g_SpouseBuffID = 5704

--**********************************
--�¼��������
--**********************************
function x300066_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x300066_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300066_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300066_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	--N�y y�u quy�t � c�nh t��ng ph� b�n s� d�ng kh�ng c� hi�u qu�....
	if sceneId ~= 194 then
		x300066_ShowTips( sceneId, selfId, "N�y y�u quy�t � c�nh t��ng ph� b�n s� d�ng kh�ng c� hi�u qu�" )
		return 0
	end

	--������Ѿ�ʹ�ù������й�Y�u Quy�t....
	local lastDayTime = GetMissionData( sceneId, selfId, MD_HANYUBED_USEBOOK_LASTDAY )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		x300066_ShowTips( sceneId, selfId, "Ng߽i h�m nay �� s� d�ng qu� H�n Ng�c C�c h�nh c�ng y�u quy�t" )
		return 0
	end

	--��ǰ��ng�����йm�t �buff....
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300066_g_NoRMBBuffID ) == 1 then
		x300066_ShowTips( sceneId, selfId, "Ng߽i �� tu luy�n" )
		return 0
	end

	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300066_g_RMBBuffID ) == 1 
		or LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x300066_g_SpouseBuffID ) == 1 then
		x300066_ShowTips( sceneId, selfId, "Ng߽i �� tu luy�n" )
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
function x300066_OnDeplete( sceneId, selfId )
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
function x300066_OnActivateOnce( sceneId, selfId )

	--����Һ��񴲹m�t �buff....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x300066_g_NoRMBBuffID, 0)

	CallScriptFunction( 808072, "OnPlayerUseHanYuBook", sceneId, selfId )

	--��¼�����ù�����....
	local CurDayTime = GetDayTime()
	SetMissionData( sceneId, selfId, MD_HANYUBED_USEBOOK_LASTDAY, CurDayTime )

	return 1

end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300066_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end


function x300066_ShowTips( sceneId, selfId, msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
