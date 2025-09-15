--µ÷Õû·¢ĞÍ
--½Å±¾ºÅ
x801010_g_ScriptId = 801010

--µ÷Õû·¢ĞÍUI 21

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x801010_OnEnumerate( sceneId, selfId, targetId )
	-- µ÷ÊÔĞÅÏ¢
	--BeginEvent(sceneId)
	--	AddText(sceneId, "½øÈëµ÷Õû·¢ĞÍ½Å±¾");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)		

	-- ÎªÊ²Ã´Òª NPC Tên?
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 21)
	return

end


--**********************************
--µ÷Õû·¢ĞÍ
--**********************************
function x801010_FinishAdjust( sceneId, selfId, styleId)

	-- ·¢ĞÍÎ´Ñ¡ÖĞ»òÑ¡ÖĞÎŞĞ§
	if styleId < 0 then														
		BeginEvent(sceneId)
			AddText(sceneId, "Thay ğ±i ki¬u tóc thành công");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--  ği¬mµ½µ÷Õû·¢ĞÍËùĞèÎïÆ·toÕ ğµ id¼°ÆäÊıÁ¿
	local ItemId, ItemCount = GetChangeHairItemIdAndItemCount(styleId)
	
	-- Tr· v«Öµ·Ç·¨
	if ItemId < 0 or ItemCount < 0 then		
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	-- ÎïÆ·Ğúng·ñ¹»ÓÃ»òËø¶¨
	if ItemCount > nItemNum then
		BeginEvent(sceneId)
			AddText(sceneId, "Không có phát hình ğ° ho£c phát hình ğµ ğã khoá!");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ÎïÆ·¼ì²âÍ¨¹ı,ÔÙ¼ì²éÍæ¼Ò½ğÇ®
	local moneyJZ = GetMoneyJZ (sceneId, selfId)
	local money = GetMoney (sceneId, selfId)
	
	-- ÎïÆ·ºÍ½ğÇ®¼ì²â¶¼Í¨¹ı
	if (moneyJZ + money >= 50000)	then
		-- ÉèÖÃÍæ¼ÒĞÂ·¢ĞÍ(»áTÕi Cái này ¹ı³ÌÖĞÏûºÄÎïÆ·ºÍ½ğÇ®)
		local ret = LuaFnChangeHumanHairModel( sceneId, selfId, styleId )
		if ret == 0 then	
			BeginEvent(sceneId)
				AddText(sceneId, "Thay ğ±i ki¬u tóc thành công.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			
		-- ÒÔÏÂÎª²Ù×÷th¤t bÕiÊ±toÕ ğµ ´íÎóĞÅÏ¢
		elseif ret == 1  then														--ËùÑ¡toÕ ğµ ·¢ĞÍÓëÍæ¼Òµ±Ç°toÕ ğµ ·¢ĞÍmµt ÖÂ
			BeginEvent(sceneId)
				AddText(sceneId, "ÇëÑ¡Ôñmµt ÖÖºÍÄãµ±Ç°²»Í¬toÕ ğµ ·¢ĞÍ.");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 3 then														--Ã»ÓĞC¥n ÏûºÄtoÕ ğµ ÎïÆ·»ò¸ÃÎïÆ·±»Ëø¶¨
			BeginEvent(sceneId)
				AddText(sceneId, "Không có phát hình ğ° ho£c phát hình ğµ ğã khoá!");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		elseif ret == 4 then														
			BeginEvent(sceneId)
				AddText(sceneId, "Không ğü ngân lßşng");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		else
			return
		end

	-- Không ğü ngân lßşng.
	else
		BeginEvent(sceneId)
			AddText(sceneId, "Không ğü ngân lßşng");
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	-- ·¢ËÍmµt ÌõËæ»útoÕ ğµ ¹ã²¥ÏûÏ¢
	local message;	
	local randMessage = random(3);
		
	if randMessage == 1 then	
		message = format("#{FaXing_00}#{_INFOUSR%s}#{FaXing_01}", LuaFnGetName(sceneId, selfId));
	elseif randMessage == 2 then
		message = format("#{FaXing_02}#{_INFOUSR%s}#{FaXing_03}", LuaFnGetName(sceneId, selfId));
	else
		message = format("#{FaXing_04}#{_INFOUSR%s}#{FaXing_05}", LuaFnGetName(sceneId, selfId));
	end
		
	BroadMsgByChatPipe(sceneId, selfId, message, 4);
	
end
