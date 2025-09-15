
x045022_g_scriptId = 045022

function x045022_OnDefaultEvent( sceneId, selfId, targetId )	
	BeginEvent(sceneId)
		AddText(sceneId,"Ch�o m�ng c�c h� �n v�i th� gi�i Thi�n Long B�t B�, ta l� s� gi� do GM g�i �n � tri�n khai c�c s� ki�n.")
		-- AddNumText( sceneId, x045020_g_scriptId, "Quy бi Nguy�n B�o", 2, 1 )
		AddNumText( sceneId, x045022_g_scriptId, "R�i �i", 8, 0 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045022_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	
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
function x045022_OnMissionSubmit(sceneId,selfId,targetId,x045022_g_scriptId,ItemID)
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
function x045022_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end