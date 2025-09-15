--����: ��͸ת��<ID:30504069>
--�ű��� 889039
--Author:zhangzhuang 2009-03-13

x889039_g_scriptId = 889039
x889039_g_ColorSockPrize = {
			            30900006,
									30502000,
									30502001,
									30502002,
									30700203,
									50412003,
									50412004,
									50404002,
									50414001,
									50412001,
									50412002,
									50512003,
									50512004,
									50504002,	
									50514001,	
									50512001,	
									50512002,
									50612003,
									50612004,
									50604002,
									50614001,	
									50612001,
									50612002,
									30505041,
									30505034,
									30501153,
									30501151,
									30309754,
									10141062,
									10124103,
									30509066,
									30509036,
									50313004,
									30008021,
									30008025,
									30607001,
	              } 
                 
x889039_g_strGongGaoInfo = {
	"#c00FFFF tr�n ng�p hy v�ng #G#{_ITEM30504069}#c00FFFF kim quang l�ng l�nh xu�t hi�n tr߾c m�t, #{_INFOUSR%s}#c00FFFF th�t c�n th�n m� ra, ��t ���c #{_INFOMSG%s}#c00FFFF.",
	"#c00FFFF tr�n ng�p hy v�ng #G#{_ITEM30504069}#c00FFFF kim quang l�ng l�nh xu�t hi�n tr߾c m�t, #{_INFOUSR%s}#c00FFFF th�t c�n th�n m� ra, ��t ���c #{_INFOMSG%s}#c00FFFF.",
	"#c00FFFF tr�n ng�p hy v�ng #G#{_ITEM30504069}#c00FFFF kim quang l�ng l�nh xu�t hi�n tr߾c m�t, #{_INFOUSR%s}#c00FFFF th�t c�n th�n m� ra, ��t ���c #{_INFOMSG%s}#c00FFFF.",
}                
--**********************************
--�¼��������   
--**********************************
function x889039_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end              
                 
--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889039_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end              
                 
--**********************************
--ֱ��Hu� b�Ч��:  
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889039_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end              
                 
--**********************************
--����������:  
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889039_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--��Ϊת����������m�t c�i,����m�t c�i�ո�,����͸ת����ཱ��2c�i�����ж�ʣ��ռ�<1	
--��Ϊ��͸ת����Ʒ��to� � T�i � ��o c� �� �y�,��to� � T�i ������
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
		      x889039_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "� nguy�n li�u kh�ng gian kh�ng ��."
		      x889039_ShowNotice( sceneId, selfId, strNotice)
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
function x889039_OnDeplete( sceneId, selfId )
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
function x889039_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 30, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 25)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 25 )
        local PrizeNum = 1
        if (RandomID == x889039_g_ColorSockPrize[2]) then
          PrizeNum = 3
        elseif  (RandomID ==x889039_g_ColorSockPrize[3] or RandomID ==x889039_g_ColorSockPrize[25] or RandomID ==x889039_g_ColorSockPrize[24]) then
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
					       x889039_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "��t ���c "..ItemName
				      x889039_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      x889039_ShowNotice( sceneId, selfId, strNotice)
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
function x889039_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889039_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889039_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889039_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889039_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889039_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
