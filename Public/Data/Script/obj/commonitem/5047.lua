--×¢Òâ£º

--ÎïÆ·¼¼ÄÜµÄÂß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ


--½Å±¾:

--ÒÔÏÂÊÇ½Å±¾ÑùÀý:


--5047.lua
------------------------------------------------------------------------------------------
--Âí°°µÄÄ¬ÈÏ½Å±¾

--½Å±¾ºÅ
 x335042_g_scriptId = 335042 --ÁÙÊ±Ð´Õâ¸ö,ÕæÕýÓÃµÄÊ±ºòÒ»¶¨Òª¸Ä.

--4801	×øÆï£º»¢		447	ÆïÊõ£º»¢  			456	ÆïÊõ£º°×»¢
--4802	×øÆï£º»ÆæôÂí	448	ÆïÊõ£º»ÆæôÂí		457	ÆïÊõ£ºÇà°×æõÂí
--4803	×øÆï£ºÂæÍÕ		449	ÆïÊõ£ºÂæÍÕ			458	ÆïÊõ£º°×ÂæÍÕ
--4804	×øÆï£ºº×		450	ÆïÊõ£ºº×			459	ÆïÊõ£º½ðÒíº×
--4805	×øÆï£ºÇà·ï		451	ÆïÊõ£ºÇà·ï			460	ÆïÊõ£ººì°×·ï
--4806	×øÆï£ºêóÅ£		452	ÆïÊõ£ºêóÅ£			461	ÆïÊõ£º°×êóÅ£
--4807	×øÆï£ºÂ¹		453	ÆïÊõ£ºÂ¹			462	ÆïÊõ£º°×Â¹
--4808	×øÆï£ºµñ		454	ÆïÊõ£ºµñ			463	ÆïÊõ£º°×µñ
--4809	×øÆï£º»ÒÀÇ		455	ÆïÊõ£º»ÒÀÇ			464	ÆïÊõ£º°×ÀÇ
--4810	×øÆï£º°×»¢		456	ÆïÊõ£º°×»¢    
--4811	×øÆï£ºÇà°×æõÂí  457	ÆïÊõ£ºÇà°×æõÂí
--4812	×øÆï£º°×ÂæÍÕ    458	ÆïÊõ£º°×ÂæÍÕ  
--4813	×øÆï£º½ðÒíº×    459	ÆïÊõ£º½ðÒíº×  
--4814	×øÆï£ººì°×·ï    460	ÆïÊõ£ººì°×·ï  
--4815	×øÆï£º°×êóÅ£    461	ÆïÊõ£º°×êóÅ£  
--4816	×øÆï£º°×Â¹      462	ÆïÊõ£º°×Â¹    
--4817	×øÆï£º°×µñ      463	ÆïÊõ£º°×µñ    
--4912	×øÆï£º°×ÀÇ      464	ÆïÊõ£º°×ÀÇ  
--4952  ×øÆï£º´óÏó      443	ÆïÊõ£º´óÏó
--4914  ×øÆï£º°×Ïó      444	ÆïÊõ£º°×Ïó
--4948									437	ÆïÊõ£ºÖ©Öë
--4952									438	ÆïÊõ£ºÐÜ
--4951									439	ÆïÊõ£ºÄ¾Å£Á÷Âí
--5025									440	ÆïÊõ£ºÂ½Îá
--4949									441	ÆïÊõ£ºÐþ¹ê
--4946									442	ÆïÊõ£ºÏ¬Å£

--×¢£ºÁ½¸öÆïÊõ»áÒ»¸ö¾Í¿ÉÒÔÆïÁË
 x335042_g_Equitation1 = 1081 --ÐèÒªµÄÆïÊõ
 x335042_g_Equitation2 = -1 --ÐèÒªµÄÆïÊõ
--Ð§¹ûµÄID
 x335042_g_Impact1 = 5047 --ÁÙÊ±Ð´Õâ¸ö
 x335042_g_Impact2 = -1 --²»ÓÃ

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function  x335042_OnDefaultEvent( sceneId, selfId, bagIndex )
-- Æï³Ë²»ÐèÒªÕâ¸ö½Ó¿Ú£¬µ«Òª±£Áô¿Õº¯Êý
end

--**********************************
--Õâ¸öÎïÆ·µÄÊ¹ÓÃ¹ý³ÌÊÇ·ñÀàËÆÓÚ¼¼ÄÜ£º
--ÏµÍ³»áÔÚÖ´ÐÐ¿ªÊ¼Ê±¼ì²âÕâ¸öº¯ÊýµÄ·µ»ØÖµ£¬Èç¹û·µ»ØÊ§°ÜÔòºöÂÔºóÃæµÄÀàËÆ¼¼ÄÜµÄÖ´ÐÐ¡£
--·µ»Ø1£º¼¼ÄÜÀàËÆµÄÎïÆ·£¬¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜµÄÖ´ÐÐ£»·µ»Ø0£ººöÂÔºóÃæµÄ²Ù×÷¡£
--**********************************
function  x335042_IsSkillLikeScript( sceneId, selfId)
	return 1; --Õâ¸ö½Å±¾ÐèÒª¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓÈ¡ÏûÐ§¹û£º
