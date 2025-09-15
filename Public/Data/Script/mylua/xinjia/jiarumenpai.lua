-- lînh thß·ng NPC

x900003_g_scriptId = 900003

--**********************************
--sñ ki®n lçn nhau nh§p kh¦u
--**********************************
function x900003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"?#cffcc88hoan nghênh ði vào Thiên Long Bát Bµ 085 phøc c± hoài cñu hãy · trong này cho ngß½i bän tôn tin tß·ng s¨ làm các hÕ tìm v« ðªn nåm ðó ðích tình hoài …")
	AddNumText( sceneId, x900003_g_scriptId, "Gia nh§p môn phái ", 2, 300 )
	AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i môn phái  ", 2, 400 )
	AddNumText( sceneId, x900003_g_scriptId, "Chæa tr¸ kinh nghi®m  ", 2, 500 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--sñ ki®n li®t bi¬u lña ch÷n hÕng nh¤t
--**********************************
function x900003_OnEventRequest( sceneId, selfId, targetId, scriptId )
	local	arg	= GetNumText()
	if arg == 100 then
		x900003_NotifyFailBox( sceneId, selfId, targetId, "?#R231…" )		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 197, 0)
		
	elseif arg== 300 then
		BeginEvent(sceneId)
		AddText(sceneId,"?#GCØu ðÕi môn phái #cffcc88c½ bän #GCân b¢ng #cffcc88, xin lña ch÷n mµt cái các hÕ có ði«u, so sánh #Pquen thuµc #cffcc88môn phái, gia nh§p môn phái tâm pháp Vi C¤p 10 b±n t÷a n½i này #Gkhông có rác rß·i #cffcc88môn phái, chï c¥n các hÕ thao tác thích ðáng, tråm vÕn trong quân thü ð¸ch s¨ thü c¤p cûng là l¤y ð° trong túi …")
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [Tinh Túc]", 2, 310 )
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [Tiêu Dao]", 2, 320 )
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [Thiªu Lâm]", 2, 330 )
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [Thiên S½n]", 2, 340 )
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [Thiên Long]", 2, 350 )
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [nga mi]", 2, 360 )
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [Võ Ðang]", 2, 370 )
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [Minh Giáo]", 2, 380 )
		AddNumText( sceneId, x900003_g_scriptId, "Bái nh§p ? #cFF0000 [Cái Bang]", 2, 390 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif arg == 310 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
		LuaFnSetXinFaLevel(sceneId,selfId,31,10)
		LuaFnSetXinFaLevel(sceneId,selfId,32,10)
		LuaFnSetXinFaLevel(sceneId,selfId,33,10)
		LuaFnSetXinFaLevel(sceneId,selfId,34,10)
		LuaFnSetXinFaLevel(sceneId,selfId,35,10)
		LuaFnSetXinFaLevel(sceneId,selfId,36,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #GTinh Túc phái #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId, "#cffcc88các hÕ thành công gia nh§p #GTinh Túc phái #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 320 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
		LuaFnSetXinFaLevel(sceneId,selfId,49,10)
		LuaFnSetXinFaLevel(sceneId,selfId,50,10)
		LuaFnSetXinFaLevel(sceneId,selfId,51,10)
		LuaFnSetXinFaLevel(sceneId,selfId,52,10)
		LuaFnSetXinFaLevel(sceneId,selfId,53,10)
		LuaFnSetXinFaLevel(sceneId,selfId,54,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #Gphái Tiêu Dao #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Tiêu Dao #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 330 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
		LuaFnSetXinFaLevel(sceneId,selfId,1,10)
		LuaFnSetXinFaLevel(sceneId,selfId,2,10)
		LuaFnSetXinFaLevel(sceneId,selfId,3,10)
		LuaFnSetXinFaLevel(sceneId,selfId,4,10)
		LuaFnSetXinFaLevel(sceneId,selfId,5,10)
		LuaFnSetXinFaLevel(sceneId,selfId,6,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #Gphái Thiªu Lâm #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Thiªu Lâm #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 340 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,10)
		LuaFnSetXinFaLevel(sceneId,selfId,44,10)
		LuaFnSetXinFaLevel(sceneId,selfId,45,10)
		LuaFnSetXinFaLevel(sceneId,selfId,46,10)
		LuaFnSetXinFaLevel(sceneId,selfId,47,10)
		LuaFnSetXinFaLevel(sceneId,selfId,48,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #Gphái Thiên S½n #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Thiên S½n #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 350 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,10)
		LuaFnSetXinFaLevel(sceneId,selfId,38,10)
		LuaFnSetXinFaLevel(sceneId,selfId,39,10)
		LuaFnSetXinFaLevel(sceneId,selfId,40,10)
		LuaFnSetXinFaLevel(sceneId,selfId,41,10)
		LuaFnSetXinFaLevel(sceneId,selfId,42,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #GThiên Long Tñ #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GThiên Long Tñ #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 360 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,10)
		LuaFnSetXinFaLevel(sceneId,selfId,26,10)
		LuaFnSetXinFaLevel(sceneId,selfId,27,10)
		LuaFnSetXinFaLevel(sceneId,selfId,28,10)
		LuaFnSetXinFaLevel(sceneId,selfId,29,10)
		LuaFnSetXinFaLevel(sceneId,selfId,30,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #Gphái Nga Mi #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Nga Mi #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 370 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,10)
		LuaFnSetXinFaLevel(sceneId,selfId,20,10)
		LuaFnSetXinFaLevel(sceneId,selfId,21,10)
		LuaFnSetXinFaLevel(sceneId,selfId,22,10)
		LuaFnSetXinFaLevel(sceneId,selfId,23,10)
		LuaFnSetXinFaLevel(sceneId,selfId,24,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #Gphái Vû Ðß½ng #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Vû Ðß½ng #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 380 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,10)
		LuaFnSetXinFaLevel(sceneId,selfId,8,10)
		LuaFnSetXinFaLevel(sceneId,selfId,9,10)
		LuaFnSetXinFaLevel(sceneId,selfId,10,10)
		LuaFnSetXinFaLevel(sceneId,selfId,11,10)
		LuaFnSetXinFaLevel(sceneId,selfId,12,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #GMinh Giáo #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GMinh Giáo #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 390 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ ðã #GBái nh§p qua #cffcc88môn phái, nhß nhu ð±i m¾i môn phái t¡c c¥n #Gmôn phái chuy¬n hoán l®nh #cffcc88mµt cái …" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,10)
		LuaFnSetXinFaLevel(sceneId,selfId,14,10)
		LuaFnSetXinFaLevel(sceneId,selfId,15,10)
		LuaFnSetXinFaLevel(sceneId,selfId,16,10)
		LuaFnSetXinFaLevel(sceneId,selfId,17,10)
		LuaFnSetXinFaLevel(sceneId,selfId,18,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PGia nh§p #GCái Bang #P. #r#Rtrò ch½i nhi«u nhß v§y, các hÕ lÕi có th¬ lña ch÷n Ngã. Phi thß¶ng cäm tÕ các hÕ duy trì, vì công chính Ngã không th¬ cho ngài cái gì, nhßng Ngã nh¤t ð¸nh hµi g¤p bµi c¯ g¡ng Vi các hÕ tÕo ra mµt cái hoàn mÛ gia …", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GCái Bang #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg== 400 then
		BeginEvent(sceneId)
		AddText(sceneId,"?#cffcc88nªu các hÕ ðã chán ghét phía trß¾c gia nh§p môn phái, hi®n tÕi các hÕ chï c¥n #GTay nãi #cffcc88có ðßþc mµt cái #G'môn phái chuy¬n hoán l®nh'#cffcc88b±n t÷a có th¬ cho ngß½i #Gmµt l¥n næa gia nh§p #cffcc88cái khác môn phái …")
		AddText(sceneId,"?#PChú ý: #Gmµt l¥n næa #cffcc88gia nh§p cái khác môn phái sau, phía trß¾c #Gt§p ðßþc tâm pháp #cffcc88s¨ #cFF0000quên ði #cffcc88…xin th§n tr÷ng …")
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [Tinh Túc] ", 2, 410 )
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [Tiêu Dao] ", 2, 420 )
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [Thiªu Lâm] ", 2, 430 )
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [Thiên S½n] ", 2, 440 )
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [Thiên Long] ", 2, 450 )
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [nga mi] ", 2, 460 )
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [Võ Ðang] ", 2, 470 )
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [Minh Giáo] ", 2, 480 )
		AddNumText( sceneId, x900003_g_scriptId, "Ð±i m¾i ? #cFF0000 [Cái Bang] ", 2, 490 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif arg == 410 then  --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 5)
		LuaFnSetXinFaLevel(sceneId,selfId,31,10)
		LuaFnSetXinFaLevel(sceneId,selfId,32,10)
		LuaFnSetXinFaLevel(sceneId,selfId,33,10)
		LuaFnSetXinFaLevel(sceneId,selfId,34,10)
		LuaFnSetXinFaLevel(sceneId,selfId,35,10)
		LuaFnSetXinFaLevel(sceneId,selfId,36,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #GTinh Túc phái #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId, "#cffcc88các hÕ thành công gia nh§p #GTinh Túc phái #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 420 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 8)
		LuaFnSetXinFaLevel(sceneId,selfId,49,10)
		LuaFnSetXinFaLevel(sceneId,selfId,50,10)
		LuaFnSetXinFaLevel(sceneId,selfId,51,10)
		LuaFnSetXinFaLevel(sceneId,selfId,52,10)
		LuaFnSetXinFaLevel(sceneId,selfId,53,10)
		LuaFnSetXinFaLevel(sceneId,selfId,54,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #Gphái Tiêu Dao #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Tiêu Dao #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 430 then --??
		local mp = GetMenPai(sceneId, selfId)
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end	
		LuaFnJoinMenpai(sceneId, selfId, targetId, 0)
		LuaFnSetXinFaLevel(sceneId,selfId,1,10)
		LuaFnSetXinFaLevel(sceneId,selfId,2,10)
		LuaFnSetXinFaLevel(sceneId,selfId,3,10)
		LuaFnSetXinFaLevel(sceneId,selfId,4,10)
		LuaFnSetXinFaLevel(sceneId,selfId,5,10)
		LuaFnSetXinFaLevel(sceneId,selfId,6,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #Gphái Thiªu Lâm #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Thiªu Lâm #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 440 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 7)
		LuaFnSetXinFaLevel(sceneId,selfId,43,10)
		LuaFnSetXinFaLevel(sceneId,selfId,44,10)
		LuaFnSetXinFaLevel(sceneId,selfId,45,10)
		LuaFnSetXinFaLevel(sceneId,selfId,46,10)
		LuaFnSetXinFaLevel(sceneId,selfId,47,10)
		LuaFnSetXinFaLevel(sceneId,selfId,48,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #Gphái Thiên S½n #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Thiên S½n #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 450 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 6)
		LuaFnSetXinFaLevel(sceneId,selfId,37,10)
		LuaFnSetXinFaLevel(sceneId,selfId,38,10)
		LuaFnSetXinFaLevel(sceneId,selfId,39,10)
		LuaFnSetXinFaLevel(sceneId,selfId,40,10)
		LuaFnSetXinFaLevel(sceneId,selfId,41,10)
		LuaFnSetXinFaLevel(sceneId,selfId,42,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #GThiên Long Tñ #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GThiên Long Tñ #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 460 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 4)
		LuaFnSetXinFaLevel(sceneId,selfId,25,10)
		LuaFnSetXinFaLevel(sceneId,selfId,26,10)
		LuaFnSetXinFaLevel(sceneId,selfId,27,10)
		LuaFnSetXinFaLevel(sceneId,selfId,28,10)
		LuaFnSetXinFaLevel(sceneId,selfId,29,10)
		LuaFnSetXinFaLevel(sceneId,selfId,30,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #Gphái Nga Mi #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Nga Mi #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 470 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106 ,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 3)
		LuaFnSetXinFaLevel(sceneId,selfId,19,10)
		LuaFnSetXinFaLevel(sceneId,selfId,20,10)
		LuaFnSetXinFaLevel(sceneId,selfId,21,10)
		LuaFnSetXinFaLevel(sceneId,selfId,22,10)
		LuaFnSetXinFaLevel(sceneId,selfId,23,10)
		LuaFnSetXinFaLevel(sceneId,selfId,24,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #Gphái Vû Ðß½ng #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GPhái Vû Ðß½ng #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 480 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 1)
		LuaFnSetXinFaLevel(sceneId,selfId,7,10)
		LuaFnSetXinFaLevel(sceneId,selfId,8,10)
		LuaFnSetXinFaLevel(sceneId,selfId,9,10)
		LuaFnSetXinFaLevel(sceneId,selfId,10,10)
		LuaFnSetXinFaLevel(sceneId,selfId,11,10)
		LuaFnSetXinFaLevel(sceneId,selfId,12,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #GMinh Giáo #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GMinh Giáo #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 490 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88các hÕ tay nãi không có #GMôn phái chuy¬n hoán l®nh #cffcc88, t¾i tìm ta cûng không tª vu sñ nha …" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PXóa bö #Gmôn phái chuy¬n hoán l®nh #Pth¤t bÕi, xin xác nh§n #Gv§t ph¦m #Pchßa gông xi«ng …" )
			return
		end
		LuaFnJoinMenpai(sceneId, selfId, targetId, 2)
		LuaFnSetXinFaLevel(sceneId,selfId,13,10)
		LuaFnSetXinFaLevel(sceneId,selfId,14,10)
		LuaFnSetXinFaLevel(sceneId,selfId,15,10)
		LuaFnSetXinFaLevel(sceneId,selfId,16,10)
		LuaFnSetXinFaLevel(sceneId,selfId,17,10)
		LuaFnSetXinFaLevel(sceneId,selfId,18,10)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		local	nam	= LuaFnGetName( sceneId, selfId )
		BroadMsgByChatPipe( sceneId, selfId, "#PChúc m×ng ngß¶i ch½i #G["..nam.."]#PThành công phän bµi sß môn, gia nh§p #GCái Bang #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88các hÕ thành công gia nh§p #GCái Bang #cffcc88cûng H÷c #Gc½ bän tâm pháp #cffcc88, chúc các hÕ trò ch½i khoái trá …" )
	elseif arg == 500 then --????
		BeginEvent( sceneId )
		AddText( sceneId, "?#INªu các hÕ t°n kinh nghi®m bµc r¾t ho£c ðánh quái ðã không ð¬ cho kinh nghi®m, xin · Ngã n½i này ði¬m ðánh #GNgã phäi thanh linh #I, ThÆng ðªn nêu lên các hÕ #Pchæa tr¸ hoàn thành #Im¾i thôi nga." )
		AddNumText(sceneId, x900003_g_scriptId, "Ngã phäi thanh linh", 6, 520 )
		AddNumText(sceneId, x900003_g_scriptId, "R¶i khöi", 6, 510 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )		
	elseif arg == 510 then --????
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	elseif arg == 520 then --????
		if GetExp(sceneId,selfId) < 0  then 
		BeginEvent( sceneId )
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,1000)
		for i = 0,1000  do
			AddExp(sceneId,selfId,GetExp(sceneId,selfId)*-1)
		end
		x900003_NotifyFailBox( sceneId, selfId, targetId,"?#IÐã vì các hÕ thanh Không kinh nghi®m, xin #Gtiªp tøc ði¬m ðánh thanh linh #IthÆng ðªn nêu lên chæa tr¸ hoàn thành m¾i thôi …")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
		else
		BeginEvent( sceneId )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"?#IChúc m×ng các hÕ, kinh nghi®m #cFF0000ðã chæa tr¸ hoàn thành #I, L¥n sau xin chú ý không c¥n · t°n quá nhi«u kinh nghi®m nga.")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
		end
	end
	
end
---**********************************
-- ð¯i thoÕi cØa s± tin tÑc nêu lên
--**********************************
function x900003_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
	AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end