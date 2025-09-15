--ע��: 

--��Ʒ����to� � �߼�ֻ��ʹ�û������ܺͽű���ʵ��

--�ű�:

--������ng�ű�����:


------------------------------------------------------------------------------------------
--Kinh nghi�m�̲���ʹ�ýű�

--�ű���
x889035_g_scriptId = 889035 

x889035_ExpDan = {{ID =30504067,Exp =5355,flag =MF_TW_EXPDAN10},
		{ID =30504055,Exp =21665,flag =MF_TW_EXPDAN20},
		{ID =30504056,Exp =105080,flag =MF_TW_EXPDAN30},
		{ID =30504057,Exp =348381,flag =MF_TW_EXPDAN40},
		{ID =30504058,Exp =700000,flag =MF_TW_EXPDAN50},
	}

--**********************************
--�¼��������
--**********************************
function x889035_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889035_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889035_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889035_OnConditionCheck( sceneId, selfId )

	--У��ʹ��to� � ��Ʒ
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
		-- ��t ���c��ƷID
	local Item = LuaFnGetItemIndexOfUsedItem(sceneId, selfId)
	local iIndex = -1
	for i=1,getn(x889035_ExpDan) do
		if (x889035_ExpDan[i].ID == Item) then
			iIndex = i
		end
	end

	if (iIndex ==-1) then
		return 0
	end
		
	--��ng��μӹ��û
	local bHave = GetMissionFlag(sceneId, selfId, x889035_ExpDan[iIndex].flag)
	if (bHave ==1) then
		BeginEvent( sceneId )
			AddText( sceneId, "#{TSJH_090224_27}" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
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
function x889035_OnDeplete( sceneId, selfId )
	
		-- ��t ���c��ƷID
	local Item = LuaFnGetItemIndexOfUsedItem(sceneId, selfId)
	local iIndex = -1
	for i=1,getn(x889035_ExpDan) do
		if (x889035_ExpDan[i].ID == Item) then
			iIndex = i
		end
	end
	if (iIndex ==-1) then
		return 0
	end

	local ExpBonus = x889035_ExpDan[iIndex].Exp;
	AddExp( sceneId, selfId, ExpBonus )
	SetMissionFlag(sceneId, selfId, x889035_ExpDan[iIndex].flag, 1)
	if (Item == 30504058) then
		local szTransfer;
	
		local szPlayerName = LuaFnGetName( sceneId, selfId );
	
		local nItemBagIndex = GetBagPosByItemSn(sceneId, selfId, 30504058);
		if nItemBagIndex >= 0 then		
			szTransfer = GetBagItemTransfer(sceneId,selfId, nItemBagIndex);
		end

		local message = format("#{_INFOUSR%s}#{TSJH_090224_28}#{_INFOMSG%s}#{TSJH_090224_29}", szPlayerName, szTransfer );	
		AddGlobalCountNews( sceneId, message )
	end
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
function x889035_OnActivateOnce( sceneId, selfId )

	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889035_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end


--**********************************
--��Ŀ��ʾ
--**********************************
function x889035_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
