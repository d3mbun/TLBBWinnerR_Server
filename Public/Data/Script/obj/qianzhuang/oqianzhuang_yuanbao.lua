--Ԫ�� NPC
--ע�Ȿ�ű���������Ԫ����ع��ܣ���һ���������е����ӽ����޸ġ�

x181000_g_scriptId 	= 181000
x181000_g_buyrate 	= 1

x181000_g_shoptableindex=120
x181000_g_zengdianshop=121

x181000_g_goodact		= 1		--Ԫ���̵�
x181000_g_buyact	 	= 2		--�һ�Ԫ��
x181000_g_ticketact = 3		--�һ�Ԫ��Ʊ
x181000_g_zdianact	= 4		--�����̵�
x181000_g_gotodali	= 5		--��������

x181000_g_normalzdianshop	= 6		--��ͨ�����̵�
x181000_g_lv1zdianshop	= 7			--һ������
x181000_g_lv2zdianshop	= 8			--��������
x181000_g_lv3zdianshop	= 9			--��������
x181000_g_lv4zdianshop	= 10		--�ļ�����
x181000_g_lv5zdianshop	= 11		--�弶����
x181000_g_lv6zdianshop	= 12		--��������
x181000_g_lv7zdianshop	= 13		--�߼�����
x181000_g_lv8zdianshop	= 14		--�˼�����
x181000_g_lv9zdianshop	= 15		--�ż�����
x181000_g_lv10zdianshop	= 16		--ʮ������
x181000_g_newprize	= 17		--�鿴�н�
x181000_g_YuanBaoIntro	= 18	--Ԫ������

x181000_g_leave			= 20	--�뿪
x181000_g_return		= 21	--����(���˵�)

