--ÓñÏªNPC
--Ë÷Ä·À­
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x027001_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Lão phu nåm ¤y trë trung cß¶ng tráng, t×ng làm mµt ông Th¥n Chung QuÏ biªt b¡t chuµt cho Th¦m ğÕi nhân xem. Không biªt là các hÕ th¤y ğ©p th§t hay c¯ tình bêu giªu ta, chuy®n này ğã ğßşc các hÕ ghi chép trong Mµng khê bút ğàm. Bây gi¶ nhìn lÕi ông Th¥n Chung QuÏ ğó, th¤y chÆng khác gì ğ° ch½i cüa trë con...")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
