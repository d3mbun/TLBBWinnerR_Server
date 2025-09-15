--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ðµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂÐúng½Å±¾ÑùÀý:

------------------------------------------------------------------------------------------
--ÐÂÈËÀñ°ü10c¤ptoÕ ðµ Ä¬ÈÏ½Å±¾
--ÎïÆ·ID: 30008055

--½Å±¾ºÅ
x300079_g_scriptId = 300079--ÁÙÊ±Ð´Cái này ,ÕæÕýÓÃtoÕ ðµ Ê±ºòmµt ¶¨Òª¸Ä.

--C¥n toÕ ðµ µÈc¤p
x300079_g_MinLevel = 10
x300079_g_Maxlevel = 20

--½±ÀøÎïÆ·ÁÐ±í
x300079_Gift ={30008056,10124141}


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x300079_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý
end

--**********************************
--Cái này ÎïÆ·toÕ ðµ Ê¹ÓÃ¹ý³ÌÐúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ÐÐ¿ªÊ¼Ê±¼ì²âCái này º¯ÊýtoÕ ðµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ðµ ÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ðµ ÎïÆ·,¿ÉÒÔ¼ÌÐøÀàËÆ¼¼ÄÜtoÕ ðµ Ö´ÐÐ£»Tr· v«0: ºöÂÔºóÃætoÕ ðµ ²Ù×÷.
--**********************************
function x300079_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böÐ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ð§¹û,²»ÔÙÖ´ÐÐºóÐø²Ù×÷£»Tr· v«0: Ã»ÓÐ¼ì²âµ½Ïà¹ØÐ§¹û,¼ÌÐøÖ´ÐÐ.
--**********************************
function x300079_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êý,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼þ¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: Ìõ¼þ¼ì²âÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: Ìõ¼þ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--**********************************
function x300079_OnConditionCheck( sceneId, selfId )
	
	--Ð£ÑéÊ¹ÓÃtoÕ ðµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	
	--Ðúng·ñÊ¹ÓÃ¹ý¸ÃµÀ¾ß
	local bHave = GetMissionFlag(sceneId, selfId, MF_NEWPLAYER10_USED)
	if bHave == 1 then      --ÒÑ¾­²Î¼Ó¹ýÁË
		x300079_MsgBox(sceneId, selfId, "#{XRLB_81203_3}")
		return 0
	end
	
	--µÈc¤pÏÞÖÆ
	local CurLevel = LuaFnGetLevel( sceneId, selfId )
	if CurLevel>=x300079_g_Maxlevel then
		x300079_MsgBox(sceneId, selfId, "#{XRLB_81203_4}")
		return 0
	end

	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 1 ) then
	   local strNotice = "#{XRLB_81203_5}1#{XRLB_81203_6}"
		 x300079_MsgBox( sceneId, selfId, strNotice)
	   return 0
	end
	
	return 1; --²»C¥n ÈÎºÎÌõ¼þ,²¢ÇÒÊ¼ÖÕTr· v«1.
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ðµ Ê±¼ä ði¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾ÝCái này º¯ÊýtoÕ ðµ Tr· v«ÖµXác nh§nÒÔºótoÕ ðµ Á÷³ÌÐúng·ñÖ´ÐÐ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ý,¿ÉÒÔ¼ÌÐøÖ´ÐÐ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖÐ¶ÏºóÐøÖ´ÐÐ.
--×¢Òâ: Õâ²»¹â¸ºÔðÏûºÄtoÕ ðµ ¼ì²âÒ²¸ºÔðÏûºÄtoÕ ðµ Ö´ÐÐ.
--**********************************
function x300079_OnDeplete( sceneId, selfId )
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		local guid = LuaFnObjId2Guid(sceneId, selfId);
		
		if guid ~= nil then
			--local LogInfo = format("0X%08X,", guid);
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_TSLB10, guid);
		end
		
		return 1;
	end
	return 0;
end

--**********************************
--Ö»»áÖ´ÐÐmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼þ¶¼Thöa mãntoÕ ðµ Ê±ºò),¶øÒýµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ðµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ÐÐÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x300079_OnActivateOnce( sceneId, selfId )
	BeginAddItem( sceneId )
	for i, v in x300079_Gift do
			AddItem( sceneId, v, 1 )
	end
	local ret = EndAddItem( sceneId, selfId )
	if ret <= 0 then 
		return 
	end

	--ÎªÍæ¼ÒÔö¼ÓÐÂÈËÀñ°ü(20c¤p)ºÍÊ±×°: ÌìÌìÏòÉÏ
	AddItemListToHuman(sceneId,selfId)
	SetMissionFlag(sceneId, selfId, MF_NEWPLAYER10_USED, 1)
	x300079_MsgBox( sceneId, selfId, "#{XRLB_81203_7}#{_ITEM30008055}#{XRLB_81203_8}")
	return 1;
end

--**********************************
--Òýµ¼ÐÄÌø´¦ÀíÈë¿Ú: 
--Òýµ¼¼¼ÄÜ»áTÕi Ã¿´ÎÐÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌÐøÏÂ´ÎÐÄÌø£»0: ÖÐ¶ÏÒýµ¼.
--×¢: ÕâÀïÐúng¼¼ÄÜÉúÐ§mµt ´ÎtoÕ ðµ Èë¿Ú
--**********************************
function x300079_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ÐúngÒýµ¼ÐÔ½Å±¾, Ö»±£Áô¿Õº¯Êý.
end

--**********************************
--ÐÑÄ¿ÐÅÏ¢ÌáÊ¾
--**********************************
function x300079_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
