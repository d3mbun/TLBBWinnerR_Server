--����: �߲����ز���<ID:30504047>
--�ű��� 889025
--Author:zhangzhuang 2009-01-15

x889025_g_scriptId = 889025
x889025_g_ColorSockPrize = {
		            30008034,	
								30008048,	
								30008009,	
								30503019,	
								30900006,	
								50202003,	
								50201001,	
								50201002,	
								50202001,	
								50202002,	
								50202004,
								50204002,
								50302003,
								50301001,
								50301002,
								50302001,
								50302002,
								50302004,
								50304002,
								50402003,
								50401001,
								50401002,
								50402001,
								50402002,
								50402004,
								50404002,
								50502003,
								50501001,
								50501002,
								50502001,
								50502002,
								50502004,
								50504002,
								50602003,
								50601001,
								50601002,
								50602001,
								50602002,
								50602004,
								50604002,
								30504019,
								10124063,
								10124066,
								30501132,
								30309734,
								30309733,
								10141091,
								30700203,
								30504046,
								30504043,
								30504044,
	              } 
                 
x889025_g_strGongGaoInfo = {
	"#{_INFOUSR%s}#c00FFFFTrong tay  #G#{_ITEM30504047}#c00FFFF k�ch li�t run run ��ng l�n, th�t s�c quang mang theo th� t� hi�n l�n, m�t c�i #{_INFOMSG%s}#c00FFFF xu�t hi�n � t�i trong tay.",
	"#{_INFOUSR%s}#c00FFFFTrong tay  #G#{_ITEM30504047}#c00FFFF k�ch li�t run run ��ng l�n, th�t s�c quang mang theo th� t� hi�n l�n, m�t c�i #{_INFOMSG%s}#c00FFFF xu�t hi�n � t�i trong tay.",
	"#{_INFOUSR%s}#c00FFFFTrong tay  #G#{_ITEM30504047}#c00FFFF k�ch li�t run run ��ng l�n, th�t s�c quang mang theo th� t� hi�n l�n, m�t c�i #{_INFOMSG%s}#c00FFFF xu�t hi�n � t�i trong tay.",
}                
--**********************************
--�¼��������   
--**********************************
function x889025_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end              
                 
--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889025_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end              
                 
--**********************************
--ֱ��Hu� b�Ч��:  
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889025_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end              
                 
--**********************************
--����������:  
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889025_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--��Ϊת����������m�t c�i,����m�t c�i�ո�,�Ұ׽������ཱ��3c�i�����ж�ʣ��ռ�<2	
--��Ϊ�߲����ز�����Ʒ��to� � T�i � ��o c� �� �y�,��to� � T�i ������
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
		      x889025_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "� nguy�n li�u kh�ng gian kh�ng ��."
		      x889025_ShowNotice( sceneId, selfId, strNotice)
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
function x889025_OnDeplete( sceneId, selfId )
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
function x889025_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 24, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 21)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 21 )
        local PrizeNum = 1
        if (RandomID == x889025_g_ColorSockPrize[49]) then
          PrizeNum = 9
        elseif  (RandomID ==x889025_g_ColorSockPrize[48] or RandomID ==x889025_g_ColorSockPrize[5]) then
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
					       x889025_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "��t ���c "..ItemName
				      x889025_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      x889025_ShowNotice( sceneId, selfId, strNotice)
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
function x889025_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889025_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889025_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889025_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889025_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889025_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
