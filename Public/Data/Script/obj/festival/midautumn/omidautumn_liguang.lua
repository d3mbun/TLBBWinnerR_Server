 -- ����NPC
-- ���

x050005_g_scriptId = 050005

--**********************************
--�¼��������
--**********************************
function x050005_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    еc b߾c tr�n tr߶ng ki�u, ��m nay l� Trung thu. ��m kia th�c m�c ta c� s�, �i v� C� �am Ch�u. Gi� ng�ng n߾c l�ng t�a g߽ng, m�y tan tr�ng s�ng nh� ng�y, m�t m�nh vui tr�n thuy�n nh�. C߶i m�t chung r��u, ti�ng n߾c l�n cu�ng ca. Thi�u ni�n m�t thu�, ngh�a kim lan, t�n b�c �u. Nh�n d�m ng�n xa, bu�n ta �� qua ch�c n�m tr߶ng. Mu�n g�p Ng�c ti�u ti�n t�, t�ng cho V߽ng �c k� th�, ch� �߶ng v� B�ng Kh�u. Kh�ng c�n c��i gi�, b�t c�c kh� th�n du"
		AddText( sceneId, "Th�y �i�u ca �u" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
