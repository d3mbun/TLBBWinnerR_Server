--k¸ch bän g¯c hào


x900030_g_scriptId = 900030

x900030_g_strGongGaoInfo = {
  "#{_INFOUSR%s} #cff99cc· #GLÕc Dß½ng (258, 252) #Ybäo thÕch công tßþng #cff99ccch² thành công mài kh¡c lÕi mµt viên lòe lòe sáng lên #cFF0000#{_INFOMSG%s}#H#cff99cc, bäo thÕch thuµc tính trên di®n rµng ðµ nh§n ðßþc tång lên!", 
  "#{_INFOUSR%s} #cff99cc· #GLÕc Dß½ng (258, 252) #Ybäo thÕch công tßþng #cff99ccch² thành công mài kh¡c lÕi mµt viên lòe lòe sáng lên #cFF0000#{_INFOMSG%s}#H#cff99cc, bäo thÕch thuµc tính trên di®n rµng ðµ nh§n ðßþc tång lên!", 
  "#{_INFOUSR%s} #cff99cc· #GLÕc Dß½ng (258, 252) #Ybäo thÕch công tßþng #cff99ccch² thành công mài kh¡c lÕi mµt viên lòe lòe sáng lên #cFF0000#{_INFOMSG%s}#H#cff99cc, bäo thÕch thuµc tính trên di®n rµng ðµ nh§n ðßþc tång lên!",
  "#{_INFOUSR%s} #cff99cc· #GLÕc Dß½ng (258, 252) #Ybäo thÕch công tßþng #cff99ccch² thành công mài kh¡c lÕi mµt viên lòe lòe sáng lên #cFF0000#{_INFOMSG%s}#H#cff99cc, bäo thÕch thuµc tính trên di®n rµng ðµ nh§n ðßþc tång lên!", 
}

x900030_g_Gem = 
{
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50521305,50502007,50503001,50504002,50511002,50514001,50513004,50512006, },
{ 50502008,50521405,50503001,50504002,50511002,50514001,50513004,50512008, },
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50521205,50502006,50503001,50504002,50511002,50514001,50513004,50512007, },
{ 50502008,50521405,50503001,50504002,50511002,50514001,50513004,50512008, },
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50521205,50502006,50503001,50504002,50511002,50514001,50513004,50512007, },
{ 50521305,50502007,50503001,50504002,50511002,50514001,50513004,50512006, },
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50521105,50502005,50503001,50504002,50511002,50514001,50513004,50512005, },
{ 50502008,50521405,50503001,50504002,50511002,50514001,50513004,50512008, },
}

