--ÂåÑôNPC
--½ðÁùÒ¯
--ÆÕÍ¨

x000100_g_scriptId 	= 181000
x000100_g_gotoact	 	= 2
x000100_g_YBBTIntro =11     --Ôª±¦°ÚÌ¯½éÉÜ
x000100_g_leave			= 20

--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x000100_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
            AddText(sceneId,"  Hoan nghênh ðã t¾i, v×a nhìn ðã biªt ngay các hÕ là khách quý, ta ðã thông báo cho bên t±ng bµ làm t¯t công vi®c tiªp ðãi r°i, các hÕ gi¶ có mu¯n t¾i t±ng bµ cüa chúng ta không")		
		AddNumText( sceneId, x000100_g_scriptId, "Phía trß¾c là ti«n trang t±ng bµ", 9, x000100_g_gotoact)
		--AddNumText( sceneId, x000100_g_scriptId, "ÔªŒš”[”‚½é½B", 11, x000100_g_YBBTIntro)
		--AddNumText( sceneId, x000100_g_scriptId, "Àë¿ª¡­¡­", -1, x000100_g_leave)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x000100_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == x000100_g_gotoact then
		--NewWorld(sceneId,selfId,181,65,62)
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 181,65,62)
	elseif GetNumText() == x000100_g_YBBTIntro then
	  BeginEvent( sceneId )
			AddText( sceneId, "#{YBBT_081023_2}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	elseif GetNumText() == x000100_g_leave then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end
