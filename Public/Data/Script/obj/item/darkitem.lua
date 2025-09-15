--����: ����˫��Kinh nghi�mʹ�����
--�ű��� 332207
--Author:  houzhifang  2008-12-11

x332207_g_scriptId = 332207

x332207_DarkItem_DoubleExp = 
{
	{ItemIndex = 30503117, ImpactId = 32409, GiveExp = 2},
	{ItemIndex = 30503116, ImpactId = 32408, GiveExp = 1.5},
}

x332207_DarkItem_AdjustAttrItem = 30503115
x332207_DarkItem_AdjustSkillItem = 30503118
x332207_DarkItem_ResetQuality = {type1= 30503119, type2= 30503120}
x332207_DarkItem_Resetdark = 30503121

--**********************************
--�¼��������
--**********************************
function x332207_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x332207_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x332207_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x332207_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ���	
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	local nItemIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local nGiveExp = 0
	local nGiveImpactId = 0	

	for i = 1, getn(x332207_DarkItem_DoubleExp) do
		if x332207_DarkItem_DoubleExp[i].ItemIndex == nItemIndex then
			nGiveExp = x332207_DarkItem_DoubleExp[i].GiveExp
			nGiveImpactId = x332207_DarkItem_DoubleExp[i].ImpactId
			break
		end
	end
	
	if nGiveExp == 0 or nGiveImpactId == 0 then
		return 0;
	end
	
	local nHaveImpact = 0
	--houzf 20090114�޸�,����Ѿ����ù�2��to� � ,�Ͳ���������,����Ѿ����to� � ��ng1.5��to� � ,����Ա�2��to� � ����,��������1.5��to� � 
	if (nItemIndex == x332207_DarkItem_DoubleExp[2].ItemIndex) then
		for i = 1, getn(x332207_DarkItem_DoubleExp) do
			local nRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x332207_DarkItem_DoubleExp[i].ImpactId)
			if nRet == 1 then
				nHaveImpact = 1
			end
		end
	elseif (nItemIndex == x332207_DarkItem_DoubleExp[1].ItemIndex) then
		local nRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x332207_DarkItem_DoubleExp[1].ImpactId)
		if nRet == 1 then
			nHaveImpact = 1
		end
	end

	--for i = 1, getn(x332207_DarkItem_DoubleExp) do
	--	local nRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x332207_DarkItem_DoubleExp[i].ImpactId)
	--	if nRet == 1 then
	--		nHaveImpact = 1
	--	end
	--end
	
	if nHaveImpact == 1 then
		local strNotice =  "#{FBSJ_081209_88}"
		x332207_ShowNotice( sceneId, selfId, strNotice)
		return 0;
	end
	
	return 1; --��C�n �κ�����,����ʼ��Tr� v�1.
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x332207_OnDeplete( sceneId, selfId )
	
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
function x332207_OnActivateOnce( sceneId, selfId )

	local nItemIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local nGiveExp = 0
	local nGiveImpactId = 0
	for i = 1, getn(x332207_DarkItem_DoubleExp) do
		if x332207_DarkItem_DoubleExp[i].ItemIndex == nItemIndex then
			nGiveExp = x332207_DarkItem_DoubleExp[i].GiveExp
			nGiveImpactId = x332207_DarkItem_DoubleExp[i].ImpactId
			break
		end
	end
	
	if nGiveExp == 0 or nGiveImpactId == 0 then
		return 0;
	end
	
	local nHaveImpact = 0
	--houzf 20090114�޸�,����Ѿ����ù�2��to� � ,�Ͳ���������,����Ѿ����to� � ��ng1.5��to� � ,����Ա�2��to� � ����,��������1.5��to� � 
	if (nItemIndex == x332207_DarkItem_DoubleExp[2].ItemIndex) then
		for i = 1, getn(x332207_DarkItem_DoubleExp) do
			local nRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x332207_DarkItem_DoubleExp[i].ImpactId)
			if nRet == 1 then
				nHaveImpact = 1
			end
		end
	elseif (nItemIndex == x332207_DarkItem_DoubleExp[1].ItemIndex) then
		local nRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x332207_DarkItem_DoubleExp[1].ImpactId)
		if nRet == 1 then
			nHaveImpact = 1
		end
	end
	
	--for i = 1, getn(x332207_DarkItem_DoubleExp) do
	--	local nRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x332207_DarkItem_DoubleExp[i].ImpactId)
	--	if nRet == 1 then
	--		nHaveImpact = 1
	--	end
	--end
	
	if nHaveImpact == 1 then
		local strNotice = "#{FBSJ_081209_88}"
		x332207_ShowNotice( sceneId, selfId, strNotice)
		return 0;
	end
	
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, nGiveImpactId, 0)
	
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x332207_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x332207_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x332207_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	--C�i n�y ������T�i û����
	--local PlayerName = GetName(sceneId,selfId)
	--local str = format( x332206_g_strGongGaoInfo, PlayerName, strItemInfo )
	--BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end