--**********************************
--�¼��������
--**********************************
function x181000_OnDefaultEvent( sceneId, selfId, targetId )	
	--if GetName(sceneId,selfId) == "B�o" then
		--YuanBao(sceneId,selfId,targetId,1,3150)
		-- SetMissionData(sceneId,selfId,MD_YUANBAO_PRIZE_GEM_COUNT, 2 )
		--local GemNew = TryRecieveItem(sceneId,selfId,30900130,1)
		--LuaFnItemBind(sceneId,selfId,GemNew)
	--end
	BeginEvent( sceneId )
		local strText = "    C� ti�n c� th� sai khi�n ���c c� Qu�, tuy tr�n giang h� ch� tr�ng v� l�c, nh�ng c� kim nguy�n b�o r�i c� th� khi�n nh�ng vi�c tr߾c ��y v�n kh� l�m tr� n�n d� d�ng h�n, c�c h� mu�n l�m g�?"
		AddText( sceneId, strText )
		local nNum = GetMissionData(sceneId,selfId,MD_YUANBAO_PRIZE_GEM_COUNT )
		AddNumText( sceneId, x181000_g_scriptId, "#b#GQu� T�ng B�o Th�ch", 2, 999)
		-- AddNumText( sceneId, x181000_g_scriptId, "Ta mu�n mua th߽ng ph�m", 2, x181000_g_goodact)
		-- AddNumText( sceneId, x181000_g_scriptId, "бi B�C th�nh Kim Nguy�n B�o", 2, x181000_g_buyact)
		if IsEnableYuanBaoPiao() == 1 then
			AddNumText( sceneId, x181000_g_scriptId, "бi phi�u Kim Nguy�n B�o", 2, x181000_g_ticketact)
		end
		AddNumText( sceneId, x181000_g_scriptId, "Th߽ng �i�m t�ng �i�m", 2, x181000_g_zdianact)
		AddNumText( sceneId, x181000_g_scriptId, "Gi�i thi�u th߽ng ti�m Nguy�n b�o v� �i�m t�ng", 11, x181000_g_YuanBaoIntro)
		AddNumText( sceneId, x181000_g_scriptId, "#{CZSBS_81218_2}", 11, 19)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x181000_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 999 then
		local nNum = GetMissionData(sceneId,selfId,MD_YUANBAO_PRIZE_GEM_COUNT )
		BeginEvent( sceneId )
			AddText( sceneId, "#GQu� T�ng B�o Th�ch #Wl� s� ki�n ���c t� ch�c nhi�u l�n. Ta s� cho ng߽i xem th�ng tin ng�c �� nh�n!" )
			AddText( sceneId, "#r" )
			if nNum == 3 then
				AddText( sceneId, "L�n 1: #RQuy �i 400 KNB #rH�ng B�o Th�ch c�p 3: #Y�� nh�n#r" )
				AddText( sceneId, "L�n 2: #RQuy �i 1666 KNB #rPhi�u B�o Th�ch c�p 4: #Y�� nh�n#r" )
				AddText( sceneId, "L�n 3: #RQuy �i 1666 KNB #rPhi�u B�o Th�ch c�p 4: #Y�� nh�n#r" )
			elseif nNum == 2 then
				AddText( sceneId, "L�n 1: #RQuy �i 400 KNB #rH�ng B�o Th�ch c�p 3: #Y�� nh�n#r" )
				AddText( sceneId, "L�n 2: #RQuy �i 1666 KNB #rPhi�u B�o Th�ch c�p 4: #Y�� nh�n#r" )
				AddText( sceneId, "L�n 3: #RQuy �i 1666 KNB #rPhi�u B�o Th�ch c�p 4: #GCh�a nh�n#r" )
			elseif nNum == 1 then
				AddText( sceneId, "L�n 1: #RQuy �i 400 KNB #rH�ng B�o Th�ch c�p 3: #Y�� nh�n#r" )
				AddText( sceneId, "L�n 2: #RQuy �i 1666 KNB #rPhi�u B�o Th�ch c�p 4: #GCh�a nh�n#r" )
				AddText( sceneId, "L�n 3: #RQuy �i 1666 KNB #rPhi�u B�o Th�ch c�p 4: #GCh�a nh�n#r" )
			elseif nNum == 0 then
				AddText( sceneId, "L�n 1: #RQuy �i 400 KNB #rH�ng B�o Th�ch c�p 3: #GCh�a nh�n#r" )
				AddText( sceneId, "L�n 2: #RQuy �i 1666 KNB #rPhi�u B�o Th�ch c�p 4: #GCh�a nh�n#r" )
				AddText( sceneId, "L�n 3: #RQuy �i 1666 KNB #rPhi�u B�o Th�ch c�p 4: #GCh�a nh�n#r" )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == x181000_g_buyact then
		--��ѯ���Լ���ʣ�����
		CallScriptFunction( PRIZE_SCRIPT_ID, "AskPoint", sceneId, selfId )
		
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			UICommand_AddInt( sceneId, x181000_g_buyrate*1000)
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2001 )

	elseif GetNumText() == x181000_g_newprize then
		CallScriptFunction( PRIZE_SCRIPT_ID, "AskPrize", sceneId, selfId)

	elseif GetNumText() == x181000_g_return then
		x181000_OnDefaultEvent( sceneId, selfId, targetId )
	elseif GetNumText() == x181000_g_goodact then
