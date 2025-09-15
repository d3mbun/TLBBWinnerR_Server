-- ´óÀíNPC
-- ÁõÖÙ¸¦

x002092_g_scriptId = 002092

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x002092_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		AddText( sceneId, "    Lßu m² h÷c KÏ ğªn nay ğã ğßşc 52 nåm, chßa t×ng g£p ğ¯i thü. Chï là vài nåm trß¾c, ta thua dß¾i tay 1 v¸ Ly S½n Tiên Lão, lúc ğó m¾i biªt thiên ngoÕi hæu thiên, nhân thßşng hæu nhân." )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
