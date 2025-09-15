
x001085_g_scriptId = 001085

--**********************************
--
--**********************************

function x001085_OnDefaultEvent( sceneId, selfId, targetId )	
	BeginEvent(sceneId)
		AddText(sceneId,"��ng ch� th�y ��i ca �u D� T� ��c t�o ra v� s� th�n binh l�i kh�, ta c�ng c� tuy�t k� c�a ta")
		AddText(sceneId,"C�c h� bi�t �y, th�n kh� tr�n th� gian �u c� linh h�n c�a n�, ta c� th� luy�n th�n kh� khi�n linh h�n c�a n� l�n m�nh, thu�c t�nh c�a n� c�ng theo �� l� t�ng l�n.")
		AddNumText( sceneId, x001085_g_scriptId, "Th�n Kh� Luy�n H�n", 6, 1 )
		AddNumText( sceneId, x001085_g_scriptId, "T�i Luy�n Th�n Kh�", 6, 2 )
		AddNumText( sceneId, x001085_g_scriptId, "��c #GTh��ng C� Th�n Kh�", 6, 3 )
		AddNumText( sceneId, x001085_g_scriptId, "#GT�y M�i Thu�c T�nh Th�n Kh�", 6, 4 )
		AddNumText( sceneId, x001085_g_scriptId, "#GTh�n Khi Thay бi Ngo�i H�nh", 6, 5 )
		AddNumText( sceneId, x001085_g_scriptId, "V� Th�n Kh� Luy�n H�n", 11, 9 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x001085_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
	if key == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
	
	if key == 2 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
	
	if key == 3 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 3 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
	
	if key == 4 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 4 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19831114 )
	end
	
	if key == 5 then
		BeginUICommand( sceneId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1020001 )
	end
	
	if key == 9 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{SQSJ_0708_01}")
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

--**********************************
--
--**********************************
function x001085_OnMissionSubmit(sceneId,selfId,targetId,x001085_g_scriptId,ItemID)
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"H�y s�p x�p 1 � tr�ng trong t�i ��o c�.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,"Ch�c m�ng ng߽i �� nh�n ���c #G"..GetItemName(sceneId,ItemID).."#W.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
end

--**********************************
--
--**********************************
function x001085_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end