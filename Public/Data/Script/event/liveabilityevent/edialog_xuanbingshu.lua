--�Ի��¼� npc��ӱ��

--�ű���
x713614_g_ScriptId = 713512

--�Ի�����
x713614_g_dialog = {"#{event_liveabilityevent_0017}",
			"C�u n�i th� hai",
			"Ch� c�n huynh h�c k� n�ng tr�ng tr�t l� c� th� tr�ng ngay. T�t nhi�n, ��ng c�p c�a huynh c�ng cao, ch�ng lo�i c�y ���c tr�ng c�ng nhi�u",
			"Ch� c�n h�c ���c k� n�ng tr�ng tr�t, t�i m�t m�nh ru�ng ch�a tr�ng tr�t, h�i ng߶i coi ru�ng, r�i l�a ch�n gi�ng c�y tr�ng l� ���c",
			"#{event_liveabilityevent_0018}"}
x713614_g_button = {"���c r�i, ���c r�i, n�i g� th�c t� �i",
			"T�i h� l�m th� n�o � tr�ng tr�t ���c?",
			"Sau �� th� sao?",
			"Thu ho�ch ra sao?",
			}

--**********************************
--������ں���
--**********************************
function x713614_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum��ng�Ի����,���ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713614_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713614_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713614_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713614_g_ScriptId,"T�i h� mu�n t�m hi�u tr�ng tr�t",11,-1)
end

--**********************************
--���Ti�p th�����
--**********************************
function x713614_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713614_OnAccept( sceneId, selfId, AbilityId )
end
