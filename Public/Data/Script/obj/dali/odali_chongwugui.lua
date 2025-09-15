--´óÀíNPC
--ÕäÊŞ¹ê
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002067_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"  Vân Diêu Diêu tÖ tÖ là th¥n tßşng cüa t¤t cä trân thú chúng ta. Diêu Diêu, Diêu Diêu, ta yêu tÖ, nhß chuµt yêu gÕo!")
	elseif roll <= 1 then
			AddText(sceneId,"  Ğ×ng tß·ng r¢ng chúng ta không biªt nói, Miêu Miêu tÖ tÖ ğã dÕy chúng ta t× lâu r°i. Không tin, chúng ta thØ thi ğ÷ xem sao")
	else
			AddText(sceneId,"  Các hÕ biªt không? Nghe nói Diêu Diêu tÖ tÖ có 2 ch¸ em, gi¯ng h®t nhau")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
