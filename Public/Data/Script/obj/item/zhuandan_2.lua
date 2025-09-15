--����: ���ޱ���<ID:30504001>
--�ű��� 889001
--Author: Steven.Han 10:39 2007-5-17

x889001_g_scriptId = 889001

x889001_g_DuanWuBaoHePrize = {
	                 50101001,
	                 50101002,
	                 50102001,
	                 50102002,
	                 50102003,
	                 50102004,
	                 50103001,
	                 50104002,
	                 50301001,
	                 50301002,
	                 50302001,
	                 50302002,
	                 50302003,
	                 50302004,
	                 50303001,
	                 50304002,
	                 50601001,
	                 50601002,
	                 50602001,
	                 50602002,
	                 50602003,
	                 50602004,
	                 50603001,
	                 50604002,
}	

x889001_g_strGongGaoInfo = {
  "#{_INFOUSR%s}#c00FFFFTh�t c�n th�n m� ra #G#{_ITEM30504002}#c00FFFF, nh�y ra m�t vi�n #{_INFOMSG%s}#c00FFFF, l�ng l�nh v� c�ng b�o th�ch l� ra �nh s�ng, hi�n l� ra gi� tr� phi ph�m!",
  "#{_INFOUSR%s}#c00FFFFTh�t c�n th�n m� ra #G#{_ITEM30504002}#c00FFFF, nh�y ra m�t vi�n #{_INFOMSG%s}#c00FFFF, l�ng l�nh v� c�ng b�o th�ch l� ra �nh s�ng, hi�n l� ra gi� tr� phi ph�m!",
  "#{_INFOUSR%s}#c00FFFFTh�t c�n th�n m� ra #G#{_ITEM30504002}#c00FFFF, nh�y ra m�t vi�n #{_INFOMSG%s}#c00FFFF, l�ng l�nh v� c�ng b�o th�ch l� ra �nh s�ng, hi�n l� ra gi� tr� phi ph�m!",
}
--**********************************
--�¼��������
--**********************************
function x889001_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889001_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889001_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889001_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end


--��Ϊ���䱦�н�����Ʒ��T�i ��2��
	local FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 5 ) then 
	        local strNotice = "C�t nguy�n li�u c�a c�c h� kh�ng c� ch� tr�ng, c�n s�p x�p l�i."
		      x889001_ShowNotice( sceneId, selfId, strNotice)
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
function x889001_OnDeplete( sceneId, selfId )
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
function x889001_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 1, 0)
	
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 1 )
    
    if( RandomBase > 0 ) then    
       		
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 1 )
        
        local PrizeNum = 0
        if( RandomID == x889001_g_DuanWuBaoHePrize[1] or RandomID == x889001_g_DuanWuBaoHePrize[2]
            or RandomID == x889001_g_DuanWuBaoHePrize[3] or RandomID == x889001_g_DuanWuBaoHePrize[4]
            or RandomID == x889001_g_DuanWuBaoHePrize[5] or RandomID == x889001_g_DuanWuBaoHePrize[6]
            or RandomID == x889001_g_DuanWuBaoHePrize[7] or RandomID == x889001_g_DuanWuBaoHePrize[8]
            ) then
          PrizeNum = 5
        else
          PrizeNum = 1
        end
        
        if( RandomID > 0 ) then
           BeginAddItem(sceneId)
				   AddItem( sceneId, RandomID, PrizeNum )
			     local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			     if Ret > 0 then
			       	LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)

			       	if 1 == Notice then
			       	   local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					       x889001_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "��t ���c "..ItemName
				      x889001_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      x889001_ShowNotice( sceneId, selfId, strNotice)
			     end
			
        end
        
    end
    
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889001_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889001_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889001_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889001_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x889001_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889001_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
