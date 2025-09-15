--ĞÂµÄÔª±¦ÉÌµê

x888902_g_scriptId = 888902
--Ôª±¦ÉÌµêÁĞ±í ÒªÓë¿Í»§¶Ë½çÃæ¶ÔÓ¦
x888902_g_shoplist = {}
x888902_g_shoplist[1]	= {311, 312, 313, 314, 315, 316, 317, 318}				--´óÂô³¡
x888902_g_shoplist[2]	= {149, 150, 178, 193}			--±¦Ê¯ÉÌ³Ç,Ìí¼Ó"´óÀí±¦Ê¯Õ«--149",czf,2009.07.21
x888902_g_shoplist[3]	= {331, 332, 333, 135, 152, 195}			--ÕäÊŞÉÌ³Ç
x888902_g_shoplist[4]	= {136, 137, 144}				--ÄÏ±±ÔÓ»õ
x888902_g_shoplist[5]	= {351, 352, 353, 354, 355, 356, 357, 358}			--ĞÎÏó¹ã³¡
x888902_g_shoplist[6]	= {190, 191, 192, 133} --{190, 191, 192, 133}				--»¨ÎèÈË¼ä
x888902_g_shoplist[7]	= {146}						--Îä¹¦ÃØ¼®
x888902_g_shoplist[8]	= {156, 157, 158, 159, 160, 161, 162, 163}	--´òÔìÍ¼

-- x888902_g_shoplist[1]	= {188, 189, 197}				--´óÂô³¡
-- x888902_g_shoplist[2]	= {149, 150, 198, 193}			--±¦Ê¯ÉÌ³Ç,Ìí¼Ó"´óÀí±¦Ê¯Õ«--149",czf,2009.07.21 [178 ngoc 6]
-- x888902_g_shoplist[3]	= {194, 135, 152, 195}			--ÕäÊŞÉÌ³Ç
-- x888902_g_shoplist[4]	= {136, 137, 144}				--ÄÏ±±ÔÓ»õ
-- x888902_g_shoplist[5]	= {120, 181, 145, 182, 134, 208}			--ĞÎÏó¹ã³¡
-- x888902_g_shoplist[6]	= {190, 191, 192, 133}				--»¨ÎèÈË¼ä
-- x888902_g_shoplist[7]	= {146}						--Îä¹¦ÃØ¼®
-- x888902_g_shoplist[8]	= {156, 157, 158, 159, 160, 161, 162, 163}	--´òÔìÍ¼

--**********************************
-- ¼ì²é´ËËæÉíNPCµÄ¹¦ÄÜ
-- opÊÇÇëÇóÀà±ğ£¬±ÈÈç1´ú±íÔª±¦Ïà¹ØµÄËæÉí²Ù×÷¡­¡­
--**********************************
function x888902_CustomShop( sceneId, selfId, ShopID , Index )

	if ShopID == 1 then
		-- local StartDay = 20200321
		-- local LastDay = 20200323
		-- local CurDay = GetTime2Day()
		
		-- if CurDay == StartDay then
			-- if GetHour() <= 5 then
				-- x888902_NotifyFailTips(sceneId,selfId,"Sñ kiªn s¨ di­n ra sau bäo trì h¢ng ngày!")
				-- return
			-- end
		-- end
		
		-- if CurDay < StartDay or CurDay > LastDay then
			-- x888902_NotifyFailTips(sceneId,selfId,"Sñ ki®n chï di­n ra t× 2020-03-21 ğªn 2020-03-23.")
			-- return
		-- end
	
		-- if Index < 1 or Index > 3 then
			-- return
		-- end
	
		-- local nBuy = GetMissionData(sceneId,selfId,EVENT_PARAM2)
		
		-- if nBuy >= 3 then
			-- x888902_NotifyFailTips( sceneId, selfId, "M²i ngày chï có th¬ mua 3 cái Sinh Tiêu Thïnh Thi®p" )
			-- return
		-- end
		
		-- local ItemID = 30504189
		-- local ItemNum = 1
		-- local ItemPrice = 100
		
		-- if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			-- x888902_NotifyFailTips( sceneId, selfId, "Không ğü ô tr¯ng trong túi ĞÕo Cø." )
			-- return
		-- end
		
		-- if YuanBao(sceneId,selfId,-1,3,0) < ItemPrice then
			-- x888902_NotifyFailTips(sceneId,selfId,"Không ğü Nguyên Bäo.")
			-- return
		-- end
		
		-- YuanBao(sceneId,selfId,-1,2,ItemPrice)
		-- TryRecieveItem(sceneId,selfId,ItemID,1)
		
		-- nBuy = nBuy + 1;
		-- SetMissionData(sceneId,selfId,EVENT_PARAM2,nBuy)
		-- x888902_NotifyFailTips(sceneId,selfId,"Các hÕ ğã mua "..nBuy.."/3 cái "..GetItemName(sceneId,ItemID)..".")
	end
end

function x888902_OpenYuanbaoShop( sceneId, selfId, targetId , shopA ,shopB )

	local bCheck = x888902_YuanbaoShopCheckOp(sceneId,selfId);
	
	if bCheck > 0 then
		if shopA > 0 and shopA < 9 and x888902_g_shoplist[shopA][shopB] ~= nil then
			--PrintStr(x888902_g_shoplist[shopA][shopB])
			if targetId == -1 then
				DispatchYuanbaoShopItem( sceneId, selfId, x888902_g_shoplist[shopA][shopB])
			else
				DispatchNpcYuanbaoShopItem( sceneId, selfId, targetId , x888902_g_shoplist[shopA][shopB])
			end
		end
	end
end

function x888902_YuanbaoShopCheckOp(sceneId,selfId)
	--µØ¸®
	if sceneId == 77 then 
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Trong Ğ¸a Phü không th¬ tùy ti®n sØ døng công nång", 0);
		return 0
	end
	--×é¶Ó¸úËæ
	local selfHasTeamFlag = LuaFnHasTeam(sceneId, selfId);
	if selfHasTeamFlag and selfHasTeamFlag == 1 then
		local teamFollowFlag = IsTeamFollow(sceneId,selfId);
		local teamLeaderFlag = LuaFnIsTeamLeader(sceneId,selfId);
		if not teamLeaderFlag or not teamFollowFlag then
			return 0
		end
		if teamFollowFlag ~= 0 and teamLeaderFlag ~= 1 then
			return 0
		end
	end
	--Ë«ÈËÆï³Ë
	local selfHasDRideFlag = LuaFnGetDRideFlag(sceneId, selfId);
	if selfHasDRideFlag and selfHasDRideFlag == 1 then
		local selfIsDRideMountOwner = LuaFnIsDRideMountOwner(sceneId, selfId);
		if not selfIsDRideMountOwner or selfIsDRideMountOwner ~= 1 then
			--´¦ÓÚË«ÈËÆï³Ë×´Ì¬£¬ÇÒÊÇ±»¶¯µÄ£¬½»¸øÖ÷¶¯·½À´´¦Àí
			return 0
		end
	end
	--15¼¶ÒÔÉÏ
	local level = GetLevel(sceneId,selfId);
	if nil == level or level < 15 then
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:Công nång này chï có th¬ sØ døng khi ğÆng c¤p cüa các hÕ l¾n h½n ho£c b¢ng 15 m¾i có th¬ sØ døng", 0);
		return 0
	else
		return 1
	end
	return 0
end

function x888902_NotifyFailTips(sceneId,selfId,Tip)
	BeginEvent(sceneId)
		AddText(sceneId,Tip)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
end