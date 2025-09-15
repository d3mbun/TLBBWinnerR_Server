--07ʥ��Ԫ��

--�Ҹ�ѩ��ʹ�ýű�


--�ű���
x300064_g_scriptId = 300064

x300064_g_GiftTbl = {

	30501101,
	30501102,
	30501015,
	30008022,
	30008023,
	30008024,
	30505034,
	30505035,
	30505036,
	30505037

}


--**********************************
--�¼��������
--**********************************
function x300064_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x300064_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300064_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x300064_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 0
	end

	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--��to� � ��ng���....

			--���ܶ��Լ�ʹ��....
		if selfId == targetId then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0
		end

	elseif objType == 2 then--��to� � ��ngNPC....

		--�����ng��NPCʹ��to� � ��....�������ng����ngѩ��....
		local ret = CallScriptFunction( 050023, "CanThrowSnowBall", sceneId, selfId, targetId )
		if ret ~= 1 then
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 0
		end

	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 0

	end

	return 1

end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x300064_OnDeplete( sceneId, selfId )
	if(LuaFnDepletingUsedItem(sceneId, selfId)) then
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
function x300064_OnActivateOnce( sceneId, selfId )
	
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId < 0 then
		return 1
	end
	local objType = GetCharacterType( sceneId, targetId )

	if objType == 1 then--��to� � ��ng�������....

		--1/12����(9%)���жԷ�....���Է�m�t c�i��Ч....����Ŀ��ʾ....
		local rand = random(100)
		if rand < 9 then
				LuaFnSendSpecificImpactToUnit(sceneId, targetId, targetId, targetId, 10482, 0)
				BeginEvent( sceneId )
					AddText( sceneId, "Ng߽i b� "..LuaFnGetName(sceneId,selfId).."h�nh ph�c tuy�t c�u n�m tr�ng!" )
				EndEvent( sceneId )
				DispatchMissionTips( sceneId, targetId )
		end

	elseif objType == 2 then--��to� � ��ngѩ��....

		local ret = CallScriptFunction( 050023, "OnHitBySnowBall", sceneId, selfId, targetId )
		if ret == 1 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 10481, 0)
		else
			LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
			return 1
		end

	else

		LuaFnSendOResultToPlayer(sceneId, selfId, OR_INVALID_TARGET)
		return 1

	end

	--40c�p(��)ʹ�ñ���Ʒ��m�t �����ʻ� ��t ���c��Ʒ....
	if GetLevel(sceneId, selfId) < 40 then
		return 1
	end

	--1/500 ��t ���c����....
	local GoodLuck = random(5000)
	if GoodLuck > 10 then
		return 1
	end

	local idx = random( getn(x300064_g_GiftTbl) )
	local ItemId = x300064_g_GiftTbl[idx]
	local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then

		local playerName = GetName(sceneId, selfId)
		local transfer = GetBagItemTransfer(sceneId,selfId,BagIndex)

		msg = format("#{_INFOUSR%s}#P �em h�nh ph�c tuy�t c�u n�m �i ra ngo�i, #{_INFOMSG%s}#P t� tr�n tr�i r�t xu�ng, m�t #{_INFOUSR%s}#P.", playerName, transfer, playerName )
		BroadMsgByChatPipe(sceneId, selfId, msg, 4)

	end

	return 1;

end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300064_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end
