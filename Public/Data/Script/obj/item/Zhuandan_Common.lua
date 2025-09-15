--ת��ͨ�ýű�
--�ű��� x889040
--Author: zchw 2009-3-17

x889040_g_scriptId = 889040

--**********************************
--�¼��������
--**********************************
function x889040_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889040_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889040_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889040_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0;
	end

	local ItemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	local ZD_ID = LuaFnGetZhuanDanIndex(ItemIndex);
	if ZD_ID == -1 then
		return 0;
	end

	local BaseSpace, MaterialSpace, TaskSpace = LuaFnGetZhuandanSpace(ZD_ID);	
	if BaseSpace == -1 then
		return 0;
	end
	
	local FreeSpace1 = LuaFnGetPropertyBagSpace(sceneId, selfId);
	local FreeSpace2 = LuaFnGetMaterialBagSpace(sceneId, selfId);
	local FreeSpace3 = LuaFnGetTaskItemBagSpace(sceneId, selfId);
	
	if (FreeSpace1<BaseSpace) or (FreeSpace2<MaterialSpace) or (FreeSpace3<TaskSpace) then 
    x889040_ShowNotice( sceneId, selfId, "Ch� tr�ng trong t�i x�ch kh�ng ��.");
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
function x889040_OnDeplete( sceneId, selfId )
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
function x889040_OnActivateOnce( sceneId, selfId )
	local ItemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	local ZD_ID = LuaFnGetZhuanDanIndex(ItemIndex);	
	if ZD_ID == -1 then
		return 0;
	end
	
	local PrizeItem, PrizeNum, IsBind, NoticeFormat = LuaFnGetZhuanDanInfo(ZD_ID);
	if PrizeItem == -1 then
		return 0;
	end
	
	local BagPos = nil;
	
	-- ��t ���c��Ʒ
	for i=1, PrizeNum do
		BagPos = LuaFnTryRecieveItemIgnoreFatigueState(sceneId, selfId, PrizeItem, QUALITY_MUST_BE_CHANGE);
		if BagPos == -1 then
			x889040_ShowNotice( sceneId, selfId, "Ch� tr�ng trong t�i x�ch kh�ng ��");
			return 0;
		end
		--ǿ�ư�
		if(IsBind == 1) then
			LuaFnItemBind( sceneId, selfId, BagPos);
		end
	end
	
	--����
	if NoticeFormat ~= nil then
 		local ItemTransfer = GetBagItemTransfer(sceneId, selfId, BagPos);
 	  local PlayerName = GetName(sceneId, selfId);
 	  local str = format(NoticeFormat, PlayerName, ItemTransfer)
    BroadMsgByChatPipe( sceneId, selfId, str, 4 )		  
  end  
  
  --��Ϣ	
  local ItemName = GetItemName(sceneId, PrizeItem)
  local strNotice = "��t ���c "..ItemName
  x889040_ShowNotice( sceneId, selfId, strNotice)
  LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);	
  
	--����ͳ��: ת��to� � ʹ��
	LuaFnAuditZhuanDanUsed(sceneId, selfId, 100+ZD_ID, 0)
	    
	return 1;	
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889040_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889040_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end


	
