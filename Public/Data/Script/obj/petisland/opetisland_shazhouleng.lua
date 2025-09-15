--ɳ����
--�ű���
x112002_g_scriptId = 112002

--��ӵ��to� � �¼�ID�б�
x112002_g_eventList={ 250000 }	

--**********************************
--�¼��б�
--**********************************
function x112002_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"Khi l�m m�i tr�n th�, y�u c�u tr�n th� b�o b�o c� c�p � d߾i 30.")
	AddText(sceneId,"Khi ti�n h�nh s� ti�u t�n 5 ng�n l��ng!")	
	for i, eventId in x112002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )	
	end
	AddNumText( sceneId, x112002_g_scriptId, "Huy�n V� ��o nh�n gi�i thi�u tr�n th�", 11, 10 )
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x112002_OnDefaultEvent( sceneId, selfId,targetId )
	x112002_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x112002_OnEventRequest( sceneId, selfId, targetId, eventId )


	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_076}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	for i, findId in x112002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x112002_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x112002_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x112002_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
 
end

--**********************************
--�ύ������to� � ����
--**********************************
function x112002_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
 
end

--**********************************
--�����¼�
--**********************************
function x112002_OnDie( sceneId, selfId, killerId )
end

--**********************************
--�������Ti�p th�����
--**********************************
function x112002_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end
