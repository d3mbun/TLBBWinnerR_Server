
--T�n m�ng th�n ph� �i

-- l� xanh

--k�ch b�n g�c h�o
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
--s� ki�n li�t bi�u
--**********************************
function x999005_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId," Th� b�n c� c� th� kh�c nhau c�p b�c T�n m�ng th�n ph� trao �i!")

		AddNumText( sceneId, x999005_g_ScriptId, "Th�n ph� ��c n�ng", 6, 9000 )
		AddNumText( sceneId, x999005_g_ScriptId, "Th�n ph� chia l�a", 6, 11000 )			
		AddNumText( sceneId, x999005_g_ScriptId, "R�i �i..", 0, 0 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--s� ki�n l�n nhau nh�p kh�u
--**********************************
function x999005_OnDefaultEvent( sceneId, selfId,targetId )
	x999005_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--s� ki�n li�t bi�u l�a ch�n h�ng nh�t
--**********************************
function x999005_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()

	if nNumText == 0  then
		-- ��ng c�a c�a s�
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end
	-- ch� �t vi, 2008. 5. 29. C�c ph�m trang b� th� ra. T�ng th�m hai c�i c�i n�t x� l� s� ki�n
	if nNumText == 9000 then
		BeginEvent(sceneId)	
				local szStr = "#GTh�p h�n c�p #Wth�n ph� ��c n�ng #G��ng c�p cao #Wth�n ph� #r#G2c�p T�n m�ng th�n ph� #Wc�n: 2 c�i C�p 1 T�n m�ng th�n ph� #r#G3c�p T�n m�ng th�n ph� #Wc�n: 2 c�i C�p 2 T�n m�ng th�n ph� #r#G4c�p T�n m�ng th�n ph� #Wc�n: 2 c�i C�p 3 T�n m�ng th�n ph� #r#G5c�p T�n m�ng th�n ph� #Wc�n: 2 c�i C�p 4 T�n m�ng th�n ph� #r#G6c�p T�n m�ng th�n ph� #Wc�n: 2 c�i C�p 5 T�n m�ng th�n ph� #r#G7c�p T�n m�ng th�n ph� #Wc�n: 2 c�i C�p 6 T�n m�ng th�n ph�"
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
				local szStr = "#G��ng c�p cao #Wchia l�a th�nh #Gth�p h�n c�p #Wth�n ph� #r#G2c�p T�n m�ng th�n ph� #Wph�n gi�i: 2 c�i C�p 1 T�n m�ng th�n ph� #r#G3c�p T�n m�ng th�n ph� #Wph�n gi�i: 2 c�i C�p 2 T�n m�ng th�n ph� #r#G4c�p T�n m�ng th�n ph� #Wph�n gi�i: 2 c�i C�p 3 T�n m�ng th�n ph� #r#G5c�p T�n m�ng th�n ph� #Wph�n gi�i: 2 c�i C�p 4 T�n m�ng th�n ph� #r#G6c�p T�n m�ng th�n ph� #Wph�n gi�i: 2 c�i C�p 5 T�n m�ng th�n ph� #r#G7c�p T�n m�ng th�n ph� #Wph�n gi�i: 2 c�i C�p 6 T�n m�ng th�n ph�"
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
--nh�n th� NPCnhi�m v�
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
--c� tuy�t th� NPCnhi�m v�
--**********************************
function x999005_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--c� tuy�t l�c sau, ph�i ph�n h�i NPCchuy�n ki�n li�t bi�u
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
--ti�p t�c (�� ti�p nhi�m v�)
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
--� tr�nh �� l�m xong nhi�m v�
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
--t� vong s� ki�n
--**********************************
function x999005_OnDie( sceneId, selfId, killerId )
end
--**********************************
-- m�n h�nh trung gian tin t�c n�u l�n
--**********************************
function x999005_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end