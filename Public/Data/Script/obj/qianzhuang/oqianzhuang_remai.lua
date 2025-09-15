--ÈÈÂôÔª±¦ NPC
--×¢Òâ±¾½Å±¾º¬ÓÐËæÉíÔª±¦Ïà¹Ø¹¦ÄÜ£¬ÇëÒ»¶¨²ÎÕÕÏÖÓÐµÄÀý×Ó½øÐÐÐÞ¸Ä¡£

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

x181002_g_shoptableindex =151 --ÒÑ¾­·ÏÆúÁË£¬ÏÖÔÚÓÃ188ºÍ189
x181002_g_goodact		 = 1		--ÈÈÂôÔª±¦ÉÌµê
x181002_g_YuanBaoIntro	 = 18	--Ôª±¦½éÉÜ

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x181002_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
			strText = "    Ðªn ðây mà xem, thß½ng ph¦m bán chÕy nh¤t, giá rë nh¤t. Khách quan, ngài mau ch÷n vài món ði, bäo ðäm ngài mua v« xong ðêm nay n¢m m½ cûng phäi cß¶i "
			AddText( sceneId, strText )
			-- AddNumText( sceneId, x181002_g_scriptId, "Mua nhi®t mÕi thß½ng ph¦m", 7, x181002_g_goodact)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch", 6, 100)
			AddNumText( sceneId, x181002_g_scriptId, "Gi¾i thi®u Kim Nguyên Bäo", 11, x181002_g_YuanBaoIntro)
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x181002_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	if key == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "Ngß½i có mang ðªn Phiªu Ð±i Bäo ThÕch không?" )
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 1", 6, 101)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 2", 6, 102)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 3", 6, 103)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 4", 6, 104)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 5", 6, 105)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 6", 6, 106)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 7", 6, 107)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 8", 6, 108)
			AddNumText( sceneId, x181002_g_scriptId, "Dùng Phiªu Ð±i Bäo ThÕch C¤p 9", 6, 109)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if key >= 101 and key <= 109 then
		local GemLevel = 10*(key - 100);
		BeginEvent( sceneId )
			AddText( sceneId, "Ngß½i mu¯n ð±i l¤y loÕi bäo thÕch nào?" )
			AddNumText( sceneId, x181002_g_scriptId, "Bäo ThÕch Hy V÷ng", 6, 201+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "Bäo ThÕch Trí Tu®", 6, 202+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "Bäo ThÕch Huy«n Vi", 6, 203+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "Bäo ThÕch Äo Minh", 6, 204+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "Bäo ThÕch Sinh M®nh", 6, 205+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "Bäo ThÕch M¸ Lñc", 6, 206+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "Bäo ThÕch V§n M®nh", 6, 207+GemLevel)
			AddNumText( sceneId, x181002_g_scriptId, "Bäo ThÕch Thiên C½", 6, 208+GemLevel)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if key >= 211 and key <= 299 then
		local GemLevel = floor(mod(key,100)/10)-1
		local GemLevelID = GemLevel*100000
		local GemType = mod(key,10)
		BeginEvent(sceneId)
			AddText( sceneId, "#b#YKhi nh§n ðßþc, bäo thÕch s¨ c¯ ð¸nh v¾i các hÕ!" )
			for i = 1, getn(x181002_g_GemArray[GemType]) do
				AddRadioItemBonus( sceneId, GemLevelID+x181002_g_GemArray[GemType][i], 1 )
			end
		EndEvent( )
		DispatchMissionContinueInfo(sceneId,selfId,targetId,x181002_g_scriptId,0)
	end
	
	if GetNumText() == x181002_g_goodact then
	--ÐÂµÄÔª±¦ÉÌµê
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
			AddText(sceneId,"Sai sót nµi bµ, vui lòng liên h® GM!")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if LuaFnGetMaterialBagSpace(sceneId,selfId) < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Hãy s¡p xªp 1 ô tr¯ng trong túi nguyên li®u.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	local PhieuDoiID = x181002_g_PhieuBaoThach[GemLevel]
	local PhieuDoi = LuaFnGetAvailableItemCount(sceneId,selfId,PhieuDoiID)
	if PhieuDoi < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"Ngß½i không có ho£c #G"..GetItemName(sceneId,PhieuDoiID).."#W ðã b¸ khóa, ta không th¬ trao bäo thÕch cho ngß½i.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	LuaFnDelAvailableItem(sceneId,selfId,PhieuDoiID,1)
	
	local GemNew = TryRecieveItem(sceneId,selfId,ItemID,1)
	LuaFnItemBind(sceneId,selfId,GemNew)
	
	BeginEvent(sceneId)
		AddText(sceneId,"Chúc m×ng ngß½i ðã nh§n ðßþc #G"..GetItemName(sceneId,ItemID).."#W.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
end

--**********************************
--°´ÐèÀ´µ¯³öÉÌµê£¬·ÖÎªËæÉíÉÌµêºÍNPCÉÌµê
--**********************************
function x181002_NewDispatchShopItem(sceneId,selfId,targetId,shopId)
	if targetId >= 0 then
		DispatchShopItem( sceneId, selfId,targetId, shopId )
	else
		DispatchNoNpcShopItem( sceneId, selfId, shopId )
	end
end
