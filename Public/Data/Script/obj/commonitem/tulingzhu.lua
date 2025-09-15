--ע��: 

--��Ʒ����to� � �߼�ֻ��ʹ�û������ܺͽű���ʵ��

--�ű�:

--������ng�ű�����:


--tulingzhu.lua
------------------------------------------------------------------------------------------
--m�t ����Ʒto� � Ĭ�Ͻű�
--��Linh��

--��Linh����3�ֲ���: 
--1.ֱ��ʹ��ʱ����Linh��ʹ�ý���
--2.ʹ�ý����� �i�m������λ�����ж�λ
--3.ʹ�ý����� �i�m�������͡����д���
--ʹ����Linh��ʱ����to� � ������ngT�i �ͻ���ֱ��Ӳ����ʵ��,ʵ���ϲ�û�С�S� d�ng v�t ph�m ��,��˲�����õ����ű���.
--���ű�Ϊ��Linh��to� � ʹ���߼�,����ʹ����Linh��to� � �߼�Ϊ�����͡�.
--��Linh��to� � ��λ��ngͨ���ͻ���ֱ��call���ű�to� � x330001_SetPosition����ʵ��,����������Linh��to� � ʹ���߼�.

--�ű���
x330001_g_ScriptId	= 330001

--��ƷID
x330001_g_ItemId = 30008007
x330001_g_ItemId01 = 30505216

--Ч��to� � ID
x330001_g_Impact		= -1	--����ʱҪʹ��to� � ��Чto� � ���


x330001_g_UseTim		= 10				--ʹ�ô���
x330001_g_Yinpiao		= 40002000	--��Ʊ

--��ͨ��������,��Щ�������޷�����
x330001_g_UselessScn=
{
	125		-- ��ɽ
}

--��ͨ��������,��Щ�������޷���λ
x330001_g_SetPosLimitScn=
{
	125,	-- ��ɽ
	414		-- ������	
}

--��ֹ���͵�ĳЩ����to� � ��c�p����....
x330001_g_LimitTransScene =
{
	{423,90},	--����ɽ
	{519,90},	--�����
	{424,90},	--�߲�
	{520,90},	--�߲��Թ�
	{425,90},	--����ľ
	{427,90},	--���������
	{186,75},	--L�u Lan
	{431,90}, --����
	{432,90}  --��Ѫ��
}



x330001_g_StrCannotUse = "Khu v�c c�c h� kh�ng n�m trong t�nh tr�ng s� d�ng d�ch chuy�n, kh�ng th� s� d�ng ��o c� d�ch chuy�n."

x330001_g_Impact_NotTransportList = { 5929 } -- ��ֹ����to� � Impact
x330001_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}" } -- ��ֹ����to� � Impact��ʾ��Ϣ

--**********************************
--�¼��������
--**********************************
function x330001_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end


--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x330001_IsSkillLikeScript( sceneId, selfId )
	return 1	 --C�i n�y �ű�C�n ����֧��
end


--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x330001_CancelImpacts( sceneId, selfId )
	return 0	 --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end


