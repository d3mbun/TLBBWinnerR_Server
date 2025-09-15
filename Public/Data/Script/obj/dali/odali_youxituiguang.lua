-- Áì½±NPC

x002084_g_scriptId = 002084

x002084_g_PrimaryAward = 1
x002084_g_Award2 = 2
x002084_g_Award3 = 3

x002084_g_Intro = 4

x002084_g_NewCard1 = 5
x002084_g_NewCard2 = 6
x002084_g_NewCard3 = 7
x002084_g_NewCard4 = 10
x002084_g_NewCard5 = 11
x002084_g_NewCard6 = 12
x002084_g_NewCard7 = 13
x002084_g_NewCard8 = 14

x002084_g_NewCardIntro = 9
x002084_g_VirtualNew = 30505080

x002084_g_VirtualNew666 = 30504027 --ÔÝÊ±Ã»ÓÐÐé¿¨
x002084_g_ActiveNewCard666 = 51--¼¤»î666²Æ¸»¿¨Ñ¡Ïî

x002084_g_NewCard1_666 = 43
x002084_g_NewCard2_666 = 44
x002084_g_NewCard3_666 = 45
x002084_g_NewCard4_666 = 46
x002084_g_NewCard5_666 = 47
x002084_g_NewCard6_666 = 48
x002084_g_NewCard7_666 = 49
x002084_g_NewCard8_666 = 50

--µç»°ÃÜ±£ÔùÆ··¢·Å"Èó»êµ¤"
x002084_g_eventList={210244, GIFTCODE_SCRIPT_ID} --{210244}	LB JIA Ìí¼Ó210245ÓÚ2008-7-29 10:23:36

--ÔÝÊ±¹Ø±Õµç»°ÃÜ±£ÔùÆ·£¬Áõ¶Ü
--x002084_g_eventList={210244}


--CD-KEY
x002084_g_AwardList = {}
x002084_g_AwardList[x002084_g_PrimaryAward] = {
	needLevel = -1,
	itemAward = { hashTable = {}, itemList = { 10402001, 10422012, 10423020 } },
	moneyReward = 0,
	PropBagSpaceNeed = 3,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetAward0Flag,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng s½ c¤p r°i, ðªn c¤p 30 lÕi ðªn tìm ta",
	recvMsg = "    M¤y món ð° trang sÑc · ðây, lßu lÕc trên giang h° ít nhi«u ð«u c¥n ðªn ngoài ra chõ ti«n này ð«u t£ng cho các hÕ, chúc các hÕ vui vë trong trò ch½i Thiên Long Bát Bµ",
}
x002084_g_AwardList[x002084_g_Award2] = {
	needLevel = 30,
	itemAward = { hashTable = { 40 }, itemList = {} },
	moneyReward = 0,
	PropBagSpaceNeed = 0,
	MatBagSpaceNeed = 1,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetAward1Flag,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 30 r°i, ðªn c¤p 60 lÕi ðªn tìm ta",
	recvMsg = "    Viên Bäo ThÕch này là mµt chút g÷i là, nh¾ là Bäo ThÕch quý thì phäi ðßþc trÕm khám trên trang b¸ t¯t, chúc ngß½i may m¡n",
}
x002084_g_AwardList[x002084_g_Award3] = {
	needLevel = 60,
	itemAward = { hashTable = { 41 }, itemList = {} },
	moneyReward = 0,
	PropBagSpaceNeed = 1,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetAward2Flag,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 60 r°i",
	recvMsg = "    Bí quyªt quan tr÷ng này là mµt chút g÷i là, nh¾ là bí quyªt quan tr÷ng thì phäi ðßþc dÕy cho trân thú, chúc ngß½i may m¡n",
}
--²Æ¸»¿¨
x002084_g_NewCardList = {}
x002084_g_NewCardList[x002084_g_NewCard1] = {
	needLevel = -1,
	itemAward = { hashTable = {}, itemList = {10402001,10422012,10423020,10141050,10141051} },
	moneyReward = 0,
	PropBagSpaceNeed = 5,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard0,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 1 r°i, ðªn c¤p 15 lÕi ðªn tìm ta",
	recvMsg = "#{Mis_NewUserCard_16}",
}
x002084_g_NewCardList[x002084_g_NewCard2] = {
	needLevel = 15,
	itemAward = { hashTable = {}, itemList = {10413013,10411013,10412013,10421013,30008027,30008027,30008027,30008027,30008027} },
	moneyReward = 0,
	PropBagSpaceNeed = 9,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard1,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 15 r°i, ðªn c¤p 30 lÕi ðªn tìm ta",
	recvMsg = "#{Mis_NewUserCard_17}",
}
x002084_g_NewCardList[x002084_g_NewCard3] = {
	needLevel = 30,
	itemAward = { hashTable = {}, itemList = {30900015} },
	moneyReward = 0,
	PropBagSpaceNeed = 2,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard2,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 30 r°i",
	recvMsg = "#{Mis_NewUserCard_18}",
}
x002084_g_NewCardList[x002084_g_NewCard4] = {
	needLevel = 40,
	itemAward = { hashTable = {}, itemList = {30505106} },
	moneyReward = 2000,
	PropBagSpaceNeed = 1,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard3,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 40.",
	recvMsg = "#{Mis_NewUserCard_19}",
}
x002084_g_NewCardList[x002084_g_NewCard5] = {
	needLevel = 50,
	itemAward = { hashTable = {}, itemList = {10141037} },
	moneyReward = 4000,
	PropBagSpaceNeed = 1,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard4,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 50.",
	recvMsg = "#{Mis_NewUserCard_20}",
}
x002084_g_NewCardList[x002084_g_NewCard6] = {
	needLevel = 60,
	itemAward = { hashTable = {}, itemList = {10141027} },
	moneyReward = 4000,
	PropBagSpaceNeed = 1,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard5,
	redundantMsg = "    Ngß½i ðã lînh ph¥n thß·ng c¤p 60 r°i",
	recvMsg = "#{Mis_NewUserCard_21}",
}
x002084_g_NewCardList[x002084_g_NewCard7] = {
	needLevel = 70,
	itemAward = { hashTable = {}, itemList = {} },
	moneyReward = 6000,
	PropBagSpaceNeed = 1,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard6,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 70.",
	recvMsg = "#{Mis_NewUserCard_22}",
}
x002084_g_NewCardList[x002084_g_NewCard8] = {
	needLevel = 80,
	itemAward = { hashTable = {}, itemList = {30008004,30502002,30502002,30502002,30502002,30502002,30502002,30502002,30502002,30502002,30502002} },
	moneyReward = 7520,
	PropBagSpaceNeed = 2,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard7,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 80.",
	recvMsg = "#{Mis_NewUserCard_23}",
}
	--²Æ¸»¿¨666
