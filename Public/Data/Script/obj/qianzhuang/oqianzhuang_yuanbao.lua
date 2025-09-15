--Ôª±¦ NPC
--×¢Òâ±¾½Å±¾º¬ÓÐËæÉíÔª±¦Ïà¹Ø¹¦ÄÜ£¬ÇëÒ»¶¨²ÎÕÕÏÖÓÐµÄÀý×Ó½øÐÐÐÞ¸Ä¡£

x181000_g_scriptId 	= 181000
x181000_g_buyrate 	= 1

x181000_g_shoptableindex=120
x181000_g_zengdianshop=121

x181000_g_goodact		= 1		--Ôª±¦ÉÌµê
x181000_g_buyact	 	= 2		--¶Ò»»Ôª±¦
x181000_g_ticketact = 3		--¶Ò»»Ôª±¦Æ±
x181000_g_zdianact	= 4		--ÔùµãÉÌµê
x181000_g_gotodali	= 5		--·µ»ØÂåÑô

x181000_g_normalzdianshop	= 6		--ÆÕÍ¨ÔöµãÉÌµê
x181000_g_lv1zdianshop	= 7			--Ò»¼¶²ÄÁÏ
x181000_g_lv2zdianshop	= 8			--¶þ¼¶²ÄÁÏ
x181000_g_lv3zdianshop	= 9			--Èý¼¶²ÄÁÏ
x181000_g_lv4zdianshop	= 10		--ËÄ¼¶²ÄÁÏ
x181000_g_lv5zdianshop	= 11		--Îå¼¶²ÄÁÏ
x181000_g_lv6zdianshop	= 12		--Áù¼¶²ÄÁÏ
x181000_g_lv7zdianshop	= 13		--Æß¼¶²ÄÁÏ
x181000_g_lv8zdianshop	= 14		--°Ë¼¶²ÄÁÏ
x181000_g_lv9zdianshop	= 15		--¾Å¼¶²ÄÁÏ
x181000_g_lv10zdianshop	= 16		--Ê®¼¶²ÄÁÏ
x181000_g_newprize	= 17		--²é¿´ÖÐ½±
x181000_g_YuanBaoIntro	= 18	--Ôª±¦½éÉÜ

