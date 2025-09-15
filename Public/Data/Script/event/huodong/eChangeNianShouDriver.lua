
-- �m�t ���Ʒ
x889051_g_scriptId = 889051

--��to� � ��Ƭ
x889051_g_SuiPian1ID = 30504022
--��ͨto� � ��Ƭ
x889051_g_SuiPian2ID = 30504021
--��to� � ƴͼto� � ID
x889051_g_FigureID1   = 30504024
--�ǰ�to� � ƴͼto� � ID
x889051_g_FigureID2   = 30504023
--�m�t �ƴͼC�n to� � ��Ƭ����
x889051_g_FigureCount = 300

--�m�t ���c�p����C�n to� � ��Ƭ����
x889051_g_LowNianShouCount = 49

--�m�t ���c�p����C�n to� � ƴͼ����
x889051_g_MiddleNianShouCount = 1

--�m�t ���c�p����C�n to� � ƴͼ����
x889051_g_HighNianShouCount = 5

--��c�p����ID
x889051_g_LowNianShouID = 30281020
--��c�p����ID
x889051_g_MiddleNianShouID = 30281030
--��c�p����ID
x889051_g_HighNianShouID = 30281040

x889051_gGongGaoInfo ={
  "#{_INFOUSR%s}#cff99cc thu th�p 49 c�i ni�n th� to�i phi�n giao cho #GL�c D߽ng Ti�u s� (81,117)#YGi� Uy T�n#cff99cc, m�t c�i #{_INFOMSG%s}#cff99cc sinh ra.",
  "#{_INFOUSR%s}#cff99cc hai tay run run �em 1 c�i Ni�n th� b�nh � giao cho #GL�c D߽ng ti�u s� (81,117) #YGi� Uy T�n#cff99cc, m�t c�i #{_INFOMSG%s}#cff99cc t� tr�n tr�i gi�ng xu�ng.",
  "#{_INFOUSR%s}#cff99cc �em 5 c�i Ni�n th� b�nh � giao cho #GL�c D߽ng ti�u s� (81,117)#YGi� Uy T�n#cff99cc, m�t c�i #{_INFOMSG%s}#cff99cc tho�t ph� h� kh�ng m� �n.",
}


--MisDescEnd

--�m�t ���c�p����
function x889051_ChangeLowNianShou(sceneId, selfId, targetId)
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian1ID) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian2ID)
	--������ng������Ʒ
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_02}")
		return
	end
	
	--������ng���㹻
	if (nCount<x889051_g_LowNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_03}")
		return
	end
	
	
		--��ⱳ����ng���еط�....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId,targetId, "#{NSDH_SP_04}" )
		return
	end
	
	--�۳���Ʒ
	-- ɾ����Ʒ ��ɾ����to� � 
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_SuiPian1ID );
	if(BangdingNum >= x889051_g_LowNianShouCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, x889051_g_LowNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, x889051_g_LowNianShouCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--ɾû��to� � 
		local Delete = x889051_g_LowNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--����������Ʒ
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_LowNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,1)
	x889051_MsgBox( sceneId, selfId, "бi th�nh c�ng S� c�p ni�n th� t�a k�" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,1)
	x889051_CloseWindow(sceneId,selfId, targetId)
	
end
--�m�t ���c�p����to� � ����
function x889051_ChangeLowNianShouDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_PT_01}"
	--x889051_NotifyFailBox( sceneId, selfId, targetId, str)
	
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "X�c nh�n", 6, 11 )
		AddNumText( sceneId, x889051_g_scriptId, "Hu� b�", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--�m�t ���c�p����
function x889051_ChangeMiddleNianShou(sceneId, selfId, targetId)
	
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID1) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID2)
	--������ng������Ʒ
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_06}")
		return
	end

	--������ng���㹻
	if (nCount<x889051_g_MiddleNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_07}")
		return
	end
	
		--��ⱳ����ng���еط�....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId, targetId,"#{NSDH_SP_04}" )
		return
	end
	--�۳���Ʒ
	-- ɾ����Ʒ ��ɾ����to� � 
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_FigureID1 );

	if (BangdingNum >= x889051_g_MiddleNianShouCount) then
			
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, x889051_g_MiddleNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, x889051_g_MiddleNianShouCount)
		if ret1 < 1  then
			return
		end
			
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, BangdingNum)
		if ret1 < 1  then
			return
		end
		--ɾû��to� � 
		local Delete = x889051_g_MiddleNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--����������Ʒ
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_MiddleNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,2)
	x889051_MsgBox( sceneId, selfId, "бi th�nh c�ng Trung c�p ni�n th� t�a k�" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,2)
	x889051_CloseWindow(sceneId,selfId, targetId)
