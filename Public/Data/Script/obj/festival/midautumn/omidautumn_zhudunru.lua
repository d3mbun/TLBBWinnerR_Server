-- ����NPC
-- �����

x050006_g_scriptId = 050006

--**********************************
--�¼��������
--**********************************
function x050006_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Y�u ng�m �nh trung thu, t� ng�n x�a �� v�y. #rGi�a s߽ng ng�c gi� v�ng, s�ng trong v�ng v�c. #rN�i n�i �ua v�n r�m, nh� nh� ti�ng nh�c vang. #r��ng ch� l�i quan san, khi�n m�y ng�i chau l�i. #r��a ng�c c� l�, �i�m cam t߽i. #rR��u n�ng ph�t v�ng, tay thon ��a ch�n. #rPh�i bi�t bao ch� ��i, t�n ��m n�y n�m t�i, m߶i hai l�n tr�n khuy�t. #rCh�c g� khi �y ���c s�ng t� nh� tr�ng n�y"
		AddText( sceneId, "Th�y �i�u ca �u" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end