--¶Ô»°ÊÂ¼þ npc°×Ó±Ã÷

--½Å±¾ºÅ
x713617_g_ScriptId = 713512

--¶Ô»°ÄÚÈÝ
x713617_g_dialog = {"Nªu các hÕ có mµt tâm h°n thanh cao, s¨ th¤y hái thu¯c là công vi®c ðáng mªn, c¥m theo chiªc li«m nhö, lang thang trong núi cùng bè bÕn v¾i mùi hß½ng và tiªng chim, trong khoänh kh¡c phát hi®n ra cây thu¯c quý, cäm giác hÕnh phúc ðó không phäi ngß¶i nào cûng có ðßþc, b·i vì nhæng ngß¶i ðó trong lòng chï biªt ðªn ti«n, vi®c t¯t ð©p ðªn m¤y trong m¡t h÷ cûng chï có nghîa là ðáng nhi«u ti«n h½n",
			"Câu nói thÑ hai",
			"Chï c¥n huynh h÷c kÛ nång tr°ng tr÷t là có th¬ tr°ng ngay. T¤t nhiên, ðÆng c¤p cüa huynh càng cao, chüng loÕi cây ðßþc tr°ng càng nhi«u",
			"Chï c¥n h÷c ðßþc kÛ nång tr°ng tr÷t, t¾i mµt mänh ruµng chßa tr°ng tr÷t, höi ngß¶i coi ruµng, r°i lña ch÷n gi¯ng cây tr°ng là ðßþc",
			"Sau khi b¡t ð¥u tr°ng tr÷t, s¨ nhìn th¤y trên ð°ng hi®n ra nhæng m¥m non, các hÕ có th¬ tranh thü ði làm vi®c khác, không c¥n phäi trông coi. Nhßng ð×ng quên sau 40 phút phäi quay lÕi thu hoÕch, nªu quá 50 phút ngß¶i khác s¨ thu hoÕch m¤t cüa các hÕ."}
x713617_g_button = {"Ðßþc r°i, ðßþc r°i, nói gì thñc tª ði",
			"TÕi hÕ làm thª nào ð¬ tr°ng tr÷t ðßþc?",
			"Sau ðó thì sao?",
			"Thu hoÕch ra sao?",
			}

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x713617_OnDefaultEvent( sceneId, selfId, targetId, MessageNum )	--MessageNumÐúng¶Ô»°±àºÅ,ÓÃÓÚµ÷ÓÃ²»Í¬¶Ô»°
		BeginEvent(sceneId)
			AddText(sceneId, x713617_g_dialog[MessageNum])
			if MessageNum ~= 5 then
				AddNumText(sceneId,MessageNum, x713617_g_button[MessageNum],11,-1)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x713617_OnEnumerate( sceneId, selfId, targetId )
		AddNumText(sceneId,x713617_g_ScriptId,"TÕi hÕ mu¯n tìm hi¬u tr°ng tr÷t",11,-1)
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x713617_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x713617_OnAccept( sceneId, selfId, AbilityId )
end
