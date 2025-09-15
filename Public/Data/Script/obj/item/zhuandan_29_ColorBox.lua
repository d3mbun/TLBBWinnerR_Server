--����: �ͷ����<ID:30504051>
--�ű��� 889030
--Author:xiehong 2009-02-11

x889030_g_scriptId = 889030
x889030_g_ColorSockPrize = {
				30501169,
				30502002,
				30008034,
				30008048,
				30008009,
				30900006,
				30607001,
				30700203,
				30309731,
				10141804,
				30509011,
				30402087,
				30402088,
				30402089,
				30402090,
				30501178,
				30501187,
				30501232,
				30501223,
				30501214,
				30501241,
				30501196,
				30501205,
				30501179,
				30501188,
				30501233,
				30501224,
				30501215,
				30501242,
				30501197,
				30501206,
				30501180,
				30501189,
				30501234,
				30501225,
				30501216,
				30501243,
				30501198,
				30501207,
				30504049,
				30504048,
				10124101,
				31000001,
				31000003,
				30402096,
				30402097,
				30402099,
				30402098
              } 
                 
x889030_g_strGongGaoInfo = {
	"#c00FFFFXinh �p #G#{_ITEM30504051}#c00FFFF, s�c s� lo� m�t xu�t hi�n tr߾c m�t, #{_INFOUSR%s}#c00FFFF th�t c�n th�n m� ra, nh�ng l�i ��t ���c #{_INFOMSG%s}.",
	"#c00FFFFXinh �p #G#{_ITEM30504051}#c00FFFF, s�c s� lo� m�t xu�t hi�n tr߾c m�t, #{_INFOUSR%s}#c00FFFF th�t c�n th�n m� ra, nh�ng l�i ��t ���c #{_INFOMSG%s}.",
	"#c00FFFFXinh �p #G#{_ITEM30504051}#c00FFFF, s�c s� lo� m�t xu�t hi�n tr߾c m�t, #{_INFOUSR%s}#c00FFFF th�t c�n th�n m� ra, nh�ng l�i ��t ���c #{_INFOMSG%s}.",
}

--��־
x889030_g_AuditIndex = 28

--�����T�i ������to� � ���
x889030_g_DropTableIndex = 23

--���������ϱ���Ԥ��to� � ����
x889030_g_BagPreCount = { 1, 0 }


--**********************************
--�¼��������   
--**********************************
function x889030_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end              
                 
--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889030_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end              
                 
--**********************************
--ֱ��Hu� b�Ч��:  
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889030_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end              
                 
--**********************************
--����������:  
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889030_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < x889030_g_BagPreCount[1] ) then 
		local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
			x889030_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < x889030_g_BagPreCount[2] ) then 
		local strNotice = "� nguy�n li�u kh�ng gian kh�ng ��."
			x889030_ShowNotice( sceneId, selfId, strNotice)
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
function x889030_OnDeplete( sceneId, selfId )
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
function x889030_OnActivateOnce( sceneId, selfId )

	--����ͳ��: ת��to� � ʹ��,ת���ű���ż�m�t 
	LuaFnAuditZhuanDanUsed(sceneId, selfId, x889030_g_AuditIndex, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, x889030_g_DropTableIndex )
    if( RandomBase > 0 ) then
    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, x889030_g_DropTableIndex )
        local PrizeNum = 1
        if (RandomID == x889030_g_ColorSockPrize[1]) then
			PrizeNum = 22
        elseif  (RandomID ==x889030_g_ColorSockPrize[2]) then
			PrizeNum = 10
        elseif  (RandomID ==x889030_g_ColorSockPrize[3] or RandomID ==x889030_g_ColorSockPrize[6] or RandomID ==x889030_g_ColorSockPrize[8]) then
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
					x889030_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				end
				      
				local ItemName = GetItemName(sceneId, RandomID)
				local strNotice = "��t ���c "..ItemName
				x889030_ShowNotice( sceneId, selfId, strNotice)
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
			else
				local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				x889030_ShowNotice( sceneId, selfId, strNotice)
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
function x889030_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889030_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889030_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889030_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889030_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889030_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
