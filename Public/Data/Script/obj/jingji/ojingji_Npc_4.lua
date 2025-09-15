-- 125014
-- ĞŞÀí×°±¸

--½Å±¾ºÅ
x125014_g_scriptId = 125014

--ËùÓµÓĞµÄÊÂ¼şIDÁĞ±í
x125014_g_eventList={}

--**********************************
--ÊÂ¼şÁĞ±í
--**********************************
function x125014_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"ta có th¬ sØa ğßşc t¤t cä trang b¸ t× c¤p 40 tr· lên, b¤t k¬ là vû khí, phòng cø hay ğ° trang sÑc. Nhßng cûng chính vì nåm ta ng÷c ngh®, cái gì cûng thích nên không tinh thông riêng môn nào. Vì thª mÑc ğµ thành công thi ta sØa chæa cûng chßa ğßşc 100%")
		AddNumText(sceneId,x125014_g_scriptId,"Ta c¥n sØa trang b¸",6,1)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞÒ»Ïî
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