x002084_g_NewCardListEx = {}
x002084_g_NewCardListEx[x002084_g_NewCard1_666] = {
	needLevel = -1,
	itemAward = { hashTable = {}, itemList = {10413013,10411013,10412013,10421013,10141050,10141034} },
	moneyReward = 0,
	PropBagSpaceNeed = 6,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard0_666,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 1 r°i, ðªn c¤p 15 t¾i tìm ta.",
	recvMsg = "#{CHAOJIDALIKA_081224_1}",
}
x002084_g_NewCardListEx[x002084_g_NewCard2_666] = {
	needLevel = 15,
	itemAward = { hashTable = {}, itemList = {30008027,30008027,30008027,30308035,31000001,31000003,30504037,30504037,30504037,30504037,30504037,10141803} },
	moneyReward = 0,
	PropBagSpaceNeed = 8,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard1_666,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 15 r°i, ðªn c¤p 30 t¾i tìm ta.",
	recvMsg = "#{CHAOJIDALIKA_081224_2}",
}
x002084_g_NewCardListEx[x002084_g_NewCard3_666] = {
	needLevel = 30,
	itemAward = { hashTable = {}, itemList = {30309152,30504038,30504038,30504038,30504038,30504038,30504038,30504038,30504038,30504038,30504038,
		30504039,30504039,30607000,30504037,30504037,30504037,30504037,30504037} },
	moneyReward = 0,
	PropBagSpaceNeed = 5,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard2_666,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 30 r°i.",
	recvMsg = "#{CHAOJIDALIKA_081224_3}",
}
x002084_g_NewCardListEx[x002084_g_NewCard4_666] = {
	needLevel = 40,
	itemAward = { hashTable = {}, itemList = {30008021,30008021,30607001,30900015,30504037,30504037,30504037,30504037,30504037} },
	moneyReward = 1000,
	PropBagSpaceNeed = 5,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard3_666,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 40 r°i.",
	recvMsg = "#{CHAOJIDALIKA_081224_4}",
}
x002084_g_NewCardListEx[x002084_g_NewCard5_666] = {
		needLevel = 50,
	itemAward = { hashTable = {}, itemList = {30504041,30504040,30008033,30900026,30900026,30900026,30900026,30900026} },
	moneyReward = 0,
	PropBagSpaceNeed = 8,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard4_666,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 50 r°i.",
	recvMsg = "#{CHAOJIDALIKA_081224_5}",
}
x002084_g_NewCardListEx[x002084_g_NewCard6_666] = {
		needLevel = 60,
	itemAward = { hashTable = {}, itemList = {30900006,30900006,30900006,30504039,30504039,10141107} },
	moneyReward = 1000,
	PropBagSpaceNeed = 5,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard5_666,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 60 r°i.",
	recvMsg = "#{CHAOJIDALIKA_081224_6}",
}
x002084_g_NewCardListEx[x002084_g_NewCard7_666] = {
	needLevel = 70,
	itemAward = { hashTable = {}, itemList = {30008009,30504039,30504039,20109008,20109008,20109008} },
	moneyReward = 2000,
	PropBagSpaceNeed = 2,
	MatBagSpaceNeed = 3,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard6_666,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 70 r°i.",
	recvMsg = "#{CAIFUKA_081224_7}",
}
x002084_g_NewCardListEx[x002084_g_NewCard8_666] = {
		needLevel = 80,
	itemAward = { hashTable = {}, itemList = {30509500,30503019,30503019,30504041,30504040} },
	moneyReward = 4000,
	PropBagSpaceNeed = 5,
	MatBagSpaceNeed = 0,
	TaskBagSpaceNeed = 0,
	flagBit = MF_GetNewUserCard7_666,
	redundantMsg = "    Các hÕ ðã nh§n thß·ng c¤p ðµ 80 r°i.",
	recvMsg = "#{CAIFUKA_081224_8}",
}


