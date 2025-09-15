--------------------------------------------
--Th¢ng B¶m Bäo ChâuµÀ¾ß½Å±¾
--Created By ĞÅµÂ·å
--------------------------------------------

--½Å±¾ID
x335136_g_scriptId = 335136

--Th¢ng B¶m Bäo ChâuID
x335136_g_YuRenBaoZhuID = 30501161

--×î´óÊ¹ÓÃ´ÎÊı
x335136_g_CanUseMaxCount = 5

x335136_g_CanUseCity = {[1] = SCENE_LUOYANG,[2] = SCENE_SUZHOU,[3] = SCENE_DALI,
	                      [4] = SCENE_LOULAN,[5] = 71,[6] = 72}
--Ğ§¹ûÊıÁ¿
x335136_g_ImpactCount = 10

--Ğ§¹ûID±í
x335136_g_ImpactTable = { 
	[1] = 
	{													
		[1] = 5000,
		[2] = 5001,
		[3] = 5002,
		[4] = 5003,
		[5] = 5004,
		[6] = 5005,
		[7] = 5006,
		[8] = 5007,
		[9] = 5008,
		[10] = 5009
	},
	[2] =
	{
		[1] = 5014,
		[2] = 5015,
		[3] = 5016,
		[4] = 5017,
		[5] = 5018,
		[6] = 5019,
		[7] = 5020,
		[8] = 5021,
		[9] = 5022,
		[10] = 5023
	}
	

												}

--ÂäÂí¼ıĞ§¹ûID
x335136_g_LuoMaJianImpactID = 154


--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x335136_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--Cái này ÎïÆ·toÕ ğµ Ê¹ÓÃ¹ı³ÌĞúng·ñÀàËÆÓÚ¼¼ÄÜ: 
--H® th¯ng»áTÕi Ö´ĞĞ¿ªÊ¼Ê±¼ì²âCái này º¯ÊıtoÕ ğµ Tr· v«Öµ,Èç¹ûTr· v«th¤t bÕiÔòºöÂÔºóÃætoÕ ğµ ÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ.
--Tr· v«1: ¼¼ÄÜÀàËÆtoÕ ğµ ÎïÆ·,¿ÉÒÔ¼ÌĞøÀàËÆ¼¼ÄÜtoÕ ğµ Ö´ĞĞ£»Tr· v«0: ºöÂÔºóÃætoÕ ğµ ²Ù×÷.
--**********************************
function x335136_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--Ö±½ÓHuÖ böĞ§¹û: 
--H® th¯ng»áÖ±½Óµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÒÑ¾­HuÖ bö¶ÔÓ¦Ğ§¹û,²»ÔÙÖ´ĞĞºóĞø²Ù×÷£»Tr· v«0: Ã»ÓĞ¼ì²âµ½Ïà¹ØĞ§¹û,¼ÌĞøÖ´ĞĞ.
--**********************************
function x335136_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
--Ìõ¼ş¼ì²âÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜ¼ì²âtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: Ìõ¼ş¼ì²âÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: Ìõ¼ş¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--**********************************
function x335136_OnConditionCheck( sceneId, selfId )
	--¼ì²âItemĞúng·ñÓĞĞ§
	if(LuaFnVerifyUsedItem(sceneId, selfId) == 0) then
		return 0;	--ItemÎŞĞ§Ö±½ÓTr· v«
	end
	-- zchw
	local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	--²»ÄÜ¸ø×Ô¼ºÊ¹ÓÃ
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)--¶ÔÏóID
	if((targetId == selfId) or (targetId < 0))then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_SelfUseTip}")	--²»ÄÜ¸ø×Ô¼ºÊ¹ÓÃ
			return 0;
	end
	
	--Ö»ÄÜ¸øÍæ¼ÒÊ¹ÓÃ
	local objType = GetCharacterType( sceneId, targetId )--¶ÔÏóÀàĞÍ
	if(objType ~= 1)then	--¶ÔÏó²»ĞúngHuman
		x335136_MsgBox( sceneId, selfId, "#{ResultText_8}")	--ÎŞĞ§Ä¿±ê
		return 0
	end
	
	--¼ì²âÎïÆ·Ğúng·ñ¼ÓËø
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	--±³°üÖĞtoÕ ğµ Î»ÖÃ
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		x335136_MsgBox( sceneId, selfId, "#{Item_Locked}" )	--ÎïÆ·ÒÑ¼ÓËø
		return 0
	end
	
	--¼ì²âÍæ¼ÒĞúng²»Ğúng´¦ÓÚ°ÚÌ¯×´Ì¬
	if LuaFnIsStalling(sceneId, selfId) == 1  then
	  if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_LimitStallageTip}")	--ÎŞ·¨¶Ô°ÚÌ¯×´Ì¬toÕ ğµ Íæ¼ÒÊ¹ÓÃTh¢ng B¶m Bäo Châu
		else
			x335136_MsgBox( sceneId, selfId, "Không th¬ ğ±i trÕng thái #GBày bán #Whãy sØ døng sß ğ° bäo châu");
		end
		return 0
	end
	
	--¼ì²â¶Ô·½Ğúng·ñTÕi BUSÉÏ
	if(LuaFnIsInBus(sceneId, selfId, targetId) == 1)then
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_TargetInBusTip}")	--ÎŞ·¨¶ÔBUS×´Ì¬toÕ ğµ Íæ¼ÒÊ¹ÓÃTh¢ng B¶m Bäo Châu
		else
			x335136_MsgBox( sceneId, selfId, "Không th¬ ğ±i trÕng thái BUFF hãy sØ døng sß ğ° bäo châu");
		end
		return 0
	end
	
	--¼ì²â¶Ô·½Ğúng·ñTÕi Ë«ÈËÆï³ËÉÏ
	if(LuaFnGetDRide(sceneId, selfId, targetId) == 1)then
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_DoubleRideTip}")	--ÎŞ·¨¶ÔË«ÈËÆï³ËtoÕ ğµ Íæ¼ÒÊ¹ÓÃTh¢ng B¶m Bäo Châu.
		else
			x335136_MsgBox( sceneId, selfId, "Không th¬ ğ±i song nhân kÜ hãy sØ døng sß ğ° bäo châu");
		end
		return 0
	end
	
	--¼ì²âÍæ¼ÒĞúng·ñTÕi ËÄ´óÖ÷³ÇÖĞ(°üÀ¨Lâu Lan),Íæ¼ÒTÕi ,¶ÔÏóÍæ¼ÒÒ²¾ÍTÕi à¶
  local flag = 0 
  for i,_ in x335136_g_CanUseCity do
  	if sceneId == x335136_g_CanUseCity[i] then
  		 flag = 1
  	end
  end
  if flag == 0 then --0±íÊ¾Íæ¼Ò²»TÕi ËÄ´óÖ÷³ÇÖĞ
		if itemIndex == x335136_g_YuRenBaoZhuID then
			x335136_MsgBox( sceneId, selfId, "#{YRJ_LimitCityTip}")	--Ö»ÄÜTÕi Thành th¸ÄÚÊ¹ÓÃTh¢ng B¶m Bäo Châu
		else
			x335136_MsgBox( sceneId, selfId, "#{STBZ_090324_1}")
		end
		return 0
	end
	
	return 1
