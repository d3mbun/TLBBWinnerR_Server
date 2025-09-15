
--Tân mãng th¥n phù ð±i

-- lí xanh

--k¸ch bän g¯c hào
x999005_g_ScriptId = 999005
x999005_g_HeEvent = 999006
x999005_g_FenEvent = 999007
x999005_g_eventList={999006, 999007}

x999005_g_ShenFuList={	
		[30505800] = {level=1,id=30505800},
		[30505801] = {level=2,id=30505801},
		[30505802] = {level=3,id=30505802},
		[30505803] = {level=4,id=30505803},
		[30505804] = {level=5,id=30505804},
		[30505805] = {level=6,id=30505805},
		[30505806] = {level=7,id=30505806},
}




--**********************************
--sñ ki®n li®t bi¬u
--**********************************
function x999005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId," ThØ bän cû có th¬ khác nhau c¤p b§c Tân mãng th¥n phù trao ð±i!")

		AddNumText( sceneId, x999005_g_ScriptId, "Th¥n phù ðúc nóng", 6, 9000 )
		AddNumText( sceneId, x999005_g_ScriptId, "Th¥n phù chia lìa", 6, 11000 )			
		AddNumText( sceneId, x999005_g_ScriptId, "R¶i ði..", 0, 0 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--sñ ki®n lçn nhau nh§p kh¦u
--**********************************
function x999005_OnDefaultEvent( sceneId, selfId,targetId )
	x999005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--sñ ki®n li®t bi¬u lña ch÷n hÕng nh¤t
--**********************************
function x999005_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()

	if nNumText == 0  then
		-- ðóng cØa cØa s±
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	-- chØ ít vi, 2008. 5. 29. Cñc ph¦m trang b¸ thä ra. Tång thêm hai cái cái nút xØ lý sñ ki®n
	if nNumText == 9000 then
		BeginEvent(sceneId)	
				local szStr = "#GTh¤p h½n c¤p #Wth¥n phù ðúc nóng #GðÆng c¤p cao #Wth¥n phù #r#G2c¤p Tân mãng th¥n phù #Wc¥n: 2 cái C¤p 1 Tân mãng th¥n phù #r#G3c¤p Tân mãng th¥n phù #Wc¥n: 2 cái C¤p 2 Tân mãng th¥n phù #r#G4c¤p Tân mãng th¥n phù #Wc¥n: 2 cái C¤p 3 Tân mãng th¥n phù #r#G5c¤p Tân mãng th¥n phù #Wc¥n: 2 cái C¤p 4 Tân mãng th¥n phù #r#G6c¤p Tân mãng th¥n phù #Wc¥n: 2 cái C¤p 5 Tân mãng th¥n phù #r#G7c¤p Tân mãng th¥n phù #Wc¥n: 2 cái C¤p 6 Tân mãng th¥n phù"
				AddText(sceneId, szStr)
				for i, item in x999005_g_ShenFuList do
					if item.level > 1  then
						AddRadioItemBonus( sceneId, item.id, 4 )
					end
				end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		DispatchMissionContinueInfo(sceneId,selfId,targetId, x999005_g_HeEvent, 0)
	end
	if nNumText == 11000 then
		BeginEvent(sceneId)	
				local szStr = "#GÐÆng c¤p cao #Wchia lìa thành #Gth¤p h½n c¤p #Wth¥n phù #r#G2c¤p Tân mãng th¥n phù #Wphân giäi: 2 cái C¤p 1 Tân mãng th¥n phù #r#G3c¤p Tân mãng th¥n phù #Wphân giäi: 2 cái C¤p 2 Tân mãng th¥n phù #r#G4c¤p Tân mãng th¥n phù #Wphân giäi: 2 cái C¤p 3 Tân mãng th¥n phù #r#G5c¤p Tân mãng th¥n phù #Wphân giäi: 2 cái C¤p 4 Tân mãng th¥n phù #r#G6c¤p Tân mãng th¥n phù #Wphân giäi: 2 cái C¤p 5 Tân mãng th¥n phù #r#G7c¤p Tân mãng th¥n phù #Wphân giäi: 2 cái C¤p 6 Tân mãng th¥n phù"
				AddText(sceneId, szStr)
				for i, item in x999005_g_ShenFuList do
					if item.level > 1  then
						AddRadioItemBonus( sceneId, item.id, 4 )
					end
				end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		DispatchMissionContinueInfo(sceneId,selfId,targetId, x999005_g_FenEvent, 0)
	end	
end

--**********************************
--nh§n thØ NPCnhi®m vø
--**********************************
function x999005_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x999005_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end

end

--**********************************
--cñ tuy®t thØ NPCnhi®m vø
--**********************************
function x999005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--cñ tuy®t lúc sau, phäi phän h°i NPCchuy®n ki®n li®t bi¬u
	for i, findId in x999005_g_eventList do
		if missionScriptId == findId then
			x999005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			x999005_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--tiªp tøc (ðã tiªp nhi®m vø)
--**********************************
function x999005_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x999005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end

end

--**********************************
--ð® trình ðã làm xong nhi®m vø
--**********************************
function x999005_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x999005_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end

	for i, findId in g_eventListTest do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--tØ vong sñ ki®n
--**********************************
function x999005_OnDie( sceneId, selfId, killerId )
end
--**********************************
-- màn hình trung gian tin tÑc nêu lên
--**********************************
function x999005_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end