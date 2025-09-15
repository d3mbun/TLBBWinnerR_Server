--ËÕÖÝNPC
--µËÃ¯
--ÆÕÍ¨

x001081_g_ScriptId	= 001081

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ£¬SceneID£¬PosX£¬PosY£¬ÃÅÅÉID)
x001081_g_mpInfo		= {}
x001081_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x001081_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x001081_g_mpInfo[2]	= { "Thiªu Lâm",  9,  96, 127, MP_SHAOLIN }
x001081_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x001081_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x001081_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x001081_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x001081_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x001081_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }

x001081_g_Yinpiao = 40002000

x001081_g_Impact_NotTransportList = { 5929, 5944 } -- ½ûÖ¹´«ËÍµÄImpact
x001081_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ½ûÖ¹´«ËÍµÄImpactÌáÊ¾ÐÅÏ¢

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001081_OnDefaultEvent( sceneId, selfId,targetId )
	-- ¼ì²âÍæ¼ÒÉíÉÏÊÇ²»ÊÇÓÐ¡°ÒøÆ±¡±Õâ¸ö¶«Î÷£¬ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïµÄ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x001081_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  ÄãÉíÉÏÓÐãyÆ±£¬ÕýÔÚÅÜÉÌ£¡ÎÒ²»ÄÜŽÍÖúÄã¡£" )
		EndEvent( sceneId )

		-- ÎÒÔõÑù²ÅÄÜÈ¥¶Ø»ÍºÍáÔÉ½
		AddNumText( sceneId, x001081_g_ScriptId, "Ðªn Ðôn Hoàng và Tung S½n?", 11, 2000 )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		AddText( sceneId, "#{XIYU_20071228_03}" )
		AddNumText( sceneId, x001081_g_ScriptId, "Quay v« môn phái", 9, 1000 )
		AddNumText( sceneId, x001081_g_ScriptId, "Thành Th¸ - LÕc Dß½ng", 9, 1001 )
		AddNumText( sceneId, x001081_g_ScriptId, "Thành Th¸ - ÐÕi Lý", 9, 1002 )
		AddNumText( sceneId, x001081_g_ScriptId, "Thành Th¸ - LÕc Dß½ng - CØu Châu thß½ng hµi", 9, 1006 )
    AddNumText( sceneId, x001081_g_ScriptId, "Thành Th¸ - Lâu Lan", 9, 1007 )
    AddNumText( sceneId, x001081_g_ScriptId, "Thành Th¸ - Thúc Hà C± Tr¤n", 9, 1010 )
    
		AddNumText( sceneId, x001081_g_ScriptId, "Ðªn ta ðªn nhæng môn phái khác", 9, 1012 )
    
		--for i, mp in x001081_g_mpInfo do
			--AddNumText( sceneId, x001081_g_ScriptId, "ÃÅÅÉ - "..mp[1], 9, i )
		--end


		-- ÎÒÔõÑù²ÅÄÜÈ¥¶Ø»ÍºÍáÔÉ½
		AddNumText( sceneId, x001081_g_ScriptId, "Ðªn Ðôn Hoàng và Tung S½n?", 11, 2000 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x001081_OnEventRequest( sceneId, selfId, targetId, eventId )
	--¶ÓÎéÏà¹Ø
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				x001081_MsgBox( sceneId, selfId, targetId, "  Äãê Îé³É†TÖÐÓÐÈËÓÐäîß\\Ø›Å“ÔÚÉí£¬ÎÒ‚ƒóAÕ¾²»ÄÜžéÄãÌá¹©‚÷ËÍ·þ„Õ¡£" )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x001081_MsgBox( sceneId, selfId, targetId, "  Xin thÑ l²i! Các hÕ ðang mang trong mình nhi®m vø v§n chuy¬n, thß½ng nhân ta không th¬ cung c¤p d¸ch vø cho các hÕ." )
		return
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôÐ§¹û
	for i, ImpactId in x001081_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x001081_MsgBox( sceneId, selfId, targetId, x001081_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end
	
	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--·µ»ØÃÅÅÉ
		if id < 0 or id >= 9 then
			x001081_MsgBox( sceneId, selfId, targetId, "  Äãß€›]ÓÐ¼ÓÈëÈÎºÎéTÅÉ£¡" )
		else
			mp	= x001081_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end
	if arg == 1001 then		--ÂåÑô
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183 )
		return
	end
	if arg == 1002 then		--´óÀí
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 141 )
		return
	end
	if arg == 1006 then		--ÂåÑôÉÌ»á
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132 )
		return
	end
  if arg == 1007 then		--Â¥À¼
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end
	for i, mp in x001081_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

	if GetNumText()== 1010 then		--ÊøºÓ¹ÅÕò
		-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x001081_g_ScriptId);
			-- zchw fix Transfer bug
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShuHeGuZhen");
			UICommand_AddString(sceneId, "Thúc Hà C± Tr¤n là n½i PK s¨ không b¸ sát khí. Xin chú ý an toàn. Các hÕ có xác nh§n tiªn vào không?");
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)
		return
	end
	
	if arg == 1012 then		
		BeginEvent( sceneId )
			for i, mp in x001081_g_mpInfo do
				AddNumText( sceneId, x001081_g_ScriptId, "Môn phái - "..mp[1], 9, i )
			end
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	if GetNumText() == 2000 then		--
		BeginEvent( sceneId )
			AddText( sceneId, "#{GOTO_DUNHUANF_SONGSHAN}" ) 
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		return
	end
end
--  add by zchw
function x001081_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--¸ù¾ÝÃÅÅÉID»ñÈ¡ÃÅÅÉÐÅÏ¢
--**********************************
function x001081_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x001081_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001081_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
