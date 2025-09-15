--����: ���ز���<ID:30504025>
--�ű��� 889019
--Author:zhangzhuang 2008-12-17

x889019_g_scriptId = 889019
x889019_g_SockPrize = {
	                30008034,
									30008048,
									30008009,
									30503018,
									30503019,
									30900006,
									50201001,
									50201002,
									50202001,
									50202002,
									50202003,
									50202004,
									50204002,
									50301001,
									50301002,
									50302001,
									50302002,
									50302003,
									50302004,
									50304002,
									50401001,
									50401002,
									50402001,
									50402002,
									50402003,
									50402004,
									50404002,
									50501001,
									50501002,
									50502001,
									50502002,
									50502003,
									50502004,
									50504002,
									50601001,
									50601002,
									50602001,
									50602002,
									50602003,
									50602004,
									50604002,
									30504019,
									30309612,
									10124063,
									10124066,
									10124135,
									30501132,
									10141091,
									30700203
	              } 

x889019_g_strGongGaoInfo = {
	"#c00FFFF��ng � l� s߷i tr�n t߶ng #G#{_ITEM30504025},#c00FFFF r�i tr�n m�t �t, #{_INFOUSR%s}#c00FFFF v�a th�y nh�t l�n, may m�n nh�t ���c #{_INFOMSG%s}#c00FFFF.",
 	"#c00FFFF��ng � l� s߷i tr�n t߶ng #G#{_ITEM30504025},#c00FFFF r�i tr�n m�t �t, #{_INFOUSR%s}#c00FFFF v�a th�y nh�t l�n, may m�n nh�t ���c #{_INFOMSG%s}#c00FFFF.",
  "#c00FFFF��ng � l� s߷i tr�n t߶ng #G#{_ITEM30504025},#c00FFFF r�i tr�n m�t �t, #{_INFOUSR%s}#c00FFFF v�a th�y nh�t l�n, may m�n nh�t ���c #{_INFOMSG%s}#c00FFFF.",
}
--**********************************
--�¼��������
--**********************************
function x889019_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889019_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889019_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889019_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--��Ϊת����������m�t c�i,����m�t c�i�ո�,�Һ��������ཱ��3c�i�����ж�ʣ��ռ�<2	
--��Ϊ���ز�������Ʒ��to� � T�i � ��o c� �� �y�,��to� � T�i ������
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
		      x889019_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then 
	        local strNotice = "� nguy�n li�u kh�ng gian kh�ng ��."
		      x889019_ShowNotice( sceneId, selfId, strNotice)
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
function x889019_OnDeplete( sceneId, selfId )
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
function x889019_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 19, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 17)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 17 )
        local PrizeNum = 0
        if (RandomID == x889019_g_SockPrize[4] or RandomID == x889019_g_SockPrize[6] or
        	RandomID == x889019_g_SockPrize[49]) then
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
					       x889019_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "��t ���c "..ItemName
				      x889019_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      x889019_ShowNotice( sceneId, selfId, strNotice)
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
function x889019_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889019_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889019_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889019_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889019_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889019_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
