--Ti�u DaoNPC
--��ͨ����
--��ͨ

--**********************************
--�¼��������
--**********************************
function x014030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  C�n th�n trong L�ng Ba еng �y r�y c� quan, ��ng n�n �i v�o trong khu c�m �a. N�u c�c h� c�n s� gi�p ��, m�i �n g�p Tri kh�ch s� � g�n c�a �ng � t�m s� gi�p ��")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