--**********************************
--sñ ki®n lçn nhau nh§p kh¦u
--**********************************
function x900030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"       #GTrang b¸ xß·ng #Wcùng #Gbäo thÕch xß·ng #Wch÷n hÕng, có th¬ Tá Khai #GTrang b¸ khoan #W, #Gbäo thÕch ðßþc khäm cùng bäo thÕch bö ði #W, trang b¸ cß¶ng hóa #W, #Gmµt ki®n b¯n kh±ng #W, #GTrang b¸ kh¡c minh #W, #GTrang b¸ mài kh¡c #Wch¶ toàn bµ công nång thao tác.")
		--AddText(sceneId, "       #b#cFF0000chú: Các v¸ ngß¶i ch½i, xin không c¥n dùng 5 cái 8. 8 ði hþp thành, hþp ði ra 9. 8 thuµc tính vu 8. 8 gi¯ng nhau, nªu không nghe khuyên bäo cáo, h§u quä bän phøc khái không phø trách! (8. 1, 8. 2 trong vòng Ðích, ð«u là) xin ngß¶i ch½i tñ hành chú ý! . ")

		AddNumText( sceneId,x900030_g_scriptId,"#GBäo thÕch xß·ng",6,30)
		AddNumText( sceneId,x900030_g_scriptId,"#GTrang b¸ xß·ng",6,20)
		AddNumText( sceneId,x900030_g_scriptId, "#gFF0FA0trang b¸ b«n ðµ sØa chæa",6,616)
		AddNumText( sceneId,x900030_g_scriptId, "Ta mu¯n h÷c tinh luy®n (Rèn) ph¯i phß½ng", 2, 919 )
		AddNumText( sceneId,x900030_g_scriptId, "Ta mu¯n h÷c tinh chª (May M£c) ph¯i phß½ng", 2, 818 )
		AddNumText( sceneId,x900030_g_scriptId, "Ta mu¯n h÷c tinh công (Công Ngh®) ph¯i phß½ng", 2, 717 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x900030_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 20 then
			BeginEvent(sceneId)	
				AddText( sceneId, "  #WKhä lúc này tiªn hành #Gtrang b¸ cß¶ng hóa #Icùng v¾i trang b¸ xem xét gì công nång thao tác #I, Trang b¸ xem xét tß ch¤t sau, có th¬ thông qua #Gmµt l¥n næa xem xét tß ch¤t thao tác #r #Wnêu lên: #Gtrang phøc m¯t #W, #Gt÷a kÜ #W, #Gvõ h°n #W, #GLong Vån #W, ch¯ng ðÞ hªt n±i trì cß¶ng hóa c§p xem xét phøc vø." )
				AddNumText(sceneId, x900030_g_scriptId,"Giám Ð¸nh Tß Ch¤t Trang B¸   ", 6, 501)
				AddNumText(sceneId, x900030_g_scriptId,"Giám ð¸nh tß ch¤t trang b¸ lÕi t× ð¥u   ", 6, 502)
				AddNumText(sceneId, x900030_g_scriptId,"#GTrang b¸ cß¶ng hóa      ", 6, 503)
				AddNumText(sceneId, x900030_g_scriptId,"Gia tång khä tu luy®n s¯ l¥n   ", 6, 504)
				AddNumText(sceneId, x900030_g_scriptId,"#GTrang b¸ kh¡c minh   ", 6, 505)
				AddNumText(sceneId, x900030_g_scriptId,"Trang b¸ tr× minh   ", 6, 506)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 30 then
			BeginEvent(sceneId)	
				AddText( sceneId, "  #GMµt ki®n ðßþc khäm #Wti«n xin bäo ðäm chính mình ðã #Ggia nh§p môn phái #W, Xin s¨ c¥n ðßþc khäm bäo thÕch #Gtrang b¸ #Wð¬ ð£t bao vây trung, ði¬m ðánh #GMµt ki®n ðßþc khäm #Wcông nång sau, các hÕ bao vây t¤t cä trang b¸ hµi tñ ðµng dña theo môn phái thuµc tính ðßþc khäm thuµc loÕi chính mình toàn bµ #YtÑ c¤p bäo thÕch #W." )
				--AddNumText(sceneId, x900030_g_scriptId, "#G mµt ki®n ðßþc khäm    #cFF0000[tay nãi mµt ki®n bäo thÕch]", 6, 300)
				--AddNumText(sceneId, x900030_g_scriptId, "#G mµt ki®n khoan    #cFF0000[tay nãi mµt ki®n b¯n kh±ng]", 6, 301)
				AddNumText(sceneId, x900030_g_scriptId,"#GBäo thÕch hþp thành    ", 6, 303)
				AddNumText(sceneId, x900030_g_scriptId,"#GTrang b¸ khoan    ", 6, 309111)
				AddNumText(sceneId, x900030_g_scriptId,"#GBäo thÕch ðßþc khäm    ", 6, 306)
				AddNumText(sceneId, x900030_g_scriptId,"#GBäo thÕch bö ði     ", 6, 304)
				AddNumText(sceneId, x900030_g_scriptId,"#GKhoan cñc hÕn    ", 6, 302)
				AddNumText( sceneId,x900030_g_scriptId,"#GCñc hÕn ðßþc khäm    ", 6, 9 )
				AddNumText( sceneId,x900030_g_scriptId,"#GCñc hÕn bö ði      ", 6, 16 )
				AddNumText(sceneId, x900030_g_scriptId,"#GBäo thÕch tÕo hình      ", 6, 307)
				--AddNumText(sceneId, x900030_g_scriptId, " bäo thÕch luy®n     ", 6, 308)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end

		if GetNumText() == 9 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 751107 )
		return
		end	

	--if GetNumText() == 10 then
			--BeginEvent(sceneId)	
				--AddText( sceneId, "11111111111111" )
			--EndEvent(sceneId)
			--DispatchEventList(sceneId,selfId,targetId)
			--return
	--end

	if GetNumText() == 16 then

	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 25702 )
	return
    end

	if GetNumText() == 26 then
		for i, ImpactId in x900030_g_Impact do
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
				LuaFnCancelSpecificImpact(sceneId,selfId,ImpactId)			
			end
		end
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	end

	if GetNumText() == 11 then
			BeginEvent(sceneId)	
				AddText( sceneId, "    Trang phøc m¯t làm ð©p ti«n, xin các hÕ ð± bµ ðªn chúng ta #YTrang web h§u trß¶ng #W, V¾i làm ð©p trang phøc m¯t tiªn hành #cFF0000khoan #W, nªu không không th¬ thao tác." )
				AddText( sceneId, "    Làm ð©p trang phøc m¯t c¥n #GTh¶i Trang Ph¯i SÑc Ði¬m Xuyªt Phù #Wmµt cái, hþp thành trang phøc m¯t bäo thÕch c¥n #YTh¶i Trang Ph¯i SÑc Gia Công Phù #Wmµt cái, phäi · doãn Thiên màu ch² tiªn hành thao tác." )
				AddText( sceneId, "    Trang phøc m¯t bäo thÕch bö ði xin sØ døng #YCao C¤p Bäo ThÕch Trích Tr× Phù #W, Xin tham chiªu dß¾i tài li®u. #r#Gtrang phøc m¯t bäo thÕch C¤p 1 #WsØ døng #YCao C¤p Bäo ThÕch Trích Tr× Phù C¤p 6" )
				AddText( sceneId, "#GTrang phøc m¯t bäo thÕch C¤p 2 #WsØ døng #YCao C¤p Bäo ThÕch Trích Tr× Phù C¤p 7 #r#GTrang phøc m¯t bäo thÕch C¤p 3 #WsØ døng #YCao C¤p Bäo ThÕch Trích Tr× Phù C¤p 8 #r#GTrang phøc m¯t bäo thÕch C¤p 4 #WsØ døng #YCao C¤p Bäo ThÕch Trích Tr× Phù C¤p 9" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
	end

	if GetNumText() == 1 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  0910281)
	end

	if GetNumText() == 2 then
		BeginEvent(sceneId)	
			AddText( sceneId, "    Rõ ràng trang phøc m¯t ð£c hi®u là · các hÕ trang phøc m¯t làm ð©p sau, b·i vì máy tính ph¯i trí v¤n ð«, cäm giác trò ch½i không lßu sß¾ng khi sØ døng." )
			AddText( sceneId, "    Trang phøc m¯t ð£c hi®u rõ ràng sau, không th¬ mi­n phí lînh, phäi s¨ bäo thÕch bö ði sau, mµt l¥n næa làm ð©p sau tài khä mµt l¥n næa thu hoÕch ð£c hi®u, #cFF0000xin các hÕ c¦n th§n thao tác! ! !" )
			AddNumText( sceneId,x900030_g_scriptId,"#gFF0FA0Ngã phäi rõ ràng hi®u quä",6,26)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

		if GetNumText() == 300 then
		local MemPai=GetMissionData( sceneId, selfId, MD_SHUANGXIANGPAO_LASTTIME )
		--if MemPai < 1 then
		--	X900030_NotifyTip(sceneId, selfId, " các hÕ còn không có th¬ ðánh bäo thÕch, xin các hÕ gia nh§p môn phái sau lÕi ðªn. ")
		--	return
		--end
		if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 1 then
			x900030_NotifyTip( sceneId, selfId, "  Cüa ngß½i tay nãi tài li®u lan không có không gian, sØa sang lÕi lßu ra mµt cách sau lÕi ðªn tìm ta." )
			return
		end
		local	tEquipGemTable	= { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 12, 14, 15, 16, 17, 18 } --8,??,17??
		local	Bore_Count			= GetBagGemCount( sceneId, selfId, 0 )
		local nLevel					= GetBagItemLevel( sceneId, selfId, 0 )
		local EquipType				= LuaFnGetBagEquipType( sceneId, selfId, 0 )
		local find						= 0
		local bagbegin = GetBasicBagStartPos(sceneId, selfId)
		local bagend = GetBasicBagEndPos(sceneId, selfId)		
		for i=bagbegin, bagend do
			local itemIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i )			
			if itemIndex>0 then
				local ret = LuaFnIsItemLocked( sceneId, selfId, i )
				if ret ~= 0 then
					return
				end	
				local EquipType = LuaFnGetBagEquipType( sceneId, selfId, i )				
				local find = 0
			for i, gem in tEquipGemTable do
				if gem == EquipType then
					find = 1
				end
			end
				if find == 1 then	
					local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )					
					while equipMaxGemCount<3 do				
						local ret = AddBagItemSlot( sceneId, selfId, i )
						equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )			
					end
            AddBagItemSlotFour( sceneId, selfId, i )
				end
			end
	--	end
				
              AddBagItemSlot( sceneId, selfId, 0 )
              AddBagItemSlot( sceneId, selfId, 1 )
              AddBagItemSlot( sceneId, selfId, 2 )
              AddBagItemSlot( sceneId, selfId, 3 )
              AddBagItemSlot( sceneId, selfId, 4 )
              AddBagItemSlot( sceneId, selfId, 5 )
              AddBagItemSlot( sceneId, selfId, 6 )
              AddBagItemSlot( sceneId, selfId, 7 )
              AddBagItemSlot( sceneId, selfId, 8 )
              AddBagItemSlot( sceneId, selfId, 9 )
              AddBagItemSlot( sceneId, selfId, 10 )
              AddBagItemSlot( sceneId, selfId, 11 )
              AddBagItemSlot( sceneId, selfId, 12 )
              AddBagItemSlot( sceneId, selfId, 13 )
              AddBagItemSlot( sceneId, selfId, 14 )
              AddBagItemSlot( sceneId, selfId, 15 )
              AddBagItemSlot( sceneId, selfId, 16 )
              AddBagItemSlot( sceneId, selfId, 17 )
              AddBagItemSlot( sceneId, selfId, 18 )
              AddBagItemSlot( sceneId, selfId, 19 )
              AddBagItemSlot( sceneId, selfId, 20 )
              AddBagItemSlot( sceneId, selfId, 21 )
              AddBagItemSlot( sceneId, selfId, 22 )
              AddBagItemSlot( sceneId, selfId, 23 )
              AddBagItemSlot( sceneId, selfId, 24 )
              AddBagItemSlot( sceneId, selfId, 25 )
              AddBagItemSlot( sceneId, selfId, 26 )
              AddBagItemSlot( sceneId, selfId, 27 )
              AddBagItemSlot( sceneId, selfId, 28 )
              AddBagItemSlot( sceneId, selfId, 29 )

				local can = 1
				-- phán ðoán hay không còn có th¬ ðßþc khäm nhi«u h½n bäo thÕch
				local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )
				local equipEmbededGemCount = GetGemEmbededCount( sceneId, selfId, i )

				--modi: Lbyhay không có th¬ ðßþc khäm
				if equipMaxGemCount <= equipEmbededGemCount or equipMaxGemCount == 0 then
					can = 0
				end

				if can == 1 then
					local EquipType = LuaFnGetBagEquipType( sceneId, selfId, i )	
					if EquipType == 0 or EquipType == 6 or EquipType == 7 or EquipType == 8 or EquipType == 11 or EquipType == 12 or EquipType == 13 or EquipType == 14 or EquipType == 17 or EquipType == 18 or EquipType == 10 then

						local nMenpai = GetMenPai(sceneId, selfId)
						local Gem = x900030_g_Gem[nMenpai + 1]
						local gemEmbededIdx = -1
						local gemYi = 0
						for j=1, 4 do
							local gemType = LuaFnGetItemType(Gem[j])
							for k = 0, equipMaxGemCount - 1 do
								gemEmbededIdx = GetGemEmbededType( sceneId, selfId, i, k )
								local Type = LuaFnGetItemType( gemEmbededIdx )
								if Type == gemType then
									-- ð¯i l§p hai khöa bäo thÕch loÕi hình (bäo thÕch ÐÕi loÕi)
									gemYi = 1
								end
							end
							if gemYi == 0 then
								local BagIndex = TryRecieveItem( sceneId, selfId, Gem[j], QUALITY_MUST_BE_CHANGE)
								GemEnchasing( sceneId, selfId, BagIndex, i )
							end
						end
					elseif EquipType == 1 or EquipType == 2 or EquipType == 3 or EquipType == 4 or EquipType == 5 or EquipType == 15 or EquipType == 16 or EquipType == 9 then
						local nMenpai = GetMenPai(sceneId, selfId)
						local Gem = x900030_g_Gem[nMenpai + 1]
						local gemEmbededIdx = -1
						local gemYi = 0
						for j=5, 8 do
							local gemType = LuaFnGetItemType(Gem[j])
							for k = 0, equipMaxGemCount - 1 do
								gemEmbededIdx = GetGemEmbededType( sceneId, selfId, i, k )
								local Type = LuaFnGetItemType( gemEmbededIdx )
								if Type == gemType then
									-- ð¯i l§p hai khöa bäo thÕch loÕi hình (bäo thÕch ÐÕi loÕi)
									gemYi = 1
								end
							end
							if gemYi == 0 then
								local BagIndex = TryRecieveItem( sceneId, selfId, Gem[j], QUALITY_MUST_BE_CHANGE)
								GemEnchasing( sceneId, selfId, BagIndex, i )
							end
						end
					end
				end --can == 1
