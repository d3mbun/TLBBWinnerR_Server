--���ض�һ�����NPC
--Ҧ��Ҧ����Ҧ����Ҧ�١�Ҧ��
--ҩ��

--**********************************
--�¼��������
--**********************************
function x039001_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  B�o t�ng �ng v� s� b�o v�t, nh�ng c�ng nguy hi�m v�n ph�n, ��i hi�p ng߽i ph�i chu�n b� chu ��o �y!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
