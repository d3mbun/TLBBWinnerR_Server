--L�c D߽ngNPC
--����
--��ͨ

x000094_g_scriptId = 000094

--**********************************
--�¼��������
--**********************************
function x000094_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
 	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " c� n߽ng "
	else
		PlayerSex = " c�c h� "
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  D߽ng li�u thanh thanh giang thu� b�nh #rV�n lang giang th��ng s߾ng ca thanh #r��ng bi�n nh�t xu�t t�y bi�n v�#r ��o th� v� t�nh kh߾c h�u t�nh.#r"..PlayerName.." "..PlayerSex..", c� th�ch cu�c s�ng ch� l�m uy�n ߽ng kh�ng l�m ti�n kh�ng?")
		AddNumText( sceneId, x000094_g_scriptId, "Nh�n Hi�u �ng V�nh H�ng To�n Gi�i", 2, 1 )
		AddNumText( sceneId, x000094_g_scriptId, "R�i �i", 8, 0 )
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
					AddText(sceneId," Tr�n ng߶i ng߽i �� c� hi�u �ng #PV�nh H�ng To�n Gi�i #Wr�i k�a.")
					AddNumText( sceneId, x000094_g_scriptId, "R�i �i", 8, 0 )
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
			
			
			BeginEvent(sceneId)
				AddText(sceneId," Trong tay n�i c�a ng߽i kh�ng c� #P"..GetItemName(sceneId,10422133).." #W�?")
				AddNumText( sceneId, x000094_g_scriptId, "R�i �i", 8, 0 )
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