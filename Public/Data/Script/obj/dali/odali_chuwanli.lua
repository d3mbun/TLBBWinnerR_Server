--´óÀíNPC
--ñÒÍòÀï
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002011_OnDefaultEvent( sceneId, selfId,targetId )
    local  PlayerName=GetName(sceneId,selfId)	
	local  PlayerSex=GetSex(sceneId,selfId)
	if PlayerSex == 0 then
		PlayerSex = " cô nß½ng "
	else
		PlayerSex = " các hÕ "
	end
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu¯n luy®n võ công t¯t, tr· thành hµ v® hoàng gia nhß chúng ta không? "..PlayerName..PlayerSex..", ngß½i có th¬ bái mµt trong cØu ğÕi môn phái, Ngû Hoa Ğàn có ngß¶i chï dçn cüa cØu ğÕi môn phái, ngß½i hãy t¾i các ğÕi môn phái xem, không ch×ng có thu hoÕch b¤t ng¶")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