end

--�m�t ���c�p����to� � ����
function x889051_ChangeMiddleNianShouDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_PT_05}"
	--x889051_NotifyFailBox( sceneId, selfId, targetId, str)

	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "X�c nh�n", 6, 12 )
		AddNumText( sceneId, x889051_g_scriptId, "Hu� b�", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--�m�t ���c�p����
function x889051_ChangeHighNianShou(sceneId, selfId, targetId)
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID1) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_FigureID2)
	--������ng������Ʒ
	if (nCount<=0) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_10}")
		return
	end
	
	--������ng���㹻
	if (nCount<x889051_g_HighNianShouCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_PT_11}")
		return
	end
	
		--��ⱳ����ng���еط�....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_SP_04}" )
		return
	end
	
	--�۳���Ʒ
	-- ɾ����Ʒ ��ɾ����to� � 
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_FigureID1 )
	if(BangdingNum >= x889051_g_HighNianShouCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, x889051_g_HighNianShouCount)
		if ret1 < 1  then
			return
		end
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, x889051_g_HighNianShouCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID1, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--ɾû��to� � 
		local Delete = x889051_g_HighNianShouCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_FigureID2, Delete)
		if ret1 < 1  then
			return
		end
		
	end
	
		--����������Ʒ
	local bagpos01 = TryRecieveItem( sceneId, selfId, x889051_g_HighNianShouID, QUALITY_MUST_BE_CHANGE )
	LuaFnItemBind( sceneId, selfId, bagpos01 )
	Audit_ChangeNianShouDriver(sceneId,selfId,3)
	x889051_MsgBox( sceneId, selfId, "бi th�nh c�ng Cao c�p ni�n th� t�a k�" )
	local szItemTransfer = GetBagItemTransfer(sceneId,selfId,bagpos01)
	x889051_ShowSystemNotice(sceneId, selfId, szItemTransfer,3)
	x889051_CloseWindow(sceneId,selfId, targetId)
end

--�m�t ���c�p����to� � ����
function x889051_ChangeHighNianShouDescript(sceneId, selfId,targetId)
	local str = "#{NSDH_PT_09}"
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "X�c nh�n", 6, 13 )
		AddNumText( sceneId, x889051_g_scriptId, "Hu� b�", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--�������ƴͼ
function x889051_CompositeFigure(sceneId, selfId, targetId)
	--LuaFnItemBind( sceneId, selfId, bagpos01 )
	
	local nCount =LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian1ID) + LuaFnGetAvailableItemCount(sceneId, selfId,x889051_g_SuiPian2ID)
	--������ng������Ʒ
	
	if (nCount<=0) then
		
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_SP_02}" )
		return
	end
	
	--������ng���㹻
	if (nCount<x889051_g_FigureCount) then
		x889051_NotifyFailBox( sceneId, selfId, targetId, "#{NSDH_SP_03}" )
		return
	end
	--��ⱳ����ng���еط�....
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		x889051_NotifyFailBox( sceneId, selfId,targetId, "#{NSDH_SP_04}" )
		return
	end
	local IsBind = 0
	
	--�۳���Ʒ
	-- ɾ����Ʒ ��ɾ����to� � 
	local BangdingNum = LuaFnGetAvailableItemCount( sceneId, selfId, x889051_g_SuiPian1ID );
	if(BangdingNum >= x889051_g_FigureCount) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, x889051_g_FigureCount)
		if ret1 < 1  then
			return
		end
		IsBind = 1
	elseif(BangdingNum == 0) then
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, x889051_g_FigureCount)
		if ret1 < 1  then
			return
		end
	else
		local ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian1ID, BangdingNum)
		if ret1 < 1  then
			return
		end
		
		--ɾû��to� � 
		local Delete = x889051_g_FigureCount - BangdingNum;
		ret1 = LuaFnDelAvailableItem(sceneId,selfId, x889051_g_SuiPian2ID, Delete)
		if ret1 < 1  then
			return
		end
		
		IsBind = 1
	end
	
	--����������Ʒ
	BeginAddItem(sceneId)
		--�а�to� � ������Ʒ,û�а�to� � ����ͨƴͼ
		if IsBind == 1 then
			AddItem( sceneId, x889051_g_FigureID1, 1 )
		else
			AddItem( sceneId, x889051_g_FigureID2, 1 )
		end
	local ret = EndAddItem(sceneId,selfId)
	if (ret<1) then
		return
	end
	AddItemListToHuman(sceneId,selfId)
	AuditCompositeFigure(sceneId,selfId)
	x889051_MsgBox( sceneId, selfId, "T� h�p ni�n th� b�nh � th�nh c�ng" )
	x889051_CloseWindow(sceneId,selfId, targetId)
