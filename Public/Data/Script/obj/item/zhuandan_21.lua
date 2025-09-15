--����: GF���<ID:30504042>
--�ű��� 889021
--Author:zhangzhuang 2008-12-27

x889021_g_scriptId = 889021
x889021_g_GFPrize = {
	               10141087,	
						30501132,
						30501133,
						30501153,
						30501151,
						31000001,
						31000003,
						30607000,
						30008011,
						30900006,
						30502002,
						30008002,
						30402026,
						30402092,
						30402046,
						30402094,
						30402072,
						30402036,
						30402076,
						30402078,
						30402025,
						30402030,
						30402034,
						30402040,
						30402042,
						30402044,
						30402048,
						30402050,
						30402012,
						30402014,
						30402016,
						30402018,
						30402020,
						30402056,
						30402060,
						30402062,
						30402064,
						30402066,
						30402068,
						30402070,
						30402074,
						30402080,
						30402091,
						30402093,
						30402051,
						30402052,
						30402053,
						30402054,
						30402045,
						30402029,
						30402035,
						30402055,
						30402059,
						30402047,
						30402049,
						30402061,
						30402063,
						30402065,
						30402067,
						30402069,
						30402073,
						30402033,
						30402039,
						30402041,
						30402043,
						30402075,
						30402077,
						30402079,
						30008034,
						30008048,
						30008009,
						30309619,
						10124063,
						10124066,
						10141091,
						30700203,
						30501169
	              } 

x889021_g_strGongGaoInfo = {
	"#{_INFOUSR%s}#c00FFFFNh�n th�t tinh x�o #G#{_ITEM30504042}#c00FFFF, ki�m ch� kh�ng ���c m� ra, th� m�nh, ���c m�t c�i #{_INFOMSG%s}#c00FFFF.",
 "#{_INFOUSR%s}#c00FFFFNh�n th�t tinh x�o #G#{_ITEM30504042}#c00FFFF, ki�m ch� kh�ng ���c m� ra, th� m�nh, ���c m�t c�i #{_INFOMSG%s}#c00FFFF.",
  "#{_INFOUSR%s}#c00FFFFNh�n th�t tinh x�o #G#{_ITEM30504042}#c00FFFF, ki�m ch� kh�ng ���c m� ra, th� m�nh, ���c m�t c�i #{_INFOMSG%s}#c00FFFF.",
}
--**********************************
--�¼��������
--**********************************
function x889021_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889021_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889021_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889021_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--��Ϊת����������m�t c�i,����m�t c�i�ո�,�Һ��������ཱ��3c�i�����ж�ʣ��ռ�<2	
--��Ϊ���ز�������Ʒ��to� � T�i � ��o c� �� �y�,��to� � T�i ������
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 2 ) then 
	        local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
		      x889021_ShowNotice( sceneId, selfId, strNotice)
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
function x889021_OnDeplete( sceneId, selfId )
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
function x889021_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 20, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 18)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 18 )
        local PrizeNum = 0
         if (RandomID == x889021_g_GFPrize[77]) then
          PrizeNum = 22
        elseif (RandomID == x889021_g_GFPrize[76]) then
          PrizeNum = 4
        elseif (RandomID == x889021_g_GFPrize[9] or RandomID == x889021_g_GFPrize[10] or 
        	RandomID == x889021_g_GFPrize[11] or RandomID == x889021_g_GFPrize[12]) then
        	PrizeNum = 3
        elseif (RandomID == x889021_g_GFPrize[71] or RandomID == x889021_g_GFPrize[69]) then
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
					       x889021_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "��t ���c "..ItemName
				      x889021_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      x889021_ShowNotice( sceneId, selfId, strNotice)
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
function x889021_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889021_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889021_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889021_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889021_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889021_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
