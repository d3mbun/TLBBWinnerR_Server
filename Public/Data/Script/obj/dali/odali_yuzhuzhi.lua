--´óÀíNPC
--ÓàÖúÖ®
--ÆÕÍ¨

x002088_g_ScriptId	= 002088

--²Ù×÷¼¯
x002088_g_Key				=
{
		["mis"]					= 100,	--ÎÒÏëÉ¾³ýËùÓÐµÄÈÎÎñ
		["itm"]					= 101,	--ÎÒÏëÉ¾³ýÈÎÎñµÀ¾ß
		["do"]					= 102,	--È·ÈÏÉ¾³ýËùÓÐµÄÈÎÎñ
}

-- ÐèÒªÔÚÉ¾³ýËùÓÐÈÎÎñµÄÊ±ºò£¬Í¬Ê±É¾³ýµÄÈÎÎñÎïÆ·µÄÁÐ±í
x002088_g_MisItemList = {	40004000,40004451,40004452,40004461,
		40004453,40004456,40004459,40004458,40004455,40004457,30505062,	
		40004465, 40004462, 40004463, 40004464,				--ÔÂÀÏºùÂ«£¬ÀùÊ¯£¬ÆßÒ¶Á«£¬Ñãôá zchw						
}

--******************************************************
--ÊÂ¼þ½»»¥Èë¿Ú
--******************************************************
function x002088_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta phøng m®nh cüa hoàng ðª nß¾c ÐÕi Lý, ðªn ðây ð¬ giúp anh hùng trong thiên hÕ làm nhi®m vø. Nªu ngß½i mu¯n huÖ ði t¤t cä m÷i nhi®m vø trong danh sách nhi®m vø, ho£c huÖ ði mµt ðÕo cø nhi®m vø nào ðó, ta ð«u có th¬ giúp ðÞ. Nào ngß½i mu¯n làm gì?" )
		AddNumText( sceneId, x002088_g_ScriptId, "Ta mu¯n xóa t¤t cä m÷i nhi®m vø", -1, x002088_g_Key["mis"] )
		AddNumText( sceneId, x002088_g_ScriptId, "Ta mu¯n xóa ðÕo cø nhi®m vø", -1, x002088_g_Key["itm"] )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end


function x002088_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
    local DayTime = GetDayTime()
    local LastTime = GetMissionData( sceneId, selfId, MD_NPC_DELMISSION ) --È¡³öÉÏ´Î·ÅÆúÊ±¼ä
    
    if DayTime > LastTime then
        SetMissionData( sceneId, selfId, MD_NPC_DELMISSION, DayTime )
        return 1
    end
    
    return -1
    
end


--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002088_OnEventRequest( sceneId, selfId, targetId, eventId )
	local	key	= GetNumText()

	if key == x002088_g_Key["mis"]	then
		if GetMissionCount( sceneId, selfId ) <= 0 then
			BeginEvent( sceneId )
				AddText( sceneId, "  Trên ngß¶i ngß½i cån bän không có nhi®m vø!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "  Xóa nhi®m vø s¨ xóa ði t¤t cä m÷i nhi®m vø trên ngß¶i, có ch¡c ch¡n là s¨ xóa ði?" )
				AddNumText( sceneId, x002088_g_ScriptId, "Duy®t", -1, x002088_g_Key["do"] )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end

	elseif key == x002088_g_Key["itm"]	then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 42 )
		
	elseif key == x002088_g_Key["do"]	then
	    
	    local CanDel = x002088_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
	    if CanDel ~= 1 then
			BeginEvent( sceneId )
				AddText( sceneId, "L¥n trß¾c các hÕ t× bö nhi®m vø · ch² tÕi hÕ ðªn nay chßa ðü 24h, bây gi¶ vçn không th¬ giúp các hÕ." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
				        
	        return
	    end
	    
		if IsHaveMission( sceneId, selfId, 1258 ) > 0 then --Ðþ·ðÖéÎïÆ·²»ÄÜÐ´ÁÐ±íÀïÃæ£¬²»È»ËûÉ¾µÚÒ»»·»òµÚ¶þ»·µÄÊ±ºòÒ²»áÉ¾Ò»¸öÐþ·ðÖé¡£doing 38427
			DelItem(sceneId, selfId, 40004454, 1)
		end
	  
		DelAllMission( sceneId, selfId )
	  
	  -- ÐèÒªÔÚÉ¾³ýÈÎÎñµÄÍ¬Ê±É¾³ýµÄÈÎÎñÎïÆ·
		for i, nItemId in x002088_g_MisItemList do
			-- »ñµÃÕâ¸öÎïÆ·µÄÊýÁ¿
			local nItemCount = GetItemCount(sceneId, selfId, nItemId)
			
			if nItemCount > 0  then
				DelItem(sceneId, selfId, nItemId, nItemCount)
			end
		
		end
	    
		Msg2Player( sceneId, selfId, "#rÐã xóa thành công t¤t cä m÷i nhi®m vø!", MSG2PLAYER_PARA )
		BeginEvent( sceneId )
			AddText( sceneId, "  Ðã xóa thành công t¤t cä m÷i nhi®m vø!" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end

--******************************************************
--Ïú»ÙÈÎÎñÎïÆ·
--ÓÉClient\Interface\MissionObjDel\MissionObjDel.lua·¢³ö
--******************************************************
function x002088_OnDestroy( sceneId, selfId, posItem )
	if posItem < 0 then
		return
	end

	EraseItem( sceneId, selfId, posItem )
end
