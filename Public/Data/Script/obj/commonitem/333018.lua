-- ������[ QUFEI 2007-11-07 09:53 UPDATE BugID 24671 ]

-- ����ҵ���_Ti�n thi�n quy t�m �an (�ĳ���ȷT�n)
-- ItemID = 31000004
-- �ű���	333018
-- ���ٷֱ������������ֵ
-- ��Ʒ����ʹ��20��
-- �Ժ�ÿ��ʹ�ÿ�m�t ��,�����ɾ����Ʒ

x333018_g_scriptId = 333018
x333018_g_MinValue = 1000			-- HP��С����ֵ
x333018_g_MaxHPValue = 0			-- HP��������ֵ
x333018_g_MaxUseCount = 20		-- ���ʹ�ô���20��
x333018_g_HPValuePer = 0.1		-- HP�ָ��ٷֱ�

--**********************************
--�¼��������
--**********************************
function x333018_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x333018_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x333018_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x333018_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
	local PlayerHP = GetHp(sceneId, selfId)
  local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
    
  --PrintStr( ""..UseValue.."/"..ValidValue.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
  
  if PlayerHP >= PlayerMaxHP then
      LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
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
function x333018_OnDeplete( sceneId, selfId )
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
function x333018_OnActivateOnce( sceneId, selfId )

   local bagId	 = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
   local UseValue = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
   local ValidValue = x333018_g_MaxUseCount - UseValue      
   local PlayerHP = GetHp(sceneId, selfId)
   local PlayerMaxHP  = GetMaxHp(sceneId, selfId)
   local NeedHP = floor(PlayerMaxHP * x333018_g_HPValuePer)   --C�n �ָ�to� � HP��
   local IsDelete = 0		-- ��Ʒ��ng��ɾ��
   
   if NeedHP < x333018_g_MinValue then
       NeedHP = x333018_g_MinValue
   end
   
   --PrintStr( ""..ValidValue.."/"..x333018_g_MaxUseCount.." "..PlayerHP.."/"..PlayerMaxHP.."".."")
   
   if PlayerHP >= PlayerMaxHP then
       LuaFnSendOResultToPlayer( sceneId, selfId, OR_HEALTH_IS_FULL )
       return 0
   end
   
   --����m�t ��Ti�n thi�n quy t�m �an
	if bagId >= 0 then		
		
		if UseValue >= x333018_g_MaxUseCount then   --��¼to� � ʹ�ô������ڵ��������ô���,�����ϲ����ܳ���.
	    return 0
		end

		local CurValue = UseValue + 1
		
    IncreaseHp(sceneId, selfId, NeedHP ) --�ָ�C�n to� � HP
    SetBagItemParam( sceneId, selfId, bagId, 4, 2, x333018_g_MaxUseCount ) --�����������
    SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurValue ) --������������
     
    --------------�������ð�ȫ�Լ��,��Ȼ�����ϲ������ò���th�t b�i
		local CheckParam1 = GetBagItemParam( sceneId, selfId, bagId, 4, 2 )   
		local CheckParam2 = GetBagItemParam( sceneId, selfId, bagId, 8, 2 )
    
    if CheckParam1 ~= x333018_g_MaxUseCount then
	    return 0
		end
		if CheckParam2 ~= CurValue then
	    return 0
		end
     --------------�������ð�ȫ�Լ��,��Ȼ�����ϲ������ò���th�t b�i      
     
    LuaFnRefreshItemInfo( sceneId, selfId, bagId )	--ˢ�±�����Ϣ
     
    if CurValue >= x333018_g_MaxUseCount then		--��ʹ�ô����ﵽ������ʱ,��ɾ������Ʒ
        local bErased = EraseItem( sceneId, selfId, bagId )
        IsDelete = 1
         
      if bErased < 0 then      --���ɾ��th�t b�i,����������κ�Ч��
		 		local strMsg = "C�n Ti�n thi�n quy t�m �an"
				x333018_ShowNotice( sceneId, selfId, strMsg)
				return 0
			end
		
   	end
   	
   	local szName = GetName( sceneId, selfId )
		local nGuid = LuaFnGetGUID( sceneId, selfId )
		
   	local szLog = "Use31000004, T�n=%s, Guid=%0X, L��ng d��c s� d�ng tr߾c=%d, L��ng d��c c�n th�a=%d, S� d�ng tr߾c HP=%d, s� d�ng sau HP=%d, v� tr� tay n�i=%d, C� hay kh�ng �� b� c�t b�=%d"
		local UseValue_log = x333018_g_MaxUseCount - CurValue	-- L��ng d��c c�n th�a
		local PlayerNowHP = GetHp(sceneId, selfId)	-- ��Ѫ�����to� � HP
		
		local szDebugLog = format( szLog, szName, nGuid, ValidValue, UseValue_log, PlayerHP, PlayerNowHP, bagId, IsDelete )
		WriteDebugLog( sceneId, selfId, szDebugLog )  
   	
  else
		local strMsg = "C�n Ti�n thi�n quy t�m �an"
		x333018_ShowNotice( sceneId, selfId, strMsg)
		return 0
	end

	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x333018_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x333018_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
