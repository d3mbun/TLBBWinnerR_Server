--Tinh TúcNPC
--ÆÕÍ¨µÜ×Ó
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x016030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Mu¯n bình an ra vào Tinh Túc Häi, không có chút l¾n gan thì không ğßşc. Nªu ngß½i nhát gan c¥n sñ giúp ğŞ, hãy tìm Tri khách ğ® tØ g¥n ĞÕi môn giúp ğŞ.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
