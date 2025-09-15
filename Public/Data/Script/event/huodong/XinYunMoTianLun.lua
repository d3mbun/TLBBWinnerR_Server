--�Ը�Ħ����
--л�p

x889055_g_ScriptId = 889055;

--�M� ra ���� 2009-4-8
x889055_g_BeginTime		= 20090408
x889055_g_EndTime		= 20090531
--x889055_g_ExchangeEndTime	= 20090531

--�m�t �����ID
x889055_g_PartID		= 
{
	30504083,	--��
	30504082,	--��
	30504081,	--��
	30504079,	--��
	30504080,	--��
}

--������
x889055_g_ItemID		= 30504072

--�m�t �BUFF
x889055_g_BuffID		= 20005

--��Ʒ��c�p����
x889055_g_LimitLevel	= 10
--**********************************
--�о��¼�
--**********************************
function x889055_OnEnumerate( sceneId, selfId, targetId )
	
	if x889055_IsInActTime( sceneId, selfId ) > 0 then
		AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_20}", 6, 1);
	end
	
end

--**********************************
--������ں���
--**********************************
function x889055_OnDefaultEvent( sceneId, selfId, targetId )
	
	local opt = GetNumText();
	if opt == 1 then
		BeginEvent(sceneId)			
			AddText(sceneId, "#{XFMTL_20090319_06}");
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_15}", 6, 11);		--L�nh �Ҹ�Ħ���ִ�
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_16}", 6, 12);		--��ȡThi�n Long�����ng�BUFF
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_17}", 11, 13);		--�Ҹ�Ħ���ְ���
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
	elseif opt == 11 then
		x889055_GivePrize( sceneId, selfId, targetId )
	elseif opt == 12 then
		BeginEvent(sceneId)			
			AddText(sceneId, "#{XFMTL_20090319_11}");
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_18}", 6, 121);	--Ti�n h�nh �i
			AddNumText(sceneId, x889055_g_ScriptId, "#{XFMTL_20090319_19}", 6, 122);	--Ch�a chu�n b� t�t
		EndEvent()
		DispatchEventList(sceneId, selfId, targetId)
	elseif opt == 13 then
		x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_14}" )
	elseif opt == 121 then
		x889055_AddBuff( sceneId, selfId, targetId )
	elseif opt == 122 then
		x889055_CloseDlg( sceneId, selfId, targetId )
	end
	
end

--**********************************
--��ng��T�i �ʱ����,��ng��Tr� v���������,����Tr� v�0
--**********************************
function x889055_IsInActTime( sceneId, selfId )

	local curDate = GetTime2Day()
	if curDate >= x889055_g_BeginTime and curDate <= x889055_g_EndTime then
		return curDate
	else
		return 0
	end
	
end

--**********************************
--����
--**********************************
function x889055_GivePrize( sceneId, selfId, targetId )

	-- ��ng��T�i �ʱ����
	if x889055_IsInActTime( ) <= 0 then
		x889055_CloseDlg( sceneId, selfId, targetId )
		return
	end
	
	-- ��c�p����10
	local level = GetLevel( sceneId, selfId )
	if level < x889055_g_LimitLevel then
		x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_07}" )
		return	
	end
	
	-- ��Ʒ��ng��
	for i, partID in x889055_g_PartID do
		if LuaFnGetAvailableItemCount(sceneId, selfId, partID) < 1 then
			x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_10}" )
			return
		end
	end
	
	-- ��鱳���ռ�
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_08}" )
		return
	end
	
	-- ɾ����Ʒth�t b�i,δ֪ԭ��,�رնԻ�����
	for j, partID in x889055_g_PartID do
		if LuaFnDelAvailableItem(sceneId, selfId, partID, 1) < 1 then
			x889055_CloseDlg( sceneId, selfId, targetId )
			return
		end
	end
	
	-- ����Ʒ,�رմ���
	TryRecieveItem( sceneId, selfId, x889055_g_ItemID, QUALITY_MUST_BE_CHANGE )
		
	x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_09}" )
	
end

--**********************************
--�m�t �BUFF
--**********************************
function x889055_AddBuff( sceneId, selfId, targetId )

	-- ��ng��T�i �ʱ����
	if x889055_IsInActTime( ) <= 0 then
		x889055_CloseDlg( sceneId, selfId, targetId )
		return
	end
	
	-- ��c�p����10
	local level = GetLevel( sceneId, selfId )
	if level < x889055_g_LimitLevel then
		x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_12}" )
		return	
	end

	-- ɾ����Ʒ��BUFF
	for i, partID in x889055_g_PartID do
		if LuaFnDelAvailableItem(sceneId, selfId, partID, 1) > 0 then
			
			--��BUFF
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x889055_g_BuffID, 0 )
			
			x889055_CloseDlg( sceneId, selfId, targetId )
			return
		end
	end
	
	x889055_ReturnDlg( sceneId, selfId, targetId, "#{XFMTL_20090319_13}" )
end

--**********************************
--����ҷ��ʼ�
--**********************************
function x889055_OnPlayerLogin( sceneId, selfId )
	
	-- ��ng��T�i �ʱ����
	local curDate = x889055_IsInActTime( )
	if curDate > 0 then
		local lastDate = GetMissionData( sceneId, selfId, MD_TW_XINGFUMOTIANLUN_LAST_MAIL_DATE )
		if lastDate < curDate then
			LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{XFMTL_20090319_01}" )
			SetMissionData(sceneId, selfId, MD_TW_XINGFUMOTIANLUN_LAST_MAIL_DATE, curDate)
		end
	end
	
end

--**********************************
--�رնԻ���
--**********************************
function x889055_CloseDlg(sceneId, selfId, targetId)
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )	
end

--**********************************
--Tr� v��Ի�
--**********************************
function x889055_ReturnDlg(sceneId, selfId, targetId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ReturnTips
--**********************************
function x889055_Tips(sceneId, selfId, msg)
	BeginEvent(sceneId)
		AddText(sceneId, msg);
	EndEvent()
	DispatchMissionTips(sceneId, selfId)
end

--**********************************
--Ti�p th�
--**********************************
function x889055_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x889055_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x889055_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x889055_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x889055_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x889055_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x889055_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x889055_OnItemChanged( sceneId, selfId, itemdataId )
end

