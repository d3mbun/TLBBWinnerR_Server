--Truyen tong nhanh tich hop vao nut ? o MiniMap
--Code khac voi Script truyen tong tich hop vao NPC
--Lay Script Khoa an toan (hinh cai khoa o Minimap) elock.lua (ID Script 808007) lam mau 
--!!loadlua = 900020

--*******************--
x900020_g_ScriptId	= 900020

--Key cua NumText
x900020_g_Key	=
{
--Lua chon truyen tong		
	["gthanhthi"]	= 600,		
	["gmonphai"]	= 900,	
	["gbossdn"]		= 100,		
	["gbosscm"]		= 200,		
	["gbosstt"]		= 300,		
	["gphoban"]		= 400,		
	["gquesta"]		= 500,		
	["gquestb"]		= 1000,		
	["gtraina"]		= 800,		
	["gtrainb"]		= 700,		
--Boss Da ngoai 100
	["g101"]	= 101,		
	["g102"]	= 102,		
	["g103"]	= 103,		
	["g104"]	= 104,		
	["g105"]	= 105,		
	["g106"]	= 106,		
	["g107"]	= 107,		
	["g108"]	= 108,		
	["g109"]	= 109,		
	["g110"]	= 110,		
	["g111"]	= 111,		
--Boss Co Mo 200
	["g201"]	= 201,		
	["g202"]	= 202,		
	["g203"]	= 203,		
	["g204"]	= 204,		
	["g205"]	= 205,		
	["g206"]	= 206,		
	["g207"]	= 207,		
	["g208"]	= 208,		
	["g209"]	= 209,		
--Boss Tat tranh 300
	["g331"]	= 331,		
	["g332"]	= 332,		
	["g333"]	= 333,		
	["g334"]	= 334,		
	["g335"]	= 335,		
	["g336"]	= 336,		
	["g337"]	= 337,		
	["g338"]	= 338,		
	["g339"]	= 339,		
	["g340"]	= 340,		
	["g341"]	= 341,		
--Pho ban 400	
	["g401"]	= 401,		
	["g402"]	= 402,		
	["g403"]	= 403,		
	["g404"]	= 404,		
	["g405"]	= 405,		
	["g406"]	= 406,		
	["g407"]	= 407,		
	["g408"]	= 408,		
--Ban do nhiem vu chinh tuyen So nhap
	["g501"]	= 501,		
	["g502"]	= 502,		
	["g503"]	= 503,		
	["g504"]	= 504,
	["g505"]	= 505,
	["g505"]	= 505,		
	["g506"]	= 506,		
	["g507"]	= 507,		
	["g508"]	= 508,		
	["g509"]	= 509,		
	["g510"]	= 510,		
	["g511"]	= 511,		
	["g512"]	= 512,		
--Thanh thi 600	
	["g601"]	= 601,		
	["g602"]	= 602,		
	["g603"]	= 603,		
	["g604"]	= 604,		
	["g605"]	= 605,		
	["g605"]	= 605,		
	["g606"]	= 606,		
	["g607"]	= 607,		
	["g608"]	= 608,		
	["g609"]	= 609,		
--Da ngoai son dong train
	["g704"]	= 704,	
	["g705"]	= 705,		
	["g706"]	= 706,		
	["g707"]	= 707,		
	["g708"]	= 708,		
	["g709"]	= 709,		
	["g710"]	= 710,		
	["g711"]	= 711,		
	["g712"]	= 712,		
	["g713"]	= 713,
	["g714"]	= 714,		
	["g715"]	= 715,		
	["g716"]	= 716,		
	["g717"]	= 717,		
	["g718"]	= 718,		
--Da ngoai dia do train
	["g801"]	= 801,		
	["g802"]	= 802,		
	["g803"]	= 803,
	["g804"]	= 804,	
	["g805"]	= 805,		
	["g806"]	= 806,		
	["g807"]	= 807,		
	["g808"]	= 808,		
	["g809"]	= 809,		
	["g810"]	= 810,		
	["g811"]	= 811,		
	["g812"]	= 812,		
--Mon phai
	["g901"]	= 901,		
	["g902"]	= 902,		
	["g903"]	= 903,
	["g904"]	= 904,	
	["g905"]	= 905,		
	["g906"]	= 906,		
	["g907"]	= 907,		
	["g908"]	= 908,		
	["g909"]	= 909,		
--Ban do nhiem vu chinh tuyen Cao thu
	["g1001"]	= 1001,		
	["g1002"]	= 1002,		
	["g1003"]	= 1003,
	["g1004"]	= 1004,	
	["g1005"]	= 1005,		
	["g1006"]	= 1006,		
	["g1007"]	= 1007,		
	["g1008"]	= 1008,		
	["g1009"]	= 1009,		
	["g1010"]	= 1010,		
	["g1011"]	= 1011,		
	["g1012"]	= 1012,			
	
}

