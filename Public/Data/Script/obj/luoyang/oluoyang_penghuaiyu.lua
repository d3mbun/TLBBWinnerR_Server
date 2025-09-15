--L�c D߽ngNPC
--����
--��ͨ

x000110_g_scriptId = 000110
x000110_g_eventList={500621, 500622, 500623}
--**********************************
--�¼��������
--**********************************
function x000110_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )

		AddText( sceneId, "    Ng߽i c� th� �em m�y vi�n B�o Th�ch gi�ng nhau h�p th�nh 1 vi�n B�o Th�ch cao h�n 1 c�p, �em nguy�n li�u c�a m�y vi�n c�p th�p h�p th�nh 1 nguy�n li�u cao h�n 1 c�p, c�ng c� th� khoan l� kh�m B�o Th�ch l�n trang b�, c�ng c� th� g� b� B�o Th�ch" )
		for i, eventId in x000110_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
		AddNumText( sceneId, x000110_g_scriptId, "Gi�i thi�u t�nh n�ng B�o Th�ch", 11, 0 )
		AddNumText( sceneId, x000110_g_scriptId, "Gi�i thi�u v� k�t h�p nguy�n li�u", 11, 20 ) -- add by cuiyinjie 20081021
		AddNumText( sceneId, x000110_g_scriptId, "B�o Th�ch H�p Th�nh", 6, 1 )
		AddNumText( sceneId, x000110_g_scriptId, "Trang b� khoan", 6, 2 )
		AddNumText( sceneId, x000110_g_scriptId, "Th�o g� B�o Th�ch", 6, 3 )
		AddNumText( sceneId, x000110_g_scriptId, "Nguy�n li�u h�p th�nh", 6, 4 )
		AddNumText( sceneId, x000110_g_scriptId, "Kh�m B�o Th�ch", 6, 5 )
		AddNumText( sceneId, x000110_g_scriptId, "�i�u Tr�c", 6, 6 )
		AddNumText( sceneId, x000110_g_scriptId, "B�o Th�ch Dung Luy�n", 6, 7 )

	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000110_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )

	for i, findId in x000110_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId, targetId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId, missionScriptId )
			end
			return
		end
	end
end

function x000110_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x000110_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

function x000110_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x000110_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x000110_OnEventRequest( sceneId, selfId, targetId, eventId )
		for i, findId in x000110_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
				return
			end
		end
		---------------------------����-------------------------------------------------

		if GetNumText() == 0 then
			BeginEvent(sceneId)	
			
				AddText(sceneId,"#{function_help_054}#r")
			
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u trang b� khoan",11,8);
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u h�p th�nh B�o Th�ch",11,9);
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u kh�m B�o Th�ch",11,10);
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u th�o g� B�o Th�ch",11,11);
--				AddNumText(sceneId, x000110_g_scriptId,"װ���������",11,12);
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u �i�u tr�c B�o Th�ch",11,13);
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u v� B�o Th�ch Dung Luy�n",11,14);
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u v� Th�ng L�i B�o Th�ch",11,15);

			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		-- addstart 2008-10-21 add by cuiyinjie
		if GetNumText() == 20 then  -- add by cuiyinjie ���Ϻϳɽ���
			BeginEvent(sceneId)			
				AddText(sceneId,"#{SJSJ_081021_001}#r")
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u v� thao t�c Tinh Thi�t",11,21);
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u v� thao t�c B� Ng�n",11,22);
				AddNumText(sceneId, x000110_g_scriptId,"Gi�i thi�u v� thao t�c Mi�n B�",11,23);
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if GetNumText() == 21 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_004}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 22 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_005}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 23 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{SJSJ_081021_006}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		-- addend 2008-10-21 
		
		if GetNumText() == 8 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_039}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 9 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_040}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 10 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_041}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 11 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_042}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 12 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_043}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 13 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{INTERFACE_XML_GemCarve_6}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end	
		if GetNumText() == 14 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{JKBS_081021_022}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		if GetNumText() == 15 then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{JKBS_081021_023}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end


		--------------------------------------------------------------------------
		if GetNumText() == 1 then
			-- BeginUICommand( sceneId )
			-- UICommand_AddInt( sceneId, targetId )
			-- EndUICommand( sceneId )
			-- DispatchUICommand( sceneId, selfId, 23 )
			
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, 1 )
				EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1019001 )
			return
		end

		if GetNumText() == 2 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 25 )
			return
		end

		if GetNumText() == 3 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 27 )
			return
		end

		if GetNumText() == 4 then
			-- BeginUICommand( sceneId )
			-- UICommand_AddInt( sceneId, targetId )
			-- EndUICommand( sceneId )
			-- DispatchUICommand( sceneId, selfId, 19810424 )
			
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, 1 )
				EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1001001 )
			return
		end

		if GetNumText() == 5 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19830424 )
			return
		end

		if GetNumText() == 6 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 112236 )
			return
		end

		if GetNumText() == 7 then
			BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 112237 )
			return
		end

end

function x000110_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end