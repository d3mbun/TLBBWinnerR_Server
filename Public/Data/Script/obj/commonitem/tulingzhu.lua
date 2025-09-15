--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ğµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂĞúng½Å±¾ÑùÀı:


--tulingzhu.lua
------------------------------------------------------------------------------------------
--mµt °ãÎïÆ·toÕ ğµ Ä¬ÈÏ½Å±¾
--ÍÁLinhÖé

--ÍÁLinhÖéÓĞ3ÖÖ²Ù×÷: 
--1.Ö±½ÓÊ¹ÓÃÊ±´ò¿ªÍÁLinhÖéÊ¹ÓÃ½çÃæ
--2.Ê¹ÓÃ½çÃæÉÏ ği¬m»÷¡°¶¨Î»¡±½øĞĞ¶¨Î»
--3.Ê¹ÓÃ½çÃæÉÏ ği¬m»÷¡°´«ËÍ¡±½øĞĞ´«ËÍ
--Ê¹ÓÃÍÁLinhÖéÊ±µ¯³ötoÕ ğµ ½çÃæĞúngTÕi ¿Í»§¶ËÖ±½ÓÓ²±àÂëÊµÏÖ,Êµ¼ÊÉÏ²¢Ã»ÓĞ¡°SØ døng v§t ph¦m ¡±,Òò´Ë²»»áµ÷ÓÃµ½±¾½Å±¾ÄÚ.
--±¾½Å±¾ÎªÍÁLinhÖétoÕ ğµ Ê¹ÓÃÂß¼­,Õı³£Ê¹ÓÃÍÁLinhÖétoÕ ğµ Âß¼­Îª¡°´«ËÍ¡±.
--ÍÁLinhÖétoÕ ğµ ¶¨Î»ĞúngÍ¨¹ı¿Í»§¶ËÖ±½Ócall±¾½Å±¾toÕ ğµ x330001_SetPositionº¯ÊıÊµÏÖ,²¢²»ÊôÓÚÍÁLinhÖétoÕ ğµ Ê¹ÓÃÂß¼­.

--½Å±¾ºÅ
x330001_g_ScriptId	= 330001

--ÎïÆ·ID
x330001_g_ItemId = 30008007
x330001_g_ItemId01 = 30505216

--Ğ§¹ûtoÕ ğµ ID
x330001_g_Impact		= -1	--´«ËÍÊ±ÒªÊ¹ÓÃtoÕ ğµ ÌØĞ§toÕ ğµ ±àºÅ


x330001_g_UseTim		= 10				--Ê¹ÓÃ´ÎÊı
x330001_g_Yinpiao		= 40002000	--ÒøÆ±

--ÆÕÍ¨³¡¾°ÏŞÖÆ,ÕâĞ©³¡¾°ÄÚÎŞ·¨´«ËÍ
x330001_g_UselessScn=
{
	125		-- »ªÉ½
}

--ÆÕÍ¨³¡¾°ÏŞÖÆ,ÕâĞ©³¡¾°ÄÚÎŞ·¨¶¨Î»
x330001_g_SetPosLimitScn=
{
	125,	-- »ªÉ½
	414		-- ¾º¼¼³¡	
}

--½ûÖ¹´«ËÍµ½Ä³Ğ©³¡¾°toÕ ğµ µÈc¤pÏŞÖÆ....
x330001_g_LimitTransScene =
{
	{423,90},	--»ğÑæÉ½
	{519,90},	--»ğÑæ¹È
	{424,90},	--¸ß²ı
	{520,90},	--¸ß²ıÃÔ¹¬
	{425,90},	--ËşÀïÄ¾
	{427,90},	--Ëş¿ËÀ­Âê¸É
	{186,75},	--Lâu Lan
	{431,90}, --´óÍğ
	{432,90}  --º¹ÑªÁë
}



x330001_g_StrCannotUse = "Khu vñc các hÕ không n¢m trong tình trÕng sØ døng d¸ch chuy¬n, không th¬ sØ døng ğÕo cø d¸ch chuy¬n."

x330001_g_Impact_NotTransportList = { 5929 } -- ½ûÖ¹´«ËÍtoÕ ğµ Impact
x330001_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}" } -- ½ûÖ¹´«ËÍtoÕ ğµ ImpactÌáÊ¾ĞÅÏ¢

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x330001_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end


--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x330001_IsSkillLikeScript( sceneId, selfId )
	return 1	 --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end


