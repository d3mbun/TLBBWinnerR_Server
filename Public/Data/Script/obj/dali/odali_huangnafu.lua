--´óÀíNPC
--»ÆÄÉ¸£
--ÆÕÍ¨

--½Å±¾ºÅ
x002087_g_ScriptId	= 002087

--ÈÎÎñºÅ
x002087_g_MoneyId = MF_BUCHANG_MONEY
x002087_g_StoneId = MF_BUCHANG_STONE
x002087_g_EquipId = MF_BUCHANG_EQUIP

--¸÷¸öÃÅÅÉ×°±¸ÁĞ±í
x002087_g_equipInfo = {}
x002087_g_equipInfo[0]	= {MP_XINGSU,10433240,10440540,10441540,10442540,10443540,10444540,10445540,10450054,10451054,10452054,10453054}
x002087_g_equipInfo[1]	= {MP_XIAOYAO,10434140,10440740,10441740,10442740,10443740,10444740,10445740,10450074,10451074,10452074,10453074}
x002087_g_equipInfo[2]	= {MP_SHAOLIN,10431040,10440040,10441040,10442040,10443040,10444040,10445040,10450004,10451004,10452004,10453004}
x002087_g_equipInfo[3]	= {MP_TIANSHAN,10435040,10440640,10441640,10442640,10443640,10444640,10445640,10450064,10451064,10452064,10453064}
x002087_g_equipInfo[4]	= {MP_DALI,10434240,10440840,10441840,10442840,10443840,10444840,10445840,10450084,10451084,10452084,10453084}
x002087_g_equipInfo[5]	= {MP_EMEI,10433040,10440340,10441340,10442340,10443340,10444340,10445340,10450034,10451034,10452034,10453034}
x002087_g_equipInfo[6]	= {MP_WUDANG,10432140,10440440,10441440,10442440,10443440,10444440,10445440,10450044,10451044,10452044,10453044}
x002087_g_equipInfo[7]	= {MP_MINGJIAO,10430140,10440140,10441140,10442140,10443140,10444140,10445140,10450014,10451014,10452014,10453014}
x002087_g_equipInfo[8]	= {MP_GAIBANG,10431240,10440240,10441240,10442240,10443240,10444240,10445240,10450024,10451024,10452024,10453024}

