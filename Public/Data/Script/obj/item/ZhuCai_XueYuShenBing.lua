-- ´´½¨ÈË[ QUFEI 2007-09-30 21:53 UPDATE BugID 25759 ]
-- ĞŞ¸ÄÈË[ ñÒÉÙÎ¢ 2008.5.20 Ìí¼Ó102c¤pÉñÆ÷toÕ ğµ ºÏ³ÉÅä·½ ]

-- ÑªÔ¡Éñ±øÍêÕûÖ÷²ÄtoÕ ğµ ºÏ³É»úÖÆÊµÏÖ (¸Ä³ÉÕıÈ·Tên)
-- ItemID = 30505800~30505805(ĞÂÃ§Éñ·û)			30505806 102c¤pÉñÆ÷
-- 335135
-- Ìá¸ßÉñ·ûÍê³É¶È¼°ÍêÕûÉñ·ûtoÕ ğµ ºÏ³É
-- ÎïÆ·¿ÉÒÔÊ¹ÓÃ1´Î
-- Ê¹ÓÃÍê¾ÍÉ¾³ıÎïÆ·


--******************************************************************************
-- ÒÔÏÂ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾ºÅ (¸Ä³ÉÕıÈ·½Å±¾ºÅ)
x335135_g_scriptId = 335135

-- Ôö¼ÓÖµ (¸ù¾İÒªÇó¸ÄĞ´¾ßÌåÊıÖµ)
x335135_g_CompleteValue = 5			-- Éñ²ÄÔö¼ÓÍê³É¶È			-- ñÒÉÙÎ¢,102ÉñÆ÷.·½±ã²âÊÔµ÷³ÉÁË50,²âÊÔÍê±Ïµ÷»Ø5¼´¿É.
--x335135_g_MaxCompleteValue = 100-- ×î´óÉñ²ÄÍê³É¶ÈÉÏÏŞ
x335135_g_MaxUseCount = 1				-- ×î´óÊ¹ÓÃ´ÎÊı1´Î

--±ê×¼Ğ§¹ûID (¸Ä³ÉÉñ²ÄºÏ³ÉtoÕ ğµ ÌØĞ§)
--g_ImpactID = 0

--Éñ²ÄºÏ³É¶ÔÓ¦±í
x335135_g_ShenCaiTable = {{sjid=30505700,sfid=30505800,lrid=30505900},
													{sjid=30505701,sfid=30505801,lrid=30505901},
													{sjid=30505702,sfid=30505802,lrid=30505902},
													{sjid=30505703,sfid=30505803,lrid=30505903},
													{sjid=30505704,sfid=30505804,lrid=30505904},
													{sjid=30505705,sfid=30505805,lrid=30505905},
													{sjid=30505706,sfid=30505806,lrid=30505906},}		-- -- ñÒÉÙÎ¢ 2008.5.20. 102c¤pÉñÆ÷ÖıÔìÍ¼Ñù.²ĞÈ±toÕ ğµ Éñ½Ú7c¤p,Tân mãng th¥n phù c¤p 7,Á¬ÈÖÉñ½Ú7c¤p.
x335135_g_MaxCompleteValue = {25,50,75,100,100,100,100}
-- µ±Ç°¿ÉÒÔºÏ³ÉtoÕ ğµ Éñ²ÄË÷ÒıºÅ
x335135_g_ShenCaiIndex = 0

-- Ê¹ÓÃĞÂÃ§Éñ·ûÔö¼ÓÍêÕû¶ÈÊ±toÕ ğµ ÌØĞ§ID
x335135_g_Impact_LevelUP = 47

-- ºÏ³É³öÁ¬ÈÖÉñ½ÚÊ±toÕ ğµ ÌØĞ§ID
x335135_g_Impact_Complete = 48

--******************************************************************************
-- ÒÔÉÏ²¿·ÖC¥n ĞúngC¥n ĞŞ¸ÄtoÕ ğµ ²¿·Ö
--******************************************************************************

--½Å±¾

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335135_OnDefaultEvent( sceneId, selfId, bagIndex )
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ:
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x335135_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú:
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x335135_OnConditionCheck( sceneId, selfId )

	if LuaFnVerifyUsedItem(sceneId, selfId)~=1 then
		return 0
	end


	local nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local Item01 = LuaFnGetItemTableIndexByIndex(sceneId, selfId, nIndex)


	for i=1, 7 do				--for i=1, 6 do
		if Item01 == x335135_g_ShenCaiTable[i].sfid then
			x335135_g_ShenCaiIndex = i
			break
		end
	end


	if Item01 < 30505800 or Item01 > 30505806 then			-- if Item01 < 30505800 or Item01 > 30505805 then
		local strNotice = "Chï có th¬ dùng tân mãng th¥n phù hşp thành" -- ĞÂÃ§Éñ·û
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end


	local ItemCount = LuaFnGetAvailableItemCount( sceneId, selfId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid )
	if ItemCount < 1 then
		local strNotice = "Ngß½i c¥n ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end

	local bagbegin = GetBasicBagStartPos(sceneId, selfId)
	local bagend   = GetBasicBagEndPos(sceneId, selfId)

	local ItemEX
	--  ğÕt ğßşcµ±Ç°¿ÉÒÔºÏ³ÉtoÕ ğµ µÚmµt cáiÉñ½ÚTÕi ±³°üÖĞtoÕ ğµ Î»ÖÃ
	local sjbagpos = -1
	for i=bagbegin, bagend do
		if LuaFnIsItemAvailable( sceneId, selfId, i ) == 1 then
			ItemEX = LuaFnGetItemTableIndexByIndex(sceneId, selfId, i)
			if ItemEX == x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid then
				sjbagpos = i
				break
			end
		end
	end

	-- PrintStr("sjbagpos ="..sjbagpos)

	if sjbagpos == -1 then
		local strNotice = "Ngß½i c¥n ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end

	-- PrintStr("sjbagpos ="..sjbagpos)

	local CheckParam = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )

	-- PrintStr("CheckParam ="..CheckParam)

	if CheckParam < x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] and CheckParam + x335135_g_CompleteValue >= x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] then
		local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
		if FreeSpace < 1 then
	     local strNotice = "Ô ğÕo cø không có không gian, c¥n sØa sang lÕi."
		   x335135_ShowMsg( sceneId, selfId, strNotice)
	     return 0
		end
	end

	return 1;
