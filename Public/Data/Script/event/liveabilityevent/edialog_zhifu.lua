--�Ի��¼� npc��ӱ��

--�ű���
x713617_g_ScriptId = 713512

--�Ի�����
x713617_g_dialog = {"N�u c�c h� c� m�t t�m h�n thanh cao, s� th�y h�i thu�c l� c�ng vi�c ��ng m�n, c�m theo chi�c li�m nh�, lang thang trong n�i c�ng b� b�n v�i m�i h߽ng v� ti�ng chim, trong kho�nh kh�c ph�t hi�n ra c�y thu�c qu�, c�m gi�c h�nh ph�c �� kh�ng ph�i ng߶i n�o c�ng c� ���c, b�i v� nh�ng ng߶i �� trong l�ng ch� bi�t �n ti�n, vi�c t�t �p �n m�y trong m�t h� c�ng ch� c� ngh�a l� ��ng nhi�u ti�n h�n",
			"C�u n�i th� hai",
			"Ch� c�n huynh h�c k� n�ng tr�ng tr�t l� c� th� tr�ng ngay. T�t nhi�n, ��ng c�p c�a huynh c�ng cao, ch�ng lo�i c�y ���c tr�ng c�ng nhi�u",
			"Ch� c�n h�c ���c k� n�ng tr�ng tr�t, t�i m�t m�nh ru�ng ch�a tr�ng tr�t, h�i ng߶i coi ru�ng, r�i l�a ch�n gi�ng c�y tr�ng l� ���c",
			"Sau khi b�t �u tr�ng tr�t, s� nh�n th�y tr�n �ng hi�n ra nh�ng m�m non, c�c h� c� th� tranh th� �i l�m vi�c kh�c, kh�ng c�n ph�i tr�ng coi. Nh�ng ��ng qu�n sau 40 ph�t ph�i quay l�i thu ho�ch, n�u qu� 50 ph�t ng߶i kh�c s� thu ho�ch m�t c�a c�c h�."}
x713617_g_button = {"���c r�i, ���c r�i, n�i g� th�c t� �i",
			"T�i h� l�m th� n�o � tr�ng tr�t ���c?",
			"Sau �� th� sao?",
			"Thu ho�ch ra sao?",
			}

--**********************************
--������ں���
--**********************************
function x713617_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNum��ng�Ի����,���ڵ��ò�ͬ�Ի�
		BeginEvent(sceneId)
			AddText(sceneId, x713617_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713617_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--�о��¼�
--**********************************
function x713617_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713617_g_ScriptId,"T�i h� mu�n t�m hi�u tr�ng tr�t",11,-1)
end

--**********************************
--���Ti�p th�����
--**********************************
function x713617_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x713617_OnAccept( sceneId, selfId, AbilityId )
end
