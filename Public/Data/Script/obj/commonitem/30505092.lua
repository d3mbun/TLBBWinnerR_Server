--����: ����<ID:30505092>
--�ű��� 332002
--�սű�,�ȴ�������ӹ���

x332002_g_scriptId = 332002

--**********************************
--�¼��������
--**********************************
function x332002_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x332002_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x332002_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x332002_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local PlayerLevel = GetLevel( sceneId, selfId )
    if PlayerLevel < 65 then    --����ʹ�õ�c�p���65
        return 0
    end
    
    if TryCreatePet(sceneId,selfId,1) <= 0 then
        BeginEvent(sceneId)
			strText = "Xin l�i, c�t th� nu�i c�a c�c h� kh�ng �� ch�, xin h�y s�p x�p v� s� d�ng l�i"
			AddText(sceneId,strText)
 		EndEvent(sceneId)
 		DispatchMissionTips(sceneId,selfId)
 		--DispatchEventList( sceneId, selfId )
		return
	end
		
	return 1; --��C�n �κ�����,����ʼ��Tr� v�1.
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x332002_OnDeplete( sceneId, selfId )
	--local PlayerName 		= LuaFnGetName(sceneId, selfId)
	--local itemBagIndex 	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	--local szTransferItem= GetBagItemTransfer( sceneId, selfId, itemBagIndex )
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		--BroadMsgByChatPipe(sceneId, selfId, "#{_INFOUSR"..PlayerName.."}#ccc33ccS� d�ng #{_INFOMSG"..szTransferItem.."}", 4)
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
function x332002_OnActivateOnce( sceneId, selfId )
    
    --�����ng������������
    local bCreate = TryCreatePet(sceneId,selfId,1)
    
    --��������������m�t ֻ
    local PetID_LongBaby = 6009
    if bCreate > 0 then
	    LuaFnCreatePetToHuman(sceneId, selfId, PetID_LongBaby, 1, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
	end
		

	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x332002_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end