function x332207_DarkAttrAdjustForBagItem( sceneId, selfId, bagpos, attrfrom )
	
	local nCleanTimes = GetDarkCleanTimes(sceneId, selfId, bagpos);
	local nTotalCleanTimes = GetDarkTotalCleanTimes(sceneId, selfId, bagpos);
	if (nCleanTimes >= nTotalCleanTimes) then
		DarkOperateResult(sceneId, selfId, 0, -3);
		return
	end
	
	local nAttrValue = GetDarkAttrForBagItem(sceneId, selfId, bagpos, attrfrom);
	if (nAttrValue <= 1) then
		DarkOperateResult(sceneId, selfId, 0, -1);
		return
	end
	
	--��C�i n�y ��Ʒ��
	local bHave = LuaFnGetAvailableItemCount(sceneId, selfId, x332207_DarkItem_AdjustAttrItem);
	if(bHave < 1) then
		DarkOperateResult(sceneId, selfId, 0, -2);
		return
	end
	
	local bMoneyEnough = x332207_HaveEnoughMoney(sceneId, selfId, 0, 10000);
	if ( 1 ~= bMoneyEnough ) then
	    return
	end
	local bCostMoney = x332207_CostMoney(sceneId, selfId, 0, 10000);
	if ( 1 ~= bCostMoney ) then
	    return
	end
	
	--�۳��ɹ�
	if (LuaFnDelAvailableItem(sceneId, selfId, x332207_DarkItem_AdjustAttrItem, 1) ~= 1)  then
		DarkOperateResult(sceneId, selfId, 0, -2);
		return
	end
	
	SetDarkCleanTimes(sceneId, selfId, bagpos, nCleanTimes+1);
	local nAttrTo = AdjustDarkAttrForBagItem(sceneId, selfId, bagpos, attrfrom );
	if nAttrTo == -1 then
		--th�t b�i��,֪ͨ�ͻ���
		DarkOperateResult(sceneId, selfId, 0, -1);
	else
		--�ɹ���,֪ͨ�ͻ���
		DarkOperateResult(sceneId, selfId, 0, nAttrTo);
		x332207_SendImpact(sceneId, selfId, 1);
	end
end

function x332207_DarkSkillAdjustForBagItem( sceneId, selfId, bagpos )
	
	--��C�i n�y ��Ʒ��
	local bHave = LuaFnGetAvailableItemCount(sceneId, selfId, x332207_DarkItem_AdjustSkillItem);
	if(bHave < 1) then
		DarkOperateResult(sceneId, selfId, 1, -2);
		return
	end
	local bMoneyEnough = x332207_HaveEnoughMoney(sceneId, selfId, 1, 50000);
	if ( 1 ~= bMoneyEnough ) then
	    return
	end
	local bCostMoney = x332207_CostMoney(sceneId, selfId, 1, 50000);
	if ( 1 ~= bCostMoney ) then
	    return
	end
	--�۳��ɹ�
	if (LuaFnDelAvailableItem(sceneId, selfId, x332207_DarkItem_AdjustSkillItem, 1) ~= 1)  then
		DarkOperateResult(sceneId, selfId, 1, -2);
		return
	end
	
	local nSucc = AdjustDarkSkillForBagItem(sceneId, selfId, bagpos);
	if nSucc ~= 1 then
		--th�t b�i��,֪ͨ�ͻ���
		DarkOperateResult(sceneId, selfId, 1, -1);
	else
		--�ɹ���,֪ͨ�ͻ���
		DarkOperateResult(sceneId, selfId, 1, 1);
		x332207_SendImpact(sceneId, selfId, 2);
	end
end

