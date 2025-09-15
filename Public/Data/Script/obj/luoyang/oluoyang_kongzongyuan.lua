--LÕc Dß½ngNPC
--¿××ÚÔ¨
--ÆÕÍ¨

x000124_g_ScriptId	= 000124

x000124_g_MisItemList = {	40004000,40004451,40004452,40004461,
		40004453,40004456,40004459,40004458,40004455,40004457,30505062,	
		40004465, 40004462, 40004463, 40004464,				--ÔÂÀÏºùÂ«£¬ÀùÊ¯£¬ÆßÒ¶Á«£¬Ñãôá zchw						
}

--²Ù×÷¼¯
x000124_g_Key				=
{
		["do"]					= 100,	--Xác nh§n
		["undo"]				= 101,	--HuÖ bö
}

--******************************************************
--ÊÂ¼þ½»»¥Èë¿Ú
--******************************************************
function x000124_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "  Ta là ÐÕi T¯ng Di­n Thánh công, Vån thánh nhân Kh±ng Tôn Uyên. Nªu các hÕ có th×a ðÕo cø nhi®m vø chiªm t¯n không gian tay näi quý giá thì có th¬ giao cho ta xóa bö ði. Nhßng trß¾c khi xóa bö ðÕo cø các hÕ phäi cân nh¡c cho kÛ, có phäi ch¡c ch¡n không c¥n dùng ðªn næa" )
		AddNumText( sceneId, x000124_g_ScriptId, "Ta mu¯n xóa ðÕo cø nhi®m vø", -1, x000124_g_Key["do"] )
		AddNumText( sceneId, x000124_g_ScriptId, "Ta mu¯n xóa t¤t cä m÷i nhi®m vø", -1, 1000 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐmµt Ïî
--**********************************
function x000124_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key	= GetNumText()
	
	if key == 1000 then
		if GetMissionCount( sceneId, selfId ) <= 0 then
			BeginEvent( sceneId )
				AddText( sceneId, "  Trên ngß¶i ngß½i cån bän không có nhi®m vø!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			BeginEvent( sceneId )
				AddText( sceneId, "  Xóa nhi®m vø s¨ xóa ði t¤t cä m÷i nhi®m vø trên ngß¶i, có ch¡c ch¡n là s¨ xóa ði?" )
				AddNumText( sceneId, x000124_g_ScriptId, "Duy®t", -1, 1001 )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
	
	if key == 1001 then
	    local CanDel = x000124_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
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
		for i, nItemId in x000124_g_MisItemList do
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
	
	if key == x000124_g_Key["do"]	then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 42 )
	end
end

--******************************************************
--Ïú»ÙÈÎÎñÎïÆ·
--ÓÉClient\Interface\MissionObjDel\MissionObjDel.lua·¢³ö
--******************************************************
function x000124_OnDestroy( sceneId, selfId, posItem )
	if posItem < 0 then
		return
	end
	
	local idItem = LuaFnGetItemTableIndexByIndex( sceneId, selfId, posItem )
	
	if idItem == 40002109 then 
		
		local ret = DelMission( sceneId, selfId, 4021 )
		if ret > 0 then		
			SetCurTitle(sceneId, selfId,  0, 124)
			DeleteTitle( sceneId, selfId,  5)
			LuaFnDispatchAllTitle(sceneId, selfId)			
			SetMissionData(sceneId,selfId,MD_CAOYUN_HUAN,0)
			SetMissionData(sceneId,selfId,MD_CAOYUN_MONSTERTIMER,0)
			LuaFnCancelSpecificImpact(sceneId,selfId,113)
		end
	
	end
	EraseItem( sceneId, selfId, posItem )
	x000124_OnDestroyLaborDay( sceneId, selfId, idItem )
end

--******************************************************
--Ïú»ÙÈÎÎñÎïÆ·toÕ ðµ ÌØÊâ´¦Àí Îåmµt ½ÚÔùËÍ»î¶¯
--Áõ¶Ü 2008-04-17
--******************************************************
function x000124_OnDestroyLaborDay( sceneId, selfId, idItem )
	if(GlobalLaborDayActivityTable.PetCageCardID == idItem) then
		local hasImapct = LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff)
		if ( hasImapct > 0 ) then
			LuaFnCancelSpecificImpact(sceneId, selfId, GlobalLaborDayActivityTable.PetCageDelayBuff)
		end
	end
end

function x000124_CheckCanDelMission_OverTime( sceneId, selfId, targetId, eventId )
    local DayTime = GetDayTime()
    local LastTime = GetMissionData( sceneId, selfId, MD_NPC_DELMISSION ) --È¡³öÉÏ´Î·ÅÆúÊ±¼ä
    
    if DayTime > LastTime then
        SetMissionData( sceneId, selfId, MD_NPC_DELMISSION, DayTime )
        return 1
    end
    
    return -1
    
end