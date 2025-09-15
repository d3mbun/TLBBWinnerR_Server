--����: t� b�o b�n<ID:30008038>
--�ű��� 332204
--Author: Steven.Han 10:39 2007-5-24

x332204_g_scriptId = 332204

x332204_g_MultiJuBaoPenMaxUseCount = 11

x332204_g_strGongGaoInfo = {
  "#{_INFOUSR%s}#HM� ra #G#{_ITEM30008038}#H, th�t s� nh� nguy�n ��t ���c #{_INFOMSG%s}#H, th�t s� l� l�m ng߶i ta h�m m�",
  "#{_INFOUSR%s}#H�ang th�m o�n #G#{_ITEM30008038}#H qu� nh�, th� nh�ng � b�n trong ph�t hi�n m�t c�i l�n h�n n�a #{_INFOMSG%s}!",
  "#{_INFOUSR%s}#HNg�y th߶ng c�n ki�m ti�t ki�m, h�m nay � #G#{_ITEM30008038}#H chi�m ���c m�t c�i #{_INFOMSG%s}#H, r�t c�c kh�ng c�n v�t ph�m, nhi�u th�i �i�m v� n�m xu�ng ng߶i m� ph�t s�u!",
}

--**********************************
--�¼��������
--**********************************
function x332204_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x332204_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x332204_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x332204_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	        local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
		      x332204_ShowNotice( sceneId, selfId, strNotice)
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
function x332204_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

function x332204_GetPos( DropList, RandomID )
    local ListSize = getn( DropList )
    for i=1, ListSize do
        if RandomID == DropList[i][1] then
            return i
        end
    end
    
    return 0
end

function x332204_OnTest( sceneId, selfId )

    local DropList = {}
    local RandomBase = GetDarkBoxItemDropCount( sceneId, selfId )
    
    --PrintNum( RandomBase )
    
    for ii = 1, RandomBase do
		if( RandomBase > 0 ) then    
			local RandomNum = random( 0, RandomBase - 1 )
			local RandomID, Notice = DarkBoxItemDropRandom( sceneId, selfId, RandomNum )
	        local Pos = x332204_GetPos( DropList, RandomID )
	        local ListSize = getn( DropList )
	       
	        if 0 == Pos then
	            DropList[ ListSize+1 ] = { RandomID, 1 }
	        else
	            DropList[ Pos ] = { RandomID, DropList[ Pos ][2] + 1 }
	        end
	        
		end
        
    end
    
    local ListSize = getn( DropList )
    local sysstr = "=====================#r"
    local TotalItem = 0
    sysstr = sysstr.."T�ng c�ng ch�ng lo�i v�t ph�m "..ListSize..", s� li�u c� th�:"
	BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	
	for i=1, ListSize do
	    TotalItem = TotalItem + DropList[ i ][2]
	end
	
	for i=1, ListSize do
	    sysstr = DropList[ i ][1]..","..DropList[ i ][2]
	    local per = DropList[ i ][2] / TotalItem * 100
	    sysstr = sysstr.."     "
	    sysstr = sysstr..(per).."%"
	    BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	end
	
	sysstr = "T�ng c�ng s� l��ng v�t ph�m "..TotalItem
	BroadMsgByChatPipe( sceneId, selfId, sysstr, 4 )
	
	
    
end


--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x332204_OnActivateOnce( sceneId, selfId )
    
    --x332204_OnTest( sceneId, selfId )
    
    local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
    local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    local ValidValue = x332204_g_MultiJuBaoPenMaxUseCount - UseValue
	
	--����m�t ��t� b�o b�n
	if bagId >= 0 then
		local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
		
		if UseValue >= x332204_g_MultiJuBaoPenMaxUseCount then   --��¼to� � ʹ�ô������ڵ��������ô���,�����ϲ����ܳ���.
		    return 0
		end
		
		local CurValue = UseValue + 1
		
		SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332204_g_MultiJuBaoPenMaxUseCount ) --����������
		SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --�������ô���
		
		--------------�������ð�ȫ�Լ��,��Ȼ�����ϲ������ò���th�t b�i
		local CheckParam1 = GetBagItemParam( sceneId, selfId, bagId, 4, 2 )   
		local CheckParam2 = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
		
		if CheckParam1 ~= x332204_g_MultiJuBaoPenMaxUseCount then
		    return 0
		end
		if CheckParam2 ~= CurValue then
		    return 0
		end
		--------------�������ð�ȫ�Լ��,��Ȼ�����ϲ������ò���th�t b�i
		
		
		LuaFnRefreshItemInfo( sceneId, selfId, bagId )
	    
		if CurValue >= x332204_g_MultiJuBaoPenMaxUseCount then  --��ʹ�ô����ﵽ������ʱ,��ɾ������Ʒ
			local EraseRet = EraseItem( sceneId, selfId, bagId )
			if EraseRet < 0 then      --���ɾ��th�t b�i,������������Ʒ
			    local strNotice = "C�n t� b�o b�n"
				  x332204_ShowNotice( sceneId, selfId, strNotice)
				return 0
			end
			
		end
	else
		local strNotice = "C�n t� b�o b�n"
		x332204_ShowNotice( sceneId, selfId, strNotice)
		return 0
	end
    
    --����ͳ��: ������to� � ʹ��
    local nRemain = x332204_g_MultiJuBaoPenMaxUseCount-UseValue-1;
    if(0>nRemain) then
    	nRemain = 0
    end
    
	LuaFnAuditJuBaoContainerUsed(sceneId, selfId, 1, nRemain);
		
    --����t� b�o b�n���,���������Ʒ
    local RandomBase = GetJuBaoContainerItemDropCount( sceneId, selfId )
    if( RandomBase > 0 ) then    
         
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = JuBaoContainerItemDropRandom( sceneId, selfId, RandomNum )
       
        if( RandomID > 0 ) then
          BeginAddItem(sceneId)
				  AddItem( sceneId, RandomID, 1 )
			    local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			
			    if Ret > 0 then
			       LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
				
				     if 1 == Notice then
					      local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					      x332204_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				     end
				
				     local ItemName = GetItemName(sceneId, RandomID)
				     local strNotice = "��t ���c "..ItemName
				     x332204_ShowNotice( sceneId, selfId, strNotice)
				     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				
			else
				local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				x332204_ShowNotice( sceneId, selfId, strNotice)
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
function x332204_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x332204_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x332204_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x332204_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x332204_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x332204_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
