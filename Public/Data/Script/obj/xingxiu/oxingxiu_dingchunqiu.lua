--Tinh T�cNPC
--������
--Thi�n S�n аng L�o
--��ͨ

x016000_g_scriptId = 016000        
x016000_g_eventList={229009,229012,808092}

--**********************************
--�¼��������
--**********************************
function x016000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  L�o phu v�n lu�n c�m th�y r�ng, ng߶i trong giang h� d�ng dao b�a ki�m th߽ng ch�m gi�t l�n nhau, qu� th�t l� m�t vi�c t�n nh�n v� c�ng. N�u c� th� d�ng �c �� th߽ng ng߶i, m�i c� th� khi�n cho h� ch�t trong s� b�nh y�n, an nh�n, h�nh ph�c, vui v�. Cho n�n еc c�ng th�t l� m�t v� c�ng c�ng ��c v� l��ng.")
		
		for i, eventId in x016000_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x016000_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x016000_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_XINGSU )
			return
		end
	end
end