--**********************************
--ÊÂ¼þ½»»¥Èë¿Ú
--**********************************
function x002084_OnDefaultEvent( sceneId, selfId, targetId )
	
	BeginEvent( sceneId )
		strText = "    Hoan nghênh ðªn v¾i thª gi¾i trò ch½i Thiên Long Bát Bµ, ta có th¬ giúp ngß½i ðßþc gì chång? Nªu ngß½i ðã t×ng sØ døng CD-KEY trên mÕng, trß¾c tiên ngß½i c¥n phäi kích hoÕt ði«u ki®n lînh ph¥n thß·ng m¾i có th¬ lînh ðßþc ph¥n thß·ng"
		AddText( sceneId, strText )
		
		for i, eventId in x002084_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end

		--if GetName(sceneId,selfId) == "GM" then
			AddNumText( sceneId, x002084_g_scriptId, "TÕi hÕ sØ døng thë tài phú", 2, 101 )
			--AddNumText( sceneId, x002084_g_scriptId, "TÕi hÕ sØ døng thë siêu c¤p ðÕi lñc", 2, 102 )		
		--end

		AddNumText( sceneId, x002084_g_scriptId, "Gi¾i thi®u h® th¯ng khuyªn mãi", 11, x002084_g_Intro )
		AddNumText( sceneId, x002084_g_scriptId, "Gi¾i thi®u v« h® th¯ng thë tài phú", 11, x002084_g_NewCardIntro )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--CD-KEY
function x002084_AddCDKeyNumText(sceneId, selfId, targetId)
	local eventNum = 0
	BeginEvent( sceneId )
		if GetMissionFlag( sceneId, selfId, MF_GetAwardFlag ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Kích hoÕt CD-KEY", 2, 0 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_AwardList[x002084_g_PrimaryAward].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Lînh ph¥n thß·ng CD-KEY", 2, x002084_g_PrimaryAward )
			 eventNum = eventNum + 1
		end

		--if GetMissionFlag( sceneId, selfId, x002084_g_AwardList[x002084_g_Award2].flagBit ) == 0 then
			-- AddNumText( sceneId, x002084_g_scriptId, "ÁìÈ¡" .. x002084_g_AwardList[x002084_g_Award2].needLevel .. "¼¶µÄ½±Àø", 2, x002084_g_Award2 )
			-- eventNum = eventNum + 1
		--end

		--if GetMissionFlag( sceneId, selfId, x002084_g_AwardList[x002084_g_Award3].flagBit ) == 0 then
			-- AddNumText( sceneId, x002084_g_scriptId, "ÁìÈ¡" .. x002084_g_AwardList[x002084_g_Award3].needLevel .. "¼¶µÄ½±Àø", 2, x002084_g_Award3 )
			-- eventNum = eventNum + 1
		--end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	if eventNum == 0 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã nh§n t¤t cä ph¥n thß·ng CD-KEY." )
	end
end

