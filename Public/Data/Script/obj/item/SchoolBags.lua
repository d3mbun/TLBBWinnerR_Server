--×¢Òâ: 

--ÎïÆ·¼¼ÄÜtoÕ ğµ Âß¼­Ö»ÄÜÊ¹ÓÃ»ù´¡¼¼ÄÜºÍ½Å±¾À´ÊµÏÖ

--½Å±¾:

--ÒÔÏÂĞúng½Å±¾ÑùÀı:

------------------------------------------------------------------------------------------
--Ğ£·şÀñ°ütoÕ ğµ Ä¬ÈÏ½Å±¾

--½Å±¾ºÅ
x889034_g_scriptId = 889034

x009034_SchoolBags = {{ID = 30504059, BagsSpaces =3,FailNotify ="#{TSJH_090224_12}",SucessNotify ="#{TSJH_090224_13}"},
											{ID = 30504060, BagsSpaces =5,FailNotify ="#{TSJH_090224_14}",SucessNotify ="#{TSJH_090224_15}"},
											{ID = 30504061, BagsSpaces =4,FailNotify ="#{TSJH_090224_16}",SucessNotify ="#{TSJH_090224_17}"},
											{ID = 30504062, BagsSpaces =4,FailNotify ="#{TSJH_090224_18}",SucessNotify ="#{TSJH_090224_19}"},
											{ID = 30504063, BagsSpaces =2,FailNotify ="#{TSJH_090224_20}",SucessNotify ="#{TSJH_090224_22}"},
											{ID = 30504064, BagsSpaces =4,FailNotify ="#{TSJH_090224_23}",SucessNotify ="#{TSJH_090224_24}"},
											{ID = 30504065, BagsSpaces =5,FailNotify ="#{TSJH_090224_25}",SucessNotify ="#{TSJH_090224_26}"},
									}


--½±ÀøÎïÆ·ÁĞ±í
x889034_Gift ={}
x889034_Gift[1] ={30504060,10124141,10141805,30308035}
x889034_Gift[2] ={30504061,30505215,30504068,30309748,30504066,30504067}
x889034_Gift[3] ={30504062,31000005,30008027,30607000,30504055}
x889034_Gift[4] ={30504063,30008027,30504038,30504038,30505217,30504056}
x889034_Gift[5] ={30504064,30008044,20307002,20109004,20109004,20109004,30504057}
x889034_Gift[6] ={30509500,31000001,30504040,30504041,30504058}
x889034_Gift[7] ={30509500,30008044,30504040,30504041,30505076,10124141}
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x889034_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x889034_IsSkillLikeScript( sceneId, selfId)
	return 1; --Cái này ½Å±¾C¥n ¶¯×÷Ö§³Ö
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x889034_CancelImpacts( sceneId, selfId )
	return 0; --²»C¥n Cái này ½Ó¿Ú,µ«Òª±£Áô¿Õº¯Êı,²¢ÇÒÊ¼ÖÕTr· v«0.
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x889034_OnConditionCheck( sceneId, selfId )
	
	--Ğ£ÑéÊ¹ÓÃtoÕ ğµ ÎïÆ·
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
	-- ğÕt ğßşcÎïÆ·ID
	local Item = LuaFnGetItemIndexOfUsedItem(sceneId, selfId)
	local iIndex = -1
	for i=1,getn(x009034_SchoolBags) do
		if (x009034_SchoolBags[i].ID == Item) then
			iIndex = i
		end
	end
	
	if (iIndex ==-1) then
		return 0
	end

	--¼ì²â±³°ü¿Õ¼äĞúng·ñ×ã¹»
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < x009034_SchoolBags[iIndex].BagsSpaces ) then
	   local strNotice = x009034_SchoolBags[iIndex].FailNotify
		 x889034_MsgBox( sceneId, selfId, strNotice)
	   return 0
	end
	
	--40c¤pÀñ°üÓĞ²ÄÁÏÀ¸toÕ ğµ ÎïÆ·
	if (iIndex ==5 ) then
		FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
	if( FreeSpace < 4 ) then
	   local strNotice = "#{TSJH_090224_21}"
		 x889034_MsgBox( sceneId, selfId, strNotice)
	   return 0
	end
	end
	
	return 1; --²»C¥n ÈÎºÎÌõ¼ş,²¢ÇÒÊ¼ÖÕTr· v«1.
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x889034_OnDeplete( sceneId, selfId )
	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end
	return 0;
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x889034_OnActivateOnce( sceneId, selfId )

	-- ğÕt ğßşcÎïÆ·ID
	local Item = LuaFnGetItemIndexOfUsedItem(sceneId, selfId)
	local iIndex = -1
	for i=1,getn(x009034_SchoolBags) do
		if (x009034_SchoolBags[i].ID == Item) then
			iIndex = i
		end
	end
	
	if (iIndex ==-1) then
		return 0
	end
	
		--¸øÍæ¼ÒÃ¿cáiÀñ°ütoÕ ğµ ÀñÎï
	BeginAddItem( sceneId )
	for i, v in x889034_Gift[iIndex] do
			local bagpos01 = TryRecieveItem( sceneId, selfId, v, 9 )								-- ·Å²»ÏÂ¾ÍÃ»ÓĞÁË
			LuaFnItemBind( sceneId, selfId, bagpos01 )
	end
	x889034_MsgBox( sceneId, selfId, x009034_SchoolBags[iIndex].SucessNotify)
	
	AuditUseSChoolBags(sceneId, selfId,iIndex,LuaFnGetSex(sceneId,selfId))
	return 1;
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x889034_OnActivateEachTick( sceneId, selfId)
	return 1; --²»ĞúngÒıµ¼ĞÔ½Å±¾, Ö»±£Áô¿Õº¯Êı.
end

--**********************************
--ĞÑÄ¿ĞÅÏ¢ÌáÊ¾
--**********************************
function x889034_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
