--Ti�u DaoNPC
--�����ӳ�
--��ͨ

x014035_g_scriptId = 014035

--**********************************
--�¼��������
--**********************************
function x014035_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"G�n ��y trong l�c v� � ta �� t�m ���c X�o t��ng K� th� n�y, l�m theo trong s�ch, qu� nhi�n �� t�o ra Thi�n C� Kh�i L�i. T�nh n�ng c�a ch�ng phi th߶ng, d߶ng nh� c� th� suy ngh�, c� mu�n th� ki�n th�c kh�ng?")
		AddNumText(sceneId,x014035_g_scriptId,"�i th� ki�n th�c Thi�n C� Kh�i L�i",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x014035_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<81  then	
			BeginEvent( sceneId )
			local strText = "��ng coi th߶ng k� ngh� C�ng D� T� Tr߷ng c�a ta, ��ng c�p ch�a ��t �n c�p 81, ta s� kh�ng � cho ng߽i nh�n th�y Thi�n C� Kh�i L�i ��u."
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 144,51,129)
		end
	end
end
