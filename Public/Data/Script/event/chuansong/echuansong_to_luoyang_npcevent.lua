--�¼�
--���͵�����

--�ű���
x400919_g_ScriptId = 400919

--�����ı�����
x400919_g_MissionName="V� L�c D߽ng"
x400919_g_MissionInfo="Y�n m�n Lan L�ng qu�n l� n�i Li�u qu�c th߶ng v�n t�ng l߽ng th�o �i ngang qua, hi�n gi� tr�n �߶ng xu�t hi�n r�t nhi�u Th�o Nguy�n Lang, khi c� ng߶i gi�t h�t Th�o Nguy�n Lang � Y�n m�n th� m�i d�m ra ngo�i v�n chuy�n th�o li�u. "  --��������
x400919_g_MissionTarget="Gi�t ch�t 5 con Th�o Nguy�n Lang"		--����Ŀ��
x400919_g_ContinueInfo="C� ph�i c�c h� �� gi�t 5 con Th�o Nguy�n Lang kh�ng? B�n n� � ph�a nam th�n, �i 1 ch�t s� th�y. C�n th�n, b� 1 b�y Th�o Nguy�n Lang bao v�y xung quanh th� c�c h� s� �i �i �y. "		--δ��������npc�Ի�
x400919_g_MissionComplete="C�m �n, ch�ng t�i cu�i c�ng c�ng �� d�m ra kh�i c�a r�i"					--�������npc˵���Ļ�

--**********************************
--��ں���
--**********************************
function x400919_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 0, 159, 240)
end

--**********************************
--�о��¼�
--**********************************
function x400919_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x400919_g_ScriptId,x400919_g_MissionName)
end
