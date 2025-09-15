--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ğµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂĞúng½Å±¾ÑùÀı:


--GuiHuaPie.lua
------------------------------------------------------------------------------------------
--mµt °ãÎïÆ·toÕ ğµ Ä¬ÈÏ½Å±¾

--½Å±¾ºÅ
x300059_g_scriptId = 300059 --ÁÙÊ±Ğ´Cái này ,ÕæÕıÓÃtoÕ ğµ Ê±ºòmµt ¶¨Òª¸Ä.

--bufftoÕ ğµ ÁĞ±í
x300059_g_Impact = {

		8020,
		8021,
		8022,
		8023,
		8024,
		8025,
		8026,
		8027,
		8028,
		8029,
		30161,
		30162,
		30163,
		30164,
		30165,
		30166,
		30167,
		30168,
		30169,
		30170,
}


--³Ôµ½ºÃ¶«Î÷toÕ ğµ ¹«¸æ
x300059_g_strGetItem1 = {

	"#W#{_INFOUSR%s}#c00FFFF m· bao bánh Trung Thu vÑt ği, không ng¶ có ğ° r½i ra, #W#{_INFOUSR%s}#c00FFFF løm lên xem thØ, thì ra là #W#{_INFOMSG%s}#c00FFFF thÑ mà  th¥n tiên cûng không có cho nên không k«m n±i ni«m vui mà cß¶i th§t to",
	"#W#{_INFOUSR%s}#c00FFFF ği ğß¶ng vô tình v¤p phäi cøc ğá không may b¸ ngã, làm bánh Trung Thu Quª Hoa b¸ ğè nhão, #W#{_INFOUSR%s}#c00FFFF trong lòng tiªc nu¯i, bèn ån 1 miªng, b²ng nhiên phát hi®n 1 viên #W#{_INFOMSG%s}#c00FFFF ¦n chÑa trong bánh Trung Thu!",
	"Bánh Trung Thu ngon, tiên ğan khó c¥u, #W#{_INFOUSR%s}#c00FFFF v×a ån v×a m½ tß·ng Duyên Niên Giäm Th÷, kªt quä trên tr¶i giáng xu¯ng 1 viên #W#{_INFOMSG%s}#c00FFFF b²ng nhiên r½i vào tay #W#{_INFOUSR%s}#c00FFFF.",
}

