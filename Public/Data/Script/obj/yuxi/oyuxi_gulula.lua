--ÓñÏªNPC
--¹ÅÂ³À­
--ÆÕÍ¨

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x027002_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Lão già ğó t× trß¾c t¾i nay không bao gi¶ quan tâm ğªn vş con, mµt lòng chï nghî ğªn con mø La B¯c ğó. #r#r, Ôi, nh¾ lÕi h°i xßa ğàn ông theo ğu±i ta ğu±i ği không hªt, sao ta lÕi ch÷n mµt lão già nhß v§y chÑ!")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end
