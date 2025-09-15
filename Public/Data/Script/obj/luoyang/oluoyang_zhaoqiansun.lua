--LÕc Dß½ngNPC
--ÕÔÇ®Ëï
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000025_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ngß½i cûng t¾i Bách Mã Tñ bái Ph§t phäi không? Ph§t t± · ðây linh l¡m. M¤y ngày trß¾c, ti¬u Quyên ðã gØi thß cho ta, nh¤t ð¸nh do thành tâm cüa ta ðã khiªn Ph§t t± cäm ðµng..")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