x300059_g_strGetItem2 = {

	"#W#{_INFOUSR%s}#c00FFFF vui m×ng c¥m l¤y Bánh Trung Thu, hí hØng m· ra, ai ng¶ không c¦n th§n ğánh r½i · dß¾i bàn, #W#{_INFOUSR%s}#c00FFFF bèn cu¯i xu¯ng tìm, thì b²ng nhiên phát hi®n 1 cái #W#{_INFOMSG%s}#c00FFFF.",
	"#c00FFFF Ğêm ğoàn viên, cùng thß·ng Nguy®t, #W#{_INFOUSR%s}#c00FFFF suy nghî nhi«u thÑ trong ğ¥u, mang theo bánh Trung Thu không nŞ nu¯t, ánh trång phän chiªu, chï th¤y trong bánh Trung Thu có ánh sáng vàng nh¤p nháy, #W#{_INFOUSR%s}#c00FFFF m· bao bánh Trung Thu nhìn qua thì ra trên m£t có 1 cái #W#{_INFOMSG%s}#c00FFFF.",
	"#W#{_INFOUSR%s}#c00FFFF u¯ng rßşu 1 mình dß¾i trång, m¾i v×a ğ¸nh  l¤y bánh Trung Thu Quª Hoa ra ån tñ nhiên phát hi®n trong hµp bánh Trung Thu có 1 cái #W#{_INFOMSG%s}#c00FFFF, vë vui m×ng li«n lµ hÆn ra m£t mang bö vào trong túi cüa mình.",
}

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x300059_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x300059_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x300059_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300059_OnConditionCheck( sceneId, selfId )
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	return 1;
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x300059_OnDeplete( sceneId, selfId )
	--²»ÏûºÄ....ºó±ß»¹ÒªÊ¹ÓÃ´æµ½ÎïÆ·ÉÏtoÕ ğµ ĞÅÏ¢ÄØ....
	return 1;
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x300059_OnActivateOnce( sceneId, selfId )

	--×Ô¼º²»ÄÜÊ¹ÓÃ....
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return
	end
	local OwnGUID	= GetBagItemParam( sceneId, selfId, bagId, 4, 2 )
	OwnGUID = OwnGUID + 2147483648
	local SelfGUID = LuaFnGetGUID( sceneId, selfId )
	if OwnGUID == SelfGUID then
		BeginEvent( sceneId )
			AddText( sceneId, "L­ ph¦m bánh Trung Thu chï có th¬ giao d¸ch cho ngß¶i khác sØ døng." )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--¿ÛÎïÆ·....
	if LuaFnDepletingUsedItem(sceneId, selfId) <= 0 then
		return
	end

	--¼Óbuff....
	local myLevel = GetLevel(sceneId, selfId)
	local impactID = x300059_g_Impact[1]
	local PlayerMaxLevel = GetHumanMaxLevelLimit()

  if myLevel > PlayerMaxLevel then
		impactID = x300059_g_Impact[16]
	elseif myLevel > 140 then
		impactID = x300059_g_Impact[15]
	elseif myLevel > 130 then
		impactID = x300059_g_Impact[14]
	elseif myLevel > 120 then
		impactID = x300059_g_Impact[13]
	elseif myLevel > 110 then
		impactID = x300059_g_Impact[12]
	elseif myLevel > 100 then
		impactID = x300059_g_Impact[11]
	elseif myLevel > 90 then
		impactID = x300059_g_Impact[10]
	elseif myLevel > 80 then
		impactID = x300059_g_Impact[9]
	elseif myLevel > 70 then
		impactID = x300059_g_Impact[8]
	elseif myLevel > 60 then
		impactID = x300059_g_Impact[7]
	elseif myLevel > 50 then
		impactID = x300059_g_Impact[6]
	elseif myLevel > 40 then
		impactID = x300059_g_Impact[5]
	elseif myLevel > 30 then
		impactID = x300059_g_Impact[4]
	elseif myLevel > 20 then
		impactID = x300059_g_Impact[3]
	elseif myLevel > 10 then
		impactID = x300059_g_Impact[2]
	else
		impactID = x300059_g_Impact[1]
	end

	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, impactID, 0);
	
	if myLevel < 35 then
		return 1
	end

	--35c¤pÒÔÉÏ....»á1/500³Ô³öÇ¿ÖÆ°ó¶¨ÑÓÊÙµ¤....
	local GoodLuck = random(5000)
	if GoodLuck < 10 then
		local BagIndex = TryRecieveItem( sceneId, selfId, 30606001, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--Ç¿ÖÆ°ó¶¨....
			LuaFnItemBind( sceneId, selfId, BagIndex )
			--·¢¹«¸æ....
			local ItemTransfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
			local PlayerName = GetName(sceneId, selfId)
			local nMsgIndex = random(3)
			local str
			if nMsgIndex == 1 then
				str = format( x300059_g_strGetItem1[1], PlayerName, PlayerName, ItemTransfer )
			elseif nMsgIndex == 2 then
				str = format( x300059_g_strGetItem1[2], PlayerName, PlayerName, ItemTransfer )
			else
				str = format( x300059_g_strGetItem1[3], PlayerName, ItemTransfer, PlayerName )
			end
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
		return	--³Ôµ½Cái này ¾Í²»ÄÜÔÙ³Ô³öÏÂ±ßtoÕ ğµ ÁË....
	end

	--35c¤pÒÔÉÏ....»á1/1000³Ô³öÇ¿ÖÆ°ó¶¨chìa khóa Âm Kim....
	GoodLuck = random(10000)
	if GoodLuck < 10 then
		local BagIndex = TryRecieveItem( sceneId, selfId, 30008011, QUALITY_MUST_BE_CHANGE )
		if BagIndex ~= -1 then
			--Ç¿ÖÆ°ó¶¨....
			LuaFnItemBind( sceneId, selfId, BagIndex )
			--·¢¹«¸æ....
			local ItemTransfer = GetBagItemTransfer(sceneId,selfId,BagIndex)
			local PlayerName = GetName(sceneId, selfId)
			local nMsgIndex = random(3)
			local str
			if nMsgIndex == 1 then
				str = format( x300059_g_strGetItem2[1], PlayerName, PlayerName, ItemTransfer )
			elseif nMsgIndex == 2 then
				str = format( x300059_g_strGetItem2[2], PlayerName, PlayerName, ItemTransfer )
			else
				str = format( x300059_g_strGetItem2[3], PlayerName, ItemTransfer )
			end
			BroadMsgByChatPipe( sceneId, selfId, str, 4 )
		end
	end

	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x300059_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end
