--��ʦ�ڴ���� Created by zchw

--�ű���
x300101_g_scriptId = 300101

x300101_g_prize = {
										{id = 30501162, rate = 999200}, --S� а B�o Ch�u � ��o c� �� �y� ʰȡ��
										{id = 20307002, rate = 150},    --Ⱦ����   ������
										{id = 10124056, rate = 644},    --���Ӽ��� � ��o c� �� �y� ʰȡ��
										{id = 20310103, rate = 2},      --�����   ������
										{id = 20310104, rate = 2},      --���צ
										{id = 20310105, rate = 2},			--�����
									}
--**********************************
-- Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ִ�� OnDefaultEvent.
--**********************************
function x300101_IsSkillLikeScript( sceneId, selfId )
	return 1
end

--**********************************
-- Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300101_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
-- ����������: Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300101_OnConditionCheck( sceneId, selfId )
	-- У��ʹ��to� � ��Ʒ
	if LuaFnVerifyUsedItem( sceneId, selfId ) ~= 1 then
		return 0
	end
	return 1
end

--**********************************
--���ļ�⼰�������,��������to� � ����ִ��: 
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--**********************************
function x300101_OnDeplete( sceneId, selfId )
	return 1
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300101_OnActivateOnce( sceneId, selfId )

	--ɾ��ǰ����Trans....
	local BagPos = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagPos )

	-- �i�m��������Ʒ��
	local ranNum = random(1000000);
	local prizeIndex = 0;
	if (ranNum < 999200) then   --S� а B�o Ch�u � ��o c� �� �y�
		prizeIndex = x300101_g_prize[1].id;
	elseif (ranNum < 999200+150) then  --Ⱦ����
		prizeIndex = x300101_g_prize[2].id;
	elseif (ranNum < 999200+150+644) then --���Ӽ���
		prizeIndex = x300101_g_prize[3].id;
	elseif (ranNum < 999200+150+644+2) then
		prizeIndex = x300101_g_prize[4].id;
	elseif (ranNum < 999200+150+644+2+2) then
		prizeIndex = x300101_g_prize[5].id;
	else
		prizeIndex = x300101_g_prize[6].id;
	end

	local spaceNum1 = LuaFnGetPropertyBagSpace(sceneId, selfId);
	local spaceNum2 = LuaFnGetMaterialBagSpace(sceneId, selfId);
	
	if spaceNum1 == 0 or spaceNum2 ==0 then
		x300101_NotifyFailTips(sceneId, selfId, "� ��o c� ho�c nguy�n li�u kh�ng gian kh�ng ��!");
		return 0;
	end
	
	--ɾ�������
	if LuaFnDepletingUsedItem( sceneId, selfId ) <= 0 then
		return 0;
	end
	-- ������
	local PrizePos = TryRecieveItem(sceneId, selfId, prizeIndex, QUALITY_MUST_BE_CHANGE );

	--ʰȡ�� 
	if (prizeIndex == x300101_g_prize[1].id) or (prizeIndex == x300101_g_prize[3].id) then
		if LuaFnItemBind(sceneId, selfId, PrizePos) ~= 1 then
				local bindmsg = "Bu�c �nh th�t b�i"													
		  	BeginEvent( sceneId )
		    	AddText( sceneId, bindmsg )
		  	EndEvent( sceneId )
		  	DispatchMissionTips( sceneId, selfId )
		end
	end
	local PrizeItemInfo = GetBagItemTransfer(sceneId, selfId, PrizePos);

  -- add log
  AuditUseTeacherGift(sceneId, selfId, prizeIndex);
	-- add notify
	local msg = nil;
	local playerName = GetName(sceneId, selfId);

	if (prizeIndex == x300101_g_prize[2].id) or (prizeIndex == x300101_g_prize[3].id) then
		msg = format("#B#{_INFOUSR%s}#{STDLB_8725_1}#{_INFOMSG%s}#{STDLB_8725_2}#{_INFOMSG%s}#{JPN_3}", playerName, ItemInfo, PrizeItemInfo);
	elseif (prizeIndex == x300101_g_prize[4].id) or (prizeIndex == x300101_g_prize[5].id) or (prizeIndex == x300101_g_prize[6].id) then
		msg = format("#B#{_INFOUSR%s}#{STDLB_8725_1}#{_INFOMSG%s}#{STDLB_8725_3}#{_INFOMSG%s}#{STDLB_8725_4}", playerName, ItemInfo, PrizeItemInfo);
	end

	if msg ~= nil then
		AddGlobalCountNews( sceneId, msg )
	end
	-- set buff
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 8062, 0); --��Ч��
	return 1
end
----------------------
--th�t b�i��ʾ
----------------------
function x300101_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng��������ʱ��Чto� � ���
--**********************************
function x300101_OnActivateEachTick( sceneId, selfId )
	return 1
end

