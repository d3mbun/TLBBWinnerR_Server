--Thiên LongNPC
--ºÎºìç±
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x013012_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  B±n Tß¾ng ðÕi sß g¥n ðây luôn nh¡c v¾i ta v« 1 h§u b¯i cüa ông. Ngß¶i ðó chính là chính là cháu trai cüa Hoàng Thßþng, tên là Ðoàn Dñ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
