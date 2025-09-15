--LÕc Dß½ngNPC
--»¨ÏÉ
--ÆÕÍ¨

x000094_g_scriptId = 000094

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000094_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
 	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ "
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Dß½ng li­u thanh thanh giang thuÖ bình #rV¤n lang giang thßþng sß¾ng ca thanh #rÐông biên nh§t xu¤t tây biên vû#r ÐÕo th¸ vô tình khß¾c hæu tình.#r"..PlayerName.." "..PlayerSex..", có thích cuµc s¯ng chï làm uyên ß½ng không làm tiên không?")
		AddNumText( sceneId, x000094_g_scriptId, "Nh§n Hi®u ºng Vînh H¢ng Toàn Gi¾i", 2, 1 )
		AddNumText( sceneId, x000094_g_scriptId, "R¶i ði", 8, 0 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


function x000094_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 1 then
		for i = 1, 30 do
			local ItemID = LuaFnGetItemTableIndexByIndex(sceneId,selfId,i-1)
			if ItemID >= 10422133 and ItemID <= 10422140 then
				LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,75,0)
				
				BeginEvent(sceneId)
					AddText(sceneId," Trên ngß¶i ngß½i ðã có hi®u Ñng #PVînh H¢ng Toàn Gi¾i #Wr°i kìa.")
					AddNumText( sceneId, x000094_g_scriptId, "R¶i ði", 8, 0 )
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
			
			
			BeginEvent(sceneId)
				AddText(sceneId," Trong tay näi cüa ngß½i không có #P"..GetItemName(sceneId,10422133).." #Wà?")
				AddNumText( sceneId, x000094_g_scriptId, "R¶i ði", 8, 0 )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
		
		
	end
	
	if key == 0 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end