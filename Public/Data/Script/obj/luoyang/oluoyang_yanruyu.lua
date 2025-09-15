-- 000131
-- 
--�ű���
x000131_g_scriptId = 000131

--��ӵ��to� � �¼�ID�б�
x000131_g_eventList = { 805029, 805030 }

--**********************************
--�¼��������
--**********************************
function x000131_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"   T�c ng� n�i, t߾ng do tr�i sinh, kh�ch quan �i v�i di�n m�o c�a b�n th�n �� �ng � ch�a, c� mu�n l�m ch�t thay �i kh�ng?")
		AddNumText( sceneId, x000131_g_scriptId, "Gi�i thi�u s�a dung m�o", 11, 10 )
		AddNumText(sceneId,x000131_g_scriptId,"S�a dung m�o",6,1)
		AddNumText( sceneId, x000131_g_scriptId, "Gi�i thi�u thay �i h�nh bi�u t��ng nh�n v�t", 11, 14 )
		AddNumText(sceneId,x000131_g_scriptId,"Thay �i h�nh bi�u t��ng nh�n v�t",6,4)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x000131_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 10 then
		BeginEvent(sceneId)	
			AddText( sceneId, "#{function_help_088}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if GetNumText() == 14 then
		BeginEvent(sceneId)	
			AddText( sceneId, "#{INTERHEAD_XML_008}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if GetNumText() == 1 then
		-- �޸�����
		CallScriptFunction( 805029, "OnEnumerate",sceneId, selfId, targetId )
		return
	end
	if GetNumText() == 4 then
		-- Thay �i h�nh bi�u t��ng nh�n v�t
		CallScriptFunction( 805030, "OnEnumerate",sceneId, selfId, targetId )
		return
	end
	
end
