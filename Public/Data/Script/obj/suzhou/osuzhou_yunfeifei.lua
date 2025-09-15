--Tô ChâuNPC
--ÔÆö­ö­
--mµt °ã

--½Å±¾ºÅ
x001050_g_ScriptId	= 001050

x001050_g_shoptableindex	= 27

x001050_g_eventList	= { 800103, 800104 , 800106, 800101, 800102, 800108}
x001050_g_miscEventId = 311111;

x001050_g_key				= {}
x001050_g_key["buy"]= 0		--¹ºÂòÕäÊÞÓÃÆ·
x001050_g_key["ask"]= 1		--Ki¬m tra mÑc ðµ tång trß·ng
x001050_g_key["rep"]= 2		--È·ÈÏ²éÑ¯
x001050_g_key["i_pc"]= 5		--·¢²¼Õ÷ÓÑÐÅÏ¢ ±ØÐè=5
x001050_g_key["ask_pc"]= 6		--Õ÷ÓÑ ±ØÐè=6
x001050_g_key["ask_prcr"]= 7		--²éÑ¯·±Ö³toÕ ðµ ÕäÊÞ
x001050_g_key["pet_help"]= 10		--ÕäÊÞÏà¹Ø½éÉÜ
x001050_g_key["pet_help_savvy"]= 11		--ÌLinhýÕäÊÞÎòÐÔ½éÉÜ
x001050_g_key["pet_help_prcr"]= 12		--ÕäÊÞ·±Ö³½éÉÜ

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001050_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent( sceneId )
		-- local name = GetName(sceneId,selfId)
		-- if name == "Admin" or name == "Root" then
			-- local petGUID_H, petGUID_L = LuaFnGetCurrentPetGUID(sceneId,selfId)
			-- local pet=GetPetTransString(sceneId,selfId,petGUID_H,petGUID_L)
			-- local str = format("#{PBB_2_A}#{_INFOUSR%s}#{PBB_2_B}#{_INFOMSG%s}#{PBB_2_C}",name,pet)
			-- BroadMsgByChatPipe(sceneId, selfId, str, 4)
		-- end
		
		AddText( sceneId, "#{OBJ_suzhou_0019}" )
		AddNumText( sceneId, x001050_g_ScriptId, "Gi¾i thi®u v« trân thú", 11, x001050_g_key["pet_help"] )
		
		AddNumText( sceneId, x001050_g_ScriptId, "Mua ð° dùng cho Trân Thú", 7, x001050_g_key["buy"] )
		AddNumText( sceneId, x001050_g_ScriptId, "Ki¬m tra mÑc tång trß·ng", 6, x001050_g_key["ask"] )
		AddNumText(sceneId,x001050_g_ScriptId,"Thông báo thông tin trân thú",6,x001050_g_key["i_pc"])
		AddNumText(sceneId,x001050_g_ScriptId,"Trân thú Giao Hæu",6,x001050_g_key["ask_pc"])
		
		CallScriptFunction( 800101, "OnEnumerate", sceneId, selfId, targetId )
		CallScriptFunction( 800102, "OnEnumerate", sceneId, selfId, targetId )
		
		AddNumText(sceneId,x001050_g_ScriptId,"Ki¬m tra ðµ sinh sän",6,x001050_g_key["ask_prcr"])

		CallScriptFunction( 800103, "OnEnumerate", sceneId, selfId, targetId )
		CallScriptFunction( 800104, "OnEnumerate", sceneId, selfId, targetId )
		CallScriptFunction( 800106, "OnEnumerate", sceneId, selfId, targetId )
		CallScriptFunction( 800108, "OnEnumerate", sceneId, selfId, targetId )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001050_OnEventRequest( sceneId, selfId, targetId, eventId )
	if eventId == x001050_g_ScriptId then
		local key	= GetNumText()
		if key == x001050_g_key["pet_help"] then
			BeginEvent(sceneId)	
				AddNumText( sceneId, x001050_g_ScriptId, "Gi¾i thi®u liên quan v« trân thú", 11, x001050_g_key["pet_help_savvy"] )
				AddNumText(sceneId, x001050_g_ScriptId,"Gi¾i thi®u v« sinh sän",11,x001050_g_key["pet_help_prcr"]);
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif key == x001050_g_key["pet_help_savvy"] then
			BeginEvent(sceneId)	
				AddText( sceneId, "#{function_help_059}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif key == x001050_g_key["pet_help_prcr"] then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_057}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		--¹ºÂòÕäÊÞÓÃÆ·
		elseif key == x001050_g_key["buy"] then
			DispatchShopItem( sceneId, selfId,targetId, x001050_g_shoptableindex )

		--Ki¬m tra mÑc ðµ tång trß·ng
		elseif key == x001050_g_key["ask"] then
--			BeginEvent( sceneId )
--			AddText( sceneId, " ²éÑ¯mµt ´ÎC¥n ÊÕÈ¡#{_MONEY100}toÕ ðµ ·ÑÓÃ." ) -- zchw
--			AddNumText( sceneId, x001050_g_ScriptId, "Xác nh§n", -1, x001050_g_key["rep"] )
--			EndEvent( sceneId )
--			DispatchEventList( sceneId, selfId, targetId )

		--È·ÈÏ²éÑ¯
--		elseif key == x001050_g_key["rep"] then
			x001050_OnConfirm( sceneId, selfId, targetId )
		--·¢²¼Õ÷ÓÑÐÅÏ¢/Õ÷ÓÑ
		elseif key == x001050_g_key["i_pc"] or key == x001050_g_key["ask_pc"] then
			local sel = GetNumText();
			CallScriptFunction( x001050_g_miscEventId, "OnEnumerate",sceneId, selfId, targetId, sel)
		--È·ÈÏ²éÑ¯
		elseif key == x001050_g_key["ask_prcr"] then
			LuaFnGetPetProcreateInfo(sceneId, selfId);
		else
		end

	--ÆäËûÊÂ¼þ
	else
		for i, findId in x001050_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
				return
			end
		end
	end
end

--**********************************
--È·ÈÏ²éÑ¯
--**********************************
function x001050_OnConfirm( sceneId, selfId, targetId )
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 6 )				--ÕäÊÞ²éÑ¯·ÖÖ§
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 3 )	--µ÷ÓÃÕäÊÞ½çÃæ
end