--²Æ¸»¿¨
function x002084_AddNewUserCardNumText(sceneId, selfId, targetId)
	local eventNum = 0
	BeginEvent( sceneId )
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Kích hoÕt thë tài phú", 2, 8 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard1].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Lînh ph¥n thß·ng c¤p 1", 2, x002084_g_NewCard1 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard2].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard2].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard2 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard3].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard3].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard3 )
			 eventNum = eventNum + 1
		end
		
		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard4].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard4].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard4 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard5].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard5].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard5 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard6].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard6].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard6 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard7].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard7].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard7 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardList[x002084_g_NewCard8].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardList[x002084_g_NewCard8].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard8 )
			 eventNum = eventNum + 1
		end

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	if eventNum == 0 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã nh§n t¤t cä ph¥n thß·ng cüa thë tài phú." )
	end
end

--²Æ¸»¿¨666
function x002084_AddNewUserCardNumText666(sceneId, selfId, targetId)
	local eventNum = 0
	BeginEvent( sceneId )
	
		if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666 ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "Kích hoÕt thë siêu c¤p ðÕi lñc", 2, 8 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardListEx[x002084_g_NewCard1_666].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p 1 lînh ph¥n thß·ng", 2, x002084_g_NewCard1_666 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardListEx[x002084_g_NewCard2_666].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardListEx[x002084_g_NewCard2_666].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard2_666 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardListEx[x002084_g_NewCard3_666].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardListEx[x002084_g_NewCard3_666].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard3_666 )
			 eventNum = eventNum + 1
		end
		
		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardListEx[x002084_g_NewCard4_666].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardListEx[x002084_g_NewCard4_666].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard4_666 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardListEx[x002084_g_NewCard5_666].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardListEx[x002084_g_NewCard5_666].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard5_666 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardListEx[x002084_g_NewCard6_666].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardListEx[x002084_g_NewCard6_666].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard6_666 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardListEx[x002084_g_NewCard7_666].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardListEx[x002084_g_NewCard7_666].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard7_666 )
			 eventNum = eventNum + 1
		end

		if GetMissionFlag( sceneId, selfId, x002084_g_NewCardListEx[x002084_g_NewCard8_666].flagBit ) == 0 then
			 AddNumText( sceneId, x002084_g_scriptId, "C¤p " .. x002084_g_NewCardListEx[x002084_g_NewCard8_666].needLevel .. " lînh ph¥n thß·ng", 2, x002084_g_NewCard8_666 )
			 eventNum = eventNum + 1
		end

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
	
	if eventNum == 0 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã nh§n t¤t cä ph¥n thß·ng cüa thë tài phú." )
	end
end

--**********************************
--ÊÂ¼þÁÐ±íÑ¡ÖÐÒ»Ïî
--**********************************
function x002084_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x002084_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId, GetNumText(), x002084_g_scriptId )
			return --¾¯¸æ£ºÔÚÃ»ÓÐÌõ¼þ´¦ÀíµÄÇé¿öÏÂ£¬Ñ­»·ÖÐÉ÷ÓÃreturn
		end
	end

	if x002084_g_NewCardIntro == GetNumText() then
		
		BeginEvent( sceneId )
			AddText( sceneId, "#{XinShouKa_Help_001}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 520 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{CHAOJIDALIKA_090112_1}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )			
	end

	if GetNumText() == 0 then
		x002084_CheckCDKey( sceneId, selfId, targetId )
	elseif GetNumText() == x002084_g_Intro then
		x002084_Introduce( sceneId, selfId, targetId )
	elseif x002084_g_AwardList[GetNumText()] then
		x002084_GetAward( sceneId, selfId, targetId, GetNumText() )
	elseif GetNumText() == 8 then
		x002084_CheckNewUserCard(sceneId, selfId, targetId)
	elseif GetNumText() == x002084_g_ActiveNewCard666 then
		x002084_CheckNewUserCard666(sceneId, selfId, targetId)
	elseif x002084_g_NewCardList[GetNumText()] then
		x002084_GetNewCardPrize( sceneId, selfId, targetId, GetNumText())
	elseif x002084_g_NewCardListEx[GetNumText()] then
		x002084_GetNewCardPrize666( sceneId, selfId, targetId, GetNumText())
	elseif GetNumText() == 101 then
		x002084_AddNewUserCardNumText(sceneId,selfId,targetId)
	elseif GetNumText() == 102 then
		x002084_AddNewUserCardNumText666(sceneId,selfId,targetId)
	elseif GetNumText() == 201 then
		x002084_AddCDKeyNumText(sceneId, selfId, targetId)	
	end
		
end

--**********************************
-- ¼ì²é CDKey
--**********************************
function x002084_CheckCDKey( sceneId, selfId, targetId )
	-- if GetMissionFlag( sceneId, selfId, MF_GetAwardFlag ) == 1 then
	-- 	return
	-- end

	--if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
		--x002084_NotifyFailBox( sceneId, selfId, targetId, "    ÄãÒÑ¾­¼¤»î¹ý²Æ¸»¿¨£¬ÎÞ·¨ÔÙ¼¤»îcdkey¡£" )
		--return
	--end

	--if GetLevel( sceneId, selfId ) >= 10 then
		--x002084_NotifyFailBox( sceneId, selfId, targetId, "    ¶Ô²»Æð£¬ÄãÒÑ¾­³¬¹ý10¼¶£¬ÎÞ·¨¼¤»îÁì½±Ìõ¼þ¡£" )
		--return
	--end

	-- CallScriptFunction( PRIZE_SCRIPT_ID, "AskCDKey", sceneId, selfId )

	-- ÒÔÏÂÎª²âÊÔÊ¹ÓÃ
	-- SetMissionFlag( sceneId, selfId, MF_GetAwardFlag, 1 )

    if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
        x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã kích hoÕt thë tài phú, không c¥n kích hoÕt l¥n næa." )
        return
    end

    local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, x002084_g_VirtualNew )
    if nItemNum > 0 then
        local ret = LuaFnDelAvailableItem( sceneId, selfId, x002084_g_VirtualNew, 1 )
        if ret < 1 then
            return
        end
        --²Æ¸»¿¨µÄÐéÄâ¿¨¿ª¿¨
        SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
        x002084_NotifyFailBox( sceneId, selfId, targetId, "    Xin chúc m×ng! Các hÕ ðã kích hoÕt thành công thë tài phú, sau khi ðÕt c¤p ðµ nh¤t ð¸nh có th¬ quay lÕi ch² tÕi hÕ lînh thß·ng." )
    else
        x002084_NotifyFailBox( sceneId, selfId, targetId, "    Trên ngß¶i các hÕ không có Thë Tài Phú, không th¬ kích hoÕt ðßþc!" )
    --  BeginUICommand( sceneId )
    --      UICommand_AddInt( sceneId, targetId )
    --  EndUICommand( sceneId )
    --  DispatchUICommand( sceneId, selfId, 2004 )
    end
