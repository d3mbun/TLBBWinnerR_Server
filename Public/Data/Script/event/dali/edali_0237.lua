--ÁË½â¾Å´óÃÅÅÉÌØÉ«

--½Å±¾ºÅ
x210237_g_ScriptId	= 210237

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ,ÌØÉ«ÃèÊö,½ÓÒýÈË×ø±ê,½ÓÒýÈËÃû³Æ,´«ËÍ×ø±ê)
x210237_g_mpInfo		= {}
x210237_g_mpInfo[0]	= { " [Thiên Long]", "#{OBJ_dali_0045}", 189, 124, "Phá Tham",    185, 128 }
x210237_g_mpInfo[1]	= { " [Nga My]", "#{OBJ_dali_0046}", 192, 129, "Lµ Tam Nß½ng",  185, 128 }
x210237_g_mpInfo[2]	= { " [Cái Bang]", "#{OBJ_dali_0047}", 126, 135, "Giän Ninh",    133, 130 }
x210237_g_mpInfo[3]	= { " [Minh Giáo]", "#{OBJ_dali_0048}", 130, 121, "ThÕch Bäo",    133, 130 }
x210237_g_mpInfo[4]	= { " [Thiªu Lâm]", "#{OBJ_dali_0049}", 187, 122, "Tu® D¸ch",    185, 128 }
x210237_g_mpInfo[5]	= { " [Thiên S½n]", "#{OBJ_dali_0050}", 131, 124, "Trình Thanh Sß½ng",  133, 130 }
x210237_g_mpInfo[6]	= { " [Võ Ðang]", "#{OBJ_dali_0051}", 127, 131, "Trß½ng HoÕch",    133, 130 }
x210237_g_mpInfo[7]	= { " [Tiêu Dao]", "#{OBJ_dali_0052}", 188, 133, "Ðàm Ðài TØ Vû",185, 128 }
x210237_g_mpInfo[8]	= { " [Tinh Túc]", "#{OBJ_dali_0053}", 134, 120, "Häi Phong TØ",  133, 130 }

--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210237_OnDefaultEvent( sceneId, selfId, targetId )
	local	key	= GetNumText()
	local	mp
	local	i		= 0
	
	--ÁË½âÃÅÅÉÌØÉ«
	if key == 100 then
		BeginEvent( sceneId )
			AddText( sceneId, "  CØu ðÕi môn phái" )
			for i, mp in x210237_g_mpInfo do
				AddNumText( sceneId, x210237_g_ScriptId, mp[1], 11, i+1 )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--Ñ¡Ôñ¸÷ÃÅÅÉ
	elseif key >= 1 and key <= 9 then
		mp	= x210237_g_mpInfo[key-1]
		BeginEvent( sceneId )
			AddText( sceneId, mp[2] )
			AddNumText( sceneId, x210237_g_ScriptId, "Ðßa ta ði g£p ngß¶i truy«n thông", 9, -1*key )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	--Ðßa ta ði¼û´«ËÍÈË
	elseif key >= -9 and key <= -1 then
		mp	= x210237_g_mpInfo[-1*key-1]
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, mp[3], mp[4], mp[5] )
		SetPos( sceneId, selfId, mp[6], mp[7] )
		
		--¹Ø±Õ½çÃæ
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	--ÆäËû
	else
		return
	end
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210237_OnEnumerate( sceneId, selfId, targetId )
	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		AddNumText( sceneId, x210237_g_ScriptId, "Tìm hi¬u ð£c trßng CØu ðÕi môn phái", 11, 100 )
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210237_CheckAccept( sceneId, selfId )
	--C¥n 10c¤p²ÅÄÜ½Ó
	if GetLevel( sceneId, selfId ) >= 10 and GetMenPai( sceneId, selfId ) == MP_WUMENPAI then
		return 1
	else
		return 0
	end
end

--**********************************
--Tiªp thø
--**********************************
function x210237_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x210237_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌÐø
--**********************************
function x210237_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210237_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210237_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210237_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210237_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210237_OnItemChanged( sceneId, selfId, itemdataId )
end
