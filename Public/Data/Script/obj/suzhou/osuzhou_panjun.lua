--T� Ch�uNPC
--�˿�
--m�t ��

x001040_g_scriptId = 001040

--��ӵ��to� � �¼�ID�б�
x001040_g_eventList={800115}

--**********************************
--�¼��б�
--**********************************
function x001040_UpdateEventList( sceneId, selfId,targetId )
	
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	--AddText(sceneId,"  �Գ�޽�����,ֻ���������to� � ���,��ȷ��ҪM� ra ��ɱô,��ô��Ҳ���ܵ�����to� � �ͷ�.")	
	for i, eventId in x001040_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
	end
	
	AddNumText( sceneId, x001040_g_scriptId, "Gi�i thi�u quy�t �u", 11, 10 )
	
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x001040_OnDefaultEvent( sceneId, selfId,targetId )
	x001040_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001040_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 10 then
			BeginEvent(sceneId)	
					
				AddText( sceneId, "#{function_help_068}" )
								
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

	for i, findId in x001040_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
end