--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x330001_OnConditionCheck( sceneId, selfId )

	--
	--����ʹ����Linh��to� � �߼�Ϊ����,�˴�ֻC�n ���д���ǰto� � ���Ϳ�����.
	--

	--������to� � λ��
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return 0
	end

	--У��ʹ��to� � ��Ʒ
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end
	
	--�����Ʒ��ng�����
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x330001_MsgBox( sceneId, selfId, "V�t ph�m n�y �� b� kh�a!" )
		return 0
	end

	-- ������Ӹ���״̬��,���ܴ���
	if IsTeamFollow(sceneId, selfId) == 1  then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	-- ��������ng����ng���ڰ�̯״̬,
	if LuaFnIsStalling(sceneId, selfId) == 1  then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	--�жϵ�ǰ״̬��ng���ʹ��(����)
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	--������������ng����ng�С���Ʊ��C�i n�y ����,�оͲ���ʹ������to� � ����
	if GetItemCount(sceneId, selfId, x330001_g_Yinpiao) >= 1  then
		x330001_MsgBox(sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end
	
	--���Impact״̬פ��Ч��
	for i, ImpactId in x330001_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x330001_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	--����to� � ָ��������������λ �i�m����
	for _, tmp in x330001_g_UselessScn do
		if tmp == sceneId then
			x330001_MsgBox( sceneId, selfId, "Trong khu v�c n�y kh�ng th� s� d�ng!" )
			return 0
		end
	end
	
	--���Ŀ�곡����ng����ng90c�p���ڲ��ܴ���to� � ����	--add by xindefeng
	--��ȡ��¼T�i ��Ʒ����to� � ���ݽṹ
	local	otim			--ʣ��ʹ�ô���
	local	osid			--�������
	local	opx, opy	--��������
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	if opx > 0 and opy > 0 then	--�Ѿ�����λ��		

		for _, tmp in x330001_g_LimitTransScene do
			if ( (tmp[1] == osid) and (GetLevel(sceneId, selfId) < tmp[2]) ) then
				local szMsg = format("Khu v�c n�y y�u c�u c�p %d tr� l�n m�i c� th� v�o!", tmp[2] )
				x330001_MsgBox( sceneId, selfId, szMsg)
				return 0
			end
		end

	end
	
	return 1

end


--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x330001_OnDeplete( sceneId, selfId )

	--ʹ����������д���֮ǰ����ñ�������������Ʒ....

	--
	--T�i �˻�Ҫ�ٴμ��m�t ��....
	--
	local ret
	ret = x330001_OnConditionCheck( sceneId, selfId )
	if 0 == ret then
		return 0
	end

	--������to� � λ��
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )

	--��ȡ��¼T�i ��Ʒ����to� � ���ݽṹ
	local	otim			--ʣ��ʹ�ô���
	local	osid			--�������
	local	opx, opy	--��������
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	--�Ѿ�����λ��....
	if opx > 0 and opy > 0 then

		--��ͬ��������....���Ŀ�곡��������....������th�t b�i....
		if sceneId ~= osid then
			if IsCanNewWorld( sceneId, selfId, osid, opx, opy ) ~= 1 then
				x330001_MsgBox( sceneId, selfId, "Kh�ng th� d�ch chuy�n �n khu v�c m�c ti�u." )
				return 0
			end
		end

		--���Դ���....��������Ʒ....
		--����ngT�i �˴���ֱ������....��ΪT�i x330001_OnActivateOnce()�л�C�n ������Ʒ����to� � ��λ��Ϣ....
		--��˴˴�to� � ����Ų��x330001_OnActivateOnce()��....

		return 1

	else

		--��û��λ....������th�t b�i....
		x330001_MsgBox( sceneId, selfId, "Vui l�ng ch�n �a �i�m �nh v� th�ch h�p r�i h�y s� d�ng ch�c n�ng d�ch chuy�n." )
		return 0

	end

	return 1

end


--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x330001_OnActivateOnce( sceneId, selfId )

	--
	--����ʹ����Linh��to� � �߼�Ϊ����,�˴�ֻC�n ���д��;Ϳ�����.
	--

	--������to� � λ��
	local	bagId			= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )


	--��ȡ��¼T�i ��Ʒ����to� � ��λ����....
	local	otim			--ʣ��ʹ�ô���....
	local	osid			--�������
	local	opx, opy	--��������
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	-- �i�m����λ���ݺ�Ϳ���������Ʒ��....

	--���ٿ�ʹ�ô���
	otim = otim - 1
	SetBagItemParam( sceneId, selfId, bagId, 3, 0, otim )
	--��¼ͳ����Ϣ
	LuaFnAuditGPS( sceneId, selfId, 0 )
	--ˢ��Client��to� � ������Ʒ��Ϣ
	LuaFnRefreshItemInfo( sceneId, selfId, bagId )

	--�����ʹ�ô���������ɾ����Ʒ....ɾ��th�t b�i�򲻴���....
	local ret
	if otim <= 0 then
		ret = EraseItem( sceneId, selfId, bagId )
		if 1 ~= ret then
			return
		end
	end

	--���������ʹ��to� � ��Ч��ӵ��������....
	if( -1 ~= x330001_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x330001_g_Impact, 0 )
	end

	--���Ѽ�¼����λ��Ϣ����....
	if opx > 0 and opy > 0 then

		if sceneId == osid then
			--ͬm�t ��������
			SetPos( sceneId, selfId, opx, opy )
		else
			--��ͬ��������
			NewWorld( sceneId, selfId, osid, opx, opy )
		end

	end

	return 1