end

--**********************************
--ÏûºÄ¼ì²â¼°´¦ÀíÈë¿Ú: 
--H® th¯ng»áTÕi ¼¼ÄÜÏûºÄtoÕ ğµ Ê±¼ä ği¬mµ÷ÓÃCái này ½Ó¿Ú,²¢¸ù¾İCái này º¯ÊıtoÕ ğµ Tr· v«ÖµXác nh§nÒÔºótoÕ ğµ Á÷³ÌĞúng·ñÖ´ĞĞ.
--Tr· v«1: ÏûºÄ´¦ÀíÍ¨¹ı,¿ÉÒÔ¼ÌĞøÖ´ĞĞ£»Tr· v«0: ÏûºÄ¼ì²âth¤t bÕi,ÖĞ¶ÏºóĞøÖ´ĞĞ.
--×¢Òâ: Õâ²»¹â¸ºÔğÏûºÄtoÕ ğµ ¼ì²âÒ²¸ºÔğÏûºÄtoÕ ğµ Ö´ĞĞ.
--**********************************
function x335136_OnDeplete( sceneId, selfId )	
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
	end
	return 0
end

--**********************************
--Ö»»áÖ´ĞĞmµt ´ÎÈë¿Ú: 
--¾ÛÆøºÍË²·¢¼¼ÄÜ»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¾ÛÆø½áÊø²¢ÇÒ¸÷ÖÖÌõ¼ş¶¼Thöa mãntoÕ ğµ Ê±ºò),¶øÒıµ¼
--¼¼ÄÜÒ²»áTÕi ÏûºÄÍê³Éºóµ÷ÓÃCái này ½Ó¿Ú(¼¼ÄÜtoÕ ğµ mµt ¿ªÊ¼,ÏûºÄ³É¹¦Ö´ĞĞÖ®ºó).
--Tr· v«1: ´¦Àí³É¹¦£»Tr· v«0: ´¦Àíth¤t bÕi.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335136_OnActivateOnce( sceneId, selfId )
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if(targetId < 0) then	--Ä¿±ê²»ºÏ·¨
		return 0
	end
	
	--»ñÈ¡"±¦Öé"ËùTÕi ±³°üÖĞtoÕ ğµ Î»ÖÃ
	local	bagId = LuaFnGetBagIndexOfUsedItem(sceneId, selfId)
	--zchw
  local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	--»ñÈ¡¼ÇÂ¼TÕi ÎïÆ·ÉíÉÏtoÕ ğµ ¶¨Î»Êı¾İ
	local	CurUseCount		= GetBagItemParam( sceneId, selfId, bagId, 8, 2 )	--»ñÈ¡Ê£ÓàÊ¹ÓÃ´ÎÊı	
	if(CurUseCount == 0)then	--µÚmµt ´ÎÊ¹ÓÃ
		CurUseCount = x335136_g_CanUseMaxCount		
	end
  
	--¼õÉÙ¿ÉÊ¹ÓÃ´ÎÊı
	CurUseCount = CurUseCount - 1
	if(CurUseCount <= 0) then
		local ret = EraseItem( sceneId, selfId, bagId )		
		if ret ~= 1 then
			return 0--É¾³ıth¤t bÕi
		end
	end
	
	--±£´æmµt ÏÂÊı¾İ
	SetBagItemParam( sceneId, selfId, bagId, 4, 2, x335136_g_CanUseMaxCount )--±£´æ×î´óÊ¹ÓÃ´ÎÊı
	SetBagItemParam( sceneId, selfId, bagId, 8, 2, CurUseCount )--±£´æ»¹¿ÉÒÔÊ¹ÓÃ´ÎÊı
	
	--Ë¢ĞÂClient¶ËtoÕ ğµ ±³°üÎïÆ·ĞÅÏ¢
	LuaFnRefreshItemInfo( sceneId, selfId, bagId )
	
	--¼ÓĞ§¹û
	local bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, x335136_g_LuoMaJianImpactID, 0)	--ÏÈÊ¹ÓÃÂäÂí¼ıĞ§¹û
	
	if (bRet == 1) then	--ÂäÂí¼ı³É¹¦
	  -- zchw
	  if (itemIndex == x335136_g_YuRenBaoZhuID) then
			local ImpactIndex = x335136_g_ImpactTable[1][random(x335136_g_ImpactCount)]	--Ëæ»úÑ¡ÔñĞ§¹û
			bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, ImpactIndex, 0)		--ÔÙÌí¼Ó±äÉíĞ§¹û
		elseif (itemIndex == 30501162) then --Sß Ğ° Bäo Châu
			local ImpactIndex = x335136_g_ImpactTable[2][random(x335136_g_ImpactCount)]	--Ëæ»úÑ¡ÔñĞ§¹û
			bRet = LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, targetId, ImpactIndex, 0)		--ÔÙÌí¼Ó±äÉíĞ§¹û
		end
	end
	
	if(bRet == 1) then --±äÉí³É¹¦
		--zchw
		if (itemIndex == x335136_g_YuRenBaoZhuID) then
			 szMsg = format("Ngß½i %s sØ døng Th¢ng B¶m Bäo Châu", GetName(sceneId,selfId))
		elseif (itemIndex == 30501162) then --Sß Ğ° Bäo Châu
			 szMsg = format("Ngß½i %s sØ døng Sß Ğ° Bäo Châu", GetName(sceneId,selfId))
		end	
		x335136_MsgBox( sceneId, targetId, szMsg )	--¸ø¶Ô·½·¢mµt cáiÏûÏ¢:Ngß½i XXXSØ døng Th¢ng B¶m Bäo Châu
	end
	
	return 1
end

--**********************************
--Òıµ¼ĞÄÌø´¦ÀíÈë¿Ú: 
--Òıµ¼¼¼ÄÜ»áTÕi Ã¿´ÎĞÄÌø½áÊøÊ±µ÷ÓÃCái này ½Ó¿Ú.
--Tr· v«: 1¼ÌĞøÏÂ´ÎĞÄÌø£»0: ÖĞ¶ÏÒıµ¼.
--×¢: ÕâÀïĞúng¼¼ÄÜÉúĞ§mµt ´ÎtoÕ ğµ Èë¿Ú
--**********************************
function x335136_OnActivateEachTick( sceneId, selfId)
	return 1
end

--**********************************
--ĞÅÏ¢ÌáÊ¾
--**********************************
function x335136_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