--	��Ԫ���̵�
		-- BeginUICommand( sceneId )
			-- UICommand_AddInt( sceneId, targetId )
			-- UICommand_AddInt( sceneId, 1 )
			-- UICommand_AddInt( sceneId, 1 )
		-- EndUICommand( sceneId )
		-- DispatchUICommand( sceneId, selfId, 888902)
	
	elseif GetNumText() == x181000_g_zdianact then
		BeginEvent( sceneId )
			strText = "  Xin c�n c� v�o nhu c�u l�a ch�n kh�c nhau c�a th߽ng ti�m �i�m t�ng"
			AddText( sceneId, strText )
			-- AddNumText( sceneId, x181000_g_scriptId, "Th߽ng ph�m ph� th�ng t�ng �i�m", 7, x181000_g_normalzdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 1 ", 7, x181000_g_lv1zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 2 ", 7, x181000_g_lv2zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 3 ", 7, x181000_g_lv3zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 4 ", 7, x181000_g_lv4zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 5 ", 7, x181000_g_lv5zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 6 ", 7, x181000_g_lv6zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 7 ", 7, x181000_g_lv7zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 8 ", 7, x181000_g_lv8zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 9 ", 7, x181000_g_lv9zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguy�n li�u c�p 10 ", 7, x181000_g_lv10zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Tr� v� trang tr߾c", -1, x181000_g_return)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == x181000_g_gotodali then
		NewWorld(sceneId,selfId,0,200,177)

	elseif GetNumText() == x181000_g_ticketact then
		-- local _yes = LuaFnOpenPWBox(sceneId,selfId);
		-- if(_yes~=1)then
			-- local nYuanBao = YuanBao(sceneId,selfId,targetId,3,0)
			-- BeginUICommand( sceneId )
				-- UICommand_AddInt( sceneId, targetId )
			-- EndUICommand( sceneId )
			-- DispatchUICommand( sceneId, selfId, 2002 )
		-- end
		
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1022001 )
		
	elseif GetNumText() == x181000_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	-- elseif GetNumText() == x181000_g_normalzdianshop then
		-- x181000_NewDispatchShopItem( sceneId, selfId,targetId, 121 )
	elseif GetNumText() == x181000_g_lv1zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 122 )
	elseif GetNumText() == x181000_g_lv2zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 123 )
	elseif GetNumText() == x181000_g_lv3zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 124 )
	elseif GetNumText() == x181000_g_lv4zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 125 )
	elseif GetNumText() == x181000_g_lv5zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 126 )
	elseif GetNumText() == x181000_g_lv6zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 127 )
	elseif GetNumText() == x181000_g_lv7zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 128 )
	elseif GetNumText() == x181000_g_lv8zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 129 )
	elseif GetNumText() == x181000_g_lv9zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 130 )
	elseif GetNumText() == x181000_g_lv10zdianshop then
		x181000_NewDispatchShopItem( sceneId, selfId,targetId, 131 )
	
	elseif GetNumText() == x181000_g_YuanBaoIntro	then
		BeginEvent( sceneId )
			AddText( sceneId, "#{INTRO_YUANBAO}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 19 then          -- ��Ԫ���ͱ�ʯ
		BeginEvent( sceneId )
			AddText( sceneId, "#{CZSBS_81218_1}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )



	end
end

--**********************************
--�ͻ��˹���Ԫ���ӿ�
--**********************************
function x181000_BuyYuanbao( sceneId, selfId, nYuanBao )
	-- if nYuanBao and nYuanBao >= 1200 then
		-- if LuaFnGetMaterialBagSpace(sceneId, selfId) <= 0 and GetMissionFlag(sceneId, selfId, MF_GEM_PRIZE_FLAG) == 0 then
			-- BeginEvent(sceneId);
				-- AddText(sceneId, "#{CZSBS_81218_3}");
			-- EndEvent(sceneId);
			-- DispatchMissionTips(sceneId, selfId);
			-- return
		-- end
	-- end
	--����Ԫ��
	if nYuanBao then
		if nYuanBao > 0 and nYuanBao <= 2000000 then
			CallScriptFunction( PRIZE_SCRIPT_ID, "AskYuanBao", sceneId, selfId, nYuanBao, nYuanBao*x181000_g_buyrate*1)
		end
	end
end

--**********************************
--�����������̵꣬��Ϊ�����̵��NPC�̵�
--**********************************
function x181000_NewDispatchShopItem(sceneId,selfId,targetId,shopId)
	if targetId >= 0 then
		DispatchShopItem( sceneId, selfId,targetId, shopId )
	else
		DispatchNoNpcShopItem( sceneId, selfId, shopId )
	end
end