end


--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x330001_OnActivateEachTick( sceneId, selfId )
	return 1	 --����ng�����Խű�, ֻ�����պ���.
end


--**********************************
--��Ϣ��ʾ
--**********************************
function x330001_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
-- ���S� d�ng v�t ph�m  ��λ
--**********************************
function x330001_SetPosition( sceneId, selfId, nItemIndex )

	--
	--��λǰto� � ���
	--
	
	--��λ��ng�ͻ���ֱ��callC�i n�y ����ʵ��to� � ....����û�о���S� d�ng v�t ph�m to� � ���....
	--�������Ҫ���е�c�p���Ƶȼ��....
	if GetLevel(sceneId, selfId)<10  then
		x330001_MsgBox( sceneId, selfId, "Kh�ng �� ��ng c�p" )
		return
	end

	--�����Ʒ��ng�����
	if LuaFnLockCheck( sceneId, selfId, nItemIndex, 0 ) < 0 then
		x330001_MsgBox( sceneId, selfId, "V�t ph�m n�y �� b� kh�a!" )
		return 0
	end

	--�����ng����ng��Linh��
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x330001_g_ItemId 
		 and GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x330001_g_ItemId01  then
		x330001_MsgBox( sceneId, selfId, "Sai s�t trong tay n�i" )
		return
	end

	--��������Th�nh th����޷���λ
	if LuaFnGetSceneType( sceneId ) == 1 or LuaFnGetSceneType( sceneId ) == 4 then
		x330001_MsgBox( sceneId, selfId, "Trong ph� b�n ho�c th�nh th� bang h�i kh�ng  th� �nh v�!" )
		return
	end

	--����to� � ָ���������ܶ�λ
	for _, tmp in x330001_g_SetPosLimitScn do
		if tmp == sceneId then
			x330001_MsgBox( sceneId, selfId, "Trong khu v�c n�y kh�ng th� s� d�ng!" )
			return
		end
	end

	--
	--���c�p�λ
	--

	--��ȡ��¼T�i ��Ʒ����to� � ���ݽṹ
	local	otim			--ʣ��ʹ�ô���
	local	osid			--�������
	local	opx, opy	--��������
	otim	= GetBagItemParam( sceneId, selfId, nItemIndex, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, nItemIndex, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, nItemIndex, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, nItemIndex, 8, 1 )

	--�����δ����λ����������Ʒ��Ϣ....
	if otim == 0 and osid == 0 and opx == 0 and opy == 0 then
		otim = x330001_g_UseTim
	end

	--��ȡ���to� � ��ǰ����ͳ���ID....
	osid			= sceneId
	opx, opy	= LuaFnGetUnitPosition( sceneId, selfId )
	opx	= floor( opx )
	opy	= floor( opy )

	--����Ϣ���õ���Ʒ��(��λ)....
	SetBagItemParam( sceneId, selfId, nItemIndex, 0, 1, 10 )								--Key,��λ��ʶ��������,Ҳ��ngClient����Tooltipsto� � ����
	SetBagItemParam( sceneId, selfId, nItemIndex, 2, 0, x330001_g_UseTim )	--���ʹ�ô���
	SetBagItemParam( sceneId, selfId, nItemIndex, 3, 0, otim )							--ʣ��ʹ�ô���
	SetBagItemParam( sceneId, selfId, nItemIndex, 4, 1, osid )							--�������
	SetBagItemParam( sceneId, selfId, nItemIndex, 6, 1, opx )								--X����
	SetBagItemParam( sceneId, selfId, nItemIndex, 8, 1, opy )								--Y����
	
	--��¼ͳ����Ϣ
	LuaFnAuditGPS( sceneId, selfId, 1 )

	--ˢ��Client��to� � ������Ʒ��Ϣ
	LuaFnRefreshItemInfo( sceneId, selfId, nItemIndex )

	x330001_MsgBox( sceneId, selfId, "Th� Linh Ch�u c�a c�c h� �nh v� th�nh c�ng." )

end