--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x330001_CancelImpacts( sceneId, selfId )
	return 0	 --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end


--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x330001_OnConditionCheck( sceneId, selfId )

	--
	--Õı³£Ê¹ÓÃÍÁLinhÖétoÕ ğµ Âß¼­Îª´«ËÍ,´Ë´¦Ö»C¥n ½øĞĞ´«ËÍÇ°toÕ ğµ ¼ì²â¾Í¿ÉÒÔÁË.
	--

	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	if bagId < 0 then
		return 0
	end

	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end
	
	--¼ì²âÎïÆ·Ğúng·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x330001_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	-- ´¦ÓÚ×é¶Ó¸úËæ×´Ì¬ÏÂ,²»ÄÜ´«ËÍ
	if IsTeamFollow(sceneId, selfId) == 1  then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	-- ¼ì²âÍæ¼ÒĞúng²»Ğúng´¦ÓÚ°ÚÌ¯×´Ì¬,
	if LuaFnIsStalling(sceneId, selfId) == 1  then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	--ÅĞ¶Ïµ±Ç°×´Ì¬Ğúng·ñ¿ÉÊ¹ÓÃ(äîÔË)
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x330001_MsgBox( sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end

	--¼ì²âÍæ¼ÒÉíÉÏĞúng²»ĞúngÓĞ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓĞ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ğµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x330001_g_Yinpiao) >= 1  then
		x330001_MsgBox(sceneId, selfId, x330001_g_StrCannotUse )
		return 0
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôĞ§¹û
	for i, ImpactId in x330001_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x330001_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	--ÅäÖÃtoÕ ğµ Ö¸¶¨³¡¾°²»ÄÜÍù¶¨Î» ği¬m´«ËÍ
	for _, tmp in x330001_g_UselessScn do
		if tmp == sceneId then
			x330001_MsgBox( sceneId, selfId, "Trong khu vñc này không th¬ sØ døng!" )
			return 0
		end
	end
	
	--¼ì²âÄ¿±ê³¡¾°Ğúng·ñĞúng90c¤pÒÔÄÚ²»ÄÜ´«ËÍtoÕ ğµ ³¡¾°	--add by xindefeng
	--»ñÈ¡¼ÇÂ¼TÕi ÎïÆ·ÉíÉÏtoÕ ğµ Êı¾İ½á¹¹
	local	otim			--Ê£ÓàÊ¹ÓÃ´ÎÊı
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	if opx > 0 and opy > 0 then	--ÒÑ¾­¶¨¹ıÎ»ÁË		

		for _, tmp in x330001_g_LimitTransScene do
			if ( (tmp[1] == osid) and (GetLevel(sceneId, selfId) < tmp[2]) ) then
				local szMsg = format("Khu vñc này yêu c¥u c¤p %d tr· lên m¾i có th¬ vào!", tmp[2] )
				x330001_MsgBox( sceneId, selfId, szMsg)
				return 0
			end
		end

	end
	
	return 1

end


--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x330001_OnDeplete( sceneId, selfId )

	--Ê¹ÓÃÍÁ¶İÖé½øĞĞ´«ËÍÖ®Ç°»áµ÷ÓÃ±¾º¯ÊıÀ´ÏûºÄÎïÆ·....

	--
	--TÕi ´Ë»¹ÒªÔÙ´Î¼ì²âmµt ÏÂ....
	--
	local ret
	ret = x330001_OnConditionCheck( sceneId, selfId )
	if 0 == ret then
		return 0
	end

	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )

	--»ñÈ¡¼ÇÂ¼TÕi ÎïÆ·ÉíÉÏtoÕ ğµ Êı¾İ½á¹¹
	local	otim			--Ê£ÓàÊ¹ÓÃ´ÎÊı
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	--ÒÑ¾­¶¨¹ıÎ»ÁË....
	if opx > 0 and opy > 0 then

		--²»Í¬³¡¾°´«ËÍ....Èç¹ûÄ¿±ê³¡¾°²»¿ÉÓÃ....ÔòÏûºÄth¤t bÕi....
		if sceneId ~= osid then
			if IsCanNewWorld( sceneId, selfId, osid, opx, opy ) ~= 1 then
				x330001_MsgBox( sceneId, selfId, "Không th¬ d¸ch chuy¬n ğªn khu vñc møc tiêu." )
				return 0
			end
		end

		--¿ÉÒÔ´«ËÍ....ÔòÏûºÄÎïÆ·....
		--µ«ĞúngTÕi ´Ë´¦²»Ö±½ÓÏûºÄ....ÒòÎªTÕi x330001_OnActivateOnce()ÖĞ»¹C¥n ·ÃÎÊÎïÆ·ÉíÉÏtoÕ ğµ ¶¨Î»ĞÅÏ¢....
		--Òò´Ë´Ë´¦toÕ ğµ ÏûºÄÅ²µ½x330001_OnActivateOnce()ÖĞ....

		return 1

	else

		--»¹Ã»¶¨Î»....ÔòÏûºÄth¤t bÕi....
		x330001_MsgBox( sceneId, selfId, "Vui lòng ch÷n ğ¸a ği¬m ğ¸nh v¸ thích hşp r°i hãy sØ døng chÑc nång d¸ch chuy¬n." )
		return 0

	end

	return 1