end

--**********************************
-- ¼ì²é ²Æ¸»¿¨
--**********************************
function x002084_CheckNewUserCard( sceneId, selfId, targetId )
	--if GetMissionFlag( sceneId, selfId, MF_GetAwardFlag ) == 1 then
		--x002084_NotifyFailBox( sceneId, selfId, targetId, "    ÄãÒÑ¾­¼¤»î¹ýcdkey£¬ÎÞ·¨ÔÙ¼¤»î²Æ¸»¿¨¡£" )
		--return
	--end
	
	if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã kích hoÕt thë tài phú, không c¥n kích hoÕt l¥n næa." )
		return
	end

	--if GetLevel( sceneId, selfId ) >= 10 then
		--x002084_NotifyFailBox( sceneId, selfId, targetId, "    ÄãµÄµÈ¼¶ÒÑ¾­´óÓÚ10¼¶£¬ÎÞ·¨ÔÙ¼¤»î²Æ¸»¿¨¡£" )
		--return
	--end
	
	-- ÅÐ¶ÏÊÇ·ñÖ±½Ó¼¤»î²Æ¸»¿¨
	-- [ QUFEI 2008-02-29 22:26 UPDATE BugID 32610 ]
	-- local nIsActive = 0
	-- nIsActive = IsActiveRichesCard()
	-- if nIsActive == 1 then
		--²Æ¸»¿¨¿ª¿¨
		-- SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
		-- x002084_NotifyFailBox( sceneId, selfId, targetId, "    Xin chúc m×ng! Các hÕ ðã kích hoÕt thành công thë tài phú, sau khi ðÕt c¤p ðµ nh¤t ð¸nh có th¬ quay lÕi ch² tÕi hÕ lînh thß·ng." )
		
		-- return 0
	-- end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, x002084_g_VirtualNew )
	
	if nItemNum > 0 then
		local ret = LuaFnDelAvailableItem( sceneId, selfId, x002084_g_VirtualNew, 1 )
		if ret < 1 then
			return
		end
		--²Æ¸»¿¨µÄÐéÄâ¿¨¿ª¿¨
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Xin chúc m×ng! Các hÕ ðã kích hoÕt thành công thë tài phú, sau khi ðÕt c¤p ðµ nh¤t ð¸nh có th¬ quay lÕi ch² tÕi hÕ lînh thß·ng." )
	else
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Trên ngß¶i các hÕ không có Thë Tài Phú, không th¬ kích hoÕt ðßþc!" )
		-- if GetLevel( sceneId, selfId ) > 30 then
		-- x002084_NotifyFailBox( sceneId, selfId, targetId, "   C¤p b§c cüa các hÕ quá cao, không th¬ nào kích hoÕt thë tài phú" )
			-- return
		-- end
	
		--´ò¿ªÊäÈë²Æ¸»¿¨¿¨ºÅ½çÃæ
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 2004 )
	end

	-- ÒÔÏÂÎª²âÊÔÊ¹ÓÃ
	--SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard, 1 )
