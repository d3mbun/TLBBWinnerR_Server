--ÉÌµê
--ÃÅÅÉÉÌµê
--Cái Bang Äð¾Æ

--½Å±¾ºÅ
x701606_g_ScriptId = 701606

--ÉÌµêºÅ
x701606_g_shoptableindex=59

--ÉÌµêÃû³Æ
x701606_g_ShopName = "Mua phß½ng thÑc chª rßþu"

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x701606_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	DispatchShopItem( sceneId, selfId,targetId, x701606_g_shoptableindex )
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x701606_OnEnumerate( sceneId, selfId, targetId )
	--ÅÐ¶ÏÐúng·ñÐúng±¾ÅÉµÜ×Ó
	if GetMenPai(sceneId,selfId) == MP_GAIBANG then
		AddNumText(sceneId,x701606_g_ScriptId,x701606_g_ShopName,7,-1)
    end
	return
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x701606_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x701606_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x701606_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x701606_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x701606_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x701606_OnSubmit( sceneId, selfId, targetId,selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x701606_OnKillObject( sceneId, selfId, objdataId,objId)
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x701606_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x701606_OnItemChanged( sceneId, selfId, itemdataId )
end
