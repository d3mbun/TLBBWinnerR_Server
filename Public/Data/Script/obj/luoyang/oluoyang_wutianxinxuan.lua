--LÕc Dß½ngNPC
--ÎäÌïÐÅÐþ
--ÆÕÍ¨

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000048_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  ÐÕi T¯ng có r¤t nhi«u ði«u ðáng cho chúng tôi h÷c höi, ð£c bi®t là <<Tôn TØ binh pháp>>, qua ÐÕi hµi túc c¥u này hy v÷ng hai nß¾c có th¬ giao lßu trao ð±i nhi«u v¾i nhau")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