end

--**********************************
-- ¼ì²é ²Æ¸»¿¨666
--**********************************
function x002084_CheckNewUserCard666( sceneId, selfId, targetId )
	
	if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666 ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã kích hoÕt siêu c¤p ðÕi lñc, không c¥n kích hoÕt l¥n næa." )
		return
	end

	-- ÅÐ¶ÏÊÇ·ñÖ±½Ó¼¤»î²Æ¸»¿¨
	-- [ QUFEI 2008-02-29 22:26 UPDATE BugID 32610 ]
	-- local nIsActive = 0
	-- nIsActive = IsActiveRichesCard666()
	-- if nIsActive == 1 then
		--²Æ¸»¿¨¿ª¿¨
		-- SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666, 1 )
		-- x002084_NotifyFailBox( sceneId, selfId, targetId, "     Xin chúc m×ng! Các hÕ ðã kích hoÕt thành siêu c¤p ðÕi lñc, sau khi ðÕt c¤p ðµ nh¤t ð¸nh có th¬ quay lÕi ch² tÕi hÕ lînh thß·ng." )
		
		-- return 0
	-- end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, x002084_g_VirtualNew666 )
	if nItemNum > 0 then
		local ret = LuaFnDelAvailableItem( sceneId, selfId, x002084_g_VirtualNew666, 1 )
		if ret < 1 then
			return
		end
		--²Æ¸»¿¨µÄÐéÄâ¿¨¿ª¿¨
		SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666, 1 )
		x002084_NotifyFailBox( sceneId, selfId, targetId, "   Xin chúc m×ng! Các hÕ ðã kích hoÕt thành siêu c¤p ðÕi lñc, sau khi ðÕt c¤p ðµ nh¤t ð¸nh có th¬ quay lÕi ch² tÕi hÕ lînh thß·ng." )
	else
	
		if GetLevel( sceneId, selfId ) > 30 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "  C¤p b§c cüa các hÕ quá cao, không th¬ nào kích hoÕt siêu c¤p ðÕi lñc" )
		return
		end
	
		--´ò¿ªÊäÈë²Æ¸»¿¨¿¨ºÅ½çÃæ
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 20080819 )
	end

	-- ÒÔÏÂÎª²âÊÔÊ¹ÓÃ
	--SetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666, 1 )
end

--**********************************
-- ÍÆ¹ãÔ±ÏµÍ³½éÉÜ
--**********************************
function x002084_Introduce( sceneId, selfId, targetId )
	x002084_NotifyFailBox( sceneId, selfId, targetId, "    CD-Key là dãy s¯ chúng tôi cung c¤p cho khách hàng, sau khi sØ døng dãy s¯ này ð¬ kích hoÕt, có th¬ vào trò ch½i nh§n thß·ng, và mµt nhân v§t chï có th¬ kích hoÕt mµt l¥n mà thôi." )
end

--**********************************
-- ÁìCD-KEY½±Æ·
--**********************************
function x002084_GetAward( sceneId, selfId, targetId, grade )
	local awardInfo = x002084_g_AwardList[grade]
	if not awardInfo then
		return
	end

	if GetMissionFlag( sceneId, selfId, awardInfo.flagBit ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.redundantMsg )
		return													-- Áì¹ýÁË
	end

	if GetMissionFlag( sceneId, selfId, MF_GetAwardFlag ) ~= 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Tam th¶i ngß½i không th¬ lînh ðßþc ph¥n thß·ng" )
		return
	end

	if GetLevel( sceneId, selfId ) < awardInfo.needLevel then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    ×, ðÆng c¤p cüa ngß½i chßa ðü, ðþi ð¬ ðÆng c¤p ðÕt t¾i" .. awardInfo.needLevel .. "c¤p lÕi ðªn tìm ta" )
		return
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awardInfo.PropBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh ðÕo cø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.PropBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awardInfo.MatBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh tài li®u ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.MatBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < awardInfo.TaskBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nhi®m vø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.TaskBagSpaceNeed .. "Ô" )
		return
	end

	local itemSN, itemName, itemDesc, bBroadCast
	for i, row in awardInfo.itemAward.hashTable do
		local itemSN, itemName, itemDesc, bBroadCast = GetOneMissionBonusItem( row )
		if itemSN > -1 then
			TryRecieveItem( sceneId, selfId, itemSN, 9 )								-- ·Å²»ÏÂ¾ÍÃ»ÓÐÁË
		end
	end

	for i, itemSN in awardInfo.itemAward.itemList do
		TryRecieveItem( sceneId, selfId, itemSN, 9 )
	end

	if awardInfo.moneyReward > 0 then
		AddMoney( sceneId, selfId, awardInfo.moneyReward )
	end

	SetMissionFlag( sceneId, selfId, awardInfo.flagBit, 1 )
	x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.recvMsg )
