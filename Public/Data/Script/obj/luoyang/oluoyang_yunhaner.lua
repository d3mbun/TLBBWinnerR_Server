--�ƺ���

--�ű���
x000118_g_scriptId = 000118

--�̵���
x000118_g_shoptableindex=102

--��ӵ��to� � �¼�ID�б�
x000118_g_eventList={400918, 400963, 400964}	--	ȥ���䵺��ȥTh�nh Th� S�n

--�m�t �������Ʒ
x000118_g_change_needitem = {itemindex = 30501318, itennum = 200}
--�m�t �Ŀ����Ʒ
x000118_g_change_targetitem = {item_1_index = 30402022, item_2_index = 30402021, item_3_index = 30402024, item_4_index = 30402023}


--**********************************
--�¼��б�
--**********************************
function x000118_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Gia ��nh ti�u th� thu gom c�c lo�i tr�n th�, ng߶i kh�ng ��, n�u ng߽i c� th� gi�p �� s� ���c b�o ��p")
	
	--AddNumText( sceneId, x000118_g_scriptId, "Mi�n ph� v� �ch", 6, 10 )	--ȥ������޵й���--del by Heanqi
	
	for i, eventId in x000118_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	
	AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_1}",6,11)
	AddNumText(sceneId,x000118_g_scriptId,"Mua s�ch k� n�ng tr�n th�",7,2)
	AddNumText(sceneId,x000118_g_scriptId,"Ki�m tra m�c t�ng tr߷ng",6,3)
	AddNumText(sceneId,x000118_g_scriptId,"#{XXWD_8916_07}",11,5)
	AddNumText(sceneId,x000118_g_scriptId,"Linh Th� �an h�p th�nh",6,6)
	AddNumText(sceneId,x000118_g_scriptId,"Gi�i Thi�u h�p th�nh Linh Th� �an",11,7)
--	AddNumText(sceneId,x000118_g_scriptId,"��θ����޿�����c�p",11,8)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x000118_OnDefaultEvent( sceneId, selfId,targetId )
	x000118_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x000118_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x000118_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	if GetNumText() == 2 then
		DispatchShopItem( sceneId, selfId,targetId, x000118_g_shoptableindex )
	elseif GetNumText() == 3 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "  ��ѯ����to� � �ɳ���,��ѯm�t ��C�n ��ȡ#{_MONEY100}to� � ����." )
--		AddNumText( sceneId, x000118_g_scriptId, "X�c nh�n", -1, 4 )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
--	elseif GetNumText() == 4 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, 6 )				--���޲�ѯ��֧
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 3 )	--�������޽���
	elseif GetNumText() == 5 then
		BeginEvent( sceneId )
		AddText( sceneId, "#{XXWD_8916_08}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 6 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19824 )	--����Linh Th����ϳɽ���
	elseif GetNumText() == 7 then
		BeginEvent( sceneId )
		AddText( sceneId, "#{JNHC_81015_12}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "#{ZSKSSJ_081126_5}" )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 10 then
	    if eventId == x000118_g_scriptId then	
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 50, 0 )	--ȥ������޵й���--del by Heanqi
			return
		end
	elseif GetNumText() == 11 then
		BeginEvent( sceneId )
		AddText(sceneId, "#{BBSX_081107_2}")
		AddText(sceneId, "#{BBSX_081107_3}")
		AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_4}",6,21)
		AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_5}",6,22)
		AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_6}",6,23)
		AddNumText(sceneId,x000118_g_scriptId,"#{BBSX_081107_7}",6,24)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif GetNumText() == 21 then
		x000118_ChangeItem(sceneId, selfId, targetId, 21)
	elseif GetNumText() == 22 then
		x000118_ChangeItem(sceneId, selfId, targetId, 22)
	elseif GetNumText() == 23 then
		x000118_ChangeItem(sceneId, selfId, targetId, 23)
	elseif GetNumText() == 24 then	
		x000118_ChangeItem(sceneId, selfId, targetId, 24)
	end
	
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x000118_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000118_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x000118_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x000118_g_eventList do
		if missionScriptId == findId then
			x000118_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x000118_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000118_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x000118_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000118_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x000118_OnDie( sceneId, selfId, killerId )
