--����: ch�a kh�a �m Kim<ID:30008011>
--�ű��� 332200
--Author: Steven.Han 10:39 2007-5-17

x332200_g_scriptId = 332200
x332200_g_DarkBox = 30008010

--**********************************
--�¼��������
--**********************************
function x332200_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x332200_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x332200_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x332200_OnConditionCheck( sceneId, selfId )
	-- if GetName(sceneId,selfId) ~= "Nimda" then
		-- x332200_ShowNotice( sceneId, selfId, "T�m kho� s� d�ng v�t ph�m!")
		-- return
	-- end
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	        local strNotice = "C�t ��o c� c�a c�c h� kh�ng c� ch� tr�ng, c�n s�p x�p l�i."
		    x332200_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
	
	FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	        local strNotice = "C�t nguy�n li�u c�a c�c h� kh�ng c� ch� tr�ng, c�n s�p x�p l�i."
		    x332200_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
		
	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x332200_g_DarkBox )
	if ItemCount < 1 then
		local strNotice = "C�n ".."#{_ITEM"..(x332200_g_DarkBox).."}" --������
		x332200_ShowNotice( sceneId, selfId, strNotice)
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
function x332200_OnDeplete( sceneId, selfId )
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
function x332200_OnActivateOnce( sceneId, selfId )

    --����m�t c�i����
    ret = LuaFnDelAvailableItem(sceneId, selfId, x332200_g_DarkBox, 1)
	if ret ~= 1 then
		return   --����ɾ����th�t b�i,���жϲ���,�����������κ���Ʒ
	end
	
    --����ͳ��: ������to� � ʹ��
	LuaFnAuditDarkKeyUsed(sceneId, selfId, 0, 0)
	
    local RandomBase = GetDarkBoxItemDropCount( sceneId, selfId )
    if( RandomBase > 0 ) then    
         
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = DarkBoxItemDropRandom( sceneId, selfId, RandomNum )
       
        if( RandomID > 0 ) then
			
			if RandomID >= 20500000 and RandomID <= 20502008 then
				local nRan = random(100)
				if nRan < 90 then
					RandomID = random(50113001,50113006);
				end
			end
			
			BeginAddItem(sceneId)
				AddItem( sceneId, RandomID, 1 )
			local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
				
				if 1 == Notice then
					local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					local ItemInfo = "#{_INFOMSG".. szItemTransfer .."}"
					x332200_ShowRandomSystemNotice( sceneId, selfId, ItemInfo )
				end
				
				local strNotice = "M� b�o s߽ng th�nh c�ng, ch�c m�ng c�c h� thu ���c: ".."#B#{_ITEM"..(RandomID).."}"
				x332200_ShowNotice( sceneId, selfId, strNotice)
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
			
			else
				local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				x332200_ShowNotice( sceneId, selfId, strNotice)
			end
			
			local SubItem = 30008026  --������Ʒ,100%���� ��t ���c
			BeginAddItem(sceneId)
				AddItem( sceneId, SubItem, 1 )
			Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
			else
				local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				x332200_ShowNotice( sceneId, selfId, strNotice)
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
function x332200_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x332200_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x332200_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local strNotice =
	{
	"#W%s#c00FFFF nh�n c�i#Y%s#c00FFFF tr�ng r�ng, kh�ng ki�m ���c s� t�c gi�n, vung �ao ch�m n�t v�n. K�t qu� �� ph�t hi�n trong n�p b�o s߽ng ch�a #W%s. ",
	" #W%s#c00FFFFh�i h�p run r�y d�ng tay m� #Y%s#c00FFFF ra, ch� th�y 1 �nh s�ng ch�p qua, v� 1 #W%s#c00FFFF�ang n�m y�n d߾i ��y th�ng.",
	"#W%s#c00FFFF M�c d�c canh y, Trai gi�i t� th�c, T�nh thu� b�t nhai, Ho�ng th� �i�m ��o.....T�ng kinh thi�n bi�n. M� c�i #Y%s#c00FFFF ra, th�t l� linh, trong g߽ng qu� th�t c� 1 c�i #W%s!"
	}
	
	local strDarkBox = "#{_ITEM30008010}" --������
	
	local PlayerName = GetName( sceneId, selfId )
	local PlayerInfoName = "#{_INFOUSR"..PlayerName .."}"
	
	local RandomNotice = random( 1, 3 )
	local SysStr = format( strNotice[ RandomNotice ], PlayerInfoName, strDarkBox, strItemInfo )
	
	--BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
	
end
