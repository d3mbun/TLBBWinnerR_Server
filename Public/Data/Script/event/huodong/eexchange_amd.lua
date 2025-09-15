--�����
--AMD
--MisDescBegin
--�ű���
x808059_g_ScriptId = 808059
x808059_g_ExchangeAMD_Active = 0   --Ĭ�Ϲر�

x808059_g_ActiveStartTime = 7154  --7000   --7154
x808059_g_ActiveEndTime = 7192    --7200     --7192

x808059_g_AwardItem1 = 30505104  --��Ʒ1,˫��������
x808059_g_AwardItem2 = 30505105  --��Ʒ2,˫��������

x808059_g_AMDTextList = { 30505093, 30505094, 30505095, 30505096, 30505097, 30505098, 30505099, 30505100, 30505101, 30505102, 30505103 }

x808059_g_HelpText000 = "#{EXCHANGE_AMD_HELP000}" --"����m�t �AMD˫��������"
x808059_g_HelpText001 = "#{EXCHANGE_AMD_HELP001}" --"�m�t �AMD˫��������C�n �ҡ�Ϊ��˫���ˡ���AMD���졢���������ԡ�����m�t c�i,������to� � ��Ʒ��ȫ,��˶Ժ�֮����������"
x808059_g_HelpText002 = "#{EXCHANGE_AMD_HELP002}" --"����m�t �AMD˫��������"
x808059_g_HelpText003 = "#{EXCHANGE_AMD_HELP003}" --"��Ʒ���ռ䲻��,��������Ʒ��������."

x808059_g_HelpText004 = "#{EXCHANGE_AMD_HELP004}" --"T�i �ﱸAMDThi�n Long���������,"
x808059_g_HelpText005 = "#{EXCHANGE_AMD_HELP005}" --"�������ҡ�Ϊ��˫���ˡ���AMD���졢���������ԡ�����m�t c�i,���to� � � �i�m,������"
x808059_g_HelpText006 = "#{EXCHANGE_AMD_HELP006}" --"m�t ��,���д��Ｔ�ɲμ��Ժ�to� � �齱�,ͬʱ����"
x808059_g_HelpText007 = "#{EXCHANGE_AMD_HELP007}" --"2c�i,��û�ҽ�to� � ��ҸϿ��ж�ѽ!"

x808059_g_HelpText008 = "#{EXCHANGE_AMD_HELP008}" --"�Բ���,��T�i û����T�i ����to� � �."
x808059_g_HelpText009 = "#{EXCHANGE_AMD_HELP009}" --"���ڶm�t �AMD˫��������"
x808059_g_HelpText010 = "#{EXCHANGE_AMD_HELP010}" --"���ڶm�t �AMD˫����������ؽ���"

--MisDescEnd

--**********************************
--�����ng�����㹻to� � ��Ʒ��������
--**********************************
function x808059_CheckEnoughItem( sceneId, selfId )
    for i=1, 11 do
		local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x808059_g_AMDTextList[ i ] )
		if ItemCount < 1 then
		    return 0
		end
	end
    
    return 1
end

--**********************************
--�m�t �Thi�n Long�˲�
--**********************************
function x808059_ExchangeAMD( sceneId, selfId, targetId )

    x808059_CheckRightTime()
    if 1 ~= x808059_g_ExchangeAMD_Active then	
		return       
    end
    
	local bEnough = x808059_CheckEnoughItem( sceneId, selfId )
	if( 1 ~= bEnough ) then
		BeginEvent(sceneId)
			AddText( sceneId, x808059_g_HelpText001 )
		EndEvent()
		DispatchEventList( sceneId, selfId, targetId )   --��ʾ��������
		return
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 2 ) then
		BeginEvent( sceneId )
		    AddText( sceneId, x808059_g_HelpText003 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )   --��ʾ��������
		
		return
	end

	--�۳���Ʒ,����۳�th�t b�i,�����������Ʒ
    for i=1, 11 do
		ret = LuaFnDelAvailableItem(sceneId, selfId, x808059_g_AMDTextList[ i ], 1)
		if ret ~= 1 then
			return   --����ɾ���������κ�m�t c�i��Ʒth�t b�i,���жϲ���,�����������κ���Ʒ
		end
	end
	
	BeginAddItem(sceneId)        --���������Ʒ
		AddItem( sceneId, x808059_g_AwardItem1, 1 )
	local Ret = EndAddItem(sceneId,selfId)
	
	if Ret > 0 then
	    AddItemListToHuman(sceneId,selfId)
		local szItemTransfer1 = GetItemTransfer(sceneId,selfId,0)
		local PlayerName = GetName( sceneId, selfId )
		local PlayerInfoName = "#{_INFOUSR"..PlayerName .."}"
		local ItemInfo1 = "#{_INFOMSG".. szItemTransfer1 .."}"
		
		local szItemTransfer2 = ""
		local ItemInfo2 = ""
		
			BeginAddItem(sceneId)        --���������Ʒ
				AddItem( sceneId, x808059_g_AwardItem2, 2 )
			local Ret = EndAddItem(sceneId,selfId)
			
			if Ret > 0 then
			    AddItemListToHuman(sceneId,selfId)
			    szItemTransfer2 = GetItemTransfer(sceneId,selfId,0)
			    ItemInfo2 = "#{_INFOMSG".. szItemTransfer2 .."}"
			end
		
		
		local SysStr = x808059_g_HelpText004..PlayerInfoName..x808059_g_HelpText005..ItemInfo1..x808059_g_HelpText006..ItemInfo2..x808059_g_HelpText007
		BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
	end
	--�رս���
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
				
end

--**********************************
--������ں���
--**********************************
function x808059_OnDefaultEvent( sceneId, selfId, targetId )
    x808059_CheckRightTime()
    if 1 ~= x808059_g_ExchangeAMD_Active then
        return
    end

    local TextNum = GetNumText()

    if TextNum == 1 then
        x808059_ExchangeAMD( sceneId, selfId, targetId )
	end
    
    if TextNum == 2 then
        BeginEvent(sceneId)
            AddText( sceneId, x808059_g_HelpText010 )
        EndEvent()
        DispatchEventList( sceneId, selfId, targetId )
	end
		    
end


--**********************************
--�о��¼�
--**********************************
function x808059_CheckRightTime()
    local DayTime = GetDayTime()
 
    if DayTime < x808059_g_ActiveStartTime then
       x808059_g_ExchangeAMD_Active = 0
       return 0    --��ǰ�ǻʱ��
    end
    
    if DayTime > x808059_g_ActiveEndTime then
       x808059_g_ExchangeAMD_Active = 0
       return 0    --�˺��Ѿ�����
    end
    
    x808059_g_ExchangeAMD_Active = 1
    return 1
    
end

--**********************************
--�о��¼�
--**********************************
function x808059_OnEnumerate( sceneId, selfId, targetId )
    x808059_CheckRightTime()
    
    if 1 == x808059_g_ExchangeAMD_Active then
		AddNumText(sceneId, x808059_g_ScriptId, x808059_g_HelpText000, 1, 1 )
		--AddNumText(sceneId, x808059_g_ScriptId, x808059_g_HelpText009, 11, 2 )
    end
    
end

--**********************************
--���Ti�p th�����
--**********************************
function x808059_CheckAccept( sceneId, selfId )

end

--**********************************
--Ti�p th�
--**********************************
function x808059_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x808059_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x808059_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x808059_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x808059_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
end

--**********************************
--ɱ����������
--**********************************
function x808059_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--���������¼�
--**********************************
function x808059_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x808059_OnItemChanged( sceneId, selfId, itemdataId )
end
