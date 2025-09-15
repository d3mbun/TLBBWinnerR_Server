--½ÌÊ¦½Ú´óÀñ°ü Created by zchw

--½Å±¾ºÅ
x300101_g_scriptId = 300101

x300101_g_prize = {
										{id = 30501162, rate = 999200}, --Sß Ğ° Bäo Châu Ô ğÕo cø ğã ğ¥y¸ Ê°È¡°ó¶¨
										{id = 20307002, rate = 150},    --È¾·¢¼Á   ²ÄÁÏÀ¸
										{id = 10124056, rate = 644},    --²Å×Ó¼ÑÈË Ô ğÕo cø ğã ğ¥y¸ Ê°È¡°ó¶¨
										{id = 20310103, rate = 2},      --´ó·çÑÀ   ²ÄÁÏÀ¸
										{id = 20310104, rate = 2},      --´ó·ç×¦
										{id = 20310105, rate = 2},			--´ó·çÒí
									}
--**********************************
-- Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: Ö´ĞĞ OnDefaultEvent.
--**********************************
function x300101_IsSkillLikeScript( sceneId, selfId )
	return 1
end

--**********************************
-- Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x300101_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
-- Ìõ¼ş¼ì²âÈë¿Ú: Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300101_OnConditionCheck( sceneId, selfId )
	-- Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if LuaFnVerifyUsedItem( sceneId, selfId ) ~= 1 then
		return 0
	end
	return 1
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú,¸ºÔğÏûºÄtoÕ ğµ ¼ì²âºÍÖ´ĞĞ: 
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x300101_OnDeplete( sceneId, selfId )
	return 1
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x300101_OnActivateOnce( sceneId, selfId )

	--É¾³ıÇ°±£´æTrans....
	local BagPos = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagPos )

	-- ği¬mµ½½±ÀøÎïÆ·ºÅ
	local ranNum = random(1000000);
	local prizeIndex = 0;
	if (ranNum < 999200) then   --Sß Ğ° Bäo Châu Ô ğÕo cø ğã ğ¥y¸
		prizeIndex = x300101_g_prize[1].id;
	elseif (ranNum < 999200+150) then  --È¾·¢¼Á
		prizeIndex = x300101_g_prize[2].id;
	elseif (ranNum < 999200+150+644) then --²Å×Ó¼ÑÈË
		prizeIndex = x300101_g_prize[3].id;
	elseif (ranNum < 999200+150+644+2) then
		prizeIndex = x300101_g_prize[4].id;
	elseif (ranNum < 999200+150+644+2+2) then
		prizeIndex = x300101_g_prize[5].id;
	else
		prizeIndex = x300101_g_prize[6].id;
	end

	local spaceNum1 = LuaFnGetPropertyBagSpace(sceneId, selfId);
	local spaceNum2 = LuaFnGetMaterialBagSpace(sceneId, selfId);
	
	if spaceNum1 == 0 or spaceNum2 ==0 then
		x300101_NotifyFailTips(sceneId, selfId, "Ô ĞÕo cø ho£c nguyên li®u không gian không ğü!");
		return 0;
	end
	
	--É¾³ı´óÀñ°ü
	if LuaFnDepletingUsedItem( sceneId, selfId ) <= 0 then
		return 0;
	end
	-- ¸ø½±Àø
	local PrizePos = TryRecieveItem(sceneId, selfId, prizeIndex, QUALITY_MUST_BE_CHANGE );

	--Ê°È¡°ó¶¨ 
	if (prizeIndex == x300101_g_prize[1].id) or (prizeIndex == x300101_g_prize[3].id) then
		if LuaFnItemBind(sceneId, selfId, PrizePos) ~= 1 then
				local bindmsg = "Buµc ğ¸nh th¤t bÕi"													
		  	BeginEvent( sceneId )
		    	AddText( sceneId, bindmsg )
		  	EndEvent( sceneId )
		  	DispatchMissionTips( sceneId, selfId )
		end
	end
	local PrizeItemInfo = GetBagItemTransfer(sceneId, selfId, PrizePos);

  -- add log
  AuditUseTeacherGift(sceneId, selfId, prizeIndex);
	-- add notify
	local msg = nil;
	local playerName = GetName(sceneId, selfId);

	if (prizeIndex == x300101_g_prize[2].id) or (prizeIndex == x300101_g_prize[3].id) then
		msg = format("#B#{_INFOUSR%s}#{STDLB_8725_1}#{_INFOMSG%s}#{STDLB_8725_2}#{_INFOMSG%s}#{JPN_3}", playerName, ItemInfo, PrizeItemInfo);
	elseif (prizeIndex == x300101_g_prize[4].id) or (prizeIndex == x300101_g_prize[5].id) or (prizeIndex == x300101_g_prize[6].id) then
		msg = format("#B#{_INFOUSR%s}#{STDLB_8725_1}#{_INFOMSG%s}#{STDLB_8725_3}#{_INFOMSG%s}#{STDLB_8725_4}", playerName, ItemInfo, PrizeItemInfo);
	end

	if msg ~= nil then
		AddGlobalCountNews( sceneId, msg )
	end
	-- set buff
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 8062, 0); --¼ÓĞ§¹û
	return 1
end
----------------------
--th¤t bÕiÌáÊ¾
----------------------
function x300101_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜĞÄÌøÊ±ÉúĞ§toÕ ğµ Èë¿Ú
--**********************************
function x300101_OnActivateEachTick( sceneId, selfId )
	return 1
end

