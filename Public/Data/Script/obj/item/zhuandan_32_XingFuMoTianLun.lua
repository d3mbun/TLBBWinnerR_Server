--����: �Ҹ�Ħ����<ID:>
--�ű��� 889041
--Author:xiehong 2009-03-18

x889041_g_scriptId = 889041

x889041_g_ColorSockPrize = {
					10124104,
					50213006,
					50201001,
					50201002,
					50202001,
					50202002,
					50202003,
					50202004,
					50203001,
					50204002,
					50211001,
					50211002,
					50212001,
					50212002,
					50212003,
					50212004,
					50213001,
					50213002,
					50213003,
					50213004,
					50213005,
					50214001,
					30900015,
					30900006,
					30008003,
					30504037,					
              } 

x889041_g_strGongGaoInfo = {
	"#G#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504072}#c00FFFF gi�ng nh� �� b� tri�u h�i, �t nhi�n tr�o ra l�m ng߶i ta h�i th� run r�y, m�t c�i #G#{_INFOMSG%s}#c00FFFF �t nhi�n xu�t hi�n � trong tay.",
	"#G#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504072}#c00FFFF gi�ng nh� �� b� tri�u h�i, �t nhi�n tr�o ra l�m ng߶i ta h�i th� run r�y, m�t c�i #G#{_INFOMSG%s}#c00FFFF �t nhi�n xu�t hi�n � trong tay.",
	"#G#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504072}#c00FFFF gi�ng nh� �� b� tri�u h�i, �t nhi�n tr�o ra l�m ng߶i ta h�i th� run r�y, m�t c�i #G#{_INFOMSG%s}#c00FFFF �t nhi�n xu�t hi�n � trong tay.",
}

--��־
x889041_g_AuditIndex = 31

--�����T�i ������to� � ���
x889041_g_DropTableIndex = 26

--���������ϱ���Ԥ��to� � ����
x889041_g_BagPreCount = { 2, 2 }


--**********************************
--�¼��������   
--**********************************
function x889041_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end              
                 
--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889041_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end              
                 
--**********************************
--ֱ��Hu� b�Ч��:  
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889041_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end              
                 
--**********************************
--����������:  
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889041_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < x889041_g_BagPreCount[1] ) then 
		local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
			x889041_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < x889041_g_BagPreCount[2] ) then 
		local strNotice = "� nguy�n li�u kh�ng gian kh�ng ��."
			x889041_ShowNotice( sceneId, selfId, strNotice)
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
function x889041_OnDeplete( sceneId, selfId )
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
function x889041_OnActivateOnce( sceneId, selfId )

	--����ͳ��: ת��to� � ʹ��,ת���ű���ż�m�t 
	LuaFnAuditZhuanDanUsed(sceneId, selfId, x889041_g_AuditIndex, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, x889041_g_DropTableIndex )
    
    if( RandomBase > 0 ) then
    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, x889041_g_DropTableIndex )
        local PrizeNum = 1
        if (RandomID == x889041_g_ColorSockPrize[26]) then
			PrizeNum = 5
        elseif  (RandomID ==x889041_g_ColorSockPrize[1] or RandomID ==x889041_g_ColorSockPrize[23] or RandomID ==x889041_g_ColorSockPrize[25]) then
			PrizeNum = 1
        else
			PrizeNum = 2
        end
        
        if( RandomID > 0 ) then
			
			if RandomID == x889041_g_ColorSockPrize[1] then
				
				BeginAddItem(sceneId)
				AddItem( sceneId, RandomID, PrizeNum )
				local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
				if Ret > 0 then
					LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
					if 1 == Notice then
						local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
						x889041_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
					end
				end
				
			else
				for i = 1, PrizeNum do
					local bagpos = TryRecieveItem( sceneId, selfId, RandomID, QUALITY_MUST_BE_CHANGE )
					LuaFnItemBind( sceneId, selfId, bagpos )					
				end
			end
			
			local ItemName = GetItemName(sceneId, RandomID)
			local strNotice = "��t ���c "..ItemName
			x889041_ShowNotice( sceneId, selfId, strNotice)
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
function x889041_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889041_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889041_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889041_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889041_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889041_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