function x332207_DarkResetForBagItem( sceneId, selfId, bagpos )
	--��C�i n�y ��Ʒ��
	local nNeedItem = x332207_DarkItem_Resetdark;
		 
	local bHave = LuaFnGetAvailableItemCount(sceneId, selfId, nNeedItem);
	if(bHave < 1) then
		DarkOperateResult(sceneId, selfId, 6, -2);		
		return
	end
	local bMoneyEnough = x332207_HaveEnoughMoney(sceneId, selfId, 6, 10000);
	if ( 1 ~= bMoneyEnough ) then
	    return
	end
	local bCostMoney = x332207_CostMoney(sceneId, selfId, 6, 10000);
	if ( 1 ~= bCostMoney ) then
	    return
	end
	--�۳��ɹ�
	if (LuaFnDelAvailableItem(sceneId, selfId, nNeedItem, 1) ~= 1)  then
		DarkOperateResult(sceneId, selfId, 6, -2);
		return
	end
	
	local nSucc = ResetDarkForBagItem(sceneId, selfId, bagpos);
	if nSucc ~= 1 then
		--th�t b�i��,֪ͨ�ͻ���
		DarkOperateResult(sceneId, selfId, 6, -1);
	else
		--�ɹ���,֪ͨ�ͻ���
		DarkOperateResult(sceneId, selfId, 6, 1);
		x332207_SendImpact(sceneId, selfId, 3);
	end
end

function x332207_DarkResetQualityForBagItem( sceneId, selfId, bagpos, resettype)
--��C�i n�y ��Ʒ��
	local nNeedItem = x332207_DarkItem_ResetQuality.type1;
	if(resettype == 2) then
		nNeedItem = x332207_DarkItem_ResetQuality.type2;
	end
		 
	local bHave = LuaFnGetAvailableItemCount(sceneId, selfId, nNeedItem);
	if(bHave < 1) then
		if(resettype == 2) then
			DarkOperateResult(sceneId, selfId, 2, -3);
		else
			DarkOperateResult(sceneId, selfId, 2, -2);		
		end
		return
	end
	
    local bMoneyEnough = x332207_HaveEnoughMoney(sceneId, selfId, 2, 10000);
	if ( 1 ~= bMoneyEnough ) then
	    return
	end
	local bCostMoney = x332207_CostMoney(sceneId, selfId, 2, 10000);
	if ( 1 ~= bCostMoney ) then
	    return
	end
	
	--�۳��ɹ�
	if (LuaFnDelAvailableItem(sceneId, selfId, nNeedItem, 1) ~= 1)  then
		DarkOperateResult(sceneId, selfId, 2, -2);
		return
	end
	
	local nSucc = ResetDarkQualityForBagItem(sceneId, selfId, bagpos, resettype);
	if nSucc ~= 1 then
		--th�t b�i��,֪ͨ�ͻ���
		DarkOperateResult(sceneId, selfId, 2, -1);
	else
		--�ɹ���,֪ͨ�ͻ���
		DarkOperateResult(sceneId, selfId, 2, 1);
		x332207_SendImpact(sceneId, selfId, 3);
	end
end

function x332207_CalcDarkMultiExpRate(sceneId, selfId)
	local fRate = 1.0;
	for i = 1, getn(x332207_DarkItem_DoubleExp) do
		local nRet = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x332207_DarkItem_DoubleExp[i].ImpactId)
		if nRet == 1 then
			fRate = x332207_DarkItem_DoubleExp[i].GiveExp;
			break;
		end
	end
	
	SetDarkGainExpRate(sceneId, selfId, fRate);
end


function x332207_SendImpact(sceneId, playerId, ntype)

	LuaFnSendSpecificImpactToUnit(sceneId, playerId, playerId, playerId, 18, 0 )   --�����������Linh�to� � ��Чm�t ��
	
end


function x332207_NotifyMailOnLogin(sceneId, selfId)

	if ( GetLevel(sceneId, selfId) >= 30 ) then
		local flag = GetMissionFlag(sceneId, selfId, MF_DARK_NOTIFYMAIL)
		if (flag == 0) then
			LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), "#{FBSJ_090311_09}" )
			SetMissionFlag(sceneId, selfId, MF_DARK_NOTIFYMAIL, 1)
		end
	end
	
end

function x332207_HaveEnoughMoney(sceneId, selfId, nType, nMoney)
   	--�ж����������ng�����㹻to� � Ǯ
	local nHaveMoney = GetMoney(sceneId, selfId) + GetMoneyJZ(sceneId, selfId);
	if (nHaveMoney >= nMoney) then
	    return 1;
	else
        DarkOperateResult(sceneId, selfId, nType, -4);
	    return 0;
	end
end

function x332207_CostMoney(sceneId, selfId, nType, nMoney)
   	--��Ǯ
	local nRet, nRetJB = LuaFnCostMoneyWithPriority(sceneId, selfId,nMoney);
	if (nRet == -1) then
        DarkOperateResult(sceneId, selfId, nType, -4);
	    return 0;
	else
		return 1;
	end
end
