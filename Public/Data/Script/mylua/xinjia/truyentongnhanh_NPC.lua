--Ð¸a ð° ði¬m truy«n t¯ng NPC

x900021_g_ScriptId	= 900021

--**********************************
--Sñ ki®n lçn nhau cØa vào
--**********************************
function x900021_OnDefaultEvent( sceneId, selfId, targetId )
        RestoreHp( sceneId, selfId ) --Ð¥y máu
        RestoreMp( sceneId, selfId ) --Ð¥y khí
	    RestoreRage( sceneId, selfId ) --Ð¥y nµ
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0)
	BeginEvent( sceneId )
			AddText( sceneId, "Hoan nghênh các hÕ lña ch÷n Truy«n t¯ng!!!" )
			AddNumText( sceneId, x900021_g_ScriptId, " Thành th¸", 9, 600 )
			AddNumText( sceneId, x900021_g_ScriptId, " Môn phái", 9, 900 )			
			AddNumText( sceneId, x900021_g_ScriptId, " BOSS Dã ngoÕi", 9, 100 )
			AddNumText( sceneId, x900021_g_ScriptId, " BOSS C± Mµ", 9, 200 )			
			AddNumText( sceneId, x900021_g_ScriptId, " BOSS T¤t tranh", 9, 300 )
			AddNumText( sceneId, x900021_g_ScriptId, " Phó bän", 9, 400 )
			AddNumText( sceneId, x900021_g_ScriptId, " Bän ð° nhi®m vø chính tuyªn [S½ nh§p]", 9, 500 )
			AddNumText( sceneId, x900021_g_ScriptId, " Bän ð° nhi®m vø chính tuyªn [Cao thü]", 9, 1000 )
			AddNumText( sceneId, x900021_g_ScriptId, " Dã ngoÕi ð¸a ð° luy®n c¤p", 9, 800 )
			AddNumText( sceneId, x900021_g_ScriptId, " Dã ngoÕi s½n ðµng luy®n c¤p", 9, 700 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
--**********************************
--Sñ ki®n li®t bi¬u ch÷n trúng mµt hÕng
--**********************************
function x900021_OnEventRequest( sceneId, selfId, targetId, eventId )

	if GetNumText() == 100 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i BOSS Dã ngoÕi:" )
			AddNumText( sceneId, x900021_g_ScriptId, " Thäo Nguyên BÕch Minh Kh·i", 9, 101)
			AddNumText( sceneId, x900021_g_ScriptId, " Võ Di Bång Yêu", 9, 102)
			AddNumText( sceneId, x900021_g_ScriptId, " Thß½ng S½n Huy«n Kích Kim Cang", 9, 103)
			AddNumText( sceneId, x900021_g_ScriptId, " Huy«n Vû Mãng C± Chu Cáp", 9, 104)		
			AddNumText( sceneId, x900021_g_ScriptId, " Kính H° H²n Giang Long", 9, 110)
			AddNumText( sceneId, x900021_g_ScriptId, " Bäo Tàng Ðµng Mµc Dûng Bá", 9, 105)
			AddNumText( sceneId, x900021_g_ScriptId, " Ma Nhai Ðµng Công H°n", 9, 111)
			AddNumText( sceneId, x900021_g_ScriptId, " Ngân Ngai Tuyªt Nguyên Xí Nga Vß½ng", 9, 107)
			AddNumText( sceneId, x900021_g_ScriptId, " T¥n Hoàng Ð¸a Cung T¥ng 1", 9, 106)
			AddNumText( sceneId, x900021_g_ScriptId, " T¥n Hoàng Ð¸a Cung T¥ng 2", 9, 108)			
			AddNumText( sceneId, x900021_g_ScriptId, " T¥n Hoàng Ð¸a Cung T¥ng 3", 9, 109)	
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 101 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 20, 152, 106, 10 )
	end

	if GetNumText() == 110 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 125, 135, 10 )
	end
	
	if GetNumText() == 106 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 400, 58, 205, 10 )
	end	
	
	if GetNumText() == 108 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 401, 165, 156, 10 )
	end	
	
	if GetNumText() == 109 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 402, 128, 84, 10 )
	end	

	if GetNumText() == 102 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 32, 140, 172, 10 )
	end

	if GetNumText() == 103 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 59, 247, 10 )
	end

	if GetNumText() == 104 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 39, 182, 202, 10 )
	end

	if GetNumText() == 105 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 150, 129, 24, 10 )
	end

	if GetNumText() == 107 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 188, 79, 38, 10 )
	end

	if GetNumText() == 111 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 170, 216, 176, 10 )

	end

	if GetNumText() == 200 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i BOSS C± Mµ:" )
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 1", 9, 201)
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 2", 9, 202)
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 3", 9, 203)
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 4", 9, 204)
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 5", 9, 205)
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 6", 9, 206)
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 7", 9, 207)
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 8", 9, 208)
			AddNumText( sceneId, x900021_g_ScriptId, " C± Mµ T¥ng 9", 9, 209)			
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 201 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 159, 107, 87, 10 )
	end

	if GetNumText() == 202 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 160, 107, 34, 10 )
	end

	if GetNumText() == 203 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 161, 109, 99, 10 )
	end

	if GetNumText() == 204 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 162, 49, 36, 10 )
	end

	if GetNumText() == 205 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 163, 102, 43, 10 )
	end

	if GetNumText() == 206 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 164, 65, 62, 10 )
	end

	if GetNumText() == 207 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 165, 100, 85, 10 )
	end

	if GetNumText() == 208 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 166, 87, 21, 10 )
	end

	if GetNumText() == 209 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 167, 53, 74, 10 )
	end

	if GetNumText() == 300 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i BOSS T¤t tranh:" )
			--AddNumText( sceneId, x900021_g_ScriptId, "* Kính H° H²n Giang Long", 9, 330)
			AddNumText( sceneId, x900021_g_ScriptId, " Bäo Rß½ng Tranh ÐoÕt", 9, 331)
			AddNumText( sceneId, x900021_g_ScriptId, " Ngàn Nåm Long Quy", 9, 332)
			AddNumText( sceneId, x900021_g_ScriptId, " Kính H° Tiên Thäo", 9, 333)
			AddNumText( sceneId, x900021_g_ScriptId, " Thúc Hà Sß½ng Änh", 9, 334)		
			AddNumText( sceneId, x900021_g_ScriptId, " Ðôn Hoàng Tân Thü", 9, 335)		
			AddNumText( sceneId, x900021_g_ScriptId, " Thái H° Tân Thü", 9, 336)		
			AddNumText( sceneId, x900021_g_ScriptId, " Tây H° Tân Thü", 9, 337)
			AddNumText( sceneId, x900021_g_ScriptId, " Thß½ng S½n Trung C¤p", 9, 338)			
			AddNumText( sceneId, x900021_g_ScriptId, " NhÕn b¡c Trung C¤p", 9, 339)		
			AddNumText( sceneId, x900021_g_ScriptId, " Nam Häi Cao C¤p", 9, 340)
			AddNumText( sceneId, x900021_g_ScriptId, " Nam Chiêu Cao C¤p", 9, 341)			
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 330 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 138, 135, 10 )
	end

	if GetNumText() == 331 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 141, 113, 10 )
	end

	if GetNumText() == 332 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 172, 34, 10 )
	end

	if GetNumText() == 333 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 99, 37, 10 )
	end

	if GetNumText() == 334 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 40, 261, 10 )
	end

	if GetNumText() == 335 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 8, 152, 115, 10 )
	end

	if GetNumText() == 336 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 4, 132, 144, 10 )
	end

	if GetNumText() == 337 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 30, 154, 119, 10 )
	end

	if GetNumText() == 338 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 153, 192, 10 )
	end

	if GetNumText() == 339 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 19, 175, 105, 10 )
	end

	if GetNumText() == 340 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 34, 254, 180, 10 )
	end

	if GetNumText() == 341 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 28, 120, 115, 10 )
	end

	if GetNumText() == 600 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Thành th¸:" )
			AddNumText( sceneId, x900021_g_ScriptId, " LÕc Dß½ng - CØu Châu thß½ng hµi", 9, 601)
			AddNumText( sceneId, x900021_g_ScriptId, " LÕc Dß½ng C¯ ðô", 9, 607)			
			AddNumText( sceneId, x900021_g_ScriptId, " Tô Châu Thành tr¤n", 9, 602)			
			AddNumText( sceneId, x900021_g_ScriptId, " Tô Châu - Thiªt Tßþng Ph¯", 9, 604)
			AddNumText( sceneId, x900021_g_ScriptId, " Thúc Hà C± tr¤n", 9, 605)
			AddNumText( sceneId, x900021_g_ScriptId, " Lâu Lan C± thành", 9, 606)
			AddNumText( sceneId, x900021_g_ScriptId, " Huy«n Vû Ðäo  ", 9, 603)
			AddNumText( sceneId, x900021_g_ScriptId, " Thánh Thú S½n  ", 9, 608)
			AddNumText( sceneId, x900021_g_ScriptId, " DÕ Tây H°  ", 9, 609)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 601 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
	end
	if GetNumText() == 607 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183, 10 )
	end	

	if GetNumText() == 602 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114, 162, 10 )
	end

	if GetNumText() == 604 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132, 10 )
	end

	if GetNumText() == 605 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 202, 211, 10 )
	end

	if GetNumText() == 606 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 287, 132, 10 )
	end
	
	if GetNumText() == 603 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 39, 88, 32, 10 )
	end

	if GetNumText() == 608 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 230, 226, 10 )
	end

	if GetNumText() == 609 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 121, 84, 48, 10 )
	end
	
	if GetNumText() == 400 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Phó bän:" )
			AddNumText( sceneId, x900021_g_ScriptId, " LÕc Dß½ng Túc C¥u", 9, 401)	
			AddNumText( sceneId, x900021_g_ScriptId, " Trân Long KÏ Cuµc", 9, 402)			
			AddNumText( sceneId, x900021_g_ScriptId, " Tô Châu Q123", 9, 403)
			AddNumText( sceneId, x900021_g_ScriptId, " Lâu Lan Q123", 9, 404)			
			AddNumText( sceneId, x900021_g_ScriptId, " Lâu Lan T¥m Bäo", 9, 405)
			AddNumText( sceneId, x900021_g_ScriptId, " Thái H° Yªn TØ Ô", 9, 406)
			AddNumText( sceneId, x900021_g_ScriptId, " Lâu Lan Phiêu Mi¬u Phong", 9, 407)
			AddNumText( sceneId, x900021_g_ScriptId, " Di®t Phï Kính H°", 9, 408)						

		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 401 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 202, 58, 10 )
	end

	if GetNumText() == 402 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 268, 87, 10 )
	end

	if GetNumText() == 403 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 61, 162, 10 )
	end

	if GetNumText() == 404 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 293, 68, 10 )
	end

	if GetNumText() == 405 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 162, 77, 10 )
	end

	if GetNumText() == 406 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 4, 71, 119, 10 )
	end
	
	if GetNumText() == 407 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 190, 222, 10 )
	end
		
	if GetNumText() == 408 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 200, 54, 10 )
	end
		
	if GetNumText() == 500 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Bän ð° nhi®m vø chính tuyªn [S½ nh§p]:" )
			AddNumText( sceneId, x900021_g_ScriptId, " Kiªm Các", 9, 501)
			AddNumText( sceneId, x900021_g_ScriptId, " Vô Lßþng S½n", 9, 502)
			AddNumText( sceneId, x900021_g_ScriptId, " Ðôn Hoàng", 9, 503)
			AddNumText( sceneId, x900021_g_ScriptId, " Tung S½n", 9, 504)
			AddNumText( sceneId, x900021_g_ScriptId, " Tây H°", 9, 505)
			AddNumText( sceneId, x900021_g_ScriptId, " Nhî Häi", 9, 506)
			AddNumText( sceneId, x900021_g_ScriptId, " NhÕn Nam", 9, 507)			
		    AddNumText( sceneId, x900021_g_ScriptId, " Long Tuy«n", 9, 508)
			AddNumText( sceneId, x900021_g_ScriptId, " Thß½ng S½n", 9, 509)
			AddNumText( sceneId, x900021_g_ScriptId, " NhÕn B¡c", 9, 510)
			AddNumText( sceneId, x900021_g_ScriptId, " Võ Di", 9, 511)
			AddNumText( sceneId, x900021_g_ScriptId, " ThÕch Lâm", 9, 512)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 501 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 7, 42, 277, 10 )
	end

	if GetNumText() == 502 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 6, 47, 170, 10 )
	end

	if GetNumText() == 503 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 8, 252, 147, 10 )
	end

	if GetNumText() == 504 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 3, 42, 54, 10 )
	end

	if GetNumText() == 505 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 30, 44, 52, 10 )
	end

	if GetNumText() == 506 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 24, 280, 37, 10 )
	end

	if GetNumText() == 507 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 18, 244, 81, 10 )
	end

	if GetNumText() == 508 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 31, 42, 267, 10 )
	end

	if GetNumText() == 509 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 164, 57, 10 )
	end

	if GetNumText() == 510 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 19, 229, 272, 10 )
	end

	if GetNumText() == 511 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 32, 193, 48, 10 )
	end

	if GetNumText() == 512 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 26, 261, 127, 10 )
	end

	if GetNumText() == 700 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Dã ngoÕi s½n ðµng luy®n c¤p:" )
			AddNumText( sceneId, x900021_g_ScriptId, " S½n Ðµng Tuy«n Ô", 9, 704)
			AddNumText( sceneId, x900021_g_ScriptId, " Kiªm Gia", 9, 705)
			AddNumText( sceneId, x900021_g_ScriptId, " Ma Nhai Ðµng", 9, 706)
			AddNumText( sceneId, x900021_g_ScriptId, " Dã Nhân C¯c", 9, 707)
			AddNumText( sceneId, x900021_g_ScriptId, " Ôn Tuy«n Ðµng", 9, 708)
			AddNumText( sceneId, x900021_g_ScriptId, " Hoàng Long Ðµng", 9, 709)			
		    AddNumText( sceneId, x900021_g_ScriptId, " Thäo Li®u Trß¶ng", 9, 710)
			AddNumText( sceneId, x900021_g_ScriptId, " Miêu Nhân Ðµng", 9, 711)
			AddNumText( sceneId, x900021_g_ScriptId, " Thüy Kính H°", 9, 712)
			AddNumText( sceneId, x900021_g_ScriptId, " Tiên Vß½ng Ph¥n", 9, 713)
			AddNumText( sceneId, x900021_g_ScriptId, " Thiên Khanh Thø Ðµng", 9, 714)
			AddNumText( sceneId, x900021_g_ScriptId, " BÕch Sa Diêm Khanh", 9, 715)
			AddNumText( sceneId, x900021_g_ScriptId, " Ðào Hoa Nguyên", 9, 716)
			AddNumText( sceneId, x900021_g_ScriptId, " Häi T£c Ðµng", 9, 717)
			AddNumText( sceneId, x900021_g_ScriptId, " Tuyªt Lang H°", 9, 718)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 704 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 168, 26, 216, 10 )
	end

	if GetNumText() == 705 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 169, 20, 20, 10 )
	end

	if GetNumText() == 706 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 170, 22, 225, 10 )
	end

	if GetNumText() == 707 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 171, 27, 66, 10 )
	end

	if GetNumText() == 708 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 172, 36, 236, 10 )
	end

	if GetNumText() == 709 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 173, 110, 221, 10 )
	end

	if GetNumText() == 710 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 156, 41, 218, 10 )
	end

	if GetNumText() == 711 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 157, 89, 234, 10 )
	end

	if GetNumText() == 712 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 174, 230, 230, 10 )
	end

	if GetNumText() == 713 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 175, 127, 26, 10 )
	end

	if GetNumText() == 714 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 176, 235, 25, 10 )
	end

	if GetNumText() == 715 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 517, 97, 95, 10 )
	end

	if GetNumText() == 716 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 177, 25, 23, 10 )
	end

	if GetNumText() == 717 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 178, 47, 223, 10 )
	end

	if GetNumText() == 718 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 179, 114, 219, 10 )
	end

	if GetNumText() == 800 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Dã ngoÕi ð¸a ð° luy®n c¤p:" )
			AddNumText( sceneId, x900021_g_ScriptId, " Höa Di®m S½n", 9, 801)
			AddNumText( sceneId, x900021_g_ScriptId, " Höa Di­m C¯c", 9, 802)
			AddNumText( sceneId, x900021_g_ScriptId, " Cao Xß½ng", 9, 803)
			AddNumText( sceneId, x900021_g_ScriptId, " Cao Xß½ng Mê Cung", 9, 804)
			AddNumText( sceneId, x900021_g_ScriptId, " Tháp Lý Mµc", 9, 805)
			AddNumText( sceneId, x900021_g_ScriptId, " Tháp Kh¡c LÕp Mã Can", 9, 806)
			--AddNumText( sceneId, x900021_g_ScriptId, " Côn Luân S½n", 9, 807)
			--AddNumText( sceneId, x900021_g_ScriptId, " Côn Luân Phúc Ð¸a", 9, 808)
			AddNumText( sceneId, x900021_g_ScriptId, " ÐÕi Uy¬n", 9, 809)			
		    AddNumText( sceneId, x900021_g_ScriptId, " Hãn Huyªt Lînh", 9, 810)
			--AddNumText( sceneId, x900021_g_ScriptId, " Tát Mã Nhî Hãn", 9, 811)
			--AddNumText( sceneId, x900021_g_ScriptId, " Thánh Höa Cung", 9, 812)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 801 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 423, 223, 29, 10 )
	end

	if GetNumText() == 802 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 519, 71, 29, 10 )
	end

	if GetNumText() == 803 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 424, 31, 38, 10 )
	end

	if GetNumText() == 804 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 520, 100, 99, 10 )
	end

	if GetNumText() == 805 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 425, 32, 29, 10 )
	end

	if GetNumText() == 806 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 427, 28, 24, 10 )
	end

	if GetNumText() == 807 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 541, 109, 19, 10 )
	end

	if GetNumText() == 808 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 421, 93, 36, 10 )
	end

	if GetNumText() == 809 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 431, 193, 222, 10 )
	end

	if GetNumText() == 810 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 432, 88, 91, 10 )
	end

	if GetNumText() == 811 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 536, 40, 217, 10 )
	end

	if GetNumText() == 812 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 537, 25, 97, 10 )
	end

	if GetNumText() == 900 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Môn phái:" )
			AddNumText( sceneId, x900021_g_ScriptId, " Thiªu Lâm", 9, 901)
			AddNumText( sceneId, x900021_g_ScriptId, " Cái Bang", 9, 902)
			AddNumText( sceneId, x900021_g_ScriptId, " Minh Giáo", 9, 903)
			AddNumText( sceneId, x900021_g_ScriptId, " Võ Ðang", 9, 904)
			AddNumText( sceneId, x900021_g_ScriptId, " Thiên Long", 9, 905)
			AddNumText( sceneId, x900021_g_ScriptId, " Tiêu Dao", 9, 906)
			AddNumText( sceneId, x900021_g_ScriptId, " Nga Mi", 9, 907)
			AddNumText( sceneId, x900021_g_ScriptId, " Tinh Túc", 9, 908)
			AddNumText( sceneId, x900021_g_ScriptId, " Thiên S½n", 9, 909)			
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 901 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 9, 95, 84, 10 )
	end

	if GetNumText() == 902 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 10, 92, 79, 10 )
	end

	if GetNumText() == 903 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 11, 97, 108, 10 )
	end

	if GetNumText() == 904 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 12, 77, 98, 10 )
	end

	if GetNumText() == 905 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 13, 95, 91, 10 )
	end

	if GetNumText() == 906 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 14, 118, 149, 10 )
	end

	if GetNumText() == 907 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 15, 95, 87, 10 )
	end

	if GetNumText() == 908 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 16, 96, 95, 10 )
	end

	if GetNumText() == 909 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 17, 94, 63, 10 )
	end

	if GetNumText() == 1000 then
		BeginEvent( sceneId )
					AddText( sceneId, "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Bän ð° nhi®m vø chính tuyªn [Cao thü]:" )
			AddNumText( sceneId, x900021_g_ScriptId, " Thäo Nguyên", 9, 1001)
		    AddNumText( sceneId, x900021_g_ScriptId, " Mai Lînh", 9, 1002)
			AddNumText( sceneId, x900021_g_ScriptId, " Ng÷c Khê", 9, 1003)
			AddNumText( sceneId, x900021_g_ScriptId, " Liêu Tây", 9, 1004)
			AddNumText( sceneId, x900021_g_ScriptId, " Ngân Ngai Tuyªt Nguyên", 9, 1005)
			AddNumText( sceneId, x900021_g_ScriptId, " Nam Häi", 9, 1006)
			AddNumText( sceneId, x900021_g_ScriptId, " Nam Chiêu", 9, 1007)
			AddNumText( sceneId, x900021_g_ScriptId, " Diêm H°", 9, 1008)
			AddNumText( sceneId, x900021_g_ScriptId, " Trß¶ng BÕch S½n", 9, 1009)
			AddNumText( sceneId, x900021_g_ScriptId, " QuÏnh Châu", 9, 1010)
			AddNumText( sceneId, x900021_g_ScriptId, " Miêu Cß½ng", 9, 1011)
			AddNumText( sceneId, x900021_g_ScriptId, " Hoàng Long Phü", 9, 1012)
		EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 1001 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 20, 194, 230, 10 )
	end

	if GetNumText() == 1002 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 33, 180, 72, 10 )
	end

	if GetNumText() == 1003 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 27, 44, 53, 10 )
	end

	if GetNumText() == 1004 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 21, 161, 199, 10 )
	end

	if GetNumText() == 1005 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 188, 60, 222, 10 )
	end

	if GetNumText() == 1006 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 34, 205, 260, 10 )
	end

	if GetNumText() == 1007 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 28, 185, 44, 10 )
	end

	if GetNumText() == 1008 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 415, 46, 27, 10 )
	end

	if GetNumText() == 1009 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 22, 154, 112, 10 )
	end

	if GetNumText() == 1010 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 35, 276, 277, 10 )
	end

    if GetNumText() == 1011 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 29, 69, 40, 10 )
	end

	if GetNumText() == 1012 then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 23, 45, 177, 10 )
	end

end

--**********************************
--Ð¯i thoÕi cØa s± tin tÑc nh¡c nh·
--**********************************
function x900021_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end


