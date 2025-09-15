--´óÀíNPC
--ÕäÊŞÃ¨
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002066_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local roll = random(0,2)
	if roll <= 0 then
			AddText(sceneId,"  Vân Phi Phi tÖ tÖ là th¥n tßşng cüa t¤t cä trân thú chúng ta. Phi Phi, ta yêu tÖ, nhß chuµt yêu gÕo!")
	elseif roll <= 1 then
			AddText(sceneId,"  Ğ×ng tß·ng r¢ng chúng ta không biªt nói, Phi Phi tÖ tÖ ğã dÕy chúng ta t× lâu r°i. Không tin, chúng ta thØ thi ğ÷ xem sao")
	else
			AddText(sceneId,"  Các hÕ biªt không? Nghe nói Phi Phi tÖ tÖ có 2 ch¸ em, gi¯ng h®t nhau")
	end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