end


function x335135_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
	end
	return 0
end


function x335135_OnActivateOnce( sceneId, selfId )

	local nIndex = LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	local Item02 = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )

	for i=1, 7 do
		if Item02 == x335135_g_ShenCaiTable[i].sfid then
			x335135_g_ShenCaiIndex = i
			break
		end
	end
	local Item01 = x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sfid
	local bagbegin = GetBasicBagStartPos(sceneId, selfId)
	local bagend   = GetBasicBagEndPos(sceneId, selfId)
	local ItemEX
	local sjbagpos = -1
	for i=bagbegin, bagend do
		if LuaFnIsItemAvailable( sceneId, selfId, i ) == 1 then
			ItemEX = LuaFnGetItemTableIndexByIndex(sceneId, selfId, i)
			if ItemEX == x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid then
				sjbagpos = i
				break
			end
		end
	end

	if sjbagpos == -1 then
		local strNotice = "Ngß½i c¥n ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)
	  return 0
	end

	--  ğÕt ğßşcµ±Ç°ºÏ³ÉtoÕ ğµ Éñ½ÚÍêÕû¶È
	local CompleteValue = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )
	if nIndex >= 0  then

		CompleteValue = CompleteValue + x335135_g_CompleteValue

		SetBagItemParam( sceneId, selfId, sjbagpos, 8, 2, CompleteValue ) --ÉèÖÃÍê³É¶È

		if Item01 == 30505806 then
			local playername = GetName(sceneId, selfId)
			local strText = format("#{_INFOUSR%s}#{DQSJ_20080512_12} #Y[#{_ITEM"..Item01.."}]#W#{DQSJ_20080512_13}", playername)
			--BroadMsgByChatPipe(sceneId,selfId, strText, 4)
		end

		--------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áth¤t bÕi
		local CheckParam = GetBagItemParam( sceneId, selfId, sjbagpos, 8, 2 )


		if CheckParam ~= CompleteValue then
		    return 0
		end
		--------------²ÎÊıÉèÖÃ°²È«ĞÔ¼ì²â,ËäÈ»ÀíÂÛÉÏ²ÎÊıÉèÖÃ²»»áth¤t bÕi

		local strNotice = "Cüa ngß½i ".."#{_ITEM"..(x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].sjid).."}".." Ğ¥y ğü ğµ gia tång 1 r°i" -- ²ĞÈ±toÕ ğµ Éñ½Ú
		x335135_ShowMsg( sceneId, selfId, strNotice)

		LuaFnRefreshItemInfo( sceneId, selfId, sjbagpos )	--Ë¢ĞÂ±³°üĞÅÏ¢

		if CompleteValue >= x335135_g_MaxCompleteValue[x335135_g_ShenCaiIndex] then		-- µ±ÍêÕû¶È´ïµ½100Ê±

			local EraseRet = EraseItem( sceneId, selfId, sjbagpos )

			if EraseRet < 0 then
					return 0
			end


			BeginAddItem( sceneId )
			AddItem( sceneId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].lrid, 1 )
			ret = EndAddItem( sceneId, selfId )

			if ret > 0 then
				TryRecieveItem( sceneId, selfId, x335135_g_ShenCaiTable[x335135_g_ShenCaiIndex].lrid, QUALITY_MUST_BE_CHANGE )	-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË

			else
					BeginEvent(sceneId)
					strText = "Ô ğÕo cø ho£c nguyên li®u không ğü không gian, thïnh sØa sang lÕi sau lÕi ğªn lînh."
					AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return 0
			end
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
			local strText = format("Chúc m×ng các hÕ ğã chª tÕo thành công Liên Nhung Th¥n Tiªt C¤p %d!", x335135_g_ShenCaiIndex)
			x335135_ShowMsg(sceneId, selfId, strText)
		else
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 48, 0 )
		end

	else
		local strMsg = "Hşp thành th¤t bÕi"
		x335135_ShowMsg( sceneId, selfId, strMsg)
		return 0
	end


	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú:
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335135_OnActivateEachTick( sceneId, selfId )
	return 1
end


function x335135_CancelImpacts( sceneId, selfId )
	return 0		--²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

function x335135_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