--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002087_OnDefaultEvent( sceneId, selfId, targetId )
	--Ê×ÏÈÓ¦¸ÃÅĞ¶ÏÊÇ·ñÓ¦¸Ã¸øÓè²¹³¥
	--Ïà¹ØµÄ´úÂë
	--ÏÔÊ¾²¹³¥ÁĞ±í
	--15ºÅ¿ªÊ¼£¬21ºÅ½áÊø
	local day = GetDayTime()
	if day >= 7019 then
		x002087_MsgBox( sceneId, selfId, targetId, "Th¶i gian nhi®m vø ğã qua" )
		return
	end
	BeginEvent( sceneId )
		AddText( sceneId, "  Xin cäm tÕ m÷i ngß¶i ğã üng hµ Thiên Long Bát Bµ, ğ¬ thØ nghi®m h® th¯ng trò ch½i m¾i, c¥n phäi xóa tß li®u lßu træ. Vô cùng thÑ l²i v« b¤t ti®n này. Ta có chút quà m÷n cho m÷i ngß¶i, xin ğ×ng chê cß¶i" )
		AddNumText( sceneId, x002087_g_ScriptId, "Nâng ğÆng c¤p t¾i 10", 6, 0 )
		AddNumText( sceneId, x002087_g_ScriptId, "Nâng ğÆng c¤p t¾i 40", 6, 1 )
		AddNumText( sceneId, x002087_g_ScriptId, "Cho ta 1 bµ trang b¸ c¤p 40", 6, 2 )
		AddNumText( sceneId, x002087_g_ScriptId, "Ta ğã 40 r°i, hãy cho ta Bäo ThÕch", 6, 3 )
		AddNumText( sceneId, x002087_g_ScriptId, "Ta ğã 40 r°i, hãy cho ta ngân lßşng", 6, 4 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002087_OnStoneEvent( sceneId, selfId, targetId )
	--Ê×ÏÈÓ¦¸ÃÅĞ¶ÏÊÇ·ñÓ¦¸Ã¸øÓè²¹³¥
	--Ïà¹ØµÄ´úÂë
	--ÏÔÊ¾²¹³¥ÁĞ±í
	BeginEvent( sceneId )
		AddText( sceneId, "  Ngß½i mu¯n lãnh Bäo ThÕch gì? Chï có th¬ nh§n 1 trong 2 loÕi Bäo ThÕch dß¾i ğây" )
		AddNumText( sceneId, x002087_g_ScriptId, "Miêu Nhãn ThÕch", 6, 5 )
		AddNumText( sceneId, x002087_g_ScriptId, "H± Nhãn ThÕch", 6, 6 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
--**********************************
function x002087_OnEventRequest( sceneId, selfId, targetId, eventId )
	--È¡µÃÁĞ±íºÅ
	local	arg	= GetNumText()
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 0 then		--µã»÷ÁË10¼¶Ñ¡Ïî
	--ÅĞ¶ÏÊÇ·ñ´óÓÚ10¼¶
		if GetLevel( sceneId, selfId ) >= 10 then --´óÓÚµÈÓÚ10¼¶
			x002087_MsgBox( sceneId, selfId, targetId, "  ĞÆng c¤p cüa các hÕ ğã l¾n tß½ng ğß½ng v¾i c¤p 10, không th¬ thång c¤p ğÆng c¤p cüa các hÕ" )
			return
		else --ÉèÖÃµÈ¼¶Îª10¼¶
			LuaFnHumanLevelUp(sceneId, selfId,10,0)
			x002087_MsgBox( sceneId, selfId, targetId, "Chúc m×ng các hÕ thång c¤p t¾i 10, các hÕ v¤t vä quá" )
			return
		end
	elseif arg == 1 then--µã»÷ÁË40¼¶Ñ¡Ïî
		--ÅĞ¶ÏÊÇ·ñ´óÓÚ40¼¶
		if GetLevel( sceneId, selfId ) >= 40 then --´óÓÚµÈÓÚ40¼¶
			x002087_MsgBox( sceneId, selfId, targetId, "  ĞÆng c¤p cüa các hÕ ğã l¾n tß½ng ğß½ng v¾i c¤p 40, không th¬ thång c¤p ğÆng c¤p cüa các hÕ næa" )
			return
		elseif id < 0 or id >= 9 then --ÅĞ¶ÏÊÇ·ñ¼ÓÈëÃÅÅÉ
				x002087_MsgBox( sceneId, selfId, targetId, "  Xin gia nh§p môn phái trß¾c, có th¬ thång ğÆng c¤p mình t¾i 10 trß¾c r°i m¾i gia nh§p môn phái" )
				return
		else
			LuaFnHumanLevelUp(sceneId, selfId,40,40)
			x002087_MsgBox( sceneId, selfId, targetId, "Chúc m×ng các hÕ thång c¤p t¾i 40, các hÕ v¤t vä quá" )
			return
		end
	elseif arg == 2 then--Íæ¼ÒÒª×°±¸
		--ÅĞ¶ÏÊÇ·ñĞ¡ÓÚ40¼¶
		if GetMissionFlag(sceneId,selfId,x002087_g_EquipId)==1 then
			x002087_MsgBox( sceneId, selfId, targetId, " Lão già ta vçn chßa h° ğ° ğâu, chÆng phäi ngß½i ğã t×ng lãnh r°i sao?" )
			return			
		elseif GetLevel( sceneId, selfId ) < 40 then --Ğ¡ÓÚ40¼¶
			x002087_MsgBox( sceneId, selfId, targetId, " Chï sau khi ğÕt t¾i c¤p 40, m¾i ğßşc lãnh trang b¸ b± sung" )
			return
		elseif id < 0 or id >= 9 then --ÅĞ¶ÏÊÇ·ñ¼ÓÈëÃÅÅÉ
				x002087_MsgBox( sceneId, selfId, targetId, "  Xin gia nh§p môn phái trß¾c, có th¬ thång ğÆng c¤p mình t¾i 10 trß¾c r°i m¾i gia nh§p môn phái" )
				return
		else --ÊÇ·ñÓĞ13¸ö¿Õ¸ñ
			if LuaFnGetPropertyBagSpace(sceneId, selfId) < 11  then --Ã»ÓĞ¿Õ¸ñ
				x002087_MsgBox( sceneId, selfId, targetId, "	1 bµ trang b¸ c¤p 40 t±ng cµng g°m 11 món, không gian tay näi cüa các hÕ không ğü cho 11, d÷n d©p xong, hãy t¾i tìm ta" )
				return
			else 
				--°´ÕÕÃÅÅÉ¸øÍæ¼Ò×°±¸
				x002087_GiveEquip( sceneId, selfId, targetId, id)
				x002087_MsgBox( sceneId, selfId, targetId, "Cho các hÕ trang b¸ này, các hÕ vçn chßa hài lòng?" )
				SetMissionFlag( sceneId, selfId, x002087_g_EquipId, 1 )
				return
			end
		end
	elseif arg == 3 then--Íæ¼ÒÒª±¦Ê¯
		if GetMissionFlag(sceneId,selfId,x002087_g_StoneId)==1 then
			x002087_MsgBox( sceneId, selfId, targetId, " Lão già ta vçn chßa h° ğ° ğâu, chÆng phäi ngß½i ğã t×ng lãnh r°i sao?" )
			return			
		--ÅĞ¶ÏÊÇ·ñĞ¡ÓÚ40¼¶
		elseif GetLevel( sceneId, selfId ) < 40 then --Ğ¡ÓÚ40¼¶
			x002087_MsgBox( sceneId, selfId, targetId, " Chï sau khi ğÕt t¾i c¤p 40, m¾i ğßşc lînh Bäo ThÕch b± sung" )
			return
		else --¸ø³ö±¦Ê¯ÁĞ±í
			x002087_OnStoneEvent( sceneId, selfId, targetId )
			return
		end
	elseif arg == 4 then--Íæ¼ÒÒªÇ®
		--ÅĞ¶ÏÊÇ·ñĞ¡ÓÚ40¼¶
		if GetMissionFlag(sceneId,selfId,x002087_g_MoneyId)==1 then
			x002087_MsgBox( sceneId, selfId, targetId, " Lão già ta vçn chßa h° ğ° ğâu, chÆng phäi ngß½i ğã t×ng lãnh r°i sao?" )
			return	
		elseif GetLevel( sceneId, selfId ) < 40 then --Ğ¡ÓÚ40¼¶
			x002087_MsgBox( sceneId, selfId, targetId, " Chï sau khi ğÕt t¾i c¤p 40, m¾i ğßşc lînh ğ°ng vàng b± sung" )
			return
		else --¸ø³ö±¦Ê¯ÁĞ±í
			if LuaFnAddMoney(sceneId, selfId,1000000) == -1  then --¸øÇ®Ê§°Ü¸ÃÈçºÎ×ö£¿
				--¼ÓÇ®Ê§°Ü
				return
			else
				x002087_MsgBox( sceneId, selfId, targetId, "Các hÕ th§t tham quá, l¤y cä ti«n dßŞng lão cüa ta" )
				SetMissionFlag( sceneId, selfId, x002087_g_MoneyId, 1 )
				return
			end
		end		
	elseif arg == 5 then--Íæ¼ÒÒªÃ¨ÑÛÊ¯
		--ÅĞ¶ÏÊÇ·ñÒÑ¾­ÄÃ¹ıÃ¨ÑÛÊ¯
		if GetLevel( sceneId, selfId ) < 40 then --Ğ¡ÓÚ40¼¶
			x002087_MsgBox( sceneId, selfId, targetId, " Chï sau khi ğÕt t¾i c¤p 40, m¾i ğßşc lînh ğ°ng vàng b± sung" )
			return
		else --¸øÍæ¼ÒÃ¨ÑÛÊ¯
			if LuaFnGetMaterialBagSpace(sceneId, selfId) < 20  then --Ã»ÓĞ¿Õ¸ñ
				x002087_MsgBox( sceneId, selfId, targetId, " Bäo ThÕch ğßşc thß·ng g°m 20 loÕi, không gian tay näi cüa các hÕ không ğü, d÷n d©p xong, hãy t¾i tìm ta" )
				return
			else 		
				--¸øÍæ¼Ò20¸öÃ¨ÑÛÊ¯
				x002087_GiveStone( sceneId, selfId, targetId, 0)
				x002087_MsgBox( sceneId, selfId, targetId, "20 viên Bäo ThÕch, sß¾ng chßa" )
				SetMissionFlag( sceneId, selfId, x002087_g_StoneId, 1 )
				return
			end
		end
	elseif arg == 6 then--Íæ¼ÒÒª»¢ÑÛÊ¯
		--ÅĞ¶ÏÊÇ·ñÒÑ¾­ÄÃ¹ı»¢ÑÛÊ¯
		if GetLevel( sceneId, selfId ) < 40 then --Ğ¡ÓÚ40¼¶
			x002087_MsgBox( sceneId, selfId, targetId, " Chï sau khi ğÕt t¾i c¤p 40, m¾i ğßşc lînh ğ°ng vàng b± sung" )
			return
		else --¸øÍæ¼Ò»¢ÑÛÊ¯
			if LuaFnGetMaterialBagSpace(sceneId, selfId) < 20  then --Ã»ÓĞ¿Õ¸ñ
				x002087_MsgBox( sceneId, selfId, targetId, " Bäo ThÕch ğßşc thß·ng g°m 20 loÕi, không gian tay näi cüa các hÕ không ğü, d÷n d©p xong, hãy t¾i tìm ta" )
				return
			else
				--¸øÍæ¼Ò20¸ö»¢ÑÛÊ¯
				x002087_GiveStone( sceneId, selfId, targetId, 1)
				x002087_MsgBox( sceneId, selfId, targetId, "20 viên Bäo ThÕch, sß¾ng chßa" )
				SetMissionFlag( sceneId, selfId, x002087_g_StoneId, 1 )
				return
			end
		end		
		return
	end		
end		
		
		
--**********************************
--¶Ô»°´°¿ÚĞÅÏ¢ÌáÊ¾
--**********************************
function x002087_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--¸ø×°±¸
--**********************************
--function x002087_GiveEquip( sceneId, selfId,menpai )
function x002087_GiveEquip( sceneId, selfId, targetId, menpai )

	--È¡µÃ×°±¸ĞÅÏ¢
	local mp =  x002087_GetEquipInfo( menpai )
	if mp ~= nil then
		for i=2,12 do
			BeginAddItem(sceneId)
				AddItem( sceneId,mp[i],1)	
			local ret = EndAddItem(sceneId,selfId)
			if ret > 0 then
				AddItemListToHuman(sceneId,selfId)
				--Msg2Player(sceneId, selfId,"#YÍê³ÉÈÎÎñ£ºµÚÒ»°ÑÎäÆ÷",MSG2PLAYER_PARA )
			end
		end
	end
end

--**********************************
--¸ø±¦Ê¯,0 Ã¨ÑÛÊ¯£¬1 »¢ÑÛÊ¯
--**********************************
--function x002087_GiveStone( sceneId, selfId,kind )
function x002087_GiveStone( sceneId, selfId, targetId, kind )
	--¸øÃ¨ÑÛÊ¯
	if kind == 0 then
		for i=1,20 do
			BeginAddItem(sceneId)
				AddItem( sceneId,50101001,1)	
			local ret = EndAddItem(sceneId,selfId)
			if ret > 0 then
				AddItemListToHuman(sceneId,selfId)
			end
		end
	end
	--¸ø»¢ÑÛÊ¯
	if kind == 1 then
		for i=1,20 do
			BeginAddItem(sceneId)
				AddItem( sceneId,50101002,1)	
			local ret = EndAddItem(sceneId,selfId)
			if ret > 0 then
				AddItemListToHuman(sceneId,selfId)
			end
		end
	end
end

--**********************************
--È¡µÃËùÊôÃÅÅÉ×°±¸ĞÅÏ¢
--**********************************
function x002087_GetEquipInfo( mpID )
	local mp
	local i = 0
	for i, mp in x002087_g_equipInfo do
		if mp[1] == mpID then
			return mp
		end
	end
	return nil
end