--Noi dung cau noi
x900020_g_Msg	=
{
	["tall"]		= "Hoan nghênh các hÕ lña ch÷n Truy«n t¯ng!!!",
	["tbossdn"]		= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i BOSS Dã ngoÕi:",
	["tbosscm"]		= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i BOSS C± Mµ:",
	["tbosstt"]		= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i BOSS T¤t tranh:",
	["tphoban"]		= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Phó bän:",
	["tquesta"]		= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Bän ð° nhi®m vø chính tuyªn [S½ nh§p]:",
	["tquestb"]		= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Bän ð° nhi®m vø chính tuyªn [Cao thü]:",
	["ttraina"]		= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Dã ngoÕi ð¸a ð° luy®n c¤p:",
	["ttrainb"]		= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Dã ngoÕi s½n ðµng luy®n c¤p:",
	["tthanhthi"]	= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Thành th¸:",
	["tmonphai"]	= "#GM¶i các hÕ lña ch÷n truy«n t¯ng t¾i Môn phái:",

}

--**********************************
--*        On Default Event      *--
--**********************************
function x900020_OnDefaultEvent( sceneId, selfId, op )

	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) == 0 then
		return
	end
	-- if GetLevel( sceneId, selfId ) <= 15 then
		-- x900020_MyNotifyTip( sceneId, selfId, "Sau c¤p 15 chÑc nång này s¨ m·" )
		-- return
	-- end
	-- if LuaFnIsStalling( sceneId, selfId ) == 1 then
		-- x900020_MyNotifyTip( sceneId, selfId, "Trong trÕng thái buôn bán không th¬ thñc hi®n thao tác này" )
		-- return
	-- end

	--¿Í»§¶ËM· ra 
	if op == x900020_g_ScriptId then
		--Ðúng·ñÒÑÉèÖÃ¶þc¤pÃÜÂë
		-- if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
			x900020_OnEvent( sceneId, selfId )
		-- else
			--Ðúng·ñ½âËø¶þc¤pÃÜÂë
			-- if LuaFnIsPasswordUnlocked( sceneId, selfId, 0 ) == 1 then
				-- x900020_OnLockUI( sceneId, selfId )
			-- else
				-- x900020_OnUnlockUI( sceneId, selfId )
			-- end
		-- end
		return
	end
	
	local	key	= GetNumText()

	if key == x900020_g_Key["gbossdn"] then
		BeginEvent( sceneId )
			AddText( sceneId, x900020_g_Msg["tbossdn"] )
			AddNumText( sceneId, x900020_g_ScriptId, "Thäo Nguyên BÕch Minh Kh·i", 9, x900020_g_Key["g101"] )
			AddNumText( sceneId, x900020_g_ScriptId, "Võ Di Bång Yêu", 9, x900020_g_Key["g102"] )
			AddNumText( sceneId, x900020_g_ScriptId, "Thß½ng S½n Huy«n Kích Kim Cang", 9, x900020_g_Key["g103"] )
			AddNumText( sceneId, x900020_g_ScriptId, "Huy«n Vû Mãng C± Chu Cáp", 9, x900020_g_Key["g104"] )
			AddNumText( sceneId, x900020_g_ScriptId, "Kính H° H²n Giang Long", 9, x900020_g_Key["g110"] )
			AddNumText( sceneId, x900020_g_ScriptId, "Bäo Tàng Ðµng Mµc Dûng Bá", 9, x900020_g_Key["g105"] )
			AddNumText( sceneId, x900020_g_ScriptId, "Ma Nhai Ðµng Công H°n", 9, x900020_g_Key["g111"] )
			AddNumText( sceneId, x900020_g_ScriptId, "Ngân Ngai Tuyªt Nguyên Xí Nga Vß½ng", 9, x900020_g_Key["g107"] )
			AddNumText( sceneId, x900020_g_ScriptId, "T¥n Hoàng Ð¸a Cung T¥ng 1", 9, x900020_g_Key["g106"] )
			AddNumText( sceneId, x900020_g_ScriptId, "T¥n Hoàng Ð¸a Cung T¥ng 2", 9, x900020_g_Key["g108"] )
			AddNumText( sceneId, x900020_g_ScriptId, "T¥n Hoàng Ð¸a Cung T¥ng 3", 9, x900020_g_Key["g109"] )	
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
		return
	elseif key == x900020_g_Key["g101"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 20, 152, 106, 10 )
	elseif key == x900020_g_Key["g102"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 32, 140, 172, 10 )
	elseif key == x900020_g_Key["g103"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 59, 247, 10 )
	elseif key == x900020_g_Key["g104"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 39, 182, 202, 10 )	
	elseif key == x900020_g_Key["g110"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 125, 135, 10 )
	elseif key == x900020_g_Key["g105"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 150, 129, 24, 10 )
	elseif key == x900020_g_Key["g111"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 170, 216, 176, 10 )
	elseif key == x900020_g_Key["g107"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 188, 79, 38, 10 )
	elseif key == x900020_g_Key["g106"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 400, 58, 205, 10 )
	elseif key == x900020_g_Key["g108"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 401, 165, 156, 10 )
	elseif key == x900020_g_Key["g109"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 402, 128, 84, 10 )
	
	--Boss Co Mo
	--Goi ham x900020_OnBossCoMo o duoi chu khong liet ke het nhu Boss Da ngoai tren
	elseif key == x900020_g_Key["gbosscm"] then
		x900020_OnBossCoMo( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g201"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 159, 107, 87, 10 )
	elseif key == x900020_g_Key["g202"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 160, 107, 34, 10 )
	elseif key == x900020_g_Key["g203"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 161, 109, 99, 10 )
	elseif key == x900020_g_Key["g204"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 162, 49, 36, 10 )
	elseif key == x900020_g_Key["g205"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 163, 102, 43, 10 )
	elseif key == x900020_g_Key["g206"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 164, 65, 62, 10 )
	elseif key == x900020_g_Key["g207"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 165, 100, 85, 10 )
	elseif key == x900020_g_Key["g208"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 166, 87, 21, 10 )
	elseif key == x900020_g_Key["g209"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 167, 53, 74, 10 )

	--Boss Tat tranh
	--Goi ham x900020_OnBossTattranh o duoi
	elseif key == x900020_g_Key["gbosstt"] then
		x900020_OnBossTattranh( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g331"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 141, 113, 10 )
	elseif key == x900020_g_Key["g332"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 172, 34, 10 )
	elseif key == x900020_g_Key["g333"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 99, 37, 10 )
	elseif key == x900020_g_Key["g334"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 40, 261, 10 )
	elseif key == x900020_g_Key["g335"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 8, 152, 115, 10 )
	elseif key == x900020_g_Key["g336"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 4, 132, 144, 10 )
	elseif key == x900020_g_Key["g337"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 30, 154, 119, 10 )
	elseif key == x900020_g_Key["g338"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 153, 192, 10 )
	elseif key == x900020_g_Key["g339"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 19, 175, 105, 10 )
	elseif key == x900020_g_Key["g340"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 34, 254, 180, 10 )
	elseif key == x900020_g_Key["g341"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 28, 120, 115, 10 )
	
	--Pho ban
	--Goi ham x900020_OnPhoban o duoi
	elseif key == x900020_g_Key["gphoban"] then
		x900020_OnPhoban( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g401"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 202, 58, 10 )
	elseif key == x900020_g_Key["g402"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 268, 87, 10 )
	elseif key == x900020_g_Key["g403"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 61, 162, 10 )
	elseif key == x900020_g_Key["g404"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 293, 68, 10 )
	elseif key == x900020_g_Key["g405"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 162, 77, 10 )
	elseif key == x900020_g_Key["g406"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 4, 71, 119, 10 )
	elseif key == x900020_g_Key["g407"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 190, 222, 10 )
	elseif key == x900020_g_Key["g408"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 5, 200, 54, 10 )
	
	--Ban do nhiem vu chinh tuyen So nhap
	--Goi ham x900020_OnQuestA o duoi
	elseif key == x900020_g_Key["gquesta"] then
		x900020_OnQuestA( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g501"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 7, 42, 277, 10 )
	elseif key == x900020_g_Key["g502"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 6, 47, 170, 10 )
	elseif key == x900020_g_Key["g503"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 8, 252, 147, 10 )
	elseif key == x900020_g_Key["g504"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 3, 42, 54, 10 )
	elseif key == x900020_g_Key["g505"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 30, 44, 52, 10 )
	elseif key == x900020_g_Key["g506"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 24, 280, 37, 10 )
	elseif key == x900020_g_Key["g507"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 18, 244, 81, 10 )
	elseif key == x900020_g_Key["g508"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 31, 42, 267, 10 )
	elseif key == x900020_g_Key["g509"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 25, 164, 57, 10 )
	elseif key == x900020_g_Key["g510"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 19, 229, 272, 10 )
	elseif key == x900020_g_Key["g511"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 32, 193, 48, 10 )
	elseif key == x900020_g_Key["g512"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 26, 261, 127, 10 )
	
	--Thanh thi
	--Goi ham x900020_OnThanhthi o duoi
	elseif key == x900020_g_Key["gthanhthi"] then
		x900020_OnThanhthi( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g601"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 234, 132, 10 )
	elseif key == x900020_g_Key["g607"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 0, 132, 183, 10 )
	elseif key == x900020_g_Key["g602"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 114, 162, 10 )
	elseif key == x900020_g_Key["g604"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 1, 235, 132, 10 )
	elseif key == x900020_g_Key["g605"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 420, 202, 211, 10 )
	elseif key == x900020_g_Key["g606"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 186, 287, 132, 10 )
	elseif key == x900020_g_Key["g603"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 39, 88, 32, 10 )
	elseif key == x900020_g_Key["g608"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 158, 230, 226, 10 )
	elseif key == x900020_g_Key["g609"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 121, 84, 48, 10 )
	
	--Da ngoai son dong luyen cap
	--Goi ham x900020_OnTrainB o duoi
	elseif key == x900020_g_Key["gtrainb"] then
		x900020_OnTrainB( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g704"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 168, 26, 216, 10 )
	elseif key == x900020_g_Key["g705"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 169, 20, 20, 10 )
	elseif key == x900020_g_Key["g706"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 170, 22, 225, 10 )
	elseif key == x900020_g_Key["g707"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 171, 27, 66, 10 )
	elseif key == x900020_g_Key["g708"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 172, 36, 236, 10 )
	elseif key == x900020_g_Key["g709"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 173, 110, 221, 10 )
	elseif key == x900020_g_Key["g710"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 156, 41, 218, 10 )
	elseif key == x900020_g_Key["g711"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 157, 89, 234, 10 )
	elseif key == x900020_g_Key["g712"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 174, 230, 230, 10 )
	elseif key == x900020_g_Key["g713"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 175, 127, 26, 10 )
	elseif key == x900020_g_Key["g714"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 176, 235, 25, 10 )
	elseif key == x900020_g_Key["g715"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 517, 97, 95, 10 )
	elseif key == x900020_g_Key["g716"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 177, 25, 23, 10 )
	elseif key == x900020_g_Key["g717"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 178, 47, 223, 10 )
	elseif key == x900020_g_Key["g718"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 179, 114, 219, 10 )
	
	--Da ngoai dia do luyen cap
	--Goi ham x900020_OnTrainA o duoi
	elseif key == x900020_g_Key["gtraina"] then
		x900020_OnTrainA( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g801"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 423, 223, 29, 10 )
	elseif key == x900020_g_Key["g802"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 519, 71, 29, 10 )
	elseif key == x900020_g_Key["g803"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 424, 31, 38, 10 )
	elseif key == x900020_g_Key["g804"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 520, 100, 99, 10 )
	elseif key == x900020_g_Key["g805"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 425, 32, 29, 10 )
	elseif key == x900020_g_Key["g806"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 427, 28, 24, 10 )
	elseif key == x900020_g_Key["g807"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 541, 109, 19, 10 )
	elseif key == x900020_g_Key["g808"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 421, 93, 36, 10 )
	elseif key == x900020_g_Key["g809"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 431, 193, 222, 10 )
	elseif key == x900020_g_Key["g810"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 432, 88, 91, 10 )
	elseif key == x900020_g_Key["g811"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 536, 40, 217, 10 )
	elseif key == x900020_g_Key["g812"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 537, 25, 97, 10 )

	--Mon phai
	--Goi ham x900020_OnMonphai o duoi
	elseif key == x900020_g_Key["gmonphai"] then
		x900020_OnMonphai( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g901"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 9, 95, 84, 10 )
	elseif key == x900020_g_Key["g902"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 10, 92, 79, 10 )
	elseif key == x900020_g_Key["g903"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 11, 97, 108, 10 )
	elseif key == x900020_g_Key["g904"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 12, 77, 98, 10 )
	elseif key == x900020_g_Key["g905"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 13, 95, 91, 10 )
	elseif key == x900020_g_Key["g906"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 14, 118, 149, 10 )
	elseif key == x900020_g_Key["g907"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 15, 95, 87, 10 )
	elseif key == x900020_g_Key["g908"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 16, 96, 95, 10 )
	elseif key == x900020_g_Key["g909"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 17, 94, 63, 10 )

	--Ban do nhiem vu chinh tuyen Cao thu
	--Goi ham x900020_OnQuestB o duoi
	elseif key == x900020_g_Key["gquestb"] then
		x900020_OnQuestB( sceneId, selfId )
		return
	elseif key == x900020_g_Key["g1001"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 20, 194, 230, 10 )
	elseif key == x900020_g_Key["g1002"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 33, 180, 72, 10 )
	elseif key == x900020_g_Key["g1003"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 27, 44, 53, 10 )
	elseif key == x900020_g_Key["g1004"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 21, 161, 199, 10 )
	elseif key == x900020_g_Key["g1005"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 188, 60, 222, 10 )
	elseif key == x900020_g_Key["g1006"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 34, 205, 260, 10 )
	elseif key == x900020_g_Key["g1007"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 28, 185, 44, 10 )
	elseif key == x900020_g_Key["g1008"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 415, 46, 27, 10 )
	elseif key == x900020_g_Key["g1009"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 22, 154, 112, 10 )
	elseif key == x900020_g_Key["g1010"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 35, 276, 277, 10 )
	elseif key == x900020_g_Key["g1011"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 29, 69, 40, 10 )
	elseif key == x900020_g_Key["g1012"] then
		CallScriptFunction( (400900), "TransferFunc", sceneId, selfId, 23, 45, 177, 10 )
	
	--Cac vi du
	-- elseif key == x900020_g_Key["lck_s"] then
		-- BeginEvent( sceneId )
			-- AddText( sceneId, x900020_g_Msg["ask_l"] )
			-- AddNumText( sceneId, x900020_g_ScriptId, " LÕc Dß½ng - CØu Châu thß½ng hµi", 9, x900020_g_Key["lck_sY"] )
			-- AddNumText( sceneId, x900020_g_ScriptId, " LÕc Dß½ng C¯ ðô", 9, x900020_g_Key["lck_set"] )
		-- EndEvent( sceneId )
		-- DispatchEventList( sceneId, selfId, -1 )
		-- return
	-- elseif key == x900020_g_Key["lck_1"] then
		-- BeginUICommand( sceneId )
		-- EndUICommand( sceneId )
		-- DispatchUICommand( sceneId, selfId, 5421 )
	-- elseif key == x900020_g_Key["unl_s"] then
		-- LuaFnSendOpResult( sceneId, selfId, OR_NEED_UNLOCKMINORPASSWORD )
	-- elseif key == x900020_g_Key["lck_sY"] then
		-- x900020_OnLockAllObj( sceneId, selfId )
		-- return

	end
	
	BeginUICommand( sceneId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )

end

--**********************************
--Lua chon truyen tong
--**********************************
function x900020_OnEvent( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["tall"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Thành th¸", 9, x900020_g_Key["gthanhthi"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Môn phái", 9, x900020_g_Key["gmonphai"] )
		AddNumText( sceneId, x900020_g_ScriptId, "BOSS Dã ngoÕi", 9, x900020_g_Key["gbossdn"] )
		AddNumText( sceneId, x900020_g_ScriptId, "BOSS C± Mµ", 9, x900020_g_Key["gbosscm"] )
		AddNumText( sceneId, x900020_g_ScriptId, "BOSS T¤t tranh", 9, x900020_g_Key["gbosstt"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Phó bän", 9, x900020_g_Key["gphoban"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Bän ð° nhi®m vø chính tuyªn [S½ nh§p]", 9, x900020_g_Key["gquesta"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Bän ð° nhi®m vø chính tuyªn [Cao thü]", 9, x900020_g_Key["gquestb"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Dã ngoÕi ð¸a ð° luy®n c¤p", 9, x900020_g_Key["gtraina"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Dã ngoÕi s½n ðµng luy®n c¤p", 9, x900020_g_Key["gtrainb"] )
		
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--BOSS Co Mo
--**********************************
function x900020_OnBossCoMo( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["tbosscm"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 1", 9, x900020_g_Key["g201"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 2", 9, x900020_g_Key["g202"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 3", 9, x900020_g_Key["g203"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 4", 9, x900020_g_Key["g204"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 5", 9, x900020_g_Key["g205"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 6", 9, x900020_g_Key["g206"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 7", 9, x900020_g_Key["g207"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 8", 9, x900020_g_Key["g208"] )
		AddNumText( sceneId, x900020_g_ScriptId, "C± Mµ T¥ng 9", 9, x900020_g_Key["g209"] )
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--BOSS Tat tranh
--**********************************
function x900020_OnBossTattranh( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["tbosstt"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Bäo Rß½ng Tranh ÐoÕt", 9, x900020_g_Key["g331"])
		AddNumText( sceneId, x900020_g_ScriptId, "Ngàn Nåm Long Quy", 9, x900020_g_Key["g332"])
		AddNumText( sceneId, x900020_g_ScriptId, "Kính H° Tiên Thäo", 9, x900020_g_Key["g333"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thúc Hà Sß½ng Änh", 9, x900020_g_Key["g334"])		
		AddNumText( sceneId, x900020_g_ScriptId, "Ðôn Hoàng Tân Thü", 9, x900020_g_Key["g335"])		
		AddNumText( sceneId, x900020_g_ScriptId, "Thái H° Tân Thü", 9, x900020_g_Key["g336"])		
		AddNumText( sceneId, x900020_g_ScriptId, "Tây H° Tân Thü", 9, x900020_g_Key["g337"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thß½ng S½n Trung C¤p", 9, x900020_g_Key["g338"])			
		AddNumText( sceneId, x900020_g_ScriptId, "NhÕn b¡c Trung C¤p", 9, x900020_g_Key["g339"])		
		AddNumText( sceneId, x900020_g_ScriptId, "Nam Häi Cao C¤p", 9, x900020_g_Key["g340"])
		AddNumText( sceneId, x900020_g_ScriptId, "Nam Chiêu Cao C¤p", 9, x900020_g_Key["g341"])			
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--Phu ban
--**********************************
function x900020_OnPhoban( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["tphoban"] )
		AddNumText( sceneId, x900020_g_ScriptId, "LÕc Dß½ng Túc C¥u", 9, x900020_g_Key["g401"])	
		AddNumText( sceneId, x900020_g_ScriptId, "Trân Long KÏ Cuµc", 9, x900020_g_Key["g402"])			
		AddNumText( sceneId, x900020_g_ScriptId, "Tô Châu Q123", 9, x900020_g_Key["g403"])
		AddNumText( sceneId, x900020_g_ScriptId, "Lâu Lan Q123", 9, x900020_g_Key["g404"])			
		AddNumText( sceneId, x900020_g_ScriptId, "Lâu Lan T¥m Bäo", 9, x900020_g_Key["g405"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thái H° Yªn TØ Ô", 9, x900020_g_Key["g406"])
		AddNumText( sceneId, x900020_g_ScriptId, "Lâu Lan Phiêu Mi¬u Phong", 9, x900020_g_Key["g407"])
		AddNumText( sceneId, x900020_g_ScriptId, "Di®t Phï Kính H°", 9, x900020_g_Key["g408"])						
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--Ban do nhiem vu chinh tuyen So nhap
--**********************************
function x900020_OnQuestA( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["tquesta"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Kiªm Các", 9, x900020_g_Key["g501"])
		AddNumText( sceneId, x900020_g_ScriptId, "Vô Lßþng S½n", 9, x900020_g_Key["g502"])
		AddNumText( sceneId, x900020_g_ScriptId, "Ðôn Hoàng", 9, x900020_g_Key["g503"])
		AddNumText( sceneId, x900020_g_ScriptId, "Tung S½n", 9, x900020_g_Key["g504"])
		AddNumText( sceneId, x900020_g_ScriptId, "Tây H°", 9, x900020_g_Key["g505"])
		AddNumText( sceneId, x900020_g_ScriptId, "Nhî Häi", 9, x900020_g_Key["g506"])
		AddNumText( sceneId, x900020_g_ScriptId, "NhÕn Nam", 9, x900020_g_Key["g507"])			
		AddNumText( sceneId, x900020_g_ScriptId, "Long Tuy«n", 9, x900020_g_Key["g508"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thß½ng S½n", 9, x900020_g_Key["g509"])
		AddNumText( sceneId, x900020_g_ScriptId, "NhÕn B¡c", 9, x900020_g_Key["g510"])
		AddNumText( sceneId, x900020_g_ScriptId, "Võ Di", 9, x900020_g_Key["g511"])
		AddNumText( sceneId, x900020_g_ScriptId, "ThÕch Lâm", 9, x900020_g_Key["g512"])
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--Thanh thi
--**********************************
function x900020_OnThanhthi( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["tthanhthi"] )
		AddNumText( sceneId, x900020_g_ScriptId, "LÕc Dß½ng - CØu Châu thß½ng hµi", 9, x900020_g_Key["g601"])
		AddNumText( sceneId, x900020_g_ScriptId, "LÕc Dß½ng C¯ ðô", 9, x900020_g_Key["g607"])			
		AddNumText( sceneId, x900020_g_ScriptId, "Tô Châu Thành tr¤n", 9, x900020_g_Key["g602"])			
		AddNumText( sceneId, x900020_g_ScriptId, "Tô Châu - Thiªt Tßþng Ph¯", 9, x900020_g_Key["g604"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thúc Hà C± tr¤n", 9, x900020_g_Key["g605"])
		AddNumText( sceneId, x900020_g_ScriptId, "Lâu Lan C± thành", 9, x900020_g_Key["g606"])
		AddNumText( sceneId, x900020_g_ScriptId, "Huy«n Vû Ðäo  ", 9, x900020_g_Key["g603"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thánh Thú S½n  ", 9, x900020_g_Key["g608"])
		AddNumText( sceneId, x900020_g_ScriptId, "DÕ Tây H°  ", 9, x900020_g_Key["g609"])
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--Da ngoai son dong luyen cap
--**********************************
function x900020_OnTrainB( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["ttrainb"] )
		AddNumText( sceneId, x900020_g_ScriptId, "S½n Ðµng Tuy«n Ô", 9, x900020_g_Key["g704"])
		AddNumText( sceneId, x900020_g_ScriptId, "Kiªm Gia", 9, x900020_g_Key["g705"])
		AddNumText( sceneId, x900020_g_ScriptId, "Ma Nhai Ðµng", 9, x900020_g_Key["g706"])
		AddNumText( sceneId, x900020_g_ScriptId, "Dã Nhân C¯c", 9, x900020_g_Key["g707"])
		AddNumText( sceneId, x900020_g_ScriptId, "Ôn Tuy«n Ðµng", 9, x900020_g_Key["g708"])
		AddNumText( sceneId, x900020_g_ScriptId, "Hoàng Long Ðµng", 9, x900020_g_Key["g709"])			
		AddNumText( sceneId, x900020_g_ScriptId, "Thäo Li®u Trß¶ng", 9, x900020_g_Key["g710"])
		AddNumText( sceneId, x900020_g_ScriptId, "Miêu Nhân Ðµng", 9, x900020_g_Key["g711"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thüy Kính H°", 9, x900020_g_Key["g712"])
		AddNumText( sceneId, x900020_g_ScriptId, "Tiên Vß½ng Ph¥n", 9, x900020_g_Key["g713"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thiên Khanh Thø Ðµng", 9, x900020_g_Key["g714"])
		AddNumText( sceneId, x900020_g_ScriptId, "BÕch Sa Diêm Khanh", 9, x900020_g_Key["g715"])
		AddNumText( sceneId, x900020_g_ScriptId, "Ðào Hoa Nguyên", 9, x900020_g_Key["g716"])
		AddNumText( sceneId, x900020_g_ScriptId, "Häi T£c Ðµng", 9, x900020_g_Key["g717"])
		AddNumText( sceneId, x900020_g_ScriptId, "Tuyªt Lang H°", 9, x900020_g_Key["g718"])
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--Da ngoai dia do luyen cap
--**********************************
function x900020_OnTrainA( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["ttraina"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Höa Di®m S½n", 9, x900020_g_Key["g801"])
		AddNumText( sceneId, x900020_g_ScriptId, "Höa Di­m C¯c", 9, x900020_g_Key["g802"])
		AddNumText( sceneId, x900020_g_ScriptId, "Cao Xß½ng", 9, x900020_g_Key["g803"])
		AddNumText( sceneId, x900020_g_ScriptId, "Cao Xß½ng Mê Cung", 9, x900020_g_Key["g804"])
		AddNumText( sceneId, x900020_g_ScriptId, "Tháp Lý Mµc", 9, x900020_g_Key["g805"])
		AddNumText( sceneId, x900020_g_ScriptId, "Tháp Kh¡c LÕp Mã Can", 9, x900020_g_Key["g806"])
		--AddNumText( sceneId, x900020_g_ScriptId, "Côn Luân S½n", 9, x900020_g_Key["g807"])
		--AddNumText( sceneId, x900020_g_ScriptId, "Côn Luân Phúc Ð¸a", 9, x900020_g_Key["g808"])
		AddNumText( sceneId, x900020_g_ScriptId, "ÐÕi Uy¬n", 9, x900020_g_Key["g809"])			
		AddNumText( sceneId, x900020_g_ScriptId, "Hãn Huyªt Lînh", 9, x900020_g_Key["g810"])
		--AddNumText( sceneId, x900020_g_ScriptId, "Tát Mã Nhî Hãn", 9, x900020_g_Key["g811"])
		--AddNumText( sceneId, x900020_g_ScriptId, "Thánh Höa Cung", 9, x900020_g_Key["g812"])
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--Mon phai
--**********************************
function x900020_OnMonphai( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["tmonphai"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Thiªu Lâm", 9, x900020_g_Key["g901"])
		AddNumText( sceneId, x900020_g_ScriptId, "Cái Bang", 9, x900020_g_Key["g902"])
		AddNumText( sceneId, x900020_g_ScriptId, "Minh Giáo", 9, x900020_g_Key["g903"])
		AddNumText( sceneId, x900020_g_ScriptId, "Võ Ðang", 9, x900020_g_Key["g904"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thiên Long", 9, x900020_g_Key["g905"])
		AddNumText( sceneId, x900020_g_ScriptId, "Tiêu Dao", 9, x900020_g_Key["g906"])
		AddNumText( sceneId, x900020_g_ScriptId, "Nga Mi", 9, x900020_g_Key["g907"])
		AddNumText( sceneId, x900020_g_ScriptId, "Tinh Túc", 9, x900020_g_Key["g908"])
		AddNumText( sceneId, x900020_g_ScriptId, "Thiên S½n", 9, x900020_g_Key["g909"])			
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--Ban do nhiem vu chinh tuyen Cao thu
--**********************************
function x900020_OnQuestB( sceneId, selfId )

	BeginEvent( sceneId )
		AddText( sceneId, x900020_g_Msg["tquestb"] )
		AddNumText( sceneId, x900020_g_ScriptId, "Thäo Nguyên", 9, x900020_g_Key["g1001"])
		AddNumText( sceneId, x900020_g_ScriptId, "Mai Lînh", 9, x900020_g_Key["g1002"])
		AddNumText( sceneId, x900020_g_ScriptId, "Ng÷c Khê", 9, x900020_g_Key["g1003"])
		AddNumText( sceneId, x900020_g_ScriptId, "Liêu Tây", 9, x900020_g_Key["g1004"])
		AddNumText( sceneId, x900020_g_ScriptId, "Ngân Ngai Tuyªt Nguyên", 9, x900020_g_Key["g1005"])
		AddNumText( sceneId, x900020_g_ScriptId, "Nam Häi", 9, x900020_g_Key["g1006"])
		AddNumText( sceneId, x900020_g_ScriptId, "Nam Chiêu", 9, x900020_g_Key["g1007"])
		AddNumText( sceneId, x900020_g_ScriptId, "Diêm H°", 9, x900020_g_Key["g1008"])
		AddNumText( sceneId, x900020_g_ScriptId, "Trß¶ng BÕch S½n", 9, x900020_g_Key["g1009"])
		AddNumText( sceneId, x900020_g_ScriptId, "QuÏnh Châu", 9, x900020_g_Key["g1010"])
		AddNumText( sceneId, x900020_g_ScriptId, "Miêu Cß½ng", 9, x900020_g_Key["g1011"])
		AddNumText( sceneId, x900020_g_ScriptId, "Hoàng Long Phü", 9, x900020_g_Key["g1012"])
	
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, -1 )

end

--**********************************
--¶þc¤pÃÜÂëËø¶¨ËùÓÐÎïÆ·¡¢³èÎï
--**********************************
-- function x900020_OnLockAllObj( sceneId, selfId )

	-- --Ðúng·ñÒÑÉèÖÃ¶þc¤pÃÜÂë
	-- if LuaFnIsPasswordSetup( sceneId, selfId, 0 ) ~= 1 then
		-- LuaFnSendOpResult( sceneId, selfId, OR_NEED_SETMINORPASSWORD )
	-- else
		-- SetAllItemPWLock( sceneId, selfId, 1 )
		-- SetAllPetPWLock( sceneId, selfId, 1 )
		-- x900020_MyNotifyTip( sceneId, selfId, "Khóa thành công" )
		-- BeginUICommand( sceneId )
		-- EndUICommand( sceneId )
		-- DispatchUICommand( sceneId, selfId, 1000 )
	-- end

-- end

--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x900020_MyNotifyTip( sceneId, selfId, str )

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
