--LÕc Dß½ngNPC
--Òµ¿Õ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000095_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Thí chü, cu¯i cùng các hÕ ðã t¾i. Sß phø ðang ðþi các hÕ")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
