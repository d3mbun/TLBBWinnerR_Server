--Ã·ÁëNPC
--ÉÌ¶Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x033010_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Ğµi buôn d×ng lÕi Mai Lînh ğã khá nhi«u ngày, hàng hóa bán g¥n hªt cä, chuyªn này ği m÷i ngß¶i chia ğßşc không ít. #r#rÔng chü Th¦m quä là mµt thiên tài kinh doanh, ği buôn cùng ông ¤y quä là phúc ph§n t× kiªp trß¾c.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
