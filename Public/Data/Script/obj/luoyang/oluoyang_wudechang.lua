--LÕc Dß½ngNPC
--ÎâµÂ²ý
--ÆÕÍ¨

x000082_g_ScriptId	= 000082

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ,SceneID,PosX,PosY,ÃÅÅÉID)
x000082_g_mpInfo		= {}
x000082_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x000082_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x000082_g_mpInfo[2]	= { "Thiªu Lâm",  9,  96, 127, MP_SHAOLIN }
x000082_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x000082_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x000082_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x000082_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x000082_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x000082_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }

x000082_g_Yinpiao = 40002000 

x000082_g_Impact_NotTransportList = { 5929, 5944 } -- ½ûÖ¹´«ËÍtoÕ ðµ Impact
x000082_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ½ûÖ¹´«ËÍtoÕ ðµ ImpactÌáÊ¾ÐÅÏ¢

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000082_OnDefaultEvent( sceneId, selfId,targetId )
	
	-- ¼ì²âÍæ¼ÒÉíÉÏÐúng²»ÐúngÓÐ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ðµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x000082_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin thÑ l²i trên ngß¶i các hÕ ðang giæ ngân phiªu ta không th¬ giúp ðßþc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	local	mp
	local	i		= 0
	BeginEvent( sceneId )
		AddText( sceneId, "#{XIYU_20071228_01}")
		AddNumText( sceneId, x000082_g_ScriptId, "Quay v« môn phái", 9, 1000 )
		AddNumText( sceneId, x000082_g_ScriptId, "Thành Th¸ - Tô Châu", 9, 1001 )
		AddNumText( sceneId, x000082_g_ScriptId, "Thành Th¸ - Tô Châu - Thiªt Tßþng Ph¯", 9, 1007 )
		AddNumText( sceneId, x000082_g_ScriptId, "Thành Th¸ - ÐÕi Lý", 9, 1002 )
		AddNumText( sceneId, x000082_g_ScriptId, "Thành Th¸ - Lâu Lan", 9, 1011 )
		AddNumText( sceneId, x000082_g_ScriptId, "Thành Th¸ - Thúc Hà C± Tr¤n", 9, 1010 )
		--AddNumText( sceneId, x000082_g_ScriptId, "Thành ph¯  - LÕc Dß½ng - ¾ÅÖÝÉÌ»á", 9, 1006 )
			AddNumText( sceneId, x000082_g_ScriptId, "Ðßa ta ðªn nhæng môn phái khác", 9, 1012 )
		--for i, mp in x000082_g_mpInfo do
			--AddNumText( sceneId, x000082_g_ScriptId, "Môn phái - "..mp[1], 9, i )
		--end


	
		-- Ðªn Ðôn Hoàng và Tung S½n?
		AddNumText( sceneId, x000082_g_ScriptId, "Ðªn Ðôn Hoàng và Tung S½n?", 11, 2000 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000082_OnEventRequest( sceneId, selfId, targetId, eventId )
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
				x000082_MsgBox( sceneId, selfId, targetId, "  Trong ðµi ngû cüa các hÕ có ngß¶i ðang làm nhi®m vø v§n chuy¬n, thß½ng nhân ta không th¬ cung c¤p d¸ch vø cho các hÕ ðßþc." )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x000082_MsgBox( sceneId, selfId, targetId, "  Xin thÑ l²i! Các hÕ ðang mang trong mình nhi®m vø v§n chuy¬n, thß½ng nhân ta không th¬ cung c¤p d¸ch vø cho các hÕ." )
		return
	end

	--¼ì²âImpact×´Ì¬×¤ÁôÐ§¹û
	for i, ImpactId in x000082_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x000082_MsgBox( sceneId, selfId, targetId, x000082_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end

	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()
	local	mp
	local	i		= 0
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr· v«ÃÅÅÉ
		if id < 0 or id >= 9 then
			x000082_MsgBox( sceneId, selfId, targetId, "  Các hÕ chßa gia nh§p môn phái nào." )
		else
			mp	= x000082_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			end
		end
		return
	end
	if arg == 1001 then		--Tô Châu
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114,162 )
		return
	end
	if arg == 1007 then		--Tô ChâuÌú½³ÆÌ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132 )
		return
	end
	if arg == 1002 then		--ÐÕi Lý
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 141 )
		return
	end
	if arg == 1006 then		--LÕc Dß½ngÉÌ»á
		SetPos(sceneId, selfId, 330,272)
		return
	end
	if arg == 1011 then		--Lâu Lan
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end
	for i, mp in x000082_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end

	if GetNumText()== 1010 then		--Thúc Hà C± Tr¤n
		-- add by zchw
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x000082_g_ScriptId);
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
			for i, mp in x000082_g_mpInfo do
				AddNumText( sceneId, x000082_g_ScriptId, "Môn phái - "..mp[1], 9, i )
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
function x000082_GotoShuHeGuZhen( sceneId, selfId, targetId )
	CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 200, 211, 20 );
	return
end
--**********************************
--¸ù¾ÝÃÅÅÉID»ñÈ¡ÃÅÅÉÐÅÏ¢
--**********************************
function x000082_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x000082_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x000082_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