end

--**********************************
-- Áì²Æ¸»¿¨½±Æ·
--**********************************
function x002084_GetNewCardPrize( sceneId, selfId, targetId, grade )
	local awardInfo = x002084_g_NewCardList[grade]
	if not awardInfo then
		return
	end

	if GetMissionFlag( sceneId, selfId, awardInfo.flagBit ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.redundantMsg )
		return													-- Áì¹ýÁË
	end

	if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard ) ~= 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Tam th¶i ngß½i không th¬ lînh ðßþc ph¥n thß·ng" )
		return
	end

	if GetLevel( sceneId, selfId ) < awardInfo.needLevel then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    ×, ðÆng c¤p cüa ngß½i chßa ðü, ðþi ð¬ ðÆng c¤p ðÕt t¾i" .. awardInfo.needLevel .. "c¤p lÕi ðªn tìm ta" )
		return
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awardInfo.PropBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh ðÕo cø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.PropBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awardInfo.MatBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh tài li®u ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.MatBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < awardInfo.TaskBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nhi®m vø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.TaskBagSpaceNeed .. "Ô" )
		return
	end
	
	if grade == x002084_g_NewCard3 then
		if TryCreatePet(sceneId,selfId,1) <= 0 then
			x002084_NotifyFailBox( sceneId, selfId, targetId, "    Trân thú ngß½i mang ðã ð¥y, ngß½i có th¬ thä mµt con trân thú ð¬ tÕo ra v¸ trí tr¯ng" )
			return
		end
	end

	local itemSN, itemName, itemDesc, bBroadCast
	for i, row in awardInfo.itemAward.hashTable do
		local itemSN, itemName, itemDesc, bBroadCast = GetOneMissionBonusItem( row )
		if itemSN > -1 then
			TryRecieveItem( sceneId, selfId, itemSN, 9 )								-- ·Å²»ÏÂ¾ÍÃ»ÓÐÁË
		end
	end

	for i, itemSN in awardInfo.itemAward.itemList do
		local ibagidx
		ibagidx =TryRecieveItem( sceneId, selfId, itemSN, 9 )
		if(itemSN == 30900015 and ibagidx ~= -1) then			--µÍ¼¶±¦Ê¯ºÏ³É·û°ó¶¨ by Vega 20081008
			LuaFnItemBind(sceneId, selfId,ibagidx)								
		end
	end

	if awardInfo.moneyReward > 0 then
		if grade == x002084_g_NewCard4 or grade == x002084_g_NewCard5 or grade == x002084_g_NewCard6 or grade == x002084_g_NewCard7 or grade == x002084_g_NewCard8 then
			ZengDian(sceneId,selfId,targetId,1,awardInfo.moneyReward)
		else
			AddMoney( sceneId, selfId, awardInfo.moneyReward )
		end
	end
	
	if grade == x002084_g_NewCard3 then
		local mItem = x002084_GetMenpaiTaoEquip(GetMenPai(sceneId,selfId))
		if mItem > 0 then
			TryRecieveItem( sceneId, selfId, mItem, 9 )
		end
		LuaFnCreatePetToHuman(sceneId, selfId, 3359, 1, 0)
	end
	
	if grade == x002084_g_NewCard7 then
		local mItem = x002084_GetMenpaiYaoJue(GetMenPai(sceneId,selfId))
		if mItem > 0 then
			TryRecieveItem( sceneId, selfId, mItem, 9 )
		end
	end

	SetMissionFlag( sceneId, selfId, awardInfo.flagBit, 1 )
	x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.recvMsg )
end


