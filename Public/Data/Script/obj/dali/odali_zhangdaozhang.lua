--´óÀíNPC
--ÕÅµÀ³¤
--ÆÕÍ¨

x002075_g_ScriptId	= 002075

--åë³ßÌìÑÄ(¼¼ÄÜ±àºÅ¡¢¼¼ÄÜÃû³Æ¡¢ÏûºÄ½ðÇ®)
x002075_g_Ability				= {}
x002075_g_Ability["aid"]= 39
x002075_g_Ability["nam"]= "Chï Xích Thiên Nhai"
x002075_g_Ability["gld"]= 300000		--30G
x002075_g_LevMax				= 3					--¿ÉÑ§Ï°µÄ×î¸ßµÈ¼¶

--²Ù×÷¼¯
x002075_g_Key				= {}
x002075_g_Key["nul"]= 0		--É¶¶¼Ã»×ö
x002075_g_Key["stu"]= 1		--Ñ§Ï°¼¼ÄÜ
x002075_g_Key["sty"]= 101	--È·¶¨Ñ§Ï°
x002075_g_Key["stn"]= 100	--·ÅÆúÑ§Ï°
x002075_g_Key["lup"]= 2		--Éý¼¶¼¼ÄÜ
x002075_g_Key["upy"]= 201	--È·¶¨Éý¼¶
x002075_g_Key["upn"]= 200	--·ÅÆúÉý¼¶
x002075_g_Key["des"]= 3		--¶¨Î»·û½éÉÜ


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002075_OnDefaultEvent( sceneId, selfId, targetId )
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta có th¬ truy«n thø cho ngß½i mµt kÛ nång th¥n kÏ, các chæ ký hi®u ðßþc tÕo ra t× vi®c lþi døng kÛ nång này có th¬ ghi lÕi thông tin v¸ trí, sau này ngß½i mu¯n quay tr· lÕi n½i ghi chép này, chï c¥n sØ døng các chæ ký hi®u là ðßþc" )
		AddText( sceneId, "  Ð« ngh¸ chú ý, các chæ ký hi®u càng cao c¤p thì s¯ l¥n có th¬ sØ døng càng nhi«u" )
		if GetLevel( sceneId, selfId ) >= 30 then
			if lev <= 0 then
				AddNumText( sceneId, x002075_g_ScriptId, "H÷c "..x002075_g_Ability["nam"], 6, x002075_g_Key["stu"] )
			else
				AddNumText( sceneId, x002075_g_ScriptId, "KÛ nång thång c¤p", 6, x002075_g_Key["lup"] )
			end			
			AddNumText( sceneId, x002075_g_ScriptId, "Không làm gì cä", -1, x002075_g_Key["nul"] )
		end
		AddNumText( sceneId, x002075_g_ScriptId, "Gi¾i thi®u ký hi®u ð¸nh v¸", 11, x002075_g_Key["des"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002075_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()
	local	lev	= QueryHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"] )
	local exp = GetAbilityExp( sceneId, selfId, x002075_g_Ability["aid"] )	--ÊìÁ·¶È
	local ret, demandMoney, _, limitAbilityExp, limitAbilityExpShow, _, limitLevel
		= LuaFnGetAbilityLevelUpConfig( x002075_g_Ability["aid"], lev + 1 )

	--¶¨Î»·û½éÉÜ
	if key == x002075_g_Key["des"]	then

		x002075_MsgBox( sceneId, selfId, targetId, "#{function_help_020}" )

	--Ñ§Ï°¼¼ÄÜ
	elseif key == x002075_g_Key["stu"]	then
	
		if GetLevel( sceneId, selfId ) < 30 then--·Ç·¨Çé¿ö×ßµ½ÕâÀï£¬Ò²²»ÐèÒªÌáÊ¾ÁË
			return 0
		end

		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["stu"], "  Các hÕ h÷c t§p kÛ nång này c¥n tiêu hao#{_EXCHG" .. demandMoney .. "}, có hay không tiªp tøc? " )
	
	--È·¶¨Ñ§Ï°
	elseif key == x002075_g_Key["sty"] then
	
		if GetLevel( sceneId, selfId ) < 30 then--·Ç·¨Çé¿ö×ßµ½ÕâÀï£¬Ò²²»ÐèÒªÌáÊ¾ÁË
			return 0
		end

		if lev > 0 then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ngß½i ðã t×ng h÷c kÛ nång này r°i!" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ti«n m£t trong ngß¶i ngß½i không ðü, không th¬ h÷c kÛ nång này!" )
			return 0
		end

		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], 1 )
		x002075_SetMyPrescription( sceneId, selfId, 1 )
		x002075_MsgBox( sceneId, selfId, targetId, "  Chúc m×ng ngß½i ðã h÷c ðßþc "..x002075_g_Ability["nam"]..", chï có ði«u nªu mu¯n tÕo ra các ký hi®u ð¸nh v¸ có s¯ l¥n sØ døng nhi«u h½n, m¶i ngß½i nâng c¤p kÛ nång cüa mình." )

	--Éý¼¶¼¼ÄÜ
	elseif key == x002075_g_Key["lup"] then
		if GetLevel( sceneId, selfId ) < 30 then--·Ç·¨Çé¿ö×ßµ½ÕâÀï£¬Ò²²»ÐèÒªÌáÊ¾ÁË
			return 0
		end
		
		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "  ÐÆng c¤p kÛ nång cüa ngß½i ðã ðü, không c¥n nâng c¤p næa." )
			return 0
		end
		x002075_OnAsk( sceneId, selfId, targetId, x002075_g_Key["lup"], "  Các hÕ thång c¤p kÛ nång này c¥n tiêu hao#{_EXCHG" .. demandMoney .. "}, có hay không tiªp tøc? " )

	--È·¶¨Éý¼¶
	elseif key == x002075_g_Key["upy"] then
		if ret ~= 1 then
			return 0
		end
		
		if GetLevel( sceneId, selfId ) < 30 then--·Ç·¨Çé¿ö×ßµ½ÕâÀï£¬Ò²²»ÐèÒªÌáÊ¾ÁË
			return 0
		end

		if lev < 1 then
			x002075_MsgBox( sceneId, selfId, targetId, "  Ngß½i vçn chßa h÷c "..x002075_g_Ability["nam"]..", ðþi sau khi h÷c ðßþc kÛ nång c¤p 1 lÕi ðªn tìm ta nâng c¤p." )
			return 0
		end

		if lev >= x002075_g_LevMax then
			x002075_MsgBox( sceneId, selfId, targetId, "  ÐÆng c¤p kÛ nång cüa ngß½i ðã ðü, không c¥n nâng c¤p næa" )
			return 0
		end

		if exp < limitAbilityExp then
			x002075_MsgBox( sceneId, selfId, targetId, "  C¥n " .. limitAbilityExpShow .. " Nh¤n vào ðµ thành thÕo m¾i nâng c¤p ðñþc l¥n næa" )
			return 0
		end

		if LuaFnGetMoney( sceneId, selfId )+GetMoneyJZ( sceneId, selfId ) < demandMoney then
			x002075_MsgBox( sceneId, selfId, targetId, "  C¥n #{_EXCHG" .. demandMoney .. "} m¾i có th¬ nâng c¤p ðßþc tiªp" )
			return 0
		end

		--Éý¼¶´Ë¼¼ÄÜ
		LuaFnCostMoneyWithPriority( sceneId, selfId, demandMoney )
		SetHumanAbilityLevel( sceneId, selfId, x002075_g_Ability["aid"], lev+1 )
		x002075_SetMyPrescription( sceneId, selfId, lev+1 )
		x002075_MsgBox( sceneId, selfId, targetId, "  KÛ nång cüa ngß½i ðã ðßþc nâng c¤p thành công, chúc m×ng ngß½i có th¬ tÕo ra các chæ kÛ hi®u cao c¤p h½n!" )

	else
		
		--¹Ø±Õ½çÃæ		
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )

	end

	return 1
end

--**********************************
--ÉèÖÃÏàÓ¦µÈ¼¶µÄÅä·½
--**********************************
function x002075_SetMyPrescription( sceneId, selfId, lev )
	--Ã¿¸öµÈ¼¶¶ÔÓ¦6ÖÖÅä·½£ººìÉ«¡¢À¶É«¡¢°×É«¡¢ÂÌÉ«¡¢»ÆÉ«¡¢×ÏÉ«
	for i=0, 5 do
		SetPrescription( sceneId, selfId, 510+(lev-1)*6+i, 1 )
	end
end

--**********************************
--Ñ¯ÎÊÊÇ·ñÕâÑù×ö
--**********************************
function x002075_OnAsk( sceneId, selfId, targetId, key, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText( sceneId, x002075_g_ScriptId, "Có", -1, key*100+1 )
		AddNumText( sceneId, x002075_g_ScriptId, "Không", -1, key*100 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002075_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
