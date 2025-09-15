--Ľ��ɽׯNPC
--Ľ��ʤ
--��ͨ

--��ӵ�е��¼�ID�б�
x009037_g_eventList={229014,240000,240001,240002,240003,240004,240005,240006,240007,240008,240009,240010,240011,240012,240020,228905,050061}
--**********************************
--�¼��������
--**********************************
function x009037_UpdateEventList( sceneId, selfId,targetId )	
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_36}")
		CallScriptFunction( x009037_g_eventList[1], "OnEnumerate",sceneId, selfId, targetId )
		CallScriptFunction( 228905, "OnEnumerate",sceneId, selfId, targetId )
		CallScriptFunction( 229011, "OnEnumerate",sceneId, selfId, targetId, MP_GUSU )
		CallScriptFunction( 050025, "OnEnumerate",sceneId, selfId, targetId )
		CallScriptFunction( 050061, "OnEnumerate",sceneId, selfId, targetId )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x009037_OnDefaultEvent( sceneId, selfId,targetId )
	x009037_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009037_OnEventRequest( sceneId, selfId, targetId, eventId )

	if eventId == 229011 then
		CallScriptFunction( 229011, "OnDefaultEvent",sceneId, selfId, targetId, MP_GUSU, GetNumText() )
		return
	elseif eventId == 050025 then
    CallScriptFunction( 050025, "OnDefaultEvent",sceneId, selfId, targetId, MP_GUSU)
		return
	elseif eventId == 050061 then
		CallScriptFunction( 050061, "OnDefaultEvent",sceneId, selfId, targetId,MP_GUSU)
		return
	end

	for i, findId in x009037_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x009037_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009037_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId)
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x009037_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x009037_g_eventList do
		if missionScriptId == findId then
			x009037_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x009037_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009037_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x009037_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009037_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x009037_OnDie( sceneId, selfId, killerId )
end

--**********************************
--�ύ��Ʒ
--**********************************
function x009037_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
	for i, findId in x009037_g_eventList do
		if scriptId == findId then
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
			return
		end
	end
end