--**********************************
-- Áì²Æ¸»¿¨½±Æ·666
--**********************************
function x002084_GetNewCardPrize666( sceneId, selfId, targetId, grade )
	local awardInfo = x002084_g_NewCardListEx[grade]
	if not awardInfo then
		return
	end

	if GetMissionFlag( sceneId, selfId, awardInfo.flagBit ) == 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.redundantMsg )
		return													-- Áì¹ýÁË
	end

	if GetMissionFlag( sceneId, selfId, MF_ActiveNewUserCard666 ) ~= 1 then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Tam th¶i ngß½i không th¬ lînh ðßþc ph¥n thß·ng" )
		return
	end

	if GetLevel( sceneId, selfId ) < awardInfo.needLevel then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    », ðÆng c¤p cüa ngß½i chßa ðü, ðþi ð¬ ðÆng c¤p ðÕt t¾i " .. awardInfo.needLevel .. " c¤p lÕi ðªn tìm ta" )
		return
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awardInfo.PropBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh ðÕo cø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.PropBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awardInfo.MatBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh tài li®u ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.MatBagSpaceNeed .. "Ô" )
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < awardInfo.TaskBagSpaceNeed then
		x002084_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nhi®m vø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi" .. awardInfo.TaskBagSpaceNeed .. "Ô" )
		return
	end
	
	--if grade == x002084_g_NewCard3_666 then
		--if TryCreatePet(sceneId,selfId,1) <= 0 then
			--x002084_NotifyFailBox( sceneId, selfId, targetId, "    Trân thú ngß½i mang ðã ð¥y, ngß½i có th¬ thä mµt con trân thú ð¬ tÕo ra v¸ trí tr¯ng" )
			--return
		--end
	--end

	local itemSN, itemName, itemDesc, bBroadCast
	for i, row in awardInfo.itemAward.hashTable do
		local itemSN, itemName, itemDesc, bBroadCast = GetOneMissionBonusItem( row )
		if itemSN > -1 then
			local bagpos01 = TryRecieveItem( sceneId, selfId, itemSN, 9 )								-- ·Å²»ÏÂ¾ÍÃ»ÓÐÁË
			LuaFnItemBind( sceneId, selfId, bagpos01 )
		end
	end

	for i, itemSN in awardInfo.itemAward.itemList do
		local ibagidx = TryRecieveItem( sceneId, selfId, itemSN, 9 )
		LuaFnItemBind(sceneId, selfId,ibagidx)	

	end

	if awardInfo.moneyReward > 0 then
		if grade == x002084_g_NewCard4_666 or grade == x002084_g_NewCard5_666 or grade == x002084_g_NewCard6_666 or grade == x002084_g_NewCard7_666 or grade == x002084_g_NewCard8_666 then
			ZengDian(sceneId,selfId,targetId,1,awardInfo.moneyReward)
		else
			AddMoney( sceneId, selfId, awardInfo.moneyReward )
		end
	end
	
	--if grade == x002084_g_NewCard3_666 then
		--local mItem = x002084_GetMenpaiTaoEquip(GetMenPai(sceneId,selfId))
		--if mItem > 0 then
		--	TryRecieveItem( sceneId, selfId, mItem, 9 )
	--	end
		--LuaFnCreatePetToHuman(sceneId, selfId, 3359, 1, 0)
	--end

	SetMissionFlag( sceneId, selfId, awardInfo.flagBit, 1 )
	x002084_NotifyFailBox( sceneId, selfId, targetId, awardInfo.recvMsg )
end

--**********************************
-- ¶Ô»°´°¿ÚÐÅÏ¢ÌáÊ¾
--**********************************
function x002084_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

-- ÃÅÅÉÌ××°
function x002084_GetMenpaiTaoEquip(mid)
	if(mid == MP_SHAOLIN) then
		return 10500002
	elseif(mid == MP_MINGJIAO) then
		return 10500012
	elseif(mid == MP_GAIBANG) then
		return 10501002
	elseif(mid == MP_WUDANG) then
		return 10502002
	elseif(mid == MP_EMEI) then
		return 10503002
	elseif(mid == MP_XINGSU) then
		return 10503012
	elseif(mid == MP_DALI) then
		return 10505002
	elseif(mid == MP_TIANSHAN) then
		return 10504002
	elseif(mid == MP_XIAOYAO) then
		return 10504012
	else
		return 0
	end
	return 0
end

-- ÃÅÅÉÒª¾÷
function x002084_GetMenpaiYaoJue(mid)
	if(mid == MP_SHAOLIN) then
		return 30308011
	elseif(mid == MP_MINGJIAO) then
		return 30308012
	elseif(mid == MP_GAIBANG) then
		return 30308013
	elseif(mid == MP_WUDANG) then
		return 30308014
	elseif(mid == MP_EMEI) then
		return 30308015
	elseif(mid == MP_XINGSU) then
		return 30308016
	elseif(mid == MP_DALI) then
		return 30308017
	elseif(mid == MP_TIANSHAN) then
		return 30308018
	elseif(mid == MP_XIAOYAO) then
		return 30308019
	else
		return 0
	end
	return 0
end