end


--�������ƴͼ
function x889051_CompositeFigureDescript(sceneId, selfId, targetId)
	local str = "#{NSDH_SP_01}"
	BeginEvent(sceneId)
		AddText(sceneId,str)
		AddNumText( sceneId, x889051_g_scriptId, "X�c nh�n", 6, 14 )
		AddNumText( sceneId, x889051_g_scriptId, "Hu� b�", 6, 21 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x889051_CloseWindow(sceneId,selfId, targetId)
	BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
end

--**********************************
--������ں���
--**********************************
function x889051_OnDefaultEvent( sceneId, selfId, targetId )

	local nNum = GetNumText()

	--�m�t ���c�p����to� � �Ի�
	if (nNum == 1 ) then
		x889051_ChangeLowNianShouDescript(sceneId, selfId, targetId)
	--�m�t ���c�p����to� � �Ի�
	elseif nNum == 2 then
		x889051_ChangeMiddleNianShouDescript(sceneId, selfId, targetId)
	--�m�t ���c�p����to� � �Ի�
	elseif nNum == 3 then
		x889051_ChangeHighNianShouDescript(sceneId, selfId, targetId)
	--�������ƽͼto� � �Ի�
	elseif nNum == 4 then
		x889051_CompositeFigureDescript(sceneId, selfId, targetId)
	--�m�t ���c�p����
	elseif nNum == 11 then
		x889051_ChangeLowNianShou(sceneId, selfId, targetId)
	--�m�t ���c�p����
	elseif nNum == 12 then
		x889051_ChangeMiddleNianShou(sceneId, selfId, targetId)
	--�m�t ���c�p����
	elseif nNum == 13 then
		x889051_ChangeHighNianShou(sceneId, selfId, targetId)
	--���ƴͼ
	elseif nNum == 14 then
		x889051_CompositeFigure(sceneId, selfId, targetId)
	elseif nNum == 21 then
		x889051_CloseWindow(sceneId, selfId, targetId)
	elseif nNum == 5 then
			local str = "#{NSDH_SM_01}"
			x889051_NotifyFailBox( sceneId, selfId, targetId, str )
	end 
end

--**********************************
--�о��¼�
--**********************************
function x889051_OnEnumerate( sceneId, selfId, targetId )
	AddNumText( sceneId, x889051_g_scriptId, "бi s� c�p ni�n th� t�a k�", 6, 1 )
	AddNumText( sceneId, x889051_g_scriptId, "бi trung c�p ni�n th� t�a k�", 6, 2 )
	AddNumText( sceneId, x889051_g_scriptId, "бi cao c�p ni�n th� t�a k�", 6, 3 )
	AddNumText( sceneId, x889051_g_scriptId, "T� h�p ni�n th� b�nh �",     6, 4 )
	AddNumText( sceneId, x889051_g_scriptId, "Gi�i thi�u ho�t �ng �i ni�n th� t�a k�", 11, 5 )
	
end

--**********************************
--���Ti�p th�����
--**********************************
function x889051_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x889051_OnAccept( sceneId, selfId )

end

--**********************************
--����
--**********************************
function x889051_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x889051_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x889051_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ͳ����ﵰto� � ����
--**********************************
function x889051_ShowSystemNotice( sceneId, selfId, strItemInfo,iIndex )
	
	local PlayerName = GetName(sceneId,selfId)
	local str
	str = format( x889051_gGongGaoInfo[iIndex], PlayerName, strItemInfo)
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x889051_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x889051_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x889051_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		
end

--**********************************
--ɱ����������
--**********************************
function x889051_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--���������¼�
--**********************************
function x889051_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x889051_OnItemChanged( sceneId, selfId, itemdataId )
end


