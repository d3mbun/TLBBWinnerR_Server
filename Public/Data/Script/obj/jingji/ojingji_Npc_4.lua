-- 125014
-- ����װ��

--�ű���
x125014_g_scriptId = 125014

--��ӵ�е��¼�ID�б�
x125014_g_eventList={}

--**********************************
--�¼��б�
--**********************************
function x125014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"ta c� th� s�a ���c t�t c� trang b� t� c�p 40 tr� l�n, b�t k� l� v� kh�, ph�ng c� hay � trang s�c. Nh�ng c�ng ch�nh v� n�m ta ng�c ngh�, c�i g� c�ng th�ch n�n kh�ng tinh th�ng ri�ng m�n n�o. V� th� m�c � th�nh c�ng thi ta s�a ch�a c�ng ch�a ���c 100%")
		AddNumText(sceneId,x125014_g_scriptId,"Ta c�n s�a trang b�",6,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x125014_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )	
	end
end

