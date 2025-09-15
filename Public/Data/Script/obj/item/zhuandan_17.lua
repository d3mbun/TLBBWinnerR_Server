--����: ѩ��ˮ����ID:30504018>
--�ű��� x889016
--Author: ��׳ 2008-11-24

x889016_g_scriptId = 889016

x889016_g_CrystalBoxPrize = {
	                10141081,
	                10141102,
	                30505804,
	                30505805,
	                30502000,
	                30502001,
	                30502002,
	                30008002,
	                30008003,
	                30607001,
	                30900006,
	                30008007,
	                30008029,
	                30501152					
}	

x889016_g_strGongGaoInfo = {
	"#{_INFOUSR%s}#c00FFFFNh�n trong su�t #G#{_ITEM30504018}#c00FFFF, c�m l�y ma b� y�u th߽ng nh� nh�ng ch� lau, m�t tr�n s߽ng tr�ng l��n l�, hi�n ra m�t c�i #{_INFOMSG%s}#c00FFFF.",
	"#{_INFOUSR%s}#c00FFFFNh�n trong su�t #G#{_ITEM30504018}#c00FFFF, c�m l�y ma b� y�u th߽ng nh� nh�ng ch� lau, m�t tr�n s߽ng tr�ng l��n l�, hi�n ra m�t c�i #{_INFOMSG%s}#c00FFFF.",
	"#{_INFOUSR%s}#c00FFFFNh�n trong su�t #G#{_ITEM30504018}#c00FFFF, c�m l�y ma b� y�u th߽ng nh� nh�ng ch� lau, m�t tr�n s߽ng tr�ng l��n l�, hi�n ra m�t c�i #{_INFOMSG%s}#c00FFFF.",
}
--**********************************
--�¼��������
--**********************************
function x889016_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889016_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889016_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889016_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--��Ϊת����������m�t c�i,����m�t c�i�ո�,�Һ��������ཱ��3c�i�����ж�ʣ��ռ�<2	
--��Ϊѩ��ˮ������Ʒ��to� � T�i � ��o c� �� �y�
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 3 ) then 
	   local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
		 x889016_ShowNotice( sceneId, selfId, strNotice)
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
function x889016_OnDeplete( sceneId, selfId )
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
function x889016_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 16, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 16)
    if( RandomBase > 0 ) then    
       	
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 16 )
        local PrizeNum = 0
        if( RandomID == x889016_g_CrystalBoxPrize[5] ) then
          PrizeNum = 10
        elseif (RandomID == x889016_g_CrystalBoxPrize[6] or RandomID == x889016_g_CrystalBoxPrize[9] or RandomID == x889016_g_CrystalBoxPrize[13]) then
        	PrizeNum = 4
        elseif (RandomID == x889016_g_CrystalBoxPrize[7] or RandomID == x889016_g_CrystalBoxPrize[8]) then
          PrizeNum = 3
        elseif (RandomID == x889016_g_CrystalBoxPrize[11]) then
          PrizeNum = 2
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
					       x889016_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "��t ���c "..ItemName
				      x889016_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      x889016_ShowNotice( sceneId, selfId, strNotice)
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
function x889016_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889016_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889016_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889016_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889016_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889016_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
