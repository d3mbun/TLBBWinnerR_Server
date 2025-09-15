--µÀ¾ß£º°ïÃÅÀ©Õ¹ÃØ¼®<ID:39910007>
--½Å±¾ºÅ 100011


x100011_g_scriptId = 100011

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x100011_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»ÐèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êý
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ý³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ÐÐ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊýµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ÐÐ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜµÄÖ´ÐÐ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function x100011_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ÐèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûÐ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾ÝÕâ¸öº¯ÊýµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ÐÐ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ð§¹û£¬²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»·µ»Ø0£ºÃ»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û£¬¼ÌÐøÖ´ÐÐ¡£
--**********************************
function x100011_CancelImpacts( sceneId, selfId )
	return 0; --²»ÐèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕ·µ»Ø0¡£
end

--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾ÝÕâ¸öº¯ÊýµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ÐÐ¡£
--·µ»Ø1£ºÌõ¼þ¼ì²âÍ¨¹ý£¬¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»·µ»Ø0£ºÌõ¼þ¼ì²âÊ§°Ü£¬ÖÐ¶ÏºóÐøÖ´ÐÐ¡£
--**********************************
function x100011_OnConditionCheck( sceneId, selfId )
	--Ð£ÑéÊ¹ÓÃµÄÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
		
	return 1; --²»ÐèÒªÈÎºÎÌõ¼þ£¬²¢ÇÒÊ¼ÖÕ·µ»Ø1¡£
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾ÝÕâ¸öº¯ÊýµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ÐÐ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ý£¬¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖÐ¶ÏºóÐøÖ´ÐÐ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔðÏûºÄµÄ¼ì²âÒ²¸ºÔðÏûºÄµÄÖ´ÐÐ¡£
--**********************************
function x100011_OnDeplete( sceneId, selfId )

	local guildid = GetHumanGuildID(sceneId, selfId)
	if guildid == -1 then
		x100011_ShowNotice( sceneId, selfId, "Các hÕ chßa gia nh§p bang hµi, tÕm th¶i không th¬ sØ døng." )
		return 1
	end

	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

--**********************************
--Ö»»áÖ´ÐÐÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼þ¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒýµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ÐÐÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúÐ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x100011_OnActivateOnce( sceneId, selfId )
	local guildid = GetHumanGuildID(sceneId, selfId)
	if guildid == -1 then
		x100011_ShowNotice( sceneId, selfId, "Các hÕ chßa gia nh§p bang hµi, tÕm th¶i không th¬ sØ døng." )
		return 1
	end
	
	
	CityChangeAttr( sceneId, selfId, GUILD_COM_LEVEL, 200 )
	BeginEvent(sceneId)
       x100011_ShowNotice( sceneId, selfId, "Chúc m×ng bang hµi các hÕ ðã tång ðµ Thß½ng nghi®p 200 ði¬m." )
	return 1;
end

--**********************************
--Òýµ¼ÐÄÌø´¦ÀíÈë¿Ú£º
--Òýµ¼¼¼ÄÜ»áÔÚÃ¿´ÎÐÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌÐøÏÂ´ÎÐÄÌø£»0£ºÖÐ¶ÏÒýµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúÐ§Ò»´ÎµÄÈë¿Ú
--**********************************
function x100011_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÊÇÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end

function x100011_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end
