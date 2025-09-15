--³ÂÓÀÈÊ

--½Å±¾ºÅ
x311001_g_scriptId = 311001

--**********************************
--ÊÂ¼þÁÐ±í
--**********************************
function x311001_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  ÐÕi hi®p, ðã ði xem hµi hoa cüa LÕc Dß½ng chßa? Có nhìn th¤y cô nß½ng Sß Sß không? Nghe nói m²i l¥n hµi hoa cô nß½ng Sß Sß ð«u ðªn xem, ðáng tiªc, tÕi hÕ b§n lo công vø, không có duyên g£p m£t.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x311001_OnDefaultEvent( sceneId, selfId,targetId )
end
