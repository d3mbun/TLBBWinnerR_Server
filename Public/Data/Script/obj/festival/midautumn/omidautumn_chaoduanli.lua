-- ����NPC
-- �˶���

x050004_g_scriptId = 050004

--**********************************
--�¼��������
--**********************************
function x050004_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Tr�ng v�o ��m trung thu, c�c k� tr�n �y. S�ng tr�i cu�n l�y ��a v�ng. 36 th�m cung, v�n r�m l�n xem. S߽ng th�m ߾t t�c m�y, kh� v߽n tay ng�c l�nh. B�nh th߶ng l� n�o ch�ng Thuy�n Quy�n. Th�u ��m l�ng l�, th�ng n�m t�n"
		AddText( sceneId, "B�i h�t Nam" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end