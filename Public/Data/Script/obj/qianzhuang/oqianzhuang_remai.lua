--����Ԫ�� NPC
--ע�Ȿ�ű���������Ԫ����ع��ܣ���һ���������е����ӽ����޸ġ�

x181002_g_scriptId 	= 181002
x181002_g_buyrate 	= 0.5

x181002_g_PhieuBaoThach = {}
x181002_g_PhieuBaoThach[1] = 30900131
x181002_g_PhieuBaoThach[2] = 30900132
x181002_g_PhieuBaoThach[3] = 30900133
x181002_g_PhieuBaoThach[4] = 30900134
x181002_g_PhieuBaoThach[5] = 30900135
x181002_g_PhieuBaoThach[6] = 30900136
x181002_g_PhieuBaoThach[7] = 30900137
x181002_g_PhieuBaoThach[8] = 30900138
x181002_g_PhieuBaoThach[9] = 30900139

x181002_g_GemArray = {}
x181002_g_GemArray[1] = {50101001,50101002}
x181002_g_GemArray[2] = {50102001,50102002,50102003,50102004}
x181002_g_GemArray[3] = {50103001}
x181002_g_GemArray[4] = {50104002}
x181002_g_GemArray[5] = {50111001,50111002}
x181002_g_GemArray[6] = {50112001,50112002,50112003,50112004}
x181002_g_GemArray[7] = {50113001,50113002,50113003,50113004,50113005,50113006}
x181002_g_GemArray[8] = {50114001}

x181002_g_shoptableindex =151 --�Ѿ������ˣ�������188��189
x181002_g_goodact		 = 1		--����Ԫ���̵�
x181002_g_YuanBaoIntro	 = 18	--Ԫ������

--**********************************
--�¼��������
--**********************************
function x181002_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
			strText = "    Ъn ��y m� xem, th߽ng ph�m b�n ch�y nh�t, gi� r� nh�t. Kh�ch quan, ng�i mau ch�n v�i m�n �i, b�o ��m ng�i mua v� xong ��m nay n�m m� c�ng ph�i c߶i "
			AddText( sceneId, strText )
			-- AddNumText( sceneId, x181002_g_scriptId, "Mua nhi�t m�i th߽ng ph�m", 7, x181002_g_goodact)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch", 6, 100)
			AddNumText( sceneId, x181002_g_scriptId, "Gi�i thi�u Kim Nguy�n B�o", 11, x181002_g_YuanBaoIntro)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x181002_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	if key == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "Ng߽i c� mang �n Phi�u бi B�o Th�ch kh�ng?" )
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 1", 6, 101)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 2", 6, 102)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 3", 6, 103)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 4", 6, 104)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 5", 6, 105)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 6", 6, 106)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 7", 6, 107)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 8", 6, 108)
			AddNumText( sceneId, x181002_g_scriptId, "D�ng Phi�u бi B�o Th�ch C�p 9", 6, 109)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if key >= 101 and key <= 109 then
		local GemLevel = 10*(key - 100);
		BeginEvent( sceneId )
			AddText( sceneId, "Ng߽i mu�n �i l�y lo�i b�o th�ch n�o?" )
			AddNumText( sceneId, x181002_g_scriptId, "B�o Th�ch Hy V�ng", 6, 201+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "B�o Th�ch Tr� Tu�", 6, 202+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "B�o Th�ch Huy�n Vi", 6, 203+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "B�o Th�ch �o Minh", 6, 204+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "B�o Th�ch Sinh M�nh", 6, 205+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "B�o Th�ch M� L�c", 6, 206+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "B�o Th�ch V�n M�nh", 6, 207+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "B�o Th�ch Thi�n C�", 6, 208+GemLevel)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if key >= 211 and key <= 299 then
		local GemLevel = floor(mod(key,100)/10)-1
		local GemLevelID = GemLevel*100000
		local GemType = mod(key,10)
		BeginEvent(sceneId)
			AddText( sceneId, "#b#YKhi nh�n ���c, b�o th�ch s� c� �nh v�i c�c h�!" )
			for i = 1, getn(x181002_g_GemArray[GemType]) do
				AddRadioItemBonus( sceneId, GemLevelID+x181002_g_GemArray[GemType][i], 1 )
			end
		EndEvent( )
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x181002_g_scriptId,0)
	end
	
	if GetNumText() == x181002_g_goodact then
	--�µ�Ԫ���̵�
		-- BeginUICommand( sceneId )
			-- UICommand_AddInt( sceneId, targetId )
			-- UICommand_AddInt( sceneId, 1)
			-- UICommand_AddInt( sceneId, 2 )
		-- EndUICommand( sceneId )
		-- DispatchUICommand( sceneId, selfId, 888902)
	elseif GetNumText() == x181002_g_YuanBaoIntro	then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

function x181002_OnMissionSubmit(sceneId,selfId,targetId,x181002_g_scriptId,ItemID)
	local GemLevel = floor(mod(ItemID,1000000)/100000)
	if GemLevel < 1 or GemLevel > 9 then
		BeginEvent(sceneId)
			AddText(sceneId,GemLevel)
			AddText(sceneId,"Sai s�t n�i b�, vui l�ng li�n h� GM!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if LuaFnGetMaterialBagSpace(sceneId,selfId) < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"H�y s�p x�p 1 � tr�ng trong t�i nguy�n li�u.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	local PhieuDoiID = x181002_g_PhieuBaoThach[GemLevel]
	local PhieuDoi = LuaFnGetAvailableItemCount(sceneId,selfId,PhieuDoiID)
	if PhieuDoi < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ng߽i kh�ng c� ho�c #G"..GetItemName(sceneId,PhieuDoiID).."#W �� b� kh�a, ta kh�ng th� trao b�o th�ch cho ng߽i.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	LuaFnDelAvailableItem(sceneId,selfId,PhieuDoiID,1)
	
	local GemNew = TryRecieveItem(sceneId,selfId,ItemID,1)
	LuaFnItemBind(sceneId,selfId,GemNew)
	
	BeginEvent(sceneId)
		AddText(sceneId,"Ch�c m�ng ng߽i �� nh�n ���c #G"..GetItemName(sceneId,ItemID).."#W.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
end

--**********************************
--�����������̵꣬��Ϊ�����̵��NPC�̵�
--**********************************
function x181002_NewDispatchShopItem(sceneId,selfId,targetId,shopId)
	if targetId >= 0 then
		DispatchShopItem( sceneId, selfId,targetId, shopId )
	else
		DispatchNoNpcShopItem( sceneId, selfId, shopId )
	end
end
