-- ����NPC
-- ��ͥ��

x050003_g_scriptId = 050003

--**********************************
--�¼��������
--**********************************
function x050003_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Trung thu kh�ng m�a. Say ti�n tr�ng v� r�ng n�i t�y. C߶i h� h�ng ria. C� m�y trung thu nh�n th�y tr�ng. #r#rN�m tr߾c ngo�i s�ng. Nhi n� chuy�n li huynh � h�i. ��m nay l�n l�u. Ti�u T� thanh ca d� b�c �u"
		AddText( sceneId, "B� ch� M�c Lan Hoa" )
		AddText( sceneId, strText )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