x181000_g_leave			= 20	--Àë¿ª
x181000_g_return		= 21	--·µ»Ø(Ö÷²Ëµ¥)

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x181000_OnDefaultEvent( sceneId, selfId, targetId )	
	--if GetName(sceneId,selfId) == "Bão" then
		--YuanBao(sceneId,selfId,targetId,1,3150)
		-- SetMissionData(sceneId,selfId,MD_YUANBAO_PRIZE_GEM_COUNT, 2 )
		--local GemNew = TryRecieveItem(sceneId,selfId,30900130,1)
		--LuaFnItemBind(sceneId,selfId,GemNew)
	--end
	BeginEvent( sceneId )
		local strText = "    Có ti«n có th¬ sai khiªn ðßþc cä QuÖ, tuy trên giang h° chú tr÷ng võ lñc, nhßng có kim nguyên bäo r°i có th¬ khiªn nhæng vi®c trß¾c ðây v¯n khó làm tr· nên d­ dàng h½n, các hÕ mu¯n làm gì?"
		AddText( sceneId, strText )
		local nNum = GetMissionData(sceneId,selfId,MD_YUANBAO_PRIZE_GEM_COUNT )
		AddNumText( sceneId, x181000_g_scriptId, "#b#GQuà T£ng Bäo ThÕch", 2, 999)
		-- AddNumText( sceneId, x181000_g_scriptId, "Ta mu¯n mua thß½ng ph¦m", 2, x181000_g_goodact)
		-- AddNumText( sceneId, x181000_g_scriptId, "Ð±i B€C thành Kim Nguyên Bäo", 2, x181000_g_buyact)
		if IsEnableYuanBaoPiao() == 1 then
			AddNumText( sceneId, x181000_g_scriptId, "Ð±i phiªu Kim Nguyên Bäo", 2, x181000_g_ticketact)
		end
		AddNumText( sceneId, x181000_g_scriptId, "Thß½ng ðiªm t£ng ði¬m", 2, x181000_g_zdianact)
		AddNumText( sceneId, x181000_g_scriptId, "Gi¾i thi®u thß½ng ti®m Nguyên bäo và Ði¬m t£ng", 11, x181000_g_YuanBaoIntro)
		AddNumText( sceneId, x181000_g_scriptId, "#{CZSBS_81218_2}", 11, 19)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x181000_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 999 then
		local nNum = GetMissionData(sceneId,selfId,MD_YUANBAO_PRIZE_GEM_COUNT )
		BeginEvent( sceneId )
			AddText( sceneId, "#GQuà T£ng Bäo ThÕch #Wlà sñ ki®n ðßþc t± chÑc nhi«u l¥n. Ta s¨ cho ngß½i xem thông tin ng÷c ðã nh§n!" )
			AddText( sceneId, "#r" )
			if nNum == 3 then
				AddText( sceneId, "L¥n 1: #RQuy ð±i 400 KNB #rH°ng Bäo ThÕch c¤p 3: #YÐã nh§n#r" )
				AddText( sceneId, "L¥n 2: #RQuy ð±i 1666 KNB #rPhiªu Bäo ThÕch c¤p 4: #YÐã nh§n#r" )
				AddText( sceneId, "L¥n 3: #RQuy ð±i 1666 KNB #rPhiªu Bäo ThÕch c¤p 4: #YÐã nh§n#r" )
			elseif nNum == 2 then
				AddText( sceneId, "L¥n 1: #RQuy ð±i 400 KNB #rH°ng Bäo ThÕch c¤p 3: #YÐã nh§n#r" )
				AddText( sceneId, "L¥n 2: #RQuy ð±i 1666 KNB #rPhiªu Bäo ThÕch c¤p 4: #YÐã nh§n#r" )
				AddText( sceneId, "L¥n 3: #RQuy ð±i 1666 KNB #rPhiªu Bäo ThÕch c¤p 4: #GChßa nh§n#r" )
			elseif nNum == 1 then
				AddText( sceneId, "L¥n 1: #RQuy ð±i 400 KNB #rH°ng Bäo ThÕch c¤p 3: #YÐã nh§n#r" )
				AddText( sceneId, "L¥n 2: #RQuy ð±i 1666 KNB #rPhiªu Bäo ThÕch c¤p 4: #GChßa nh§n#r" )
				AddText( sceneId, "L¥n 3: #RQuy ð±i 1666 KNB #rPhiªu Bäo ThÕch c¤p 4: #GChßa nh§n#r" )
			elseif nNum == 0 then
				AddText( sceneId, "L¥n 1: #RQuy ð±i 400 KNB #rH°ng Bäo ThÕch c¤p 3: #GChßa nh§n#r" )
				AddText( sceneId, "L¥n 2: #RQuy ð±i 1666 KNB #rPhiªu Bäo ThÕch c¤p 4: #GChßa nh§n#r" )
				AddText( sceneId, "L¥n 3: #RQuy ð±i 1666 KNB #rPhiªu Bäo ThÕch c¤p 4: #GChßa nh§n#r" )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == x181000_g_buyact then
		--ÏÈÑ¯ÎÊ×Ô¼ºµÄÊ£ÓàµãÊý
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
--	ÐÂÔª±¦ÉÌµê
		-- BeginUICommand( sceneId )
			-- UICommand_AddInt( sceneId, targetId )
			-- UICommand_AddInt( sceneId, 1 )
			-- UICommand_AddInt( sceneId, 1 )
		-- EndUICommand( sceneId )
		-- DispatchUICommand( sceneId, selfId, 888902)
	
	elseif GetNumText() == x181000_g_zdianact then
		BeginEvent( sceneId )
			strText = "  Xin cån cÑ vào nhu c¥u lña ch÷n khác nhau cüa thß½ng ti®m ði¬m t£ng"
			AddText( sceneId, strText )
			-- AddNumText( sceneId, x181000_g_scriptId, "Thß½ng ph¦m ph± thông t£ng ði¬m", 7, x181000_g_normalzdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 1 ", 7, x181000_g_lv1zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 2 ", 7, x181000_g_lv2zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 3 ", 7, x181000_g_lv3zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 4 ", 7, x181000_g_lv4zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 5 ", 7, x181000_g_lv5zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 6 ", 7, x181000_g_lv6zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 7 ", 7, x181000_g_lv7zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 8 ", 7, x181000_g_lv8zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 9 ", 7, x181000_g_lv9zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Nguyên li®u c¤p 10 ", 7, x181000_g_lv10zdianshop)
			AddNumText( sceneId, x181000_g_scriptId, "Tr· v« trang trß¾c", -1, x181000_g_return)
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
	
	elseif GetNumText() == 19 then          -- »»Ôª±¦ËÍ±¦Ê¯
		BeginEvent( sceneId )
			AddText( sceneId, "#{CZSBS_81218_1}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )



	end
end

--**********************************
--¿Í»§¶Ë¹ºÂòÔª±¦½Ó¿Ú
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
	--¹ºÂòÔª±¦
	if nYuanBao then
		if nYuanBao > 0 and nYuanBao <= 2000000 then
			CallScriptFunction( PRIZE_SCRIPT_ID, "AskYuanBao", sceneId, selfId, nYuanBao, nYuanBao*x181000_g_buyrate*1)
		end
	end
end

--**********************************
--°´ÐèÀ´µ¯³öÉÌµê£¬·ÖÎªËæÉíÉÌµêºÍNPCÉÌµê
--**********************************
function x181000_NewDispatchShopItem(sceneId,selfId,targetId,shopId)
	if targetId >= 0 then
		DispatchShopItem( sceneId, selfId,targetId, shopId )
	else
		DispatchNoNpcShopItem( sceneId, selfId, shopId )
	end
end
