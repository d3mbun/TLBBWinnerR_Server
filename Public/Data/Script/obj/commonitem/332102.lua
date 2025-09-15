--����: ��Һ��ƿ<ID:31000002>
--�ű��� 332102
--Author: Steven.Han 18:26 2007-5-17

x332102_g_scriptId = 332102
--x332102_g_MaxValue = 500000 zchw
x332102_g_IncPerAct = 1000

--**********************************
--�¼��������
--**********************************
function x332102_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x332102_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x332102_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x332102_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
	local PlayerMP = GetMp(sceneId, selfId)
    local PlayerMaxMP  = GetMaxMp(sceneId, selfId)
      
    if PlayerMP == PlayerMaxMP then
        LuaFnSendOResultToPlayer( sceneId, selfId, OR_MANA_IS_FULL )
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
function x332102_OnDeplete( sceneId, selfId )
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
function x332102_OnActivateOnce( sceneId, selfId )

    local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
    local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    -- zchw
    local x332102_g_MaxValue;
    local UsedItemNum = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);   
       
    if( tonumber(UsedItemNum) == 31000007 ) then  --��ƿ
    		x332102_g_MaxValue =50000;
    else
    		x332102_g_MaxValue =500000;		--��ƿ
    end
    local ValidValue = x332102_g_MaxValue - UseValue
    
    local PlayerMP = GetMp(sceneId, selfId)
    local PlayerMaxMP  = GetMaxMp(sceneId, selfId)
    local NeedMP = PlayerMaxMP - PlayerMP   --C�n �ָ�to� � MP��
    
    if x332102_g_IncPerAct < NeedMP then
        NeedMP = x332102_g_IncPerAct
    end
     
    if PlayerMP == PlayerMaxMP then
        LuaFnSendOResultToPlayer( sceneId, selfId, OR_MANA_IS_FULL )
    else
		local nCB = ValidValue   --S� d�ng tr߾c ����
		local nMPB = PlayerMP    --S� d�ng tr߾c ���hp
		local bErased = -1       --��Ʒ��ng��ɾ��
		    
        if NeedMP >= ValidValue then  --���ṩto� � MP����ָ���Ҷ���MP
            --IncreaseMp
            IncreaseMp(sceneId, selfId, ValidValue ) --�ָ����ṩto� � MP
            SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332102_g_MaxValue ) --�����������
            SetBagItemParam( sceneId, selfId, bagId, 8, 2, x332102_g_MaxValue ) --������������
            bErased = EraseItem( sceneId, selfId, bagId )
        else
            IncreaseMp(sceneId, selfId, NeedMP ) --�ָ�C�n to� � MP,��ʱ,���Ӧ��MPȫ��
            SetBagItemParam( sceneId, selfId, bagId, 4, 2, x332102_g_MaxValue ) --�����������
            SetBagItemParam( sceneId, selfId, bagId, 8, 2, UseValue + x332102_g_IncPerAct ) --������������
            
            if( ( UseValue + x332102_g_IncPerAct ) >= x332102_g_MaxValue ) then
                bErased = EraseItem( sceneId, selfId, bagId )
            end
            
        end


        local szName = GetName( sceneId, selfId )
        local nGuid = LuaFnGetGUID( sceneId, selfId )
		local nMPA = GetMp(sceneId, selfId)             --s� d�ng sau ���hp
		
        if bErased < 0 then
			--local szLog = "Use31000002, Name=%s, Guid=%d, CB=%d, CA=%d, HPB=%d, HPA=%d, BIDX=%d"
			local szLog = "Use31000002, T�n=%s, Guid=%d, L��ng d��c s� d�ng tr߾c=%d, L��ng d��c s� d�ng sau=%d, S� d�ng tr߾c MP=%d, s� d�ng sau MP=%d, v� tr� tay n�i=%d"
			local UseValue_log = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
			local nCA = x332102_g_MaxValue - UseValue_log   --s� d�ng sau ����
			
			local szDebugLog = format( szLog, szName, nGuid, nCB, nCA, nMPB, nMPA, bagId )
			WriteDebugLog( sceneId, selfId, szDebugLog )  
        else
			local szLog = "Use31000002, T�n=%s, Guid=%d, L��ng d��c s� d�ng tr߾c=%d, �� b� c�t b�, S� d�ng tr߾c MP=%d, s� d�ng sau MP=%d, v� tr� tay n�i=%d"
			local szDebugLog = format( szLog, szName, nGuid, nCB, nMPB, nMPA, bagId )
			WriteDebugLog( sceneId, selfId, szDebugLog )
        end
        
        --LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 1000 )
        --SetHp( sceneId, selfId, 1 ) --������ҩ�ô���,m�t ��Ҫɾ�˰�!
        
    end
    
    LuaFnRefreshItemInfo( sceneId, selfId, bagId )

	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x332102_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x332102_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