end
		

		x900030_NotifyTip( sceneId, selfId, "Chúc m×ng các hÕ, các hÕ tay nãi lý t¤t cä trang b¸ cùng ðã toàn bµ ðßþc khäm [#R3c¤p bäo thÕch #Y]." )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)

		end


	if GetNumText() == 306 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId,  19830424)
	end

	if GetNumText()==501 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1001 )
	end
	if GetNumText()==502 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112233 )
	end
	if GetNumText()==503 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1002 )
	end
	if GetNumText()==504 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1004)
	end
	if GetNumText()==505 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1005)
	end
	if GetNumText()==506 then
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,selfId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1006)
	end
	if GetNumText()==302 then
		--BeginUICommand( sceneId )
		--UICommand_AddInt( sceneId, selfId )
		--UICommand_AddInt(sceneId, 1)--type, Ði¬m Kim Chi Ti­n
		--EndUICommand( sceneId )
		--DispatchUICommand( sceneId, selfId, 75117 )

	BeginEvent( sceneId )
		AddText( sceneId, "Xin lña ch÷n phß½ng thÑc ðøc l± cñc hÕng:" )
		AddNumText( sceneId, x001101_g_ScriptId, "SØ døng Ði¬m Kim Chi Ti­n ð¬ ðøc l±", 6, 10 )
		AddNumText( sceneId, x001101_g_ScriptId, "SØ døng Hàn Ng÷c Tinh Tuý ð¬ ðøc l±", 6, 11 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	elseif GetNumText() == 10 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 1 )		--type?????????
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )
	
	elseif GetNumText() == 11 then
	
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 2 )		--type?????????
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 75117 )


	end
	if GetNumText()==303 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 23 )
	end
	if GetNumText()==304 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 27 )
	end
	if GetNumText()==309111 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 25 )
	end
	if GetNumText()==305 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810424 )
	end
	if GetNumText()==307 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112236 )
	end
	if GetNumText()==308 then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, selfId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 112237 )
	end

		if GetNumText() == 301 then
		local	tEquipGemTable	= { 0, 1, 2, 3, 4, 5, 6, 7, 8,9,10, 12, 14, 15, 16, 17, 18 } --8,??,17??
		local	Bore_Count			= GetBagGemCount( sceneId, selfId, 0 )
		local nLevel					= GetBagItemLevel( sceneId, selfId, 0 )
		local EquipType				= LuaFnGetBagEquipType( sceneId, selfId, 0 )
		local find						= 0
		local bagbegin = GetBasicBagStartPos(sceneId, selfId)
		local bagend = GetBasicBagEndPos(sceneId, selfId)		
		for i=bagbegin, bagend do
			local itemIndex = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i )			
			if itemIndex>0 then
				local ret = LuaFnIsItemLocked( sceneId, selfId, i )
				if ret ~= 0 then
					return
				end	
				local EquipType = LuaFnGetBagEquipType( sceneId, selfId, i )				
				local find = 0
			for i, gem in tEquipGemTable do
				if gem == EquipType then
					find = 1
				end
			end
				if find == 1 then	
					local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )					
					while equipMaxGemCount<3 do				
						local ret = AddBagItemSlot( sceneId, selfId, i )
						equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )			
					end
            AddBagItemSlotFour( sceneId, selfId, i )
				end
			end
		end
				
              AddBagItemSlot( sceneId, selfId, 0 )
              AddBagItemSlot( sceneId, selfId, 1 )
              AddBagItemSlot( sceneId, selfId, 2 )
              AddBagItemSlot( sceneId, selfId, 3 )
              AddBagItemSlot( sceneId, selfId, 4 )
              AddBagItemSlot( sceneId, selfId, 5 )
              AddBagItemSlot( sceneId, selfId, 6 )
              AddBagItemSlot( sceneId, selfId, 7 )
              AddBagItemSlot( sceneId, selfId, 8 )
              AddBagItemSlot( sceneId, selfId, 9 )
              AddBagItemSlot( sceneId, selfId, 10 )
              AddBagItemSlot( sceneId, selfId, 11 )
              AddBagItemSlot( sceneId, selfId, 12 )
              AddBagItemSlot( sceneId, selfId, 13 )
              AddBagItemSlot( sceneId, selfId, 14 )
              AddBagItemSlot( sceneId, selfId, 15 )
              AddBagItemSlot( sceneId, selfId, 16 )
              AddBagItemSlot( sceneId, selfId, 17 )
              AddBagItemSlot( sceneId, selfId, 18 )
              AddBagItemSlot( sceneId, selfId, 19 )
              AddBagItemSlot( sceneId, selfId, 20 )
              AddBagItemSlot( sceneId, selfId, 21 )
              AddBagItemSlot( sceneId, selfId, 22 )
              AddBagItemSlot( sceneId, selfId, 23 )
              AddBagItemSlot( sceneId, selfId, 24 )
              AddBagItemSlot( sceneId, selfId, 25 )
              AddBagItemSlot( sceneId, selfId, 26 )
              AddBagItemSlot( sceneId, selfId, 27 )
              AddBagItemSlot( sceneId, selfId, 28 )
              AddBagItemSlot( sceneId, selfId, 29 )
		x900030_NotifyTip( sceneId, selfId, "Bao vây t¤t cä trang b¸ ðã thành công m· ra 4kh±ng ." )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	end
	
	if GetNumText() == 919 then
		if QueryHumanAbilityLevel( sceneId, selfId, 46 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 46, 1 )
		end
		for i = 644, 703 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		x000061_MsgBox( sceneId, selfId, targetId, "    Chúc m×ng các hÕ ðã h÷c hªt t¤t cä ph¯i phß½ng Tinh luy®n" )
    end
	if GetNumText() == 818 then
		if QueryHumanAbilityLevel( sceneId, selfId, 47 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 47, 1 )
		end
		for i = 704, 773 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		for i = 804, 883 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		x000061_MsgBox( sceneId, selfId, targetId, "    Chúc m×ng các hÕ ðã h÷c hªt t¤t cä ph¯i phß½ng Tinh chª" )
	end
	if GetNumText() == 717 then
		if QueryHumanAbilityLevel( sceneId, selfId, 48 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 48, 1 )
		end
		for i = 774, 803 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		
		for i = 1064, 1075 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
 		
		x000061_MsgBox( sceneId, selfId, targetId, "    Chúc m×ng các hÕ ðã h÷c hªt t¤t cä ph¯i phß½ng Tinh công" )
	end
	
	if GetNumText() == 616 then
		--PrintNum(sceneId )
		--PrintNum(targetId )

		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, -1 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19810313 )
	end	

