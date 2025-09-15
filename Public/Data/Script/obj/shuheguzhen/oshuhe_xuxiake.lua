--Thúc Hà C± Tr¤nNPC
--ÐìÏ¼¿Í
--ÆÕÍ¨

x001171_g_ScriptId	= 001171

x001171_g_Yinpiao = 40002000

x001171_g_Impact_NotTransportList = { 5929, 5944 } -- ½ûÖ¹´«ËÍtoÕ ðµ Impact
x001171_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}", "#{XSHCD_20080418_099}" } -- ½ûÖ¹´«ËÍtoÕ ðµ ImpactÌáÊ¾ÐÅÏ¢

--ÃÅÅÉÐÅÏ¢(ÃÅÅÉÃû³Æ,SceneID,PosX,PosY,ÃÅÅÉID)
x001171_g_mpInfo		= {}
x001171_g_mpInfo[0]	= { "Tinh Túc", 16,  96, 152, MP_XINGSU }
x001171_g_mpInfo[1]	= { "Tiêu Dao", 14,  67, 145, MP_XIAOYAO }
x001171_g_mpInfo[2]	= { "Thiªu Lâm",  9,  96, 127, MP_SHAOLIN }
x001171_g_mpInfo[3]	= { "Thiên S½n", 17,  95, 120, MP_TIANSHAN }
x001171_g_mpInfo[4]	= { "Thiên Long", 13,  96, 120, MP_DALI }
x001171_g_mpInfo[5]	= { "Nga My", 15,  89, 139, MP_EMEI }
x001171_g_mpInfo[6]	= { "Võ Ðang", 12, 103, 140, MP_WUDANG }
x001171_g_mpInfo[7]	= { "Minh Giáo", 11,  98, 167, MP_MINGJIAO }
x001171_g_mpInfo[8]	= { "Cái Bang", 10,  91, 116, MP_GAIBANG }

x001171_g_MsgInfo = { "#{SHGZ_001}",
											"#{SHGZ_0620_01}",
											"#{SHGZ_0620_02}",
											"#{SHGZ_0620_03}",
										}

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x001171_OnDefaultEvent( sceneId, selfId, targetId )

	-- ¼ì²âÍæ¼ÒÉíÉÏÐúng²»ÐúngÓÐ¡°ÒøÆ±¡±Cái này ¶«Î÷,ÓÐ¾Í²»ÄÜÊ¹ÓÃÕâÀïtoÕ ðµ ¹¦ÄÜ
	if GetItemCount(sceneId, selfId, x001171_g_Yinpiao)>=1  then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin thÑ l²i trên ngß¶i các hÕ ðang giæ ngân phiªu ta không th¬ giúp ðßþc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	BeginEvent( sceneId )
	
		local msgidx = random(getn(x001171_g_MsgInfo))
		AddText( sceneId, x001171_g_MsgInfo[msgidx] )
		AddNumText( sceneId, x001171_g_ScriptId, "Quay v« môn phái", 9, 1000 )
		AddNumText( sceneId, x001171_g_ScriptId, "Thành Th¸ - LÕc Dß½ng", 9, 1001 )
		AddNumText( sceneId, x001171_g_ScriptId, "Thành Th¸ - Tô Châu", 9, 1002 )
		AddNumText( sceneId, x001171_g_ScriptId, "Thành Th¸ - ÐÕi Lý", 9, 1003 )
		AddNumText( sceneId, x001171_g_ScriptId, "Thành Th¸ - LÕc Dß½ng - CØu Châu thß½ng hµi", 9, 1006 )
		AddNumText( sceneId, x001171_g_ScriptId, "Thành Th¸ - Tô Châu - Thiªt Tßþng Ph¯", 9, 1007 )
		AddNumText( sceneId, x001171_g_ScriptId, "Thành Th¸ - Lâu Lan", 9, 1008 )
		
		AddNumText( sceneId, x001171_g_ScriptId, "Ðßa ta ðªn các môn phái khác", 9, 1011 )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x001171_OnEventRequest( sceneId, selfId, targetId, eventId )
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
				x001171_MsgBox( sceneId, selfId, targetId, "  Trong ðµi ngû cüa các hÕ có ngß¶i ðang làm nhi®m vø v§n chuy¬n, thß½ng nhân ta không th¬ cung c¤p d¸ch vø cho các hÕ ðßþc." )
				return
			end
		end
	end

	--äîÔËÏà¹Ø
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		x001171_MsgBox( sceneId, selfId, targetId, "  Xin thÑ l²i! Các hÕ ðang mang trong mình nhi®m vø v§n chuy¬n, thß½ng nhân ta không th¬ cung c¤p d¸ch vø cho các hÕ." )
		return
	end
	
	--¼ì²âImpact×´Ì¬×¤ÁôÐ§¹û
	for i, ImpactId in x001171_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			x001171_MsgBox( sceneId, selfId, targetId, x001171_g_TalkInfo_NotTransportList[i] )			
			return 0
		end
	end
	
	--Ë³Àû´«ËÍ
	local	arg	= GetNumText()

	local	mp
	local	id	= LuaFnGetMenPai( sceneId, selfId )
	if arg == 1000 then		--Tr· v«ÃÅÅÉ
		if id < 0 or id >= 9 then
			x001171_MsgBox( sceneId, selfId, targetId, "  Các hÕ chßa gia nh§p môn phái nào." )
		else
			mp	= x001171_GetMPInfo( id )
			if mp ~= nil then
				CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4], 10 )
			end
		end
		return
	end
	
	if arg == 1001 then		--LÕc Dß½ng
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183, 20 )
		return
	end
	if arg == 1002 then		--Tô Châu
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114, 162, 20 )
		return
	end
	
	if arg == 1003 then		--ÐÕi Lý
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 2, 241, 141, 20 )
		return
	end
	
	if arg == 1006 then		--LÕc Dß½ngÉÌ»á
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 20 )
		return
	end
	if arg == 1007 then		--Tô ChâuÌú½³ÆÌ
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132, 20 )
		return
	end
	
	if arg == 1008 then		--Lâu Lan
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 288, 136, 75 )
		return
	end

	if arg == 1011 then		
		BeginEvent( sceneId )
			for i, mp in x001171_g_mpInfo do
				AddNumText( sceneId, x001171_g_ScriptId, "Môn phái - "..mp[1], 9, i )
			end
			
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
		return
	end
	
	
	--ÃÅÅÉ....
	for i, mp in x001171_g_mpInfo do
		if arg == i then
			CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, mp[2], mp[3], mp[4] )
			return
		end
	end
end

--**********************************
--¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x001171_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--¸ù¾ÝÃÅÅÉID»ñÈ¡ÃÅÅÉÐÅÏ¢
--**********************************
function x001171_GetMPInfo( mpID )
	local	mp
	local	i		= 0
	for i, mp in x001171_g_mpInfo do
		if mp[5] == mpID then
			return mp
		end
	end
	return nil
end
