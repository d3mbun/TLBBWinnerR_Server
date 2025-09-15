--����: ��ľ����<ID:30504074>
--�ű��� 889044
--Author:zhangzhuang 2009-03-19

x889044_g_scriptId = 889044
x889044_g_ColorSockPrize = {
			            30503019,
									30008034,
									30008007,
									30008033,
									30008006,
									31000001,
									31000003,
									30504037,									
	              } 
                 
x889044_g_strGongGaoInfo = {
	"#c00FFFF��i hi�p #{_INFOUSR%s}#c00FFFF t� x�ng h�c xong bi�n ho� ma thu�t, ch� th�y h�n nh� nh�ng nh�t xu�t, li�n theo #G#{_ITEM30504074}#c00FFFF bi�n ra #{_INFOMSG%s}#c00FFFF, th�n kh� r�i.",
	"#c00FFFF��i hi�p #{_INFOUSR%s}#c00FFFF t� x�ng h�c xong bi�n ho� ma thu�t, ch� th�y h�n nh� nh�ng nh�t xu�t, li�n theo #G#{_ITEM30504074}#c00FFFF bi�n ra #{_INFOMSG%s}#c00FFFF, th�n kh� r�i.",
	"#c00FFFF��i hi�p #{_INFOUSR%s}#c00FFFF t� x�ng h�c xong bi�n ho� ma thu�t, ch� th�y h�n nh� nh�ng nh�t xu�t, li�n theo #G#{_ITEM30504074}#c00FFFF bi�n ra #{_INFOMSG%s}#c00FFFF, th�n kh� r�i.",
}                
--**********************************
--�¼��������   
--**********************************
function x889044_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end              
                 
--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889044_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end              
                 
--**********************************
--ֱ��Hu� b�Ч��:  
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889044_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end              
                 
--**********************************
--����������:  
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889044_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
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
function x889044_OnDeplete( sceneId, selfId )
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
function x889044_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 34, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 29)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 29 )
        local PrizeNum = 1
        if (RandomID == x889044_g_ColorSockPrize[8]) then
          PrizeNum = 5
        else
          PrizeNum = 1
        end
        
        if( RandomID > 0 ) then
        		local	bagpos = -1
        		for i=1,PrizeNum do
        			bagpos = -1
							bagpos = TryRecieveItem( sceneId, selfId, RandomID, 9 )
							if (bagpos ~= -1)  then
									LuaFnItemBind( sceneId, selfId, bagpos )
							else
								local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      	x889044_ShowNotice( sceneId, selfId, strNotice)
							end
        		end
        		
        		if 1 == Notice and bagpos ~=-1 then
			       	  local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos)
					      x889044_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				    end

			      local ItemName = GetItemName(sceneId, RandomID)
			      local strNotice = "��t ���c "..ItemName
			      x889044_ShowNotice( sceneId, selfId, strNotice)
			      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
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
function x889044_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889044_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889044_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889044_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889044_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889044_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
