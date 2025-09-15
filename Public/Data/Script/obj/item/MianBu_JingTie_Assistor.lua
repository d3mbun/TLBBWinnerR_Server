--����: �޲�Tinh����
--zchw

x300078_g_scriptId = 300078

x300078_g_mianbu_material_id 		= 30501355
x300078_g_mianbu_assistor_id 		= 30501356
x300078_g_jingtie_material_id  	= 30501357
x300078_g_jingtie_assistor_id  	= 30501358
x300078_g_mianbu_rank1_id 			= 20501001
x300078_g_jingtie_rank1_id 			= 20500001

--**********************************
--�¼��������
--**********************************
function x300078_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x300078_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300078_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300078_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local itemSn = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	if x300078_g_mianbu_assistor_id == itemSn then 					--�޲�ӡȾ��
		local itemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x300078_g_mianbu_material_id )
		if itemCount < 1 then
			x300078_ShowNotice( sceneId, selfId, "#{MBJT_081125_02}");
			return 0;
		end
		local freeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
		if( freeSpace < 1 ) then
			 x300078_ShowNotice( sceneId, selfId, "#{MYKS_081021_3}");
		   return 0;
		end
	elseif x300078_g_jingtie_assistor_id == itemSn then			--Tinh��������
		local itemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x300078_g_jingtie_material_id )
		if itemCount < 1 then
			x300078_ShowNotice( sceneId, selfId, "#{MBJT_081125_04}");
			return 0;
		end
		local freeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
		if( freeSpace < 1 ) then
			 x300078_ShowNotice( sceneId, selfId, "#{MYKS_081021_3}");
		   return 0;
		end	
	else 
		return 0;
	end
		
	return 1; --��C�n �κ�����,����ʼ��Tr� v�1.
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x300078_OnDeplete( sceneId, selfId )
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
function x300078_OnActivateOnce( sceneId, selfId )
	local itemSn = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	if x300078_g_mianbu_assistor_id == itemSn then 					--�޲�ӡȾ��
		if LuaFnDelAvailableItem(sceneId, selfId, x300078_g_mianbu_material_id, 1) ~= 1 then
			return 0;
		end
		if TryRecieveItem( sceneId, selfId, x300078_g_mianbu_rank1_id, QUALITY_MUST_BE_CHANGE) == -1 then
			return 0;
		end
		x300078_ShowNotice( sceneId, selfId, "#{MBJT_081125_05}")
	elseif x300078_g_jingtie_assistor_id == itemSn then			--Tinh��������
		if LuaFnDelAvailableItem(sceneId, selfId, x300078_g_jingtie_material_id, 1) ~= 1 then
			return 0;
		end
		if TryRecieveItem( sceneId, selfId, x300078_g_jingtie_rank1_id, QUALITY_MUST_BE_CHANGE) == -1 then
			return 0;
		end
		x300078_ShowNotice( sceneId, selfId, "#{MBJT_081125_06}")
	else 
		return 0;
	end	   
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300078_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x300078_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