--ÏµÍ³»áÖ±½Óµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾ÝÕâ¸öº¯ÊýµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ÐÐ¡£
--·µ»Ø1£ºÒÑ¾­È¡Ïû¶ÔÓ¦Ð§¹û£¬²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»·µ»Ø0£ºÃ»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û£¬¼ÌÐøÖ´ÐÐ¡£
--**********************************
function  x335042_CancelImpacts( sceneId, selfId )
	nRet = 0;
	nRet = LuaFnCancelSpecificImpact(sceneId, selfId,  x335042_g_Impact1)
	if(0<nRet) then
		return 1;
	end
	return 0;
end

--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜ¼ì²âµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾ÝÕâ¸öº¯ÊýµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ÐÐ¡£
--·µ»Ø1£ºÌõ¼þ¼ì²âÍ¨¹ý£¬¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»·µ»Ø0£ºÌõ¼þ¼ì²âÊ§°Ü£¬ÖÐ¶ÏºóÐøÖ´ÐÐ¡£
--**********************************
function  x335042_OnConditionCheck( sceneId, selfId )
	--Ð£ÑéÊ¹ÓÃµÄÎïÆ·
	--if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		--return 0
	--end
	--Á½¸öÆïÊõ£¬»áÒ»¸ö¾Í¿ÉÒÔÁË
	if(-1~= x335042_g_Equitation1) then
		if(1==LuaFnHaveSpecificEquitation(sceneId, selfId,  x335042_g_Equitation1)) then
			return 1
		end
	end
	if(-1~= x335042_g_Equitation2) then
		if(1==LuaFnHaveSpecificEquitation(sceneId, selfId,  x335042_g_Equitation2)) then
			return 1
		end
	end
	LuaFnSendOResultToPlayer(sceneId, selfId, OR_NEED_EQUITATION_FIRST)
	return 0; 
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú£º
--ÏµÍ³»áÔÚ¼¼ÄÜÏûºÄµÄÊ±¼äµãµ÷ÓÃÕâ¸ö½Ó¿Ú£¬²¢¸ù¾ÝÕâ¸öº¯ÊýµÄ·µ»ØÖµÈ·¶¨ÒÔºóµÄÁ÷³ÌÊÇ·ñÖ´ÐÐ¡£
--·µ»Ø1£ºÏûºÄ´¦ÀíÍ¨¹ý£¬¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»·µ»Ø0£ºÏûºÄ¼ì²âÊ§°Ü£¬ÖÐ¶ÏºóÐøÖ´ÐÐ¡£
--×¢Òâ£ºÕâ²»¹â¸ºÔðÏûºÄµÄ¼ì²âÒ²¸ºÔðÏûºÄµÄÖ´ÐÐ¡£
--**********************************
function  x335042_OnDeplete( sceneId, selfId )
	return 1; --Æï³Ë²»ÏûºÄ
end

--**********************************
--Ö»»áÖ´ÐÐÒ»´ÎÈë¿Ú£º
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼þ¶¼Âú×ãµÄÊ±ºò£©£¬¶øÒýµ¼
--¼¼ÄÜÒ²»áÔÚÏûºÄÍê³Éºóµ÷ÓÃÕâ¸ö½Ó¿Ú£¨¼¼ÄÜµÄÒ»¿ªÊ¼£¬ÏûºÄ³É¹¦Ö´ÐÐÖ®ºó£©¡£
--·µ»Ø1£º´¦Àí³É¹¦£»·µ»Ø0£º´¦ÀíÊ§°Ü¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúÐ§Ò»´ÎµÄÈë¿Ú
--**********************************
function  x335042_OnActivateOnce( sceneId, selfId )
	if(-1~= x335042_g_Impact1) then
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId,  x335042_g_Impact1, 0)
	end
	Msg2Player( sceneId,selfId,"Ngß½i ðã không · khu vñc v§n chuy¬n.",MSG2PLAYER_PARA) --Í¨ÖªÍæ¼Ò
	return 1;
end

--**********************************
--Òýµ¼ÐÄÌø´¦ÀíÈë¿Ú£º
--Òýµ¼¼¼ÄÜ»áÔÚÃ¿´ÎÐÄÌø½áÊøÊ±µ÷ÓÃÕâ¸ö½Ó¿Ú¡£
--·µ»Ø£º1¼ÌÐøÏÂ´ÎÐÄÌø£»0£ºÖÐ¶ÏÒýµ¼¡£
--×¢£ºÕâÀïÊÇ¼¼ÄÜÉúÐ§Ò»´ÎµÄÈë¿Ú
--**********************************
function  x335042_OnActivateEachTick( sceneId, selfId)
	return 1; --Æï³Ë²»ÊÇÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end

