--ע��: 

--��Ʒ����to� � �߼�ֻ��ʹ�û������ܺͽű���ʵ��

--�ű�:

--������ng�ű�����:


--3004.lua
------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�

--�ű���
x332000_g_scriptId = 332000 --��ʱдC�i n�y ,������to� � ʱ��m�t ��Ҫ��.

--C�n to� � ��c�p

--Ч��to� � ID
x332000_g_Impact1 = 3004 --��ʱдC�i n�y 
x332000_g_Impact2 = -1 --����

--**********************************
--�¼��������
--**********************************
function x332000_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x332000_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x332000_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x332000_OnConditionCheck( sceneId, selfId )

	if sceneId ~= 5 then
		return 0;
	end
	
	local targetX, targetZ;
	targetX = 268;
	targetZ = 241;
	local nPlayerX, nPlayerZ = GetWorldPos(sceneId, selfId);
	local fDis = floor(sqrt((targetX-nPlayerX)*(targetX-nPlayerX)+(targetZ-nPlayerZ)*(targetZ-nPlayerZ)))
	
--	local MonsterId = LuaFnCreateMonster( sceneId, 473, nPlayerX, nPlayerZ, 3, 0, 808038);
--	SetCharacterDieTime(sceneId, MonsterId, 1000*10)
	local msg;
	
	if fDis > 5    then
		msg = "Ch� c� g�n (268,241) c�a K�nh H� c�n c� th� ti�n h�nh luy�n t�p.";
		x332000_NotifyTip(sceneId, selfId, msg);
		return 0;
	end
	
	local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 40004414);
	if nItemBagIndex >= 0 then
		
		--���� ��Ч��
		local nStartTime = GetBagItemParam( sceneId, selfId, nItemBagIndex, 4, 2 );
		local nCurTime = LuaFnGetCurrentTime();		
		local nDelta = nCurTime - nStartTime;
		
		if nDelta >= 4*60*60 then
			DelItem (  sceneId, selfId, 40004414, 1);
			local msg = "�� qu� th�i h�n c� hi�u l�c!";
			x332000_NotifyTip(sceneId, selfId, msg);
			return 0;		
		end
	end
	
	--� ��Ч
	local actId = 36;
	
	local LianYaoStatus = GetActivityParam( sceneId, actId, 0 );
	
	if LianYaoStatus <= 0 then
		DelItem (  sceneId, selfId, 40004414, 1);
		local msg = "�� qu� 22: 00 kh�ng th� tr�ng tr�t, ti�n th�o �� bi�n m�t.";
		x332000_NotifyTip(sceneId, selfId, msg);
		return 0;
	end
	--���� �i�m��Ч
	local QianNianCaoGen = GetActivityParam( sceneId, actId, 1 );
	if QianNianCaoGen <= 0 then
		return 0;
	end
	--ȷ�� û�� ҩ��
	local YaoDing_LianYao_Status = GetActivityParam( sceneId, actId, 2 );
	if YaoDing_LianYao_Status > 0 then
		return 0;
	end
	
	msg = "#{JingHu_LingYao_01}";
		
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,x332000_g_scriptId);		
		UICommand_AddInt(sceneId,1);
		UICommand_AddString(sceneId,"DoUseItemReal");
		UICommand_AddString(sceneId, msg);
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		

	--����to� � �������
	--if(GetMp(sceneId, selfId) >= GetMaxMp(sceneId, selfId)) then
	--	return 0
	--end

	--��Ѫ����to� � ��Ѫ�������
	--if((GetHp(sceneId, selfId) >= GetMaxHp(sceneId, selfId)) and (GetMp(sceneId, selfId) >= GetMaxMp(sceneId, selfId))) then
	--	return 0
	--end

	return 0; --��C�n �κ�����,����ʼ��Tr� v�1.
end


function x332000_DoUseItemReal( sceneId, selfId, param1, param2 )
	if sceneId ~= 5 then
		return 0;
	end
	local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 40004414);
	if nItemBagIndex >= 0 then
	
		-- �����ng��T�i ��Ч��Χ��
		local targetX, targetZ;
		targetX = 268;
		targetZ = 241;
		local nPlayerX, nPlayerZ = GetWorldPos(sceneId, selfId);
		local fDis = floor(sqrt((targetX-nPlayerX)*(targetX-nPlayerX)+(targetZ-nPlayerZ)*(targetZ-nPlayerZ)))
	
		if fDis > 5    then
			local msg;
			msg = "Ch� c� g�n (268,241) c�a K�nh H� c�n c� th� ti�n h�nh luy�n t�p.";
			x332000_NotifyTip(sceneId, selfId, msg);
			return 0;
		end
		
		--���� ��Ч��
		local nStartTime = GetBagItemParam( sceneId, selfId, nItemBagIndex, 4, 2 );
		local nCurTime = LuaFnGetCurrentTime();		
		local nDelta = nCurTime - nStartTime;
		
		if nDelta >= 4*60*60 then
			DelItem (  sceneId, selfId, 40004414, 1);
			local msg = "�� qu� th�i h�n c� hi�u l�c!";
			x332000_NotifyTip(sceneId, selfId, msg);
			return 0;		
		end

		local szTransfer = GetBagItemTransfer(sceneId,selfId, nItemBagIndex);

		local message = format("#{JingHu_LingYao_02}#{_INFOMSG%s}#{JingHu_LingYao_03}", szTransfer);		

		BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
		DelItem (  sceneId, selfId, 40004414, 1);
		
		local nPlayerX, nPlayerZ = GetWorldPos(sceneId, selfId);
		
		nPlayerX = nPlayerX + 1;
		nPlayerZ = nPlayerZ + 1;
		
		
		local MonsterId = LuaFnCreateMonster( sceneId, 881, nPlayerX, nPlayerZ, 3, -1, 502000 );	
		
--		SetUnitReputationID(sceneId, selfId, MonsterId, GetUnitReputationID(sceneId, selfId, selfId))
		
		SetCharacterDieTime(sceneId, MonsterId, 1000*60*60)

		local nCurTime = LuaFnGetCurrentTime()
		local actId = 36;
		SetActivityParam( sceneId, actId, 4, nCurTime );
		SetActivityParam( sceneId, actId, 2, 1 );
		
		local selfGUID = LuaFnGetGUID(sceneId, selfId);
		
		SetActivityParam( sceneId, actId, 3, selfGUID );
		
		local szPlayerName = LuaFnGetName( sceneId, selfId );		
		JINGHU_YAODING_CREATER_NAME = szPlayerName;
		
		SetActivityParam( sceneId, actId, 5, MonsterId );
		
		--Ϊ�˱���m�t c�i���ж�c�i ҩ���������
		DelItem (  sceneId, selfId, 40004415, 1);
		if TryRecieveItem( sceneId, selfId, 40004415, 1 ) >= 0 then
			local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 40004415);
						
			SetBagItemParam( sceneId, selfId, nItemBagIndex, 3, 2, nCurTime )			
			
		end
		
	end
	


end



--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x332000_OnDeplete( sceneId, selfId )
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
function x332000_OnActivateOnce( sceneId, selfId )
	if(-1~=x332000_g_Impact1) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x332000_g_Impact1, 0);
	end
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x332000_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end


--**********************************
--��Ŀ��ʾ
--**********************************
function x332000_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
