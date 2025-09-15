-- l�nh th߷ng NPC

x900003_g_scriptId = 900003

--**********************************
--s� ki�n l�n nhau nh�p kh�u
--**********************************
function x900003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"?#cffcc88hoan ngh�nh �i v�o Thi�n Long B�t B� 085 ph�c c� ho�i c�u h�y � trong n�y cho ng߽i b�n t�n tin t߷ng s� l�m c�c h� t�m v� �n n�m �� ��ch t�nh ho�i �")
	AddNumText( sceneId, x900003_g_scriptId, "Gia nh�p m�n ph�i ", 2, 300 )
	AddNumText( sceneId, x900003_g_scriptId, "бi m�i m�n ph�i  ", 2, 400 )
	AddNumText( sceneId, x900003_g_scriptId, "Ch�a tr� kinh nghi�m  ", 2, 500 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
--**********************************
--s� ki�n li�t bi�u l�a ch�n h�ng nh�t
--**********************************
function x900003_OnEventRequest( sceneId, selfId, targetId, scriptId )
	local	arg	= GetNumText()
	if arg == 100 then
		x900003_NotifyFailBox( sceneId, selfId, targetId, "?#R231�" )		
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 197, 0)
		
	elseif arg== 300 then
		BeginEvent(sceneId)
		AddText(sceneId,"?#GC�u ��i m�n ph�i #cffcc88c� b�n #GC�n b�ng #cffcc88, xin l�a ch�n m�t c�i c�c h� c� �i�u, so s�nh #Pquen thu�c #cffcc88m�n ph�i, gia nh�p m�n ph�i t�m ph�p Vi C�p 10 b�n t�a n�i n�y #Gkh�ng c� r�c r߷i #cffcc88m�n ph�i, ch� c�n c�c h� thao t�c th�ch ��ng, tr�m v�n trong qu�n th� �ch s� th� c�p c�ng l� l�y � trong t�i �")
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [Tinh T�c]", 2, 310 )
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [Ti�u Dao]", 2, 320 )
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [Thi�u L�m]", 2, 330 )
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [Thi�n S�n]", 2, 340 )
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [Thi�n Long]", 2, 350 )
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [nga mi]", 2, 360 )
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [V� �ang]", 2, 370 )
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [Minh Gi�o]", 2, 380 )
		AddNumText( sceneId, x900003_g_scriptId, "B�i nh�p ? #cFF0000 [C�i Bang]", 2, 390 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif arg == 310 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #GTinh T�c ph�i #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId, "#cffcc88c�c h� th�nh c�ng gia nh�p #GTinh T�c ph�i #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 320 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #Gph�i Ti�u Dao #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i Ti�u Dao #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 330 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #Gph�i Thi�u L�m #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i Thi�u L�m #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 340 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #Gph�i Thi�n S�n #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i Thi�n S�n #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 350 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #GThi�n Long T� #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GThi�n Long T� #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 360 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #Gph�i Nga Mi #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i Nga Mi #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 370 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #Gph�i V� �߽ng #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i V� �߽ng #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 380 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #GMinh Gi�o #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GMinh Gi�o #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 390 then --??
		local mp = GetMenPai(sceneId, selfId)
		if mp ~= 9 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� �� #GB�i nh�p qua #cffcc88m�n ph�i, nh� nhu �i m�i m�n ph�i t�c c�n #Gm�n ph�i chuy�n ho�n l�nh #cffcc88m�t c�i �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PGia nh�p #GC�i Bang #P. #r#Rtr� ch�i nhi�u nh� v�y, c�c h� l�i c� th� l�a ch�n Ng�. Phi th߶ng c�m t� c�c h� duy tr�, v� c�ng ch�nh Ng� kh�ng th� cho ng�i c�i g�, nh�ng Ng� nh�t �nh h�i g�p b�i c� g�ng Vi c�c h� t�o ra m�t c�i ho�n m� gia �", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GC�i Bang #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg== 400 then
		BeginEvent(sceneId)
		AddText(sceneId,"?#cffcc88n�u c�c h� �� ch�n gh�t ph�a tr߾c gia nh�p m�n ph�i, hi�n t�i c�c h� ch� c�n #GTay n�i #cffcc88c� ���c m�t c�i #G'm�n ph�i chuy�n ho�n l�nh'#cffcc88b�n t�a c� th� cho ng߽i #Gm�t l�n n�a gia nh�p #cffcc88c�i kh�c m�n ph�i �")
		AddText(sceneId,"?#PCh� �: #Gm�t l�n n�a #cffcc88gia nh�p c�i kh�c m�n ph�i sau, ph�a tr߾c #Gt�p ���c t�m ph�p #cffcc88s� #cFF0000qu�n �i #cffcc88�xin th�n tr�ng �")
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [Tinh T�c] ", 2, 410 )
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [Ti�u Dao] ", 2, 420 )
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [Thi�u L�m] ", 2, 430 )
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [Thi�n S�n] ", 2, 440 )
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [Thi�n Long] ", 2, 450 )
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [nga mi] ", 2, 460 )
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [V� �ang] ", 2, 470 )
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [Minh Gi�o] ", 2, 480 )
		AddNumText( sceneId, x900003_g_scriptId, "бi m�i ? #cFF0000 [C�i Bang] ", 2, 490 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif arg == 410 then  --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #GTinh T�c ph�i #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId, "#cffcc88c�c h� th�nh c�ng gia nh�p #GTinh T�c ph�i #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 420 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #Gph�i Ti�u Dao #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i Ti�u Dao #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 430 then --??
		local mp = GetMenPai(sceneId, selfId)
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #Gph�i Thi�u L�m #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i Thi�u L�m #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 440 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #Gph�i Thi�n S�n #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i Thi�n S�n #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 450 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #GThi�n Long T� #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GThi�n Long T� #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 460 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #Gph�i Nga Mi #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i Nga Mi #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 470 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106 ,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #Gph�i V� �߽ng #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GPh�i V� �߽ng #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 480 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #GMinh Gi�o #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GMinh Gi�o #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 490 then --??
		if LuaFnGetAvailableItemCount( sceneId, selfId, 30008106 ) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#cffcc88c�c h� tay n�i kh�ng c� #GM�n ph�i chuy�n ho�n l�nh #cffcc88, t�i t�m ta c�ng kh�ng t� vu s� nha �" )
			return 
		end
		if LuaFnDelAvailableItem(sceneId,selfId,30008106,1) < 1 then
			x900003_NotifyFailBox( sceneId, selfId, targetId, "?#PX�a b� #Gm�n ph�i chuy�n ho�n l�nh #Pth�t b�i, xin x�c nh�n #Gv�t ph�m #Pch�a g�ng xi�ng �" )
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
		BroadMsgByChatPipe( sceneId, selfId, "#PCh�c m�ng ng߶i ch�i #G["..nam.."]#PTh�nh c�ng ph�n b�i s� m�n, gia nh�p #GC�i Bang #P.", 4 )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"#cffcc88c�c h� th�nh c�ng gia nh�p #GC�i Bang #cffcc88c�ng H�c #Gc� b�n t�m ph�p #cffcc88, ch�c c�c h� tr� ch�i kho�i tr� �" )
	elseif arg == 500 then --????
		BeginEvent( sceneId )
		AddText( sceneId, "?#IN�u c�c h� t�n kinh nghi�m b�c r�t ho�c ��nh qu�i �� kh�ng � cho kinh nghi�m, xin � Ng� n�i n�y �i�m ��nh #GNg� ph�i thanh linh #I, Th�ng �n n�u l�n c�c h� #Pch�a tr� ho�n th�nh #Im�i th�i nga." )
		AddNumText(sceneId, x900003_g_scriptId, "Ng� ph�i thanh linh", 6, 520 )
		AddNumText(sceneId, x900003_g_scriptId, "R�i kh�i", 6, 510 )
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
		x900003_NotifyFailBox( sceneId, selfId, targetId,"?#I�� v� c�c h� thanh Kh�ng kinh nghi�m, xin #Gti�p t�c �i�m ��nh thanh linh #Ith�ng �n n�u l�n ch�a tr� ho�n th�nh m�i th�i �")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
		else
		BeginEvent( sceneId )
		x900003_NotifyFailBox( sceneId, selfId, targetId,"?#ICh�c m�ng c�c h�, kinh nghi�m #cFF0000�� ch�a tr� ho�n th�nh #I, L�n sau xin ch� � kh�ng c�n � t�n qu� nhi�u kinh nghi�m nga.")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
		end
	end
	
end
---**********************************
-- �i tho�i c�a s� tin t�c n�u l�n
--**********************************
function x900003_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
	AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end