end


--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x330001_OnActivateOnce( sceneId, selfId )

	--
	--Õı³£Ê¹ÓÃÍÁLinhÖétoÕ ğµ Âß¼­Îª´«ËÍ,´Ë´¦Ö»C¥n ½øĞĞ´«ËÍ¾Í¿ÉÒÔÁË.
	--

	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId			= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )


	--»ñÈ¡¼ÇÂ¼TÕi ÎïÆ·ÉíÉÏtoÕ ğµ ¶¨Î»Êı¾İ....
	local	otim			--Ê£ÓàÊ¹ÓÃ´ÎÊı....
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, bagId, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, bagId, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, bagId, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, bagId, 8, 1 )

	-- ği¬mµ½¶¨Î»Êı¾İºó¾Í¿ÉÒÔÏûºÄÎïÆ·ÁË....

	--¼õÉÙ¿ÉÊ¹ÓÃ´ÎÊı
	otim = otim - 1
	SetBagItemParam( sceneId, selfId, bagId, 3, 0, otim )
	--¼ÇÂ¼Í³¼ÆĞÅÏ¢
	LuaFnAuditGPS( sceneId, selfId, 0 )
	--Ë¢ĞÂClient¶ËtoÕ ğµ ±³°üÎïÆ·ĞÅÏ¢
	LuaFnRefreshItemInfo( sceneId, selfId, bagId )

	--Èç¹û¿ÉÊ¹ÓÃ´ÎÊıÓÃÍêÔòÉ¾³ıÎïÆ·....É¾³ıth¤t bÕiÔò²»´«ËÍ....
	local ret
	if otim <= 0 then
		ret = EraseItem( sceneId, selfId, bagId )
		if 1 ~= ret then
			return
		end
	end

	--Èç¹ûÅäÖÃÁËÊ¹ÓÃtoÕ ğµ ÌØĞ§Ôò¼Óµ½Íæ¼ÒÉíÉÏ....
	if( -1 ~= x330001_g_Impact ) then
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x330001_g_Impact, 0 )
	end

	--ÈôÒÑ¼ÇÂ¼¹ı¶¨Î»ĞÅÏ¢Ôò´«ËÍ....
	if opx > 0 and opy > 0 then

		if sceneId == osid then
			--Í¬mµt ³¡¾°´«ËÍ
			SetPos( sceneId, selfId, opx, opy )
		else
			--²»Í¬³¡¾°´«ËÍ
			NewWorld( sceneId, selfId, osid, opx, opy )
		end

	end

	return 1

end


--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x330001_OnActivateEachTick( sceneId, selfId )
	return 1	 --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end


--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x330001_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end


