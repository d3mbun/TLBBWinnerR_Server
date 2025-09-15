--����: ��������<ID:30501167>
--�ű��� 300074
--Author:zhangzhuang 2008-10-20

x300074_g_scriptId = 300074
x300074_g_KuangShi = 30501168
x300074_g_MiYin  = 20502001

--**********************************
--�¼��������
--**********************************
function x300074_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x300074_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300074_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300074_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
		local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x300074_g_KuangShi )
	if ItemCount < 1 then
		local strNotice = "#{MYKS_081021_2}" --������ʯ���
		x300074_ShowNotice( sceneId, selfId, strNotice)
	    return 0
	end
	
	local FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	        local strNotice = "#{MYKS_081021_3}"
		    x300074_ShowNotice( sceneId, selfId, strNotice)
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
function x300074_OnDeplete( sceneId, selfId )
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
function x300074_OnActivateOnce( sceneId, selfId )

    --����m�t c�i������ʯ
  ret = LuaFnDelAvailableItem(sceneId, selfId, x300074_g_KuangShi, 1)
	if ret ~= 1 then
		return   --����ɾ����th�t b�i,���жϲ���,�����������κ���Ʒ
	end
	
  --����ͳ��: �����ܼ�to� � ʹ��
	LuaFnAuditMiYinKuangShiUsed(sceneId, selfId)
	Msg2Player(sceneId, selfId, "#C�c h� �� nh�n ���c m�t c�i#Hb� ng�n c�p 1", MSG2PLAYER_PARA )
	BeginAddItem(sceneId)
			AddItem( sceneId, x300074_g_MiYin, 1 )
	local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			
	if Ret > 0 then
		LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
		x300074_ShowNotice( sceneId, selfId, "#{MYKS_081021_4}")
	end 
	
   
    
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300074_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x300074_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

