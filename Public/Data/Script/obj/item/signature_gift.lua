--ÊÕ¼¯Ç©Ãû½±Àø ´óÀñ°ü 
--Created by zchw

--½Å±¾ºÅ
x300102_g_scriptId = 300102
x300102_g_piece =
{
	[1] = 20501000,		--ÃŞ²¼ËéÆ¬20501000£»
	[2] = 20500000,		--TinhÌúËéÆ¬20500000£»
	[3] = 20502000,   --ÃØÒøËéÆ¬20502000
}

x300102_g_prizeInfo =
{
	{id = 30509020, rate = 78}, --ÑÌ»¨ ÌìÎè±¦ÂÖ
	{id = 0, rate = 20}, 				--ÈıTinhËéÆ¬
	{id = 10124112, rate = 2}, 	--Ñ§ÉúÊ±×° 
}

--**********************************
-- Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: Ö´ĞĞ OnDefaultEvent.
--**********************************
function x300102_IsSkillLikeScript( sceneId, selfId )
	return 1
end

--**********************************
-- Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x300102_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
-- Ìõ¼ş¼ì²âÈë¿Ú: Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300102_OnConditionCheck( sceneId, selfId )
	-- Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if LuaFnVerifyUsedItem( sceneId, selfId ) ~= 1 then
		return 0;
	end
	if LuaFnGetPropertyBagSpace(sceneId, selfId) == 0 or LuaFnGetMaterialBagSpace(sceneId, selfId) == 0 then
		x300102_NotifyFailTips(sceneId, selfId, "#{SJQM_8819_21}");
		return 0;
	end
	return 1;
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú,¸ºÔğÏûºÄtoÕ ğµ ¼ì²âºÍÖ´ĞĞ: 
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300102_OnDeplete( sceneId, selfId )
	--É¾³ı´óÀñ°ü
	if LuaFnDepletingUsedItem( sceneId, selfId ) <= 0 then
		return 0;
	end
	return 1;
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x300102_OnActivateOnce( sceneId, selfId )
	local rand = random(100);
	local PrizePos = "";
	local itemId = "";
	if rand < x300102_g_prizeInfo[1].rate then
		-- ¸ø½±Àø
		itemId = x300102_g_prizeInfo[1].id;
		PrizePos = TryRecieveItem(sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE );
	elseif rand < x300102_g_prizeInfo[1].rate + x300102_g_prizeInfo[2].rate then
		local rdm = random(3);
		itemId = x300102_g_piece[rdm];
		PrizePos = TryRecieveItem(sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE );
	else
		itemId = x300102_g_prizeInfo[3].id;
		PrizePos = TryRecieveItem(sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE );
	end
	
	if PrizePos == -1 then
		x300102_NotifyFailTips(sceneId, selfId, "C¤p thß·ng th¤t bÕi!!");
		return 0;
	end
	--ÈÕÖ¾
	AuditExchangeFriendGift(sceneId, selfId, itemId);
	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜĞÄÌøÊ±ÉúĞ§toÕ ğµ Èë¿Ú
--**********************************
function x300102_OnActivateEachTick( sceneId, selfId )
	return 1
end

----------------------
--th¤t bÕiÌáÊ¾
----------------------
function x300102_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

