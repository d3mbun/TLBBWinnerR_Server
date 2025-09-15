--Ã·ÁëNPC
--ÉòÍòÈı
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x033001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Không ng¶ chuyªn hàng ph¤n son này bán nhanh thª, xem ra l¥n này ğên ğây r¤t ğúng. Ği qua thäo nguyên, Lan Lång qu§n chúa còn khen ngşi hàng cüa ta, ta phäi tính toán kÛ xem chuyªn này kiªm bao nhiêu l¶i...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
