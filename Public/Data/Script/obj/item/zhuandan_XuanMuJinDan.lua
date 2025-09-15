--����: ��ľ��<ID:30504073>
--�ű��� 889043
--Author:zhangzhuang 2009-03-19

x889043_g_scriptId = 889043
x889043_g_ColorSockPrize = {
			           	10141133,
									30008007,
									30503019,
									30008034,
									30502002,
									30900006,
									30504039,
									30504037,								
	              } 
                 
x889043_g_strGongGaoInfo = {
	"#c00FFFF#{_INFOUSR%s}#c00FFFF d�ng �u ��nh v� #G#{_ITEM30504073}#c00FFFF, c�m nh�n ���c kim quang b�n ph�a, kim ��n xu�t hi�n m�t c�i #{_INFOMSG%s}#c00FFFF, th�t s� l� v�n kh� t�t.",
	"#c00FFFF#{_INFOUSR%s}#c00FFFF d�ng �u ��nh v� #G#{_ITEM30504073}#c00FFFF, c�m nh�n ���c kim quang b�n ph�a, kim ��n xu�t hi�n m�t c�i #{_INFOMSG%s}#c00FFFF, th�t s� l� v�n kh� t�t.",
	"#c00FFFF#{_INFOUSR%s}#c00FFFF d�ng �u ��nh v� #G#{_ITEM30504073}#c00FFFF, c�m nh�n ���c kim quang b�n ph�a, kim ��n xu�t hi�n m�t c�i #{_INFOMSG%s}#c00FFFF, th�t s� l� v�n kh� t�t.",
}                
--**********************************
--�¼��������   
--**********************************
function x889043_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end              
                 
--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889043_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end              
                 
--**********************************
--ֱ��Hu� b�Ч��:  
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889043_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end              
                 
--**********************************
--����������:  
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889043_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--��Ϊת����������m�t c�i,����m�t c�i�ո�,����͸ת����ཱ��2c�i�����ж�ʣ��ռ�<1	
--��Ϊ��͸ת����Ʒ��to� � T�i � ��o c� �� �y�,��to� � T�i ������
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
		      x889043_ShowNotice( sceneId, selfId, strNotice)
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
function x889043_OnDeplete( sceneId, selfId )
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
function x889043_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 33, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 28)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 28 )
        local PrizeNum = 1
        if (RandomID == x889043_g_ColorSockPrize[8]) then
          PrizeNum = 10
        elseif (RandomID == x889043_g_ColorSockPrize[4] or RandomID == x889043_g_ColorSockPrize[5]
        	or RandomID == x889043_g_ColorSockPrize[6]) then
          PrizeNum = 2
        else 
        	PrizeNum = 1
        end
       
        if( RandomID > 0 ) then
        		local	bagpos = -1
        		for i=1,PrizeNum do
        			bagpos = -1
							bagpos = TryRecieveItem( sceneId, selfId, RandomID, 9 )
							if (bagpos ~= -1)  then
							  if  (RandomID ~= x889043_g_ColorSockPrize[1] and RandomID ~= x889043_g_ColorSockPrize[5])then
										LuaFnItemBind( sceneId, selfId, bagpos )
								end
							else
								local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      	x889043_ShowNotice( sceneId, selfId, strNotice)
							end
        		end
        		
        		if 1 == Notice and bagpos ~=-1 then
			       	  local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos)
					      x889043_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				    end

			      local ItemName = GetItemName(sceneId, RandomID)
			      local strNotice = "��t ���c "..ItemName
			      x889043_ShowNotice( sceneId, selfId, strNotice)
			      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);				      
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
function x889043_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889043_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889043_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889043_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889043_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889043_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
