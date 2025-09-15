
x045029_g_scriptId = 045029

x045029_g_XinfaID = {}
x045029_g_XinfaID[0] = {01,02,03,04,05,06,55} --,72
x045029_g_XinfaID[1] = {07,08,09,10,11,12,56} --,73
x045029_g_XinfaID[2] = {13,14,15,16,17,18,57} --,74
x045029_g_XinfaID[3] = {19,20,21,22,23,24,58} --,75
x045029_g_XinfaID[4] = {25,26,27,28,29,30,59} --,76
x045029_g_XinfaID[5] = {31,32,33,34,35,36,60} --,77
x045029_g_XinfaID[6] = {37,38,39,40,41,42,61} --,78
x045029_g_XinfaID[7] = {43,44,45,46,47,48,62} --,79
x045029_g_XinfaID[8] = {49,50,51,52,53,54,63} --,80

x045029_g_KhinhCongMP = {23,24,25,26,27,28,29,30,31,34,110,111}
--**********************************
--
--**********************************
function x045029_OnDefaultEvent( sceneId, selfId, targetId )
	
	BeginEvent(sceneId)
		AddText(sceneId,"Chào m×ng các hÕ ğªn v¾i thª gi¾i Thiên Long Bát Bµ, ta là sÑ giä do GM gØi ğªn ğ¬ h² trş cho tân thü.")
		-- if GetMenPai(sceneId,selfId) == 9 then
			-- AddNumText( sceneId, x045029_g_scriptId, "#GGia Nh§p Môn Phái", 2, 1 )
		-- else
			-- AddNumText( sceneId, x045029_g_scriptId, "#GGia Tång Tâm Pháp", 2, 1 )
		-- end
		-- AddNumText( sceneId, x045029_g_scriptId, "Nh§n Kinh Nghi®m", 2, 5 )
		-- AddNumText( sceneId, x045029_g_scriptId, "Nh§n Ti«n T®", 2, 7 )
		-- AddNumText( sceneId, x045029_g_scriptId, "Xóa Túi ĞÕo Cø", 2, 8 )
		-- AddNumText( sceneId, x045029_g_scriptId, "Xóa Túi Nguyên Li®u", 2, 9 )
		
		-- AddNumText( sceneId, x045029_g_scriptId, "R¶i ği", 8, 0 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045029_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if 1 == 1 then
		
		return
	end
	
	if key == 1 then
		local MenpaiID = GetMenPai(sceneId,selfId)
		if MenpaiID ~= 9 then
			DispatchXinfaLevelInfo( sceneId, selfId, targetId, MenpaiID )
		else
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i mu¯n gia nh§p môn phái nào?")
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Thiªu Lâm", 6, 100)
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Minh Giáo", 6, 101)
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Cái Bang", 6, 102)
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Võ Ğang", 6, 103)
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Nga My", 6, 104)
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Tinh Túc", 6, 105)
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Thiên Long", 6, 106)
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Thiên S½n", 6, 107)
				AddNumText(sceneId, x045029_g_scriptId, "Gia Nh§p #GPhái Tiêu Dao", 6, 108)
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
		end
	end
	
	if key >= 100 and key <= 108 then
		if GetMenPai(sceneId,selfId) ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ngß½i ğã là môn hÕ cüa phái khác r°i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId, selfId, targetId)
			return
		end
		
		local MenpaiID = key - 100;
		LuaFnJoinMenpai(sceneId, selfId, targetId, MenpaiID)
		for i = 1, getn(x045029_g_XinfaID[MenpaiID]) do
			LuaFnSetXinFaLevel(sceneId,selfId,x045029_g_XinfaID[MenpaiID][i],100)
		end
		
		AddSkill(sceneId,selfId,x045029_g_KhinhCongMP[MenpaiID+1])
		
		BeginEvent(sceneId)
			AddText(sceneId, "Chúc m×ng ngß½i ğã gia nh§p môn phái!")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
	end
	
	-- if key == 5 then
		-- for i = 1, 1000 do
			-- AddExp(sceneId,selfId,700000)
		-- end
	-- end
	
	if key == 7 then
		-- YuanBao(sceneId,selfId,targetId,1,1000000)
		-- YuanbaoMD(sceneId,selfId,1,1000000)
		ZengDian(sceneId,selfId,targetId,1,1000000)
		AddMoney(sceneId,selfId,50000000)
		AddMoneyJZ(sceneId,selfId,50000000)
		BeginEvent(sceneId)
			AddText(sceneId,"Ğã nh§n ğßşc Ti«n T®")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
	end

	-- if key == 8 then
		-- BeginEvent(sceneId)
			-- AddText(sceneId,"Các hÕ có ğ°ng ı xoá sÕch túi ĞÕo Cø?")
			-- AddNumText( sceneId, x045029_g_scriptId, "Ğ°ng İ", 2, 80 )
		-- EndEvent(sceneId)
		-- DispatchEventList(sceneId,selfId,targetId)
	-- end
	
	-- if key == 80 then
		-- for i = 0, 29 do
			-- EraseItem(sceneId, selfId, i)
		-- end
		-- BeginEvent(sceneId)
			-- AddText(sceneId,"Ğã xoá túi ĞÕo Cø")
		-- EndEvent(sceneId)
		-- DispatchEventList(sceneId,selfId,targetId)
	-- end
	
	-- if key == 9 then
		-- BeginEvent(sceneId)
			-- AddText(sceneId,"Các hÕ có ğ°ng ı xoá sÕch túi Nguyên Li®u?")
			-- AddNumText( sceneId, x045029_g_scriptId, "Ğ°ng İ", 2, 90 )
		-- EndEvent(sceneId)
		-- DispatchEventList(sceneId,selfId,targetId)
	-- end
	
	-- if key == 90 then
		-- for i = 30, 59 do
			-- EraseItem(sceneId, selfId, i)
		-- end
		-- BeginEvent(sceneId)
			-- AddText(sceneId,"Ğã xoá túi Nguyên Li®u")
		-- EndEvent(sceneId)
		-- DispatchEventList(sceneId,selfId,targetId)
	-- end
	
	if key == 0 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--
--**********************************
function x045029_OnMissionSubmit(sceneId,selfId,targetId,x045029_g_scriptId,ItemID)

end

--**********************************
--
--**********************************
function x045029_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end