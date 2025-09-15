--[ ´´½¨ÈË QUFEI 2007-12-15 16:40 UPDATE BugID 26242 ]
--µ÷ÕûÍ·Ïñ
--½Å±¾ºÅ
x805030_g_ScriptId = 805030

--µ÷ÕûÍ·ÏñUI 112730

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x805030_OnEnumerate( sceneId, selfId, targetId )
	-- µ÷ÊÔĞÅÏ¢
	--BeginEvent(sceneId)
	--	AddText(sceneId, "½øÈëµ÷ÕûÍ·Ïñ½Å±¾");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)	
	
	-- ÎªÊ²Ã´Òª NPC Tên?
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 112730)
	return
end

--**********************************
--µ÷ÕûÍ·Ïñ
--**********************************
function x805030_FinishAdjust( sceneId, selfId, styleId )
	
	-- Í·ÏñÎ´Ñ¡ÖĞ»òÑ¡ÖĞÎŞĞ§
	if styleId <= 0 then														
		x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_004}" )
		return		
	end
	
	--  ği¬mµ½µ÷ÕûÍ·ÏñËùĞèÎïÆ·toÕ ğµ id¼°ÆäÊıÁ¿
	local ItemId, ItemCount = GetChangeHeadInfo(styleId)
		
	-- Tr· v«Öµ·Ç·¨
	if ItemId < 0 or ItemCount < 0 then
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	--ÏûºÄÎïÆ·Ğúng·ñ¹»ÓÃ»òËø¶¨
	if ItemCount > nItemNum then
		x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_005}" )
		return
	end

	-- ÎïÆ·¼ì²âÍ¨¹ı,ÔÙ¼ì²éÍæ¼Ò½ğÇ®
	local moneyJZ = GetMoneyJZ (sceneId, selfId);
	local money = GetMoney (sceneId, selfId);
	
	-- ÎïÆ·ºÍ½ğÇ®¼ì²â¶¼Í¨¹ı
	if (moneyJZ + money >= 50000)	then
		-- ÉèÖÃÍæ¼ÒĞÂÍ·Ïñ(»áTÕi Cái này ¹ı³ÌÖĞÏûºÄÎïÆ·ºÍ½ğÇ®)
		local ret = ChangePlayerHeadImage( sceneId, selfId, styleId )	
		if ret == 0  then																--³É¹¦
			x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_010}" )		
					
		-- ÒÔÏÂÎª²Ù×÷th¤t bÕiÊ±toÕ ğµ ²¿·Ö´íÎóĞÅÏ¢
		elseif ret == 1 then														--ËùÑ¡toÕ ğµ Í·ÏñÓëÍæ¼Òµ±Ç°toÕ ğµ Í·Ïñmµt ÖÂ
			x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_009}" )				
			return
		elseif ret == 3 then														--Ã»ÓĞC¥n ÏûºÄtoÕ ğµ ÎïÆ·»ò¸ÃÎïÆ·±»Ëø¶¨
			x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_005}" )				
			return
		else
			return
		end
	
	-- Không ğü ngân lßşng.	
	else
		x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_006}" )						
		return
	end
	
	-- ·¢²¼¹«¸æ
	local message;
	if random(2) == 1 then
		message = format("#W#{_INFOUSR%s}#{INTERHEAD_XML_007}", LuaFnGetName(sceneId, selfId));
	else
		message = format("#W#{INTERHEAD_XML_011}#{_INFOUSR%s}#{INTERHEAD_XML_012}", LuaFnGetName(sceneId, selfId));
	end

	BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
	-- ¼ÇÂ¼³É¹¦Thay ğ±i hình bi¬u tßşng nhân v§ttoÕ ğµ Íæ¼ÒÈÕÖ¾
	AuditChangeHead( sceneId, selfId, styleId )
		
end

--**********************************
-- ÆÁÄ»ÉÏtoÕ ğµ ĞÑÄ¿ÌáÊ¾
--**********************************
function x805030_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
