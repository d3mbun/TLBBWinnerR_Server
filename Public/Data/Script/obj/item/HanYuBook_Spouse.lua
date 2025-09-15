--�����й�Y�u Quy�t

x889024_g_scriptId = 889024

x889024_g_NoRMBBuffID = 5901  --��RMB
x889024_g_RMBBuffID = 5902		--RMB�m�t �to� � buffto� � ID....
x889024_g_SpouseBuffID = 5704


--**********************************
--�¼��������
--**********************************
function x889024_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889024_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889024_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889024_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local lastDayTime = GetMissionData( sceneId, selfId, MD_TW_HANYU_SPOUSEBOOK_LASTUSEDAY )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_2}" )
		return 0
	end
	
	if LuaFnIsMarried(sceneId, selfId) == 0 then
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_3}" )
		return 0
	end

	if sceneId ~= 194 then
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_4}" )
		return 0
	end
	
	local spouseGuid = LuaFnGetSpouseGUID(sceneId, selfId);
	if LuaFnGuid2ObjId(sceneId, spouseGuid) == -1 then		
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_5}" )
		return 0
	end

	--��ǰ��ng�����йm�t �buff....
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x889024_g_NoRMBBuffID ) == 1 
		or LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x889024_g_RMBBuffID ) == 1 
		or LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x889024_g_SpouseBuffID ) == 1 then		
		x889024_ShowTips( sceneId, selfId, "#{FUQIYAOJUE_6}" )
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
function x889024_OnDeplete( sceneId, selfId )
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
function x889024_OnActivateOnce( sceneId, selfId )

	--����Һ��񴲹m�t �buff....
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x889024_g_SpouseBuffID, 0)

	CallScriptFunction( 808072, "OnPlayerUseHanYuBook", sceneId, selfId )

	--��¼�����ù�����....
	local CurDayTime = GetDayTime()
	SetMissionData( sceneId, selfId, MD_TW_HANYU_SPOUSEBOOK_LASTUSEDAY, CurDayTime )

	return 1

end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889024_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end


function x889024_ShowTips( sceneId, selfId, msg)
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
