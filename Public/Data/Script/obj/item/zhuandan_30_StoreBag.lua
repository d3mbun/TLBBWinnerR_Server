--����: ��ʯ����<ID:30504054>
--�ű��� 889033
--Author:xiehong 2009-02-11

x889033_g_scriptId = 889033
x889033_g_ColorSockPrize = {
					30501169,
					30900006,
					30008034,
					30008048,
					30502002,
					50613001,
					50613002,
					50613004,
					50613003,
					50613005,
					50603001,
					50604002,
					50614001,
					50713001,
					50713002,
					50713004,
					50713003,
					50713005,
					50703001,
					50704002,
					50714001,
					30008006,
					30008007,
					10141115,
					20109009,
					20109010,
					20109101,
					30509025,
					30509021,
					30509024
              } 
                 
x889033_g_strGongGaoInfo = {
	"#G#{_ITEM30504054}#c00FFFFH�i th� d�n d�p, may m�n #{_INFOUSR%s}#c00FFFF c�ng l�c th�m h�u th�n h�nh �n �nh, kinh ng�c ph�t hi�n trong tay h�n m�t c�i #{_INFOMSG%s}.",
	"#G#{_ITEM30504054}#c00FFFFH�i th� d�n d�p, may m�n #{_INFOUSR%s}#c00FFFF c�ng l�c th�m h�u th�n h�nh �n �nh, kinh ng�c ph�t hi�n trong tay h�n m�t c�i #{_INFOMSG%s}.",
	"#G#{_ITEM30504054}#c00FFFFH�i th� d�n d�p, may m�n #{_INFOUSR%s}#c00FFFF c�ng l�c th�m h�u th�n h�nh �n �nh, kinh ng�c ph�t hi�n trong tay h�n m�t c�i #{_INFOMSG%s}.",
}

--��־
x889033_g_AuditIndex = 29

--�����T�i ������to� � ���
x889033_g_DropTableIndex = 24

--���������ϱ���Ԥ��to� � ����
x889033_g_BagPreCount = { 1, 1 }


--**********************************
--�¼��������   
--**********************************
function x889033_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end              
                 
--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889033_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end              
                 
--**********************************
--ֱ��Hu� b�Ч��:  
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889033_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end              
                 
--**********************************
--����������:  
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889033_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < x889033_g_BagPreCount[1] ) then 
		local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
			x889033_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < x889033_g_BagPreCount[2] ) then 
		local strNotice = "� nguy�n li�u kh�ng gian kh�ng ��."
			x889033_ShowNotice( sceneId, selfId, strNotice)
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
function x889033_OnDeplete( sceneId, selfId )
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
function x889033_OnActivateOnce( sceneId, selfId )

	--����ͳ��: ת��to� � ʹ��,ת���ű���ż�m�t 
	LuaFnAuditZhuanDanUsed(sceneId, selfId, x889033_g_AuditIndex, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, x889033_g_DropTableIndex )
    if( RandomBase > 0 ) then
    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, x889033_g_DropTableIndex )
        local PrizeNum = 1
        if (RandomID == x889033_g_ColorSockPrize[1]) then
			PrizeNum = 10
        elseif  (RandomID ==x889033_g_ColorSockPrize[2] or RandomID ==x889033_g_ColorSockPrize[29] or RandomID ==x889033_g_ColorSockPrize[30]) then
			PrizeNum = 2
        elseif  (RandomID ==x889033_g_ColorSockPrize[5]) then
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
					x889033_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				end
				      
				local ItemName = GetItemName(sceneId, RandomID)
				local strNotice = "��t ���c "..ItemName
				x889033_ShowNotice( sceneId, selfId, strNotice)
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
			else
				local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				x889033_ShowNotice( sceneId, selfId, strNotice)
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
function x889033_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889033_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889033_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889033_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889033_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889033_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
