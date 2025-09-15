--Nam HäiNPC
--ÔÀÖÙÇï
--ÆÕÍ¨

--½Å±¾ºÅ
x034003_g_ScriptId = 34003

--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x034003_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"  Th¶i trß¾c, NgÕc ngß bang cûng r¤t t¯t, chï có hành ğµng h½i kiêu cång mà thôi, chßa t×ng làm vi®c gì quá x¤u. Nhßng d¥n d¥n, chÆng biªt t× ğâu, b÷n nhóc ğó b¡t ğ¥u su¯t ngày gây h÷a, làm sai còn không ch¸u nh§n, ôi... th§t là nghi®p chß¾ng..")
		
		-- Èç¹ûÍæ¼ÒÉíÉÏÓĞ¡°³¤°×¡ª¡ª¡ª¡ªÌìÑÄº£½Ç¡±,Cái này ÈÎÎñ, có th¬ · ÕâÀï ğÕt ğßşcµÀ¾ß
		if IsHaveMission(sceneId,selfId,568) > 0 then
			-- ÅĞ¶¨Íæ¼ÒÉíÉÏĞúng²»ĞúngÓĞÎïÆ·ÁË 
			local itemCount
			itemCount = GetItemCount( sceneId, selfId, 40001039 )
			if itemCount < 1   then
				AddNumText(sceneId,x034003_g_ScriptId,"Ğßşc mµt miªng vö cây gi¯ng lÕ",7,666);
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x034003_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if	GetNumText()==666	then
		local itemCount
		itemCount = GetItemCount( sceneId, selfId, 40001039 )
		if itemCount < 1   then
			BeginAddItem( sceneId )
				AddItem( sceneId, 40001039, 1 )
			local ret = EndAddItem( sceneId, selfId )
			if ret <= 0 then 
				--ÌáÊ¾²»ÄÜ½ÓÈÎÎñÁË
				Msg2Player(  sceneId, selfId,"#Yhành Trang nhi®m vø#W cüa các hÕ ğã ğ¥y.", MSG2PLAYER_PARA )
			else
				AddItemListToHuman(sceneId,selfId)
			end
		end
	end
end


