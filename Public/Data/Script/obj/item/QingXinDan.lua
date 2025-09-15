--ע��: 

--��Ʒ����to� � �߼�ֻ��ʹ�û������ܺͽű���ʵ��

--�ű�:

--������ng�ű�����:


--3151.lua
------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�

--�ű���
x300055_g_scriptId = 300055 --��ʱдC�i n�y ,������to� � ʱ��m�t ��Ҫ��.

--C�n to� � ��c�p

--Ч��to� � ID
x300055_g_Impact1 = 3151 --��ʱдC�i n�y 
x300055_g_Impact2 = -1 --����

--**********************************
--�¼��������
--**********************************
function x300055_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x300055_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300055_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300055_OnConditionCheck( sceneId, selfId )
	
	if sceneId ~= 0 and sceneId ~= 1 and sceneId ~= 2 and sceneId ~= 186 then
		x300055_NotifyTip( sceneId, selfId, "#{QingXinDan_Limit_00}");
		return 0;
	end
	
	local nPkValue = LuaFnGetHumanPKValue(sceneId, selfId);
	if nPkValue <= 0 then
		x300055_NotifyTip( sceneId, selfId, "#{QingXinDan_00}");
		return 0;
	end
	
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
function x300055_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then		
		
		local nPkValue = LuaFnGetHumanPKValue(sceneId, selfId);
		
		local msg = format("S�t kh� c�a c�c h� gi�m 1 �i�m, s�t kh� hi�n gi� c�a c�c h� l� %d", nPkValue-1);
		x300055_NotifyTip( sceneId, selfId, msg);
		
		LuaFnSetHumanPKValue(sceneId,selfId, nPkValue - 1);	

		-- [ QUFEI 2007-11-09 15:36 UPDATE BugID 27611 ]		
		local LogInfo	= format( "[ChangePKValue]:QingXinDan sceneId=%d, GUID=%0X, ItemID=%d, PKValueBgn=%d, PKValueEnd=%d",
				sceneId,
				LuaFnObjId2Guid( sceneId, selfId ),
				30008018,
				nPkValue,
				LuaFnGetHumanPKValue(sceneId, selfId) )
		WriteCheckLog( sceneId, selfId, LogInfo )
		
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
function x300055_OnActivateOnce( sceneId, selfId )
	
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300055_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end


--**********************************
--��Ŀ��ʾ
--**********************************
function x300055_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
