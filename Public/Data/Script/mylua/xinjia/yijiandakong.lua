--k�ch b�n g�c h�o


x900030_g_scriptId = 900030

x900030_g_strGongGaoInfo = {
  "#{_INFOUSR%s} #cff99cc� #GL�c D߽ng (258, 252) #Yb�o th�ch c�ng t��ng #cff99ccch� th�nh c�ng m�i kh�c l�i m�t vi�n l�e l�e s�ng l�n #cFF0000#{_INFOMSG%s}#H#cff99cc, b�o th�ch thu�c t�nh tr�n di�n r�ng � nh�n ���c t�ng l�n!", 
  "#{_INFOUSR%s} #cff99cc� #GL�c D߽ng (258, 252) #Yb�o th�ch c�ng t��ng #cff99ccch� th�nh c�ng m�i kh�c l�i m�t vi�n l�e l�e s�ng l�n #cFF0000#{_INFOMSG%s}#H#cff99cc, b�o th�ch thu�c t�nh tr�n di�n r�ng � nh�n ���c t�ng l�n!", 
  "#{_INFOUSR%s} #cff99cc� #GL�c D߽ng (258, 252) #Yb�o th�ch c�ng t��ng #cff99ccch� th�nh c�ng m�i kh�c l�i m�t vi�n l�e l�e s�ng l�n #cFF0000#{_INFOMSG%s}#H#cff99cc, b�o th�ch thu�c t�nh tr�n di�n r�ng � nh�n ���c t�ng l�n!",
  "#{_INFOUSR%s} #cff99cc� #GL�c D߽ng (258, 252) #Yb�o th�ch c�ng t��ng #cff99ccch� th�nh c�ng m�i kh�c l�i m�t vi�n l�e l�e s�ng l�n #cFF0000#{_INFOMSG%s}#H#cff99cc, b�o th�ch thu�c t�nh tr�n di�n r�ng � nh�n ���c t�ng l�n!", 
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
--s� ki�n l�n nhau nh�p kh�u
--**********************************
function x900030_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"       #GTrang b� x߷ng #Wc�ng #Gb�o th�ch x߷ng #Wch�n h�ng, c� th� T� Khai #GTrang b� khoan #W, #Gb�o th�ch ���c kh�m c�ng b�o th�ch b� �i #W, trang b� c߶ng h�a #W, #Gm�t ki�n b�n kh�ng #W, #GTrang b� kh�c minh #W, #GTrang b� m�i kh�c #Wch� to�n b� c�ng n�ng thao t�c.")
		--AddText(sceneId, "       #b#cFF0000ch�: C�c v� ng߶i ch�i, xin kh�ng c�n d�ng 5 c�i 8. 8 �i h�p th�nh, h�p �i ra 9. 8 thu�c t�nh vu 8. 8 gi�ng nhau, n�u kh�ng nghe khuy�n b�o c�o, h�u qu� b�n ph�c kh�i kh�ng ph� tr�ch! (8. 1, 8. 2 trong v�ng ��ch, �u l�) xin ng߶i ch�i t� h�nh ch� �! . ")

		AddNumText( sceneId,x900030_g_scriptId,"#GB�o th�ch x߷ng",6,30)
		AddNumText( sceneId,x900030_g_scriptId,"#GTrang b� x߷ng",6,20)
		AddNumText( sceneId,x900030_g_scriptId, "#gFF0FA0trang b� b�n � s�a ch�a",6,616)
		AddNumText( sceneId,x900030_g_scriptId, "Ta mu�n h�c tinh luy�n (R�n) ph�i ph߽ng", 2, 919 )
		AddNumText( sceneId,x900030_g_scriptId, "Ta mu�n h�c tinh ch� (May M�c) ph�i ph߽ng", 2, 818 )
		AddNumText( sceneId,x900030_g_scriptId, "Ta mu�n h�c tinh c�ng (C�ng Ngh�) ph�i ph߽ng", 2, 717 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x900030_OnEventRequest( sceneId, selfId, targetId, eventId )
	
	if GetNumText() == 20 then
			BeginEvent(sceneId)	
				AddText( sceneId, "  #WKh� l�c n�y ti�n h�nh #Gtrang b� c߶ng h�a #Ic�ng v�i trang b� xem x�t g� c�ng n�ng thao t�c #I, Trang b� xem x�t t� ch�t sau, c� th� th�ng qua #Gm�t l�n n�a xem x�t t� ch�t thao t�c #r #Wn�u l�n: #Gtrang ph�c m�t #W, #Gt�a k� #W, #Gv� h�n #W, #GLong V�n #W, ch�ng �� h�t n�i tr� c߶ng h�a c�p xem x�t ph�c v�." )
				AddNumText(sceneId, x900030_g_scriptId,"Gi�m иnh T� Ch�t Trang B�   ", 6, 501)
				AddNumText(sceneId, x900030_g_scriptId,"Gi�m �nh t� ch�t trang b� l�i t� �u   ", 6, 502)
				AddNumText(sceneId, x900030_g_scriptId,"#GTrang b� c߶ng h�a      ", 6, 503)
				AddNumText(sceneId, x900030_g_scriptId,"Gia t�ng kh� tu luy�n s� l�n   ", 6, 504)
				AddNumText(sceneId, x900030_g_scriptId,"#GTrang b� kh�c minh   ", 6, 505)
				AddNumText(sceneId, x900030_g_scriptId,"Trang b� tr� minh   ", 6, 506)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
	end
	
	if GetNumText() == 30 then
			BeginEvent(sceneId)	
				AddText( sceneId, "  #GM�t ki�n ���c kh�m #Wti�n xin b�o ��m ch�nh m�nh �� #Ggia nh�p m�n ph�i #W, Xin s� c�n ���c kh�m b�o th�ch #Gtrang b� #W� �t bao v�y trung, �i�m ��nh #GM�t ki�n ���c kh�m #Wc�ng n�ng sau, c�c h� bao v�y t�t c� trang b� h�i t� �ng d�a theo m�n ph�i thu�c t�nh ���c kh�m thu�c lo�i ch�nh m�nh to�n b� #Yt� c�p b�o th�ch #W." )
				--AddNumText(sceneId, x900030_g_scriptId, "#G m�t ki�n ���c kh�m    #cFF0000[tay n�i m�t ki�n b�o th�ch]", 6, 300)
				--AddNumText(sceneId, x900030_g_scriptId, "#G m�t ki�n khoan    #cFF0000[tay n�i m�t ki�n b�n kh�ng]", 6, 301)
				AddNumText(sceneId, x900030_g_scriptId,"#GB�o th�ch h�p th�nh    ", 6, 303)
				AddNumText(sceneId, x900030_g_scriptId,"#GTrang b� khoan    ", 6, 309111)
				AddNumText(sceneId, x900030_g_scriptId,"#GB�o th�ch ���c kh�m    ", 6, 306)
				AddNumText(sceneId, x900030_g_scriptId,"#GB�o th�ch b� �i     ", 6, 304)
				AddNumText(sceneId, x900030_g_scriptId,"#GKhoan c�c h�n    ", 6, 302)
				AddNumText( sceneId,x900030_g_scriptId,"#GC�c h�n ���c kh�m    ", 6, 9 )
				AddNumText( sceneId,x900030_g_scriptId,"#GC�c h�n b� �i      ", 6, 16 )
				AddNumText(sceneId, x900030_g_scriptId,"#GB�o th�ch t�o h�nh      ", 6, 307)
				--AddNumText(sceneId, x900030_g_scriptId, " b�o th�ch luy�n     ", 6, 308)
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
				AddText( sceneId, "    Trang ph�c m�t l�m �p ti�n, xin c�c h� � b� �n ch�ng ta #YTrang web h�u tr߶ng #W, V�i l�m �p trang ph�c m�t ti�n h�nh #cFF0000khoan #W, n�u kh�ng kh�ng th� thao t�c." )
				AddText( sceneId, "    L�m �p trang ph�c m�t c�n #GTh�i Trang Ph�i S�c �i�m Xuy�t Ph� #Wm�t c�i, h�p th�nh trang ph�c m�t b�o th�ch c�n #YTh�i Trang Ph�i S�c Gia C�ng Ph� #Wm�t c�i, ph�i � do�n Thi�n m�u ch� ti�n h�nh thao t�c." )
				AddText( sceneId, "    Trang ph�c m�t b�o th�ch b� �i xin s� d�ng #YCao C�p B�o Th�ch Tr�ch Tr� Ph� #W, Xin tham chi�u d߾i t�i li�u. #r#Gtrang ph�c m�t b�o th�ch C�p 1 #Ws� d�ng #YCao C�p B�o Th�ch Tr�ch Tr� Ph� C�p 6" )
				AddText( sceneId, "#GTrang ph�c m�t b�o th�ch C�p 2 #Ws� d�ng #YCao C�p B�o Th�ch Tr�ch Tr� Ph� C�p 7 #r#GTrang ph�c m�t b�o th�ch C�p 3 #Ws� d�ng #YCao C�p B�o Th�ch Tr�ch Tr� Ph� C�p 8 #r#GTrang ph�c m�t b�o th�ch C�p 4 #Ws� d�ng #YCao C�p B�o Th�ch Tr�ch Tr� Ph� C�p 9" )
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
			AddText( sceneId, "    R� r�ng trang ph�c m�t �c hi�u l� � c�c h� trang ph�c m�t l�m �p sau, b�i v� m�y t�nh ph�i tr� v�n �, c�m gi�c tr� ch�i kh�ng l�u s߾ng khi s� d�ng." )
			AddText( sceneId, "    Trang ph�c m�t �c hi�u r� r�ng sau, kh�ng th� mi�n ph� l�nh, ph�i s� b�o th�ch b� �i sau, m�t l�n n�a l�m �p sau t�i kh� m�t l�n n�a thu ho�ch �c hi�u, #cFF0000xin c�c h� c�n th�n thao t�c! ! !" )
			AddNumText( sceneId,x900030_g_scriptId,"#gFF0FA0Ng� ph�i r� r�ng hi�u qu�",6,26)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end

		if GetNumText() == 300 then
		local MemPai=GetMissionData( sceneId, selfId, MD_SHUANGXIANGPAO_LASTTIME )
		--if MemPai < 1 then
		--	X900030_NotifyTip(sceneId, selfId, " c�c h� c�n kh�ng c� th� ��nh b�o th�ch, xin c�c h� gia nh�p m�n ph�i sau l�i �n. ")
		--	return
		--end
		if LuaFnGetMaterialBagSpace( sceneId, selfId ) < 1 then
			x900030_NotifyTip( sceneId, selfId, "  C�a ng߽i tay n�i t�i li�u lan kh�ng c� kh�ng gian, s�a sang l�i l�u ra m�t c�ch sau l�i �n t�m ta." )
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
				-- ph�n �o�n hay kh�ng c�n c� th� ���c kh�m nhi�u h�n b�o th�ch
				local equipMaxGemCount = GetBagGemCount( sceneId, selfId, i )
				local equipEmbededGemCount = GetGemEmbededCount( sceneId, selfId, i )

				--modi: Lbyhay kh�ng c� th� ���c kh�m
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
									-- �i l�p hai kh�a b�o th�ch lo�i h�nh (b�o th�ch ��i lo�i)
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
									-- �i l�p hai kh�a b�o th�ch lo�i h�nh (b�o th�ch ��i lo�i)
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
		

		x900030_NotifyTip( sceneId, selfId, "Ch�c m�ng c�c h�, c�c h� tay n�i l� t�t c� trang b� c�ng �� to�n b� ���c kh�m [#R3c�p b�o th�ch #Y]." )
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
		--UICommand_AddInt(sceneId, 1)--type, �i�m Kim Chi Ti�n
		--EndUICommand( sceneId )
		--DispatchUICommand( sceneId, selfId, 75117 )

	BeginEvent( sceneId )
		AddText( sceneId, "Xin l�a ch�n ph߽ng th�c ��c l� c�c h�ng:" )
		AddNumText( sceneId, x001101_g_ScriptId, "S� d�ng �i�m Kim Chi Ti�n � ��c l�", 6, 10 )
		AddNumText( sceneId, x001101_g_ScriptId, "S� d�ng H�n Ng�c Tinh Tu� � ��c l�", 6, 11 )
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
		x900030_NotifyTip( sceneId, selfId, "Bao v�y t�t c� trang b� �� th�nh c�ng m� ra 4kh�ng ." )
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	end
	
	if GetNumText() == 919 then
		if QueryHumanAbilityLevel( sceneId, selfId, 46 ) ~= 1 then
			SetHumanAbilityLevel( sceneId, selfId, 46, 1 )
		end
		for i = 644, 703 do
			SetPrescription( sceneId, selfId, i, 1 )
		end
		x000061_MsgBox( sceneId, selfId, targetId, "    Ch�c m�ng c�c h� �� h�c h�t t�t c� ph�i ph߽ng Tinh luy�n" )
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
		x000061_MsgBox( sceneId, selfId, targetId, "    Ch�c m�ng c�c h� �� h�c h�t t�t c� ph�i ph߽ng Tinh ch�" )
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
 		
		x000061_MsgBox( sceneId, selfId, targetId, "    Ch�c m�ng c�c h� �� h�c h�t t�t c� ph�i ph߽ng Tinh c�ng" )
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
--�i tho�i c�a s� tin t�c n�u l�n
--**********************************
function x900030_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )
end
--**********************************
--nh�n th� NPCnhi�m v�
--**********************************
function x900030_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	
end

--**********************************
--c� tuy�t th� NPCnhi�m v�
--**********************************
function x900030_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--c� tuy�t l�c sau, ph�i ph�n h�i NPCchuy�n ki�n li�t bi�u

end

--**********************************
--ti�p t�c (�� ti�p nhi�m v�)
--**********************************
function x900030_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	
end

--**********************************
--tin t�c n�u l�n
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
--� tr�nh �� l�m xong nhi�m v�
--**********************************
function x900030_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )

end

--**********************************
--t� vong s� ki�n
--**********************************
function x900030_OnDie( sceneId, selfId, killerId )
end

--**********************************
--b�t m�t n�u l�n
--**********************************
function x900030_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