--**********************************
-- Íæ¼ÒSØ døng v§t ph¦m  ¶¨Î»
--**********************************
function x330001_SetPosition( sceneId, selfId, nItemIndex )

	--
	--¶¨Î»Ç°toÕ ğµ ¼ì²â
	--
	
	--¶¨Î»Ğúng¿Í»§¶ËÖ±½ÓcallCái này º¯ÊıÊµÏÖtoÕ ğµ ....ËùÒÔÃ»ÓĞ¾­¹ıSØ døng v§t ph¦m toÕ ğµ ¼ì²â....
	--Òò´ËÕâÀïÒª½øĞĞµÈc¤pÏŞÖÆµÈ¼ì²â....
	if GetLevel(sceneId, selfId)<10  then
		x330001_MsgBox( sceneId, selfId, "Không ğü ğÆng c¤p" )
		return
	end

	--¼ì²âÎïÆ·Ğúng·ñ¼ÓËø
	if LuaFnLockCheck( sceneId, selfId, nItemIndex, 0 ) < 0 then
		x330001_MsgBox( sceneId, selfId, "V§t ph¦m này ğã b¸ khóa!" )
		return 0
	end

	--¼ì²âĞúng²»ĞúngÍÁLinhÖé
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x330001_g_ItemId 
		 and GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x330001_g_ItemId01  then
		x330001_MsgBox( sceneId, selfId, "Sai sót trong tay näi" )
		return
	end

	--¸±±¾»ò°ï»áThành th¸ÄÚÎŞ·¨¶¨Î»
	if LuaFnGetSceneType( sceneId ) == 1 or LuaFnGetSceneType( sceneId ) == 4 then
		x330001_MsgBox( sceneId, selfId, "Trong phø bän ho£c thành th¸ bang hµi không  th¬ ğ¸nh v¸!" )
		return
	end

	--ÅäÖÃtoÕ ğµ Ö¸¶¨³¡¾°²»ÄÜ¶¨Î»
	for _, tmp in x330001_g_SetPosLimitScn do
		if tmp == sceneId then
			x330001_MsgBox( sceneId, selfId, "Trong khu vñc này không th¬ sØ døng!" )
			return
		end
	end

	--
	--¿ªÊc¤p¨Î»
	--

	--»ñÈ¡¼ÇÂ¼TÕi ÎïÆ·ÉíÉÏtoÕ ğµ Êı¾İ½á¹¹
	local	otim			--Ê£ÓàÊ¹ÓÃ´ÎÊı
	local	osid			--³¡¾°±àºÅ
	local	opx, opy	--¼ÇÒä×ø±ê
	otim	= GetBagItemParam( sceneId, selfId, nItemIndex, 3, 0 )
	osid	= GetBagItemParam( sceneId, selfId, nItemIndex, 4, 1 )
	opx		= GetBagItemParam( sceneId, selfId, nItemIndex, 6, 1 )
	opy		= GetBagItemParam( sceneId, selfId, nItemIndex, 8, 1 )

	--Èç¹û»¹Î´Ôø¶¨Î»¹ıÔòÖØÖÃÎïÆ·ĞÅÏ¢....
	if otim == 0 and osid == 0 and opx == 0 and opy == 0 then
		otim = x330001_g_UseTim
	end

	--»ñÈ¡Íæ¼ÒtoÕ ğµ µ±Ç°×ø±êºÍ³¡¾°ID....
	osid			= sceneId
	opx, opy	= LuaFnGetUnitPosition( sceneId, selfId )
	opx	= floor( opx )
	opy	= floor( opy )

	--½«ĞÅÏ¢ÉèÖÃµ½ÎïÆ·ÖĞ(¶¨Î»)....
	SetBagItemParam( sceneId, selfId, nItemIndex, 0, 1, 10 )								--Key,ÕâÎ»±êÊ¶²Ù×÷¼¯ºÏ,Ò²ĞúngClientĞŞÕıTooltipstoÕ ğµ ÒÀ¾İ
	SetBagItemParam( sceneId, selfId, nItemIndex, 2, 0, x330001_g_UseTim )	--×î´óÊ¹ÓÃ´ÎÊı
	SetBagItemParam( sceneId, selfId, nItemIndex, 3, 0, otim )							--Ê£ÓàÊ¹ÓÃ´ÎÊı
	SetBagItemParam( sceneId, selfId, nItemIndex, 4, 1, osid )							--³¡¾°±àºÅ
	SetBagItemParam( sceneId, selfId, nItemIndex, 6, 1, opx )								--X×ø±ê
	SetBagItemParam( sceneId, selfId, nItemIndex, 8, 1, opy )								--Y×ø±ê
	
	--¼ÇÂ¼Í³¼ÆĞÅÏ¢
	LuaFnAuditGPS( sceneId, selfId, 1 )

	--Ë¢ĞÂClient¶ËtoÕ ğµ ±³°üÎïÆ·ĞÅÏ¢
	LuaFnRefreshItemInfo( sceneId, selfId, nItemIndex )

	x330001_MsgBox( sceneId, selfId, "Th± Linh Châu cüa các hÕ ğ¸nh v¸ thành công." )

end
