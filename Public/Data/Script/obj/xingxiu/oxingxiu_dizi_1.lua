--Tinh T�cNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x016030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu�n b�nh an ra v�o Tinh T�c H�i, kh�ng c� ch�t l�n gan th� kh�ng ���c. N�u ng߽i nh�t gan c�n s� gi�p ��, h�y t�m Tri kh�ch � t� g�n ��i m�n gi�p ��.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