--**********************************
--Ki¬m tra mÑc ðµ tång trß·ng
--**********************************
function x001050_OnInquiryForGrowRate( sceneId, selfId, petHid, petLid )
--local	num		= LuaFnGetPetCount( sceneId, selfId )
--if num <= 0 or index < 0 or index >= num then
--	x001050_MsgTip( sceneId, selfId, "  ¶Ô²»Æð,ÄúÃ»ÓÐÑ¡ÔñÕäÊÞ!" )
--	return 0
--end

	-- Èç¹ûCái này ÕäÊÞÒÑ¾­²éÑ¯¹ýÉú³¤ÂÊ,¾Í¸øÍæ¼Òmµt cáiÌáÊ¾,È»ºó²»TÕi ¿Û¶«Î÷ÁË
	if LuaFnIsPetGrowRateByGUID(sceneId, selfId, petHid, petLid) > 0   then
		BeginEvent( sceneId )
			AddText( sceneId, "Trân thú ðã ðßþc ki¬m tra sñ tång trß·ng" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		
		return
	end
	
	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --½»×ÓÆÕ¼° Vega
	if PlayerMoney < 100 then
		x001050_MsgTip( sceneId, selfId, "  Xin l²i bÕn Ðang thiªu ngân lßþng #{_EXCHG100}!" )
		return 0
	end

	local	lev		= LuaFnGetPetLevelByGUID( sceneId, selfId, petHid, petLid )
	if lev < 1 then -- zchw 
		x001050_MsgTip( sceneId, selfId, "  Xin L²i ,Trân thú cüa bÕn chßa ðÕt ðäng c¤p 10" )
		return 0
	end

	--¿Û³ý½ðÇ®
	local costJ , costM = LuaFnCostMoneyWithPriority( sceneId, selfId, 100 )		--½»×ÓÆÕ¼° Vega
	if costM ~= nil and costJ ~= nil then
		if costJ > 0 then
			local str = format("BÕn ðã chi #{_EXCHG%d}",costJ ) 
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
		end
		if costM > 0 then
			local str = format("BÕn ðã chi #{_MONEY%d}",costM ) 
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
		end
		Msg2Player( sceneId, selfId, "Ki¬m tra tång trß·ng trân thú!", MSG2PLAYER_PARA )
	else
		return
	end

	local	nGrowLevel	= LuaFnGetPetGrowRateByGUID( sceneId, selfId, petHid, petLid )
	local	strTbl			= { "S½ C¤p", "Xu¤t S¡c", "Ki®t Xu¤t", "Trác Vi®t", "Toàn MÛ" }
	if( nGrowLevel < 1 or nGrowLevel > getn( strTbl ) ) then
		nGrowLevel				= 1
	end
	local	strLevel		= strTbl[nGrowLevel]

	--½«»ñÈ¡Êý¾Ý´«¸øClient
	BeginUICommand( sceneId )
		UICommand_AddString( sceneId, "key="..1 )						--¹Ø¼ü×Ö,1±íÊ¾³É¹¦Ö´ÐÐ
		UICommand_AddString( sceneId, "rat="..nGrowLevel )	--³É³¤ÂÊ
		UICommand_AddString( sceneId, "gld="..100 )					--»¨·Ñ½ðÇ®
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 4 )
	
	--µ±²éÑ¯toÕ ðµ ÕäÊÞÎª±¦±¦¡¢±äÒì,²¢ÇÒ³É³¤ÂÊ²éÑ¯½á¹ûÐúng3¡¢4»ò5Ê±,·¢²¼ÊÀ½ç¹«¸æ
	local	rnd			= random( 4 )
	local	msg			= {}
	local	typ			= LuaFnGetPetTypeByGUID( sceneId, selfId, petHid, petLid )
	if( nGrowLevel >= 4 and nGrowLevel <= 5 and typ ~= 2 ) then -- zchw
		if ( sceneId == 1 ) then		--Tô ChâuNPC
			msg[1]	= format( "#W#{_INFOUSR%s}#{GLBB_1_A}#Y%s#ItoÕ ðµ #{_INFOMSG%s}!",
				GetName( sceneId, selfId ),
				strLevel,
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ) )
			msg[2]	= format( "#W#{_INFOUSR%s}#{GLBB_2_A}#{_INFOMSG%s}#{GLBB_2_B}#Y%s#I#{GLBB_2_C}",
				GetName( sceneId, selfId ),
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				strLevel )
			msg[3]	= format( "#Imµt Ö»#{_INFOMSG%s}#{GLBB_3_A}#Y%s#I#{GLBB_3_B}#{_INFOUSR%s}#{GLBB_3_C}",
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				strLevel,
				GetName( sceneId, selfId ) )
			msg[4]	= format( "#W#{_INFOUSR%s}#{GLBB_4_A}#{_INFOMSG%s}#{GLBB_4_B}#Y%s#I#{GLBB_4_C}",
				 GetName( sceneId, selfId ),
				 LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				 strLevel )
			--È«Çò¹«¸æ
			AddGlobalCountNews( sceneId, msg[rnd] )
		elseif ( sceneId == 0 ) then			--LÕc Dß½ngNPC
			msg[1]	= format( "#W#{_INFOUSR%s}#{LLBB_1_A}#Y%s#ItoÕ ðµ #{_INFOMSG%s}!",
				GetName( sceneId, selfId ),
				strLevel,
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ) )
			msg[2]	= format( "#W#{_INFOUSR%s}#{LLBB_2_A}#{_INFOMSG%s}#{LLBB_2_B}#Y%s#I#{LLBB_2_C}",
				GetName( sceneId, selfId ),
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				strLevel )
			msg[3]	= format( "#Imµt Ö»#{_INFOMSG%s}#{LLBB_3_A}#Y%s#I#{LLBB_3_B}#{_INFOUSR%s}#{LLBB_3_C}",
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				strLevel,
				GetName( sceneId, selfId ) )
			msg[4]	= format( "#W#{_INFOUSR%s}#{LLBB_4_A}#{_INFOMSG%s}#{LLBB_4_B}#Y%s#I#{LLBB_4_C}",
				 GetName( sceneId, selfId ),
				 LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				 strLevel )
			--È«Çò¹«¸æ
			AddGlobalCountNews( sceneId, msg[rnd] )
		end
	end

	return 1
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001050_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÐÑÄ¿H® th¯ngÐÅÏ¢ÌáÊ¾
--**********************************
function x001050_MsgTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
