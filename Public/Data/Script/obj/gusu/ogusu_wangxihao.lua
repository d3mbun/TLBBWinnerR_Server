--Ľ��NPC  ѧϰĥ��������
--��Ϧ�
--��ͨ

--�ű���
x009043_g_ScriptId = 009043

--��ӵ�е��¼�
--estudy_molishu= 713521
--elevelup_molishu = 713580
--edialog_molishu = 701615

--��ӵ�е��¼�ID�б�
x009043_g_eventList={713521,713580,701615}	

--**********************************
--�¼��б�
--**********************************
function x009043_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#{GUSU_MENPAI_38}")
	for i, eventId in x009043_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	AddNumText( sceneId, x009043_g_ScriptId, "Gi�i thi�u ma thu�t", 11, 100 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x009043_OnDefaultEvent( sceneId, selfId,targetId )
	x009043_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009043_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 100 then
		BeginEvent( sceneId )
			AddText(sceneId,"#{GUSU_MENPAI_39}")
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	for i, findId in x009043_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, GetNumText(),x009043_g_ScriptId )
			return
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x009043_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009043_g_eventList do
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
--�ܾ���NPC������
--**********************************
function x009043_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x009043_g_eventList do
		if missionScriptId == findId then
			x009043_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x009043_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009043_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x009043_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009043_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x009043_OnDie( sceneId, selfId, killerId )
end