end

--**********************************
--�ύ����
--**********************************
function x000118_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
--ע��,��������дʡ����T�i eventlist������scriptId��m�t ����,���ܻ�������
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end

function x000118_ChangeItem(sceneId, selfId, targetId, key)
	local nTargetitem = 0
	if key == 21 then
		nTargetitem = x000118_g_change_targetitem.item_1_index
	elseif key == 22 then
		nTargetitem = x000118_g_change_targetitem.item_2_index
	elseif key == 23 then
		nTargetitem = x000118_g_change_targetitem.item_3_index
	elseif key == 24 then
		nTargetitem = x000118_g_change_targetitem.item_4_index
	else
		return
	end
	
	local nHaveCount = GetItemCount(sceneId, selfId, x000118_g_change_needitem.itemindex)
	local nAvailableCount = LuaFnGetAvailableItemCount( sceneId, selfId,  x000118_g_change_needitem.itemindex)
	--PrintStr("nHaveCount "..nHaveCount.." nAvailableCount "..nAvailableCount)
	
	--ӵ����������������������� gi�y �i�m���ng���Ѿ�����to� � .C�i n�y �ط���ng�����ж�,�߻����Ҫ��C�i n�y ��ʾ,��ΪԪ����̯��Ʒ��ʾҪ׼ȷ.add by hukai#40690
	if nHaveCount >= x000118_g_change_needitem.itennum and nAvailableCount < x000118_g_change_needitem.itennum then
		x000118_ShowMsgInFrame( sceneId, selfId, targetId, "#{JSTS_081119_1}" )
		return
	end
	
	if nAvailableCount < x000118_g_change_needitem.itennum then
		local strName = format("#H#{_ITEM%d}#W", nTargetitem)
		x000118_ShowMsgInFrame( sceneId, selfId, targetId, "#{BBSX_081107_8}"..strName )
		return
	end
	
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
		x000118_ShowNotice( sceneId, selfId, "#{BBSX_081107_9}")
		x000118_ShowMsgInFrame(sceneId,selfId,targetId, "#{BBSX_081107_9}")
	    return
	end
	
	if LuaFnDelAvailableItem( sceneId, selfId, x000118_g_change_needitem.itemindex, x000118_g_change_needitem.itennum ) == 1 then
		BeginAddItem(sceneId)
		AddItem( sceneId, nTargetitem, 1 )
			local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			if Ret > 0 then
				LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
			    local szItemTransfer = GetItemTransfer(sceneId,selfId, 0)
				x000118_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )

				local strNotice = format("Trao �i th�nh c�ng, b�n nh�n ���c #H#{_ITEM%d}#W", nTargetitem)
				x000118_ShowNotice( sceneId, selfId, strNotice)
				
				x000118_ShowMsgInFrame(sceneId,selfId,targetId, strNotice)
				
			else
				x000118_ShowNotice( sceneId, selfId, "#{BBSX_081107_9}")
				return
        	end
	else
    	x000118_ShowNotice( sceneId, selfId, "Kh�ng th�nh c�ng!")
		return
	end
end


function x000118_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x000118_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local str = format( "#{_INFOUSR%s}#P tr�i qua nhi�u c� g�p, cu�i c�ng c�ng thu th�p �� 200 mi�n #Y#{_ITEM30501318}#P t�i L�c D߽ng (182,155). #YV�n H�m Nhi #Ptrao �i th�nh c�ng #{_INFOMSG%s}#P.", PlayerName, strItemInfo )
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
end

function x000118_ShowMsgInFrame( sceneId, selfId, targetId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)   
end
