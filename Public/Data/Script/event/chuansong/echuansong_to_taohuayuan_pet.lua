--created by WTT 2009.3.2

--ÊÂ¼þ: ´«ËÍµ½Thánh Thú S½n

--½Å±¾ºÅ
x400964_g_ScriptId = 400964

--ÈÎÎñÎÄ±¾ÃèÊö
x400964_g_MissionName="Ði Thanh Hoa S½n"		-- È¥Thánh Thú S½n
x400964_g_MissionInfo="Ði Thanh Hoa S½n"  		-- ÈÎÎñÃèÊö
x400964_g_MissionTarget="Ði Thanh Hoa S½n"		-- Møc tiêu nhi®m vø
x400964_g_ContinueInfo="Ði Thanh Hoa S½n"			-- Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x400964_g_MissionComplete="Ði Thanh Hoa S½n"	-- Hoàn t¤t nhi®m vønpcËµ»°toÕ ðµ »°

--**********************************
--Èë¿Úº¯Êý
--**********************************
function x400964_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin thÑ l²i trên ngß¶i các hÕ ðang giæ ngân phiªu ta không th¬ giúp ðßþc." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
  
	--äîÔËÏà¹Ø
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
				BeginEvent( sceneId )
					AddText( sceneId, "  Trong ðµi ngû cüa các hÕ có ngß¶i ðang làm nhi®m vø v§n chuy¬n, thß½ng nhân ta không th¬ cung c¤p d¸ch vø cho các hÕ ðßþc." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end
  
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ngß½i ðang · trong trÕng thái Tào v§n, không th¬ tiªn v« cänh trß¾c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	-- ÒÔÉÏ¼ì²â¾ùÍ¨¹ý	
	BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x400964_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShengShouShan");
			UICommand_AddString(sceneId, "Thanh Hoa S½n là khu vñc không tång sát khí, chú ý an toàn. B¢ng hæu xác nh§n tiªn vào hay không?");	
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x400964_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId,x400964_g_ScriptId,x400964_g_MissionName, 9, 1)	
	
end

--**********************************
--´«ËÍÖÁThánh Thú S½n
--**********************************
function x400964_GotoShengShouShan( sceneId, selfId, targetId )

	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 340, 30, 30, 21 );
	return
	
end