end
--**********************************
--ð¯i thoÕi cØa s± tin tÑc nêu lên
--**********************************
function x900030_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end
--**********************************
--nh§n thØ NPCnhi®m vø
--**********************************
function x900030_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	
end

--**********************************
--cñ tuy®t thØ NPCnhi®m vø
--**********************************
function x900030_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--cñ tuy®t lúc sau, phäi phän h°i NPCchuy®n ki®n li®t bi¬u

end

--**********************************
--tiªp tøc (ðã tiªp nhi®m vø)
--**********************************
function x900030_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	
end

--**********************************
--tin tÑc nêu lên
--**********************************
function x900030_MsgBox( sceneId, selfId, str )	
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x900030_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 4 )
	local str
	if nMsgIndex == 1 then
		str = format( x900030_g_strGongGaoInfo[1], PlayerName, strItemInfo )
	elseif nMsgIndex == 2 then
		str = format( x900030_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	elseif nMsgIndex == 3 then
		str = format( x900030_g_strGongGaoInfo[3], PlayerName, strItemInfo )
	else
		str = format( x900030_g_strGongGaoInfo[4], PlayerName, strItemInfo )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end


--**********************************
--ð® trình ðã làm xong nhi®m vø
--**********************************
function x900030_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

end

--**********************************
--tØ vong sñ ki®n
--**********************************
function x900030_OnDie( sceneId, selfId, killerId )
end

--**********************************
--b¡t m¡t nêu lên
--**********************************
function x900030_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
