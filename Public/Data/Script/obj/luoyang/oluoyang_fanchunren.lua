--L�c D߽ngNPC
--������
--�������
--�ű���
x000030_g_scriptId = 000030

--��ӵ��to� � �¼�ID�б�
x000030_g_eventList={600000}

--**********************************
--�¼��������
--**********************************
function x000030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu�n s�ng l�p bang h�i th� �n t�m t�i h� nh�!")
	
		if GetHumanGuildID(sceneId, selfId) == -1 then
			AddNumText(sceneId,x000030_g_scriptId,"#GTho�t ly T�m Ho�i C� Ch�",4,999)	
		end
	
		AddNumText( sceneId, x000030_g_scriptId, "Gi�i thi�u bang h�i v� l�nh �a", 11, 10 )
	
		AddNumText(sceneId,x000030_g_scriptId,"Xem danh m�c bang h�i",6,2)	
		if IsShutout( sceneId, selfId, ONOFF_T_GUILD ) == 0 then
			AddNumText(sceneId,x000030_g_scriptId,"S�ng l�p bang h�i",6,1)
		end
		AddNumText(sceneId,x000030_g_scriptId,"Qu�n l� th�ng tin h�i vi�n",6,3)
		AddNumText(sceneId,x000030_g_scriptId,"Xem th�ng tin bang h�i",6,4)
		if(GetHumanGuildID(sceneId, selfId) ~= -1) then
			if IsShutout( sceneId, selfId, ONOFF_T_CITY ) == 0 then
				AddNumText(sceneId,x000030_g_scriptId,"��ng k� th�nh ph�",6,5)
			end
			if(CityGetSelfCityID(sceneId, selfId) ~= -1) then
				AddNumText(sceneId,x000030_g_scriptId,"V�o th�nh ph� c�a b�n bang",9,6)
			end
		end
		AddNumText(sceneId,x000030_g_scriptId,"Li�n quan � ph�n vinh c�a bang ph�i",11,11)
		AddNumText(sceneId,x000030_g_scriptId,"Gi�i thi�u аng Minh",11,12)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000030_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 999 then
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 59) == 1 then
			LuaFnCancelSpecificImpact(sceneId, selfId, 59)
			BeginEvent(sceneId)	
				AddText( sceneId, "C�c h� kh�ng c�n tr�ng th�i #GT�m Ho�i C� Ch�" )		
				AddText( sceneId, "N�u v�n kh�ng th� gia nh�p bang h�i, h�y ��ng nh�p l�i tr� ch�i!" )		
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)	
				AddText( sceneId, "C�c h� kh�ng c�n tr�ng th�i #GT�m Ho�i C� Ch�" )		
				AddText( sceneId, "N�u v�n kh�ng th� gia nh�p bang h�i, h�y ��ng nh�p l�i tr� ch�i!" )		
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end
	
	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_069}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	if GetNumText() == 11 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{Guild_Boom_Help}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	if GetNumText() == 12 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{TM_20080331_07}".."#{TM_20080320_02}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	local sel = GetNumText();
	for i, eventId in x000030_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId, sel)
	end
end
