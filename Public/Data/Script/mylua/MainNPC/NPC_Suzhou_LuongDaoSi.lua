
x045026_g_scriptId = 045026
x045026_g_eventList = {045507}
--**********************************
--
--**********************************
function x045026_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{XCHQ_90601_1}")
		for i, eventId in x045026_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		--AddNumText( sceneId, x045026_g_scriptId, "#{SQXY_09061_4}", 4, 1 )
		--AddNumText( sceneId, x045026_g_scriptId, "#{XCHQ_90609_2}", 6, 2 )
		--AddNumText( sceneId, x045026_g_scriptId, "#{XCHQ_90609_1}", 6, 3 )
		AddNumText( sceneId, x045026_g_scriptId, "#{SQXY_09061_5}", 6, 4 )
		AddNumText( sceneId, x045026_g_scriptId, "#{SQXY_09061_6}", 11, 7 )
		--AddNumText( sceneId, x045026_g_scriptId, "#{XCHQ_90609_4}", 11, 8 )
		--AddNumText( sceneId, x045026_g_scriptId, "#{XCHQ_90609_3}", 11, 9 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045026_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x045026_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	local key = GetNumText()
	
	if key == 0 then
		x045026_OnDefaultEvent( sceneId, selfId, targetId )
	end
	
	if key == 1 then
		CallScriptFunction(045507, "OnEnumerate", sceneId, selfId, targetId)
	end
	
	if key == 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XCHQ_90609_5}")
			AddNumText( sceneId, x045026_g_scriptId, "#{XCHQ_90601_2}", 6, 21 )
			AddNumText( sceneId, x045026_g_scriptId, "#{XCHQ_90601_3}", 6, 22 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 3 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{ZXCM_090602_06}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 4 then
		BeginEvent(sceneId)
			AddNumText( sceneId, x045026_g_scriptId, "бi Thi�n Cang C߶ng H�a Tinh Hoa", 6, 41 )
			AddNumText( sceneId, x045026_g_scriptId, "бi H�ng B�o Th�ch (C�p 3)", 6, 42 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 41 then
		BeginEvent(sceneId)
			AddText(sceneId,"бi Thi�n Cang C߶ng H�a Tinh Hoa c�n #G7#W H�a Nguy�n Qu�, �ng � trao �i ch�?")
			AddNumText( sceneId, x045026_g_scriptId, "T�i h� mu�n �i", 6, 411 )
			AddNumText( sceneId, x045026_g_scriptId, "Tho�t", 6, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 411 then
		local HuaNguyenQua = LuaFnGetAvailableItemCount(sceneId,selfId,20502010)
		if HuaNguyenQua < 7 then
			BeginEvent(sceneId)
				AddText(sceneId,"#{SQXY_09061_26} 7 #{SQXY_09061_27}")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Y�u c�u 1 � tr�ng trong t�i ��o c�!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		LuaFnDelAvailableItem(sceneId,selfId,20502010,7)
		
		local ItemPos = TryRecieveItem(sceneId,selfId,30900006,1)
		LuaFnItemBind(sceneId,selfId,ItemPos)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�c m�ng c�c h� �� ��t ���c #G"..GetItemName(sceneId,30900006))
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 42 then
		BeginEvent(sceneId)
			AddText(sceneId,"бi H�ng B�o Th�ch (C�p 3) c�n #G20#W H�a Nguy�n Qu�, �ng � trao �i ch�?")
			AddNumText( sceneId, x045026_g_scriptId, "T�i h� mu�n �i", 6, 421 )
			AddNumText( sceneId, x045026_g_scriptId, "Tho�t", 6, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 421 then
		local HuaNguyenQua = LuaFnGetAvailableItemCount(sceneId,selfId,20502010)
		if HuaNguyenQua < 20 then
			BeginEvent(sceneId)
				AddText(sceneId,"#{SQXY_09061_26} 20 #{SQXY_09061_27}")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if LuaFnGetMaterialBagSpace(sceneId,selfId) < 1 then
			BeginEvent(sceneId)
				AddText(sceneId,"Y�u c�u 1 � tr�ng trong t�i nguy�n li�u!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		LuaFnDelAvailableItem(sceneId,selfId,20502010,20)
		
		local ItemPos = TryRecieveItem(sceneId,selfId,50313004,1)
		LuaFnItemBind(sceneId,selfId,ItemPos)
		
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�c m�ng c�c h� �� ��t ���c #G"..GetItemName(sceneId,50313004))
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 7 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SQXY_09061_40}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 8 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{XCHQ_90601_12}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	
	if key == 9 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{ZXCM_090602_40}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

	if key == 0 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

function x045026_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x045026_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

function x045026_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x045026_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

function x045026_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x045026_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--
--**********************************
function x045026_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end