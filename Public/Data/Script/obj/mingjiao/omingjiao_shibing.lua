--Minh GiáoNPC
--Ê¿±ø
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x011010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"Quang Minh ğïnh là ğ¤t c¤m. Không ğßşc chÕy lung tung! C¦n th§n lÕc ğß¶ng!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
