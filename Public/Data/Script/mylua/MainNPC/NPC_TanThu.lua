x045020_g_scriptId = 045020

x045020_g_XinfaID = {}
x045020_g_XinfaID[0] = {01,02,03,04,05,06,55} --,72
x045020_g_XinfaID[1] = {07,08,09,10,11,12,56} --,73
x045020_g_XinfaID[2] = {13,14,15,16,17,18,57} --,74
x045020_g_XinfaID[3] = {19,20,21,22,23,24,58} --,75
x045020_g_XinfaID[4] = {25,26,27,28,29,30,59} --,76
x045020_g_XinfaID[5] = {31,32,33,34,35,36,60} --,77
x045020_g_XinfaID[6] = {37,38,39,40,41,42,61} --,78
x045020_g_XinfaID[7] = {43,44,45,46,47,48,62} --,79
x045020_g_XinfaID[8] = {49,50,51,52,53,54,63} --,80

x045020_g_KhinhCongMP = {23,24,25,26,27,28,29,30,31,34,110,111}
--**********************************
--
--**********************************

function x045020_OnDefaultEvent( sceneId, selfId, targetId )
	local NewbieData = GetMissionData(sceneId, selfId, QUA_TANG_TAN_THU)
	local DataLengh = strlen(NewbieData)
	if DataLengh < 9 then
		for i = 1, 9 - DataLengh do
			NewbieData = "0"..NewbieData
		end
	end
	
	if GetName(sceneId,selfId) == "Admin" then
		-- LuaFnSetSceneWeather(sceneId, 22, 6*60*60*1000)
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,"TLBB LOCAL")
		AddNumText( sceneId, x045020_g_scriptId, "H�i Ph�c Kh� Huy�t", 1, 99 )
			if strsub(NewbieData,1,1) == "0" then
				AddNumText( sceneId, x045020_g_scriptId, "#G[ 1 ] Nh�n Trang B� T�n Th�", 2, 1 )
			end
			if strsub(NewbieData,2,2) == "0" then
				AddNumText( sceneId, x045020_g_scriptId, "#G[ 2 ] Nh�n H�nh Trang T�n Th�", 2, 2 )
			end
			if strsub(NewbieData,3,3) == "0" then
				AddNumText( sceneId, x045020_g_scriptId, "#G[ 3 ] Nh�n V�t Ph�m T�n Th�", 2, 3 )
			end
		
		--if GetMenPai(sceneId,selfId) == 9 then
			--AddNumText( sceneId, x045020_g_scriptId, "#GGia Nh�p M�n Ph�i", 2, 4 )
		--else
			--AddNumText( sceneId, x045020_g_scriptId, "Gia T�ng T�m Ph�p", 2, 4 )
		--end
		AddNumText( sceneId, x045020_g_scriptId, "Nh�n Ti�n T�", 2, 5 )
		--AddNumText( sceneId, x045020_g_scriptId, "Nh�n L� X� N�m M�i", 2, 6 )
		AddNumText( sceneId, x045020_g_scriptId, "R�i �i", 8, 0 )
	EndEvent(sceneId)	
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--
--**********************************
function x045020_OnEventRequest( sceneId, selfId, targetId, eventId )
	local key = GetNumText()
	local NewbieData = GetMissionData(sceneId, selfId, QUA_TANG_TAN_THU)
	local DataLengh = strlen(NewbieData)
	if DataLengh < 9 then
		for i = 1, 9 - DataLengh do
			NewbieData = "0"..NewbieData
		end
	end
	
	if key == 99 then
		RestoreHp(sceneId,selfId)
		RestoreMp(sceneId,selfId)
		
		SetHumanVigor(sceneId,selfId,GetHumanMaxVigor(sceneId, selfId))
		SetHumanEnergy(sceneId,selfId,GetHumanMaxEnergy(sceneId, selfId))
		
		BeginEvent(sceneId)
			AddText(sceneId,"�� ph�c h�i kh� huy�t.")
			AddNumText( sceneId, x045020_g_scriptId, "R�i �i", 8, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
		return
	end
	
	if key == 3 then
		if strsub(NewbieData,3,3) == "1" then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �� nh�n V�t Ph�m T�n Th� r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local FreeDC = LuaFnGetPropertyBagSpace(sceneId,selfId)
		if FreeDC <= 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i h�y d�nh ra 3 � tr�ng trong t�i ��o c�.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		local PosItem1 = TryRecieveItem(sceneId,selfId,33022289,1)
		LuaFnItemBind(sceneId,selfId,PosItem1)
		
		local ItemTime = 7
		local ItemTimeLen = strlen(ItemTime);
		if ItemTimeLen < 8 then
			for i = 1, 8 - ItemTimeLen do
				ItemTime = "0"..ItemTime
			end
		end
		
		local PosItem2 = TryRecieveItem(sceneId,selfId,10291500,1)
		LuaFnSetItemCreator(sceneId,selfId,PosItem2,ItemTime)
		LuaFnItemBind(sceneId,selfId,PosItem2)
		
		local PosItem3 = TryRecieveItem(sceneId,selfId,30280390,1)
		LuaFnSetItemCreator(sceneId,selfId,PosItem3,ItemTime.."0")
		LuaFnItemBind(sceneId,selfId,PosItem3)
		
		SetMissionData(sceneId, selfId, QUA_TANG_TAN_THU, tonumber(NewbieData)+001000000)
	
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�c m�ng ng߽i �� nh�n V�t Ph�m T�n Th� th�nh c�ng!")
			AddNumText( sceneId, x045020_g_scriptId, "R�i �i", 8, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
		return
	end
	
	if key == 2 then
		if strsub(NewbieData,2,2) == "1" then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �� nh�n H�nh Trang T�n Th� r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		local FreeDC = LuaFnGetPropertyBagSpace(sceneId,selfId)
		if FreeDC <= 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i h�y d�nh ra 3 � tr�ng trong t�i ��o c�.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		local PosItem1 = TryRecieveItem(sceneId,selfId,10141030,1)
		LuaFnItemBind(sceneId,selfId,PosItem1)
		local PosItem2 = TryRecieveItem(sceneId,selfId,10141040,1)
		LuaFnItemBind(sceneId,selfId,PosItem2)
		local PosItem3 = TryRecieveItem(sceneId,selfId,30504019,1)
		LuaFnItemBind(sceneId,selfId,PosItem3)
		
		SetMissionData(sceneId, selfId, QUA_TANG_TAN_THU, tonumber(NewbieData)+010000000)
	
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�c m�ng ng߽i �� nh�n H�nh Trang T�n Th� th�nh c�ng!")
			AddNumText( sceneId, x045020_g_scriptId, "R�i �i", 8, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
		return
	end
	
	if key == 1 then
		if strsub(NewbieData,1,1) == "1" then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �� nh�n Trang B� T�n Th� r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		BeginEvent(sceneId)
			AddText(sceneId,"C�c h� mu�n nh�n trang b� theo h� n�o?")
			AddNumText( sceneId, x045020_g_scriptId, "Trang b� Ngo�i C�ng", 6, 11 )
			AddNumText( sceneId, x045020_g_scriptId, "Trang b� N�i C�ng", 6, 12 )
			AddNumText( sceneId, x045020_g_scriptId, "Trang b� B�ng C�ng", 6, 13 )
			AddNumText( sceneId, x045020_g_scriptId, "Trang b� H�a C�ng", 6, 14 )
			AddNumText( sceneId, x045020_g_scriptId, "Trang b� Huy�n C�ng", 6, 15 )
			AddNumText( sceneId, x045020_g_scriptId, "Trang b� еc C�ng", 6, 16 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if key >= 11 and key <= 16 then
		if strsub(NewbieData,1,1) == "1" then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �� nh�n Trang B� T�n Th� r�i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		local FreeDC = LuaFnGetPropertyBagSpace(sceneId,selfId)
		local FreeNL = LuaFnGetMaterialBagSpace(sceneId,selfId)
		if FreeDC <= 15 or FreeNL <= 0 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i h�y d�nh ra 16 � tr�ng trong t�i ��o c� v� 1 � tr�ng trong t�i nguy�n li�u.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
				
		local EquipID = {	10300422, 10302448, 10304426, 10305444, 10309014, 
							10309006, 10309006, 10309012, 10309012, 
							10309001, 10309002, 10309003, 10309004, 10309005, 10309015, 
							10309007
						}
		
		local NgoaiCong = 50301002
		local NoiCong = 50301001
		local BangCong = 50302006
		local HoaCong = 50302007
		local HuyenCong = 50302005
		local DocCong = 50302008
		
		local Select = 0
		
		if key == 11 then
			Select = NgoaiCong
		end
		if key == 12 then
			Select = NoiCong
		end	
		if key == 13 then
			Select = BangCong
		end		
		if key == 14 then
			Select = HoaCong
		end
		if key == 15 then
			Select = HuyenCong
		end		
		if key == 16 then
			Select = DocCong
		end
		
		local GemID = {}
			GemID[1] = {Select, 50303001, 50304002, Select}
			GemID[2] = {Select, 50303001, 50304002, Select}
			GemID[3] = {Select, 50303001, 50304002, Select}
			GemID[4] = {Select, 50303001, 50304002, Select}
			
			GemID[5] = {Select, 50303001, 50304002, Select}
			GemID[6] = {Select, 50303001, 50304002, Select}
			GemID[7] = {Select, 50303001, 50304002, Select}
			GemID[8] = {Select, 50303001, 50304002, Select}
			GemID[9] = {Select, 50303001, 50304002, Select}
			
			GemID[10] = {50313004, 50314001, 50312005, 50313003}
			GemID[11] = {50313004, 50314001, 50312006, 50313003}
			GemID[12] = {50313004, 50314001, 50312007, 50313003}
			GemID[13] = {50313004, 50314001, 50312008, 50313003}
			GemID[14] = {50313004, 50314001, 50311001, 50313003}
			GemID[15] = {50313004, 50314001, 50311002, 50313003}
			
			GemID[16] = {50313004, 50314001, Select, Select}
		
		for i = 1, 16 do
			local PosEquip = TryRecieveItem(sceneId,selfId,EquipID[i],1)
			LuaFnItemBind(sceneId,selfId,PosEquip)
			for j = 1, 4 do
				AddBagItemSlotFour(sceneId,selfId,PosEquip)
				local PosGem = TryRecieveItem(sceneId,selfId,GemID[i][j],1)
				GemEnchasing(sceneId,selfId,PosGem,PosEquip)
			end
		end
	
		SetMissionData(sceneId, selfId, QUA_TANG_TAN_THU, tonumber(NewbieData)+100000000)
	
		BeginEvent(sceneId)
			AddText(sceneId,"Ch�c m�ng ng߽i �� nh�n Trang B� T�n Th� th�nh c�ng!")
			AddNumText( sceneId, x045020_g_scriptId, "R�i �i", 8, 0 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
		return
	end
	
	--if key == 4 then
		--local MenpaiID = GetMenPai(sceneId,selfId)
		--if MenpaiID ~= 9 then
			--DispatchXinfaLevelInfo( sceneId, selfId, targetId, MenpaiID )
		--else
			--BeginEvent(sceneId)
				--AddText(sceneId, "Ng߽i mu�n gia nh�p m�n ph�i n�o?")
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i Thi�u L�m", 6, 40)
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i Minh Gi�o", 6, 41)
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i C�i Bang", 6, 42)
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i V� �ang", 6, 43)
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i Nga My", 6, 44)
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i Tinh T�c", 6, 45)
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i Thi�n Long", 6, 46)
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i Thi�n S�n", 6, 47)
				--AddNumText(sceneId, x045020_g_scriptId, "Gia Nh�p #GPh�i Ti�u Dao", 6, 48)
			--EndEvent(sceneId)
			--DispatchEventList(sceneId, selfId, targetId)
		--end
	--end
	
	--if key >= 40 and key <= 48 then
		--if GetMenPai(sceneId,selfId) ~= 9 then
			--BeginEvent(sceneId)
				--AddText(sceneId, "Ng߽i �� l� m�n h� c�a ph�i kh�c r�i!")
			--EndEvent(sceneId)
			--DispatchEventList(sceneId, selfId, targetId)
			--return
		--end
		
		--SetLevel(sceneId,selfId,60)
		
		--local MenpaiID = key - 40;
		--LuaFnJoinMenpai(sceneId, selfId, targetId, MenpaiID)
		--for i = 1, getn(x045020_g_XinfaID[MenpaiID]) do
			--LuaFnSetXinFaLevel(sceneId,selfId,x045020_g_XinfaID[MenpaiID][i],60)
		--end
		
		--AddSkill(sceneId,selfId,x045020_g_KhinhCongMP[MenpaiID+1])
		
		--BeginEvent(sceneId)
			--AddText(sceneId, "Ch�c m�ng ng߽i �� gia nh�p m�n ph�i!")
		--EndEvent(sceneId)
		--DispatchEventList(sceneId, selfId, targetId)
		--LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
	--end
	
	if key == 5 then
		YuanBao(sceneId,selfId,targetId,1,1000000)
		ZengDian(sceneId,selfId,targetId,1,1000000)
		AddMoney(sceneId,selfId,50000000)
		AddMoneyJZ(sceneId,selfId,50000000)
		BeginEvent(sceneId)
			AddText(sceneId,"�� nh�n ���c Ti�n T�")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
	end
	-- KNB winner
	--if key == 6 then
		--local FreeDC = LuaFnGetPropertyBagSpace(sceneId,selfId)
		--if FreeDC < 1 then
			--BeginEvent(sceneId)
				--AddText(sceneId,"Ng߽i h�y d�nh ra 1 � tr�ng trong t�i ��o c�.")
			--EndEvent(sceneId)
			--DispatchEventList(sceneId,selfId,targetId)
			--return
		--end
		
		--local CardKNB = TryRecieveItem(sceneId,selfId,30130005,1)
		--LuaFnSetItemCreator(sceneId,selfId,CardKNB,1000000)
		
		--BeginEvent(sceneId)
			--AddText(sceneId,"�� nh�n ���c L� X�!!!")
		--EndEvent(sceneId)
		--DispatchEventList(sceneId,selfId,targetId)
		--LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
	--end
	
	if key == 0 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
end

--**********************************
--
--**********************************
function x045020_OnMissionSubmit(sceneId,selfId,targetId,x045020_g_scriptId,ItemID)
	if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"H�y s�p x�p 1 � tr�ng trong t�i ��o c�.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,"Ch�c m�ng ng߽i �� nh�n ���c #G"..GetItemName(sceneId,ItemID).."#W.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,148,0)
end

--**********************************
--
--**********************************
function x045020_ShowMsg( sceneId, selfId, strMsg)
	BeginEvent( sceneId )
		AddText( sceneId, strMsg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end