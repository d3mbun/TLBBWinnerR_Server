--Thiên LongNPC
--¿ÝÈÙ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x013000_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  A Di Ðà Ph§t! Hæu thß¶ng vô thß¶ng, song thø khô dung, Nam B¡c Ðông Tây, phi giä phi không!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
