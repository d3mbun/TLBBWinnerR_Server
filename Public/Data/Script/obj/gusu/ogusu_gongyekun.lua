--Ľ��NPC
--��ұ��
--��ͨ

x009044_g_scriptId = 009044

--**********************************
--�¼��������
--**********************************
function x009044_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_27}")
		AddNumText(sceneId,x009044_g_scriptId,"T�ng Th� Th�y C�c",10,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009044_OnEventRequest( sceneId, selfId, targetId, eventId )
	if	GetNumText()==0	then
		if	GetLevel( sceneId, selfId)<81  then	
			BeginEvent( sceneId )
			local strText = "Kh�ng ���c coi th߶ng l� kh� ��, ta th�y ng߽i n�n ��i v��t qua c�p 81 h�ng quay l�i t�m ta"
			AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchEventList(sceneId,selfId,targetId)
		else
			CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 200,31,158)
		end
	end
end