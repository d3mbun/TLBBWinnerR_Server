--Tinh T�cNPC
--�����
--��ͨ

x016035_g_scriptId = 016035

--**********************************
--�¼��������
--**********************************
function x016035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"H�m tr߾c th߽ng long xu�t hi�n tr�n tr�i, Th�n M�c V߽ng ��nh c�a s� ph� ph�t ra ti�ng k�u v� v�, d� ���c v� s� nh�n l�n �n ��y ch�nh l� th�i c� � tu luy�n, c�c h� c� mu�n �i xem kh�ng?")
		AddNumText(sceneId,x016035_g_scriptId,"��nh nh�n � tu luy�n",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x016035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<51  then	
			BeginEvent( sceneId )
			local strText = "Ng߶i trong giang h� b߾c v�o tu luy�n, ph�n l�n �u t� c�p 51 tr� l�n, th�y v� c�ng c�a ng߽i c�ng t�m th߶ng, ta kh�ng d�t ng߽i �i ��u"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 146,91,144)
		end
	end
end
