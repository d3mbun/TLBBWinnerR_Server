-- ����NPC
-- Ⱥ��

x050008_g_scriptId = 050008

x050008_g_festivalwords =
{
	"    Nh�n th�y ph�o b�ng r�i! Ch�c m�ng Trung thu...",
	"    ��m nay b�nh Trung thu tr�n qu�. � kh�ng, � t�i h� l� tr�ng Trung thu tr�n qu�..",
	"    �nh tr�ng �p qu�!",
	"    M�a sao b�ng th�t �p!",
	"    Nh�n ��y n�y! Nh�n ��y n�y! Nh�n ��y n�y!",
	"    L�p la l�p l�nh s�ng tr�ng, c� b�u tr�i to�n b�nh trung thu nho nh�",
	"    N�m nay Trung thu kh�ng nh�n l�, nh�n l� kh�ng nh�n b�nh trung thu!",
	"    Mong cho ng߶i b�n l�u, ng�n d�m c�ng quy�n luy�n..",
	"    Gi� ��ng ��m v� hoa ng�n c�y, th�i r�ng, sao nh� m�a..",
	"    Tr�ng l�n �u c�nh li�u, h�n ng߶i sau ho�ng h�n..",
	"    B�nh Trung thu n�y c�a t�i l� nh�n t�o nghi�n, c�c h� c� mu�n th� m�t c�i?",
	"    B�nh Trung thu n�y c�a t�i l� nh�n b�c h�, c�c h� c� mu�n th� m�t c�i?",
	"    Ng߽i c� b�nh Trung thu nh�n �u nghi�n kh�ng? Ta th�m �n qu�..",
	"    Ng߽i c� b�nh Trung thu nh�n long nh�n kh�ng? Ta mu�n �n qu�..",	
	"    Tr�ng tr�n l�i tr�n treo gi�a tr�i nh� ��a ng�c. N�u m�t tr�ng h�a b�nh Trung thu, t�t nh�t l� c� nh�n �u nghi�n!",
	"    Tr�ng s�ng l�i s�ng, treo gi�a tr�i cao kh�ng ch�u xu�ng, n�u tr�ng h�a th�nh b�nh Trung thu, t�t nh�t v�n l�... xu�ng ���c ��y!",
	"    Tr�n tr�i tr�ng tr�n th�! S�ng th�!",
	"    Ng߽i th�ch �n b�nh Trung thu m�n hay l� ng�t?",
	"    Nh�n xem, nh�n xem, bao nhi�u ch�ng �p trai �n T�y H� th߷ng tr�ng k�a!",
	"    Nh�n xem, nh�n xem, bao nhi�u l� m� n� �n T�y H� th߷ng tr�ng k�a!"
}

--**********************************
--�¼��������
--**********************************
function x050008_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = x050008_g_festivalwords[random( getn(x050008_g_festivalwords) )]
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
