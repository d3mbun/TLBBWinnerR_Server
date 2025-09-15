--Super Point Script, Dont Use ChangeMenpai()
--LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, XXXX)--Kiem tra Impact tren nguoi nhan vat--
--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, XXXX, 0)--Them Impact len nhan vat--
--LuaFnCancelSpecificImpact(sceneId, selfId, XXXX)--Huy bo Impact tren nguoi nhan vat--

x045000_g_ScriptId = 045000
-------------------------------------------------
-------------------------------------------------
--Used t_function
x045000_g_CuongLuc		= 0; --Max: UnLimit
x045000_g_NoiLuc		= 0; --Max: UnLimit
x045000_g_TheLuc		= 0; --Max: UnLimit
x045000_g_TriLuc		= 0; --Max: UnLimit
x045000_g_ThanPhap		= 0; --Max: UnLimit

--Used Impact
x045000_g_BangCong		= 0; --Max: 19999
x045000_g_HoaCong		= 0; --Max: 19999
x045000_g_HuyenCong		= 0; --Max: 19999
x045000_g_DocCong		= 0; --Max: 19999

--Used Impact
x045000_g_KhangBang		= 0; --Max: 4096
x045000_g_KhangHoa		= 0; --Max: 4096
x045000_g_KhangHuyen	= 0; --Max: 4096
x045000_g_KhangDoc		= 0; --Max: 4096

--Used Impact
x045000_g_GKBang		= 0; --Max: 4096
x045000_g_GKHoa			= 0; --Max: 4096
x045000_g_GKHuyen		= 0; --Max: 4096
x045000_g_GKDoc			= 0; --Max: 4096

--Used (Self+Target)Impact
x045000_g_GKABang		= 0; --Max: 99
x045000_g_GKAHoa		= 0; --Max: 99
x045000_g_GKAHuyen		= 0; --Max: 99
x045000_g_GKADoc		= 0; --Max: 99

--Used Impact
x045000_g_HPMAX			= 0; --Max: 99%
x045000_g_MPMAX			= 0; --Max: 99%
x045000_g_HoiCong		= 0; --Max: 149
x045000_g_HoiThu		= 0; --Max: 149

--Used Impact + Xinfa
x045000_g_HP			= 0; --Max: 76799
x045000_g_MP			= 0; --Max: 51199
x045000_g_NgoaiCong		= 0; --Max: 51199
x045000_g_NoiCong		= 0; --Max: 51199
x045000_g_NgoaiThu		= 0; --Max: 51199
x045000_g_NoiThu		= 0; --Max: 51199
x045000_g_ChinhXac		= 0; --Max: 51199
x045000_g_NeTranh		= 0; --Max: 51199
-------------------------------------------------
-------------------------------------------------
x045000_g_SWAttr = {}
x045000_g_SWAttr["TYPE"] = {"Description", "82x5", "86x6", "86x7", "86x8", "92x5", "96x6", "96x7", "96x8", "10x5", "10x6", "10x7", "10x8"}
x045000_g_SWAttr["A"] = {"Máu lên gi¾i hÕn trên +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["B"] = {"Máu lên gi¾i hÕn trên +", 0, 0, 0, 0, 14, 14, 15, 16, 14, 14, 15, 16}
x045000_g_SWAttr["C"] = {"Khí lên gi¾i hÕn trên +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["D"] = {"Khí lên gi¾i hÕn trên +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["E"] = {"Bång công +", 0, 57, 78, 125, 0, 66, 91, 146, 0, 80, 111, 179}
x045000_g_SWAttr["F"] = {"Kháng bång +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["G"] = {"Höa công +", 0, 57, 78, 125, 0, 66, 91, 146, 0, 80, 111, 179}
x045000_g_SWAttr["H"] = {"Có tính kháng höa +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["I"] = {"Huy«n công +", 0, 57, 78, 125, 0, 66, 91, 146, 0, 80, 111, 179}
x045000_g_SWAttr["J"] = {"Có tính kháng huy«n +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["K"] = {"Ðµc công +", 0, 57, 78, 125, 0, 66, 91, 146, 0, 80, 111, 179}
x045000_g_SWAttr["L"] = {"Có tính kháng ðµc +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["M"] = {"NgoÕi công +", 552, 576, 792, 1296, 609, 648, 891, 1457, 667, 720, 990, 1620}
x045000_g_SWAttr["N"] = {"NgoÕi thü +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["O"] = {"Nµi công +", 552, 576, 792, 1296, 609, 648, 891, 1457, 667, 720, 990, 1620}
x045000_g_SWAttr["P"] = {"Nµi thü +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["Q"] = {"Chính xác +", 307, 324, 513, 810, 339, 364, 576, 909, 371, 414, 656, 1035}
x045000_g_SWAttr["R"] = {"Né tránh +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["S"] = {"Hµi công +", 3, 4, 5, 7, 4, 4, 5, 7, 4, 7, 9, 11}
x045000_g_SWAttr["T"] = {"Cß¶ng lñc +", 29, 31, 49, 77, 32, 34, 54, 84, 35, 40, 63, 99}
x045000_g_SWAttr["U"] = {"Nµi lñc +", 29, 31, 49, 77, 32, 34, 54, 84, 35, 40, 63, 99}
x045000_g_SWAttr["V"] = {"Th¬ lñc +", 29, 31, 49, 77, 32, 34, 54, 84, 35, 40, 63, 99}
x045000_g_SWAttr["W"] = {"Trí lñc +", 29, 31, 49, 77, 32, 34, 54, 84, 35, 40, 63, 99}
x045000_g_SWAttr["X"] = {"Thân pháp +", 16, 17, 27, 42, 18, 20, 32, 50, 21, 26, 40, 63}
x045000_g_SWAttr["Y"] = {"Hµi thü +", 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
x045000_g_SWAttr["Z"] = {"T¤t cä thuµc tính +", 6, 6, 10, 15, 6, 7, 11, 18, 8, 9, 14, 22}
x045000_g_SWAttr["a"] = {"Bö qua møc tiêu kháng Bång +", 0, 18, 25, 33, 0, 22, 30, 40, 0, 30, 41, 53}
x045000_g_SWAttr["b"] = {"Bö qua møc tiêu kháng Höa +", 0, 18, 25, 33, 0, 22, 30, 40, 0, 30, 41, 53}
x045000_g_SWAttr["c"] = {"Bö qua møc tiêu kháng Huy«n +", 0, 18, 25, 33, 0, 22, 30, 40, 0, 30, 41, 53}
x045000_g_SWAttr["d"] = {"Bö qua møc tiêu kháng Ðµc +", 0, 18, 25, 33, 0, 22, 30, 40, 0, 30, 41, 53}
-------------------------------------------------
-------------------------------------------------
x045000_g_DieuVan_OptionAttr = {}
x045000_g_DieuVan_OptionAttr[01] = {10 ,10, 3, 15}
x045000_g_DieuVan_OptionAttr[02] = {20 ,20, 8, 30}
x045000_g_DieuVan_OptionAttr[03] = {40 ,30, 17,45}
x045000_g_DieuVan_OptionAttr[04] = {70 ,60, 35,90}
x045000_g_DieuVan_OptionAttr[05] = {110,100,42,150}
x045000_g_DieuVan_OptionAttr[06] = {140,120,50,180}
x045000_g_DieuVan_OptionAttr[07] = {170,140,60,195}
x045000_g_DieuVan_OptionAttr[08] = {210,170,70,210}
x045000_g_DieuVan_OptionAttr[09] = {240,200,80,270}
x045000_g_DieuVan_OptionAttr[10] = {280,240,90,360}
-------------------------------------------------
-------------------------------------------------
x045000_g_VoHon_Property = {}
x045000_g_VoHon_Property[1] = {3, 2, 2, 2, 2, 3, 2, 2, 2, 2, 3, 2, 3, 3, 3, 5, 2, 3, 3, 3, 5, 2, 3, 3, 3}
x045000_g_VoHon_Property[2] = {3, 2, 3, 2, 2, 5, 2, 5, 2, 2, 5, 2, 5, 3, 3, 6, 2, 6, 3, 3, 6, 2, 6, 3, 3}
x045000_g_VoHon_Property[3] = {5, 2, 3, 3, 3, 6, 2, 5, 5, 5, 6, 2, 5, 5, 5, 8, 2, 6, 6, 6, 8, 2, 6, 6, 6}
x045000_g_VoHon_Property[4] = {6, 2, 6, 3, 3, 6, 2, 6, 5, 5, 8, 2, 8, 5, 5, 8, 2, 8, 6, 6, 9, 2, 9, 6, 6}
x045000_g_VoHon_Property[5] = {8, 2, 6, 6, 6, 9, 2, 6, 6, 6, 11, 3, 8, 8, 8, 12, 3, 8, 8, 8, 14, 3, 9, 9, 9}
x045000_g_VoHon_Property[6] = {9, 2, 8, 6, 6, 11, 2, 9, 6, 6, 12, 3, 9, 8, 8, 14, 3, 11, 8, 8, 15, 3, 12, 9, 9}
x045000_g_VoHon_Property[7] = {11, 2, 8, 6, 6, 12, 2, 9, 6, 6, 14, 3, 9, 8, 8, 15, 3, 11, 8, 8, 17, 3, 12, 9, 9}
x045000_g_VoHon_Property[8] = {11, 2, 9, 8, 8, 12, 2, 11, 9, 9, 15, 3, 12, 9, 9, 17, 3, 14, 11, 11, 18, 3, 15, 12, 12}
x045000_g_VoHon_Property[9] = {12, 2, 9, 8, 8, 14, 2, 11, 9, 9, 15, 3, 12, 9, 9, 18, 3, 14, 11, 11, 20, 3, 15, 12, 12}
x045000_g_VoHon_Property[10] = {15, 3, 11, 9, 9, 17, 3, 12, 11, 11, 20, 3, 15, 12, 12, 21, 5, 17, 14, 14, 24, 5, 18, 15, 15}
x045000_g_VoHon_Property[11] = {15, 3, 11, 9, 9, 18, 3, 12, 11, 11, 21, 3, 15, 12, 12, 23, 5, 17, 14, 14, 26, 5, 18, 15, 15}
x045000_g_VoHon_Property[12] = {17, 3, 12, 9, 9, 20, 3, 15, 11, 11, 21, 3, 17, 12, 12, 24, 5, 20, 14, 14, 27, 5, 21, 15, 15}
x045000_g_VoHon_Property[13] = {17, 3, 12, 11, 11, 20, 3, 15, 12, 12, 23, 3, 17, 15, 15, 26, 5, 20, 17, 17, 29, 5, 21, 18, 18}
x045000_g_VoHon_Property[14] = {18, 3, 15, 11, 11, 21, 3, 17, 12, 12, 24, 3, 20, 15, 15, 27, 5, 21, 17, 17, 30, 5, 24, 18, 18}
x045000_g_VoHon_Property[15] = {21, 3, 15, 12, 12, 24, 5, 17, 15, 15, 27, 5, 20, 17, 17, 32, 6, 21, 20, 20, 35, 6, 24, 21, 21}
x045000_g_VoHon_Property[16] = {21, 3, 17, 12, 12, 26, 5, 20, 15, 15, 29, 5, 21, 17, 17, 33, 6, 24, 20, 20, 36, 6, 27, 21, 21}
x045000_g_VoHon_Property[17] = {23, 3, 17, 12, 12, 27, 5, 20, 15, 15, 30, 5, 21, 17, 17, 35, 6, 24, 20, 20, 38, 6, 27, 21, 21}
x045000_g_VoHon_Property[18] = {24, 3, 18, 15, 15, 27, 5, 21, 17, 17, 32, 5, 24, 20, 20, 35, 6, 27, 21, 21, 39, 6, 30, 24, 24}
x045000_g_VoHon_Property[19] = {24, 3, 18, 15, 15, 29, 5, 21, 17, 17, 33, 5, 24, 20, 20, 36, 6, 27, 21, 21, 41, 6, 30, 24, 24}
x045000_g_VoHon_Property[20] = {27, 5, 20, 17, 17, 32, 6, 23, 20, 20, 36, 6, 27, 21, 21, 41, 8, 30, 24, 24, 45, 8, 33, 27, 27}
x045000_g_VoHon_Property[21] = {29, 5, 20, 17, 17, 33, 6, 23, 20, 20, 38, 6, 27, 21, 21, 42, 8, 30, 24, 24, 47, 8, 33, 27, 27}
x045000_g_VoHon_Property[22] = {29, 5, 21, 17, 17, 33, 6, 26, 20, 20, 39, 6, 29, 21, 21, 44, 8, 33, 24, 24, 48, 8, 36, 27, 27}
x045000_g_VoHon_Property[23] = {30, 5, 21, 18, 18, 35, 6, 26, 21, 21, 39, 6, 29, 24, 24, 45, 8, 33, 27, 27, 50, 8, 36, 30, 30}
x045000_g_VoHon_Property[24] = {30, 5, 24, 18, 18, 36, 6, 27, 21, 21, 41, 6, 32, 24, 24, 47, 8, 35, 27, 27, 51, 8, 39, 30, 30}
x045000_g_VoHon_Property[25] = {33, 6, 24, 20, 20, 39, 6, 27, 23, 23, 45, 8, 32, 27, 27, 50, 8, 35, 30, 30, 56, 9, 39, 33, 33}
x045000_g_VoHon_Property[26] = {35, 6, 26, 20, 20, 41, 6, 30, 23, 23, 45, 8, 33, 27, 27, 51, 8, 38, 30, 30, 57, 9, 42, 33, 33}
x045000_g_VoHon_Property[27] = {35, 6, 26, 20, 20, 41, 6, 30, 23, 23, 47, 8, 33, 27, 27, 53, 8, 38, 30, 30, 59, 9, 42, 33, 33}
x045000_g_VoHon_Property[28] = {36, 6, 27, 21, 21, 42, 6, 32, 26, 26, 48, 8, 36, 29, 29, 54, 8, 41, 33, 33, 60, 9, 45, 36, 36}
x045000_g_VoHon_Property[29] = {38, 6, 27, 21, 21, 44, 6, 32, 26, 26, 50, 8, 36, 29, 29, 56, 8, 41, 33, 33, 62, 9, 45, 36, 36}
x045000_g_VoHon_Property[30] = {39, 6, 29, 24, 24, 47, 8, 33, 27, 27, 53, 9, 39, 32, 32, 60, 9, 44, 35, 35, 66, 11, 48, 39, 39}
x045000_g_VoHon_Property[31] = {41, 6, 29, 24, 24, 48, 8, 33, 27, 27, 54, 9, 39, 32, 32, 62, 9, 44, 35, 35, 68, 11, 48, 39, 39}
x045000_g_VoHon_Property[32] = {42, 6, 30, 24, 24, 48, 8, 36, 27, 27, 56, 9, 41, 32, 32, 62, 9, 47, 35, 35, 69, 11, 51, 39, 39}
x045000_g_VoHon_Property[33] = {42, 6, 30, 26, 26, 50, 8, 36, 30, 30, 57, 9, 41, 33, 33, 63, 9, 47, 38, 38, 71, 11, 51, 42, 42}
x045000_g_VoHon_Property[34] = {44, 6, 33, 26, 26, 51, 8, 38, 30, 30, 57, 9, 44, 33, 33, 65, 9, 48, 38, 38, 72, 11, 54, 42, 42}
x045000_g_VoHon_Property[35] = {47, 8, 33, 27, 27, 54, 9, 38, 32, 32, 62, 9, 44, 36, 36, 69, 11, 48, 41, 41, 77, 12, 54, 45, 45}
x045000_g_VoHon_Property[36] = {47, 8, 35, 27, 27, 54, 9, 41, 32, 32, 63, 9, 45, 36, 36, 71, 11, 51, 41, 41, 78, 12, 57, 45, 45}
x045000_g_VoHon_Property[37] = {48, 8, 35, 27, 27, 56, 9, 41, 32, 32, 63, 9, 45, 36, 36, 72, 11, 51, 41, 41, 80, 12, 57, 45, 45}
x045000_g_VoHon_Property[38] = {48, 8, 36, 29, 29, 57, 9, 42, 33, 33, 65, 9, 48, 39, 39, 74, 11, 54, 44, 44, 81, 12, 60, 48, 48}
x045000_g_VoHon_Property[39] = {50, 8, 36, 29, 29, 59, 9, 42, 33, 33, 66, 9, 48, 39, 39, 75, 11, 54, 44, 44, 83, 12, 60, 48, 48}
x045000_g_VoHon_Property[40] = {53, 8, 38, 30, 30, 62, 9, 44, 36, 36, 69, 11, 51, 41, 41, 78, 12, 57, 47, 47, 87, 14, 63, 51, 51}
x045000_g_VoHon_Property[41] = {53, 8, 38, 30, 30, 62, 9, 44, 36, 36, 71, 11, 51, 41, 41, 80, 12, 57, 47, 47, 89, 14, 63, 51, 51}
x045000_g_VoHon_Property[42] = {54, 8, 39, 30, 30, 63, 9, 47, 36, 36, 72, 11, 53, 41, 41, 81, 12, 60, 47, 47, 90, 14, 66, 51, 51}
x045000_g_VoHon_Property[43] = {56, 8, 39, 33, 33, 65, 9, 47, 38, 38, 74, 11, 53, 44, 44, 83, 12, 60, 48, 48, 92, 14, 66, 54, 54}
x045000_g_VoHon_Property[44] = {56, 8, 42, 33, 33, 65, 9, 48, 38, 38, 75, 11, 56, 44, 44, 84, 12, 62, 48, 48, 93, 14, 69, 54, 54}
x045000_g_VoHon_Property[45] = {59, 9, 42, 35, 35, 69, 11, 48, 41, 41, 78, 12, 56, 45, 45, 89, 14, 62, 51, 51, 98, 15, 69, 57, 57}
x045000_g_VoHon_Property[46] = {60, 9, 44, 35, 35, 69, 11, 51, 41, 41, 80, 12, 57, 45, 45, 89, 14, 65, 51, 51, 99, 15, 72, 57, 57}
x045000_g_VoHon_Property[47] = {60, 9, 44, 35, 35, 71, 11, 51, 41, 41, 81, 12, 57, 45, 45, 90, 14, 65, 51, 51, 101, 15, 72, 57, 57}
x045000_g_VoHon_Property[48] = {62, 9, 45, 36, 36, 72, 11, 53, 42, 42, 81, 12, 60, 48, 48, 92, 14, 68, 54, 54, 102, 15, 75, 60, 60}
x045000_g_VoHon_Property[49] = {62, 9, 45, 36, 36, 72, 11, 53, 42, 42, 83, 12, 60, 48, 48, 93, 14, 68, 54, 54, 104, 15, 75, 60, 60}
x045000_g_VoHon_Property[50] = {65, 11, 47, 38, 38, 75, 12, 54, 44, 44, 87, 14, 63, 51, 51, 98, 15, 71, 57, 57, 108, 17, 78, 63, 63}
x045000_g_VoHon_Property[51] = {66, 11, 47, 38, 38, 77, 12, 54, 44, 44, 87, 14, 63, 51, 51, 99, 15, 71, 57, 57, 110, 17, 78, 63, 63}
x045000_g_VoHon_Property[52] = {66, 11, 48, 38, 38, 78, 12, 57, 44, 44, 89, 14, 65, 51, 51, 101, 15, 74, 57, 57, 111, 17, 81, 63, 63}
x045000_g_VoHon_Property[53] = {68, 11, 48, 39, 39, 80, 12, 57, 47, 47, 90, 14, 65, 53, 53, 102, 15, 74, 60, 60, 113, 17, 81, 66, 66}
x045000_g_VoHon_Property[54] = {69, 11, 51, 39, 39, 80, 12, 59, 47, 47, 92, 14, 68, 53, 53, 102, 15, 75, 60, 60, 114, 17, 84, 66, 66}
x045000_g_VoHon_Property[55] = {71, 11, 51, 42, 42, 83, 12, 59, 48, 48, 95, 15, 68, 56, 56, 107, 17, 75, 62, 62, 119, 18, 84, 69, 69}
x045000_g_VoHon_Property[56] = {72, 11, 53, 42, 42, 84, 12, 62, 48, 48, 96, 15, 69, 56, 56, 108, 17, 78, 62, 62, 120, 18, 87, 69, 69}
x045000_g_VoHon_Property[57] = {74, 11, 53, 42, 42, 86, 12, 62, 48, 48, 98, 15, 69, 56, 56, 110, 17, 78, 62, 62, 122, 18, 87, 69, 69}
x045000_g_VoHon_Property[58] = {74, 11, 54, 44, 44, 86, 12, 63, 51, 51, 99, 15, 72, 57, 57, 111, 17, 81, 65, 65, 123, 18, 90, 72, 72}
x045000_g_VoHon_Property[59] = {75, 11, 54, 44, 44, 87, 12, 63, 51, 51, 99, 15, 72, 57, 57, 113, 17, 81, 65, 65, 125, 18, 90, 72, 72}
x045000_g_VoHon_Property[60] = {78, 12, 56, 45, 45, 90, 14, 65, 53, 53, 104, 15, 75, 60, 60, 116, 18, 84, 68, 68, 129, 20, 93, 75, 75}
x045000_g_VoHon_Property[61] = {78, 12, 56, 45, 45, 92, 14, 65, 53, 53, 105, 15, 75, 60, 60, 117, 18, 84, 68, 68, 131, 20, 93, 75, 75}
x045000_g_VoHon_Property[62] = {80, 12, 57, 45, 45, 93, 14, 68, 53, 53, 105, 15, 77, 60, 60, 119, 18, 87, 68, 68, 132, 20, 96, 75, 75}
x045000_g_VoHon_Property[63] = {80, 12, 57, 47, 47, 93, 14, 68, 54, 54, 107, 15, 77, 63, 63, 120, 18, 87, 71, 71, 134, 20, 96, 78, 78}
x045000_g_VoHon_Property[64] = {81, 12, 60, 47, 47, 95, 14, 69, 54, 54, 108, 15, 80, 63, 63, 122, 18, 89, 71, 71, 135, 20, 99, 78, 78}
x045000_g_VoHon_Property[65] = {84, 12, 60, 48, 48, 98, 15, 69, 57, 57, 111, 17, 80, 65, 65, 126, 20, 89, 74, 74, 140, 21, 99, 81, 81}
x045000_g_VoHon_Property[66] = {84, 12, 62, 48, 48, 99, 15, 72, 57, 57, 113, 17, 81, 65, 65, 128, 20, 92, 74, 74, 141, 21, 102, 81, 81}
x045000_g_VoHon_Property[67] = {86, 12, 62, 48, 48, 101, 15, 72, 57, 57, 114, 17, 81, 65, 65, 129, 20, 92, 74, 74, 143, 21, 102, 81, 81}
x045000_g_VoHon_Property[68] = {87, 12, 63, 51, 51, 101, 15, 74, 59, 59, 116, 17, 84, 68, 68, 129, 20, 95, 75, 75, 144, 21, 105, 84, 84}
x045000_g_VoHon_Property[69] = {87, 12, 63, 51, 51, 102, 15, 74, 59, 59, 117, 17, 84, 68, 68, 131, 20, 95, 75, 75, 146, 21, 105, 84, 84}
x045000_g_VoHon_Property[70] = {90, 14, 65, 53, 53, 105, 17, 75, 62, 62, 120, 18, 87, 69, 69, 135, 21, 98, 78, 78, 150, 23, 108, 87, 87}
x045000_g_VoHon_Property[71] = {92, 14, 65, 53, 53, 107, 17, 75, 62, 62, 122, 18, 87, 69, 69, 137, 21, 98, 78, 78, 152, 23, 108, 87, 87}
x045000_g_VoHon_Property[72] = {92, 14, 66, 53, 53, 107, 17, 78, 62, 62, 123, 18, 89, 69, 69, 138, 21, 101, 78, 78, 153, 23, 111, 87, 87}
x045000_g_VoHon_Property[73] = {93, 14, 66, 54, 54, 108, 17, 78, 63, 63, 123, 18, 89, 72, 72, 140, 21, 101, 81, 81, 155, 23, 111, 90, 90}
x045000_g_VoHon_Property[74] = {93, 14, 69, 54, 54, 110, 17, 80, 63, 63, 125, 18, 92, 72, 72, 141, 21, 102, 81, 81, 156, 23, 114, 90, 90}
x045000_g_VoHon_Property[75] = {96, 15, 69, 56, 56, 113, 17, 80, 65, 65, 129, 20, 92, 75, 75, 144, 21, 102, 84, 84, 161, 24, 114, 93, 93}
x045000_g_VoHon_Property[76] = {98, 15, 71, 56, 56, 114, 17, 83, 65, 65, 129, 20, 93, 75, 75, 146, 21, 105, 84, 84, 162, 24, 117, 93, 93}
x045000_g_VoHon_Property[77] = {98, 15, 71, 56, 56, 114, 17, 83, 65, 65, 131, 20, 93, 75, 75, 147, 21, 105, 84, 84, 164, 24, 117, 93, 93}
x045000_g_VoHon_Property[78] = {99, 15, 72, 57, 57, 116, 17, 84, 68, 68, 132, 20, 96, 77, 77, 149, 21, 108, 87, 87, 165, 24, 120, 96, 96}
x045000_g_VoHon_Property[79] = {101, 15, 72, 57, 57, 117, 17, 84, 68, 68, 134, 20, 96, 77, 77, 150, 21, 108, 87, 87, 167, 24, 120, 96, 96}
x045000_g_VoHon_Property[80] = {102, 15, 74, 60, 60, 120, 18, 86, 69, 69, 137, 21, 99, 80, 80, 155, 23, 111, 89, 89, 171, 26, 123, 99, 99}
x045000_g_VoHon_Property[81] = {104, 15, 74, 60, 60, 122, 18, 86, 69, 69, 138, 21, 99, 80, 80, 156, 23, 111, 89, 89, 173, 26, 123, 99, 99}
x045000_g_VoHon_Property[82] = {105, 15, 75, 60, 60, 122, 18, 89, 69, 69, 140, 21, 101, 80, 80, 156, 23, 114, 89, 89, 174, 26, 126, 99, 99}
x045000_g_VoHon_Property[83] = {105, 15, 75, 62, 62, 123, 18, 89, 72, 72, 141, 21, 101, 81, 81, 158, 23, 114, 92, 92, 176, 26, 126, 102, 102}
x045000_g_VoHon_Property[84] = {107, 15, 78, 62, 62, 125, 18, 90, 72, 72, 141, 21, 104, 81, 81, 159, 23, 116, 92, 92, 177, 26, 129, 102, 102}
x045000_g_VoHon_Property[85] = {110, 17, 78, 63, 63, 128, 20, 90, 74, 74, 146, 21, 104, 84, 84, 164, 24, 116, 95, 95, 182, 27, 129, 105, 105}
x045000_g_VoHon_Property[86] = {110, 17, 80, 63, 63, 128, 20, 93, 74, 74, 147, 21, 105, 84, 84, 165, 24, 119, 95, 95, 183, 27, 132, 105, 105}
x045000_g_VoHon_Property[87] = {111, 17, 80, 63, 63, 129, 20, 93, 74, 74, 147, 21, 105, 84, 84, 167, 24, 119, 95, 95, 185, 27, 132, 105, 105}
x045000_g_VoHon_Property[88] = {111, 17, 81, 65, 65, 131, 20, 95, 75, 75, 149, 21, 108, 87, 87, 168, 24, 122, 98, 98, 186, 27, 135, 108, 108}
x045000_g_VoHon_Property[89] = {113, 17, 81, 65, 65, 132, 20, 95, 75, 75, 150, 21, 108, 87, 87, 170, 24, 122, 98, 98, 188, 27, 135, 108, 108}
x045000_g_VoHon_Property[90] = {116, 17, 83, 66, 66, 135, 20, 96, 78, 78, 153, 23, 111, 89, 89, 173, 26, 125, 101, 101, 192, 29, 138, 111, 111}
x045000_g_VoHon_Property[91] = {116, 17, 83, 66, 66, 135, 20, 96, 78, 78, 155, 23, 111, 89, 89, 174, 26, 125, 101, 101, 194, 29, 138, 111, 111}
x045000_g_VoHon_Property[92] = {117, 17, 84, 66, 66, 137, 20, 99, 78, 78, 156, 23, 113, 89, 89, 176, 26, 128, 101, 101, 195, 29, 141, 111, 111}
x045000_g_VoHon_Property[93] = {119, 17, 84, 69, 69, 138, 20, 99, 80, 80, 158, 23, 113, 92, 92, 177, 26, 128, 102, 102, 197, 29, 141, 114, 114}
x045000_g_VoHon_Property[94] = {119, 17, 87, 69, 69, 138, 20, 101, 80, 80, 159, 23, 116, 92, 92, 179, 26, 129, 102, 102, 198, 29, 144, 114, 114}
x045000_g_VoHon_Property[95] = {122, 18, 87, 71, 71, 143, 21, 101, 83, 83, 162, 24, 116, 93, 93, 183, 27, 129, 105, 105, 203, 30, 144, 117, 117}
x045000_g_VoHon_Property[96] = {123, 18, 89, 71, 71, 143, 21, 104, 83, 83, 164, 24, 117, 93, 93, 183, 27, 132, 105, 105, 204, 30, 147, 117, 117}
x045000_g_VoHon_Property[97] = {123, 18, 89, 71, 71, 144, 21, 104, 83, 83, 165, 24, 117, 93, 93, 185, 27, 132, 105, 105, 206, 30, 147, 117, 117}
x045000_g_VoHon_Property[98] = {125, 18, 90, 72, 72, 146, 21, 105, 84, 84, 165, 24, 120, 96, 96, 186, 27, 135, 108, 108, 207, 30, 150, 120, 120}
x045000_g_VoHon_Property[99] = {125, 18, 90, 72, 72, 146, 21, 105, 84, 84, 167, 24, 120, 96, 96, 188, 27, 135, 108, 108, 209, 30, 150, 120, 120}
x045000_g_VoHon_Property[100] = {128, 20, 92, 74, 74, 149, 23, 107, 86, 86, 171, 26, 123, 99, 99, 192, 29, 138, 111, 111, 213, 32, 153, 123, 123}
x045000_g_VoHon_Property[101] = {129, 20, 92, 74, 74, 150, 23, 107, 86, 86, 171, 26, 123, 99, 99, 194, 29, 138, 111, 111, 215, 32, 153, 123, 123}
x045000_g_VoHon_Property[102] = {129, 20, 93, 74, 74, 152, 23, 110, 86, 86, 173, 26, 125, 99, 99, 195, 29, 141, 111, 111, 216, 32, 156, 123, 123}
x045000_g_VoHon_Property[103] = {131, 20, 93, 75, 75, 153, 23, 110, 89, 89, 174, 26, 125, 101, 101, 197, 29, 141, 114, 114, 218, 32, 156, 126, 126}
x045000_g_VoHon_Property[104] = {132, 20, 96, 75, 75, 153, 23, 111, 89, 89, 176, 26, 128, 101, 101, 197, 29, 143, 114, 114, 219, 32, 159, 126, 126}
x045000_g_VoHon_Property[105] = {134, 20, 96, 78, 78, 156, 23, 111, 90, 90, 179, 27, 128, 104, 104, 201, 30, 143, 116, 116, 224, 33, 159, 129, 129}
x045000_g_VoHon_Property[106] = {135, 20, 98, 78, 78, 158, 23, 114, 90, 90, 180, 27, 129, 104, 104, 203, 30, 146, 116, 116, 225, 33, 162, 129, 129}
x045000_g_VoHon_Property[107] = {137, 20, 98, 78, 78, 159, 23, 114, 90, 90, 182, 27, 129, 104, 104, 204, 30, 146, 116, 116, 227, 33, 162, 129, 129}
x045000_g_VoHon_Property[108] = {137, 20, 99, 80, 80, 159, 23, 116, 93, 93, 183, 27, 132, 105, 105, 206, 30, 149, 119, 119, 228, 33, 165, 132, 132}
x045000_g_VoHon_Property[109] = {138, 20, 99, 80, 80, 161, 23, 116, 93, 93, 183, 27, 132, 105, 105, 207, 30, 149, 119, 119, 230, 33, 165, 132, 132}
x045000_g_VoHon_Property[110] = {141, 21, 101, 81, 81, 164, 24, 117, 95, 95, 188, 27, 135, 108, 108, 210, 32, 152, 122, 122, 234, 35, 168, 135, 135}
x045000_g_VoHon_Property[111] = {141, 21, 101, 81, 81, 165, 24, 117, 95, 95, 189, 27, 135, 108, 108, 212, 32, 152, 122, 122, 236, 35, 168, 135, 135}
x045000_g_VoHon_Property[112] = {143, 21, 102, 81, 81, 167, 24, 120, 95, 95, 189, 27, 137, 108, 108, 213, 32, 155, 122, 122, 237, 35, 171, 135, 135}
x045000_g_VoHon_Property[113] = {143, 21, 102, 83, 83, 167, 24, 120, 96, 96, 191, 27, 137, 111, 111, 215, 32, 155, 125, 125, 239, 35, 171, 138, 138}
x045000_g_VoHon_Property[114] = {144, 21, 105, 83, 83, 168, 24, 122, 96, 96, 192, 27, 140, 111, 111, 216, 32, 156, 125, 125, 240, 35, 174, 138, 138}
x045000_g_VoHon_Property[115] = {147, 21, 105, 84, 84, 171, 26, 122, 99, 99, 195, 29, 140, 113, 113, 221, 33, 156, 128, 128, 245, 36, 174, 141, 141}
x045000_g_VoHon_Property[116] = {147, 21, 107, 84, 84, 173, 26, 125, 99, 99, 197, 29, 141, 113, 113, 222, 33, 159, 128, 128, 246, 36, 177, 141, 141}
x045000_g_VoHon_Property[117] = {149, 21, 107, 84, 84, 174, 26, 125, 99, 99, 198, 29, 141, 113, 113, 224, 33, 159, 128, 128, 248, 36, 177, 141, 141}
x045000_g_VoHon_Property[118] = {150, 21, 108, 87, 87, 174, 26, 126, 101, 101, 200, 29, 144, 116, 116, 224, 33, 162, 129, 129, 249, 36, 180, 144, 144}
x045000_g_VoHon_Property[119] = {150, 21, 108, 87, 87, 176, 26, 126, 101, 101, 201, 29, 144, 116, 116, 225, 33, 162, 129, 129, 251, 36, 180, 144, 144}
x045000_g_VoHon_Property[120] = {153, 23, 110, 89, 89, 179, 27, 128, 104, 104, 204, 30, 147, 117, 117, 230, 35, 165, 132, 132, 255, 38, 183, 147, 147}

x045000_g_VoHon_OptionAttr = {}
x045000_g_VoHon_OptionAttr[1] = {18, 21, 24, 27, 30}
x045000_g_VoHon_OptionAttr[2] = {25, 29, 33, 37, 41}
x045000_g_VoHon_OptionAttr[3] = {38, 44, 50, 57, 63}
x045000_g_VoHon_OptionAttr[4] = {56, 65, 74, 84, 93}
x045000_g_VoHon_OptionAttr[5] = {79, 92, 105, 118, 131}
x045000_g_VoHon_OptionAttr[6] = {104, 122, 139, 157, 174}
x045000_g_VoHon_OptionAttr[7] = {134, 156, 178, 201, 223}
x045000_g_VoHon_OptionAttr[8] = {166, 194, 222, 249, 277}
x045000_g_VoHon_OptionAttr[9] = {202, 235, 269, 302, 336}
x045000_g_VoHon_OptionAttr[10] = {240, 280, 320, 360, 400}
x045000_g_VoHon_OptionAttr[11] = {18, 21, 24, 27, 30}
x045000_g_VoHon_OptionAttr[12] = {25, 29, 33, 37, 41}
x045000_g_VoHon_OptionAttr[13] = {38, 44, 50, 57, 63}
x045000_g_VoHon_OptionAttr[14] = {56, 65, 74, 84, 93}
x045000_g_VoHon_OptionAttr[15] = {79, 92, 105, 118, 131}
x045000_g_VoHon_OptionAttr[16] = {104, 122, 139, 157, 174}
x045000_g_VoHon_OptionAttr[17] = {134, 156, 178, 201, 223}
x045000_g_VoHon_OptionAttr[18] = {166, 194, 222, 249, 277}
x045000_g_VoHon_OptionAttr[19] = {202, 235, 269, 302, 336}
x045000_g_VoHon_OptionAttr[20] = {240, 280, 320, 360, 400}
x045000_g_VoHon_OptionAttr[21] = {18, 21, 24, 27, 30}
x045000_g_VoHon_OptionAttr[22] = {25, 29, 33, 37, 41}
x045000_g_VoHon_OptionAttr[23] = {38, 44, 50, 57, 63}
x045000_g_VoHon_OptionAttr[24] = {56, 65, 74, 84, 93}
x045000_g_VoHon_OptionAttr[25] = {79, 92, 105, 118, 131}
x045000_g_VoHon_OptionAttr[26] = {104, 122, 139, 157, 174}
x045000_g_VoHon_OptionAttr[27] = {134, 156, 178, 201, 223}
x045000_g_VoHon_OptionAttr[28] = {166, 194, 222, 249, 277}
x045000_g_VoHon_OptionAttr[29] = {202, 235, 269, 302, 336}
x045000_g_VoHon_OptionAttr[30] = {240, 280, 320, 360, 400}
x045000_g_VoHon_OptionAttr[31] = {18, 21, 24, 27, 30}
x045000_g_VoHon_OptionAttr[32] = {25, 29, 33, 37, 41}
x045000_g_VoHon_OptionAttr[33] = {38, 44, 50, 57, 63}
x045000_g_VoHon_OptionAttr[34] = {56, 65, 74, 84, 93}
x045000_g_VoHon_OptionAttr[35] = {79, 92, 105, 118, 131}
x045000_g_VoHon_OptionAttr[36] = {104, 122, 139, 157, 174}
x045000_g_VoHon_OptionAttr[37] = {134, 156, 178, 201, 223}
x045000_g_VoHon_OptionAttr[38] = {166, 194, 222, 249, 277}
x045000_g_VoHon_OptionAttr[39] = {202, 235, 269, 302, 336}
x045000_g_VoHon_OptionAttr[40] = {240, 280, 320, 360, 400}
x045000_g_VoHon_OptionAttr[41] = {5, 6, 6, 7, 8}
x045000_g_VoHon_OptionAttr[42] = {7, 8, 9, 10, 11}
x045000_g_VoHon_OptionAttr[43] = {10, 11, 13, 14, 16}
x045000_g_VoHon_OptionAttr[44] = {14, 17, 19, 22, 24}
x045000_g_VoHon_OptionAttr[45] = {20, 23, 26, 30, 33}
x045000_g_VoHon_OptionAttr[46] = {26, 31, 35, 40, 44}
x045000_g_VoHon_OptionAttr[47] = {34, 39, 45, 50, 56}
x045000_g_VoHon_OptionAttr[48] = {42, 49, 56, 63, 70}
x045000_g_VoHon_OptionAttr[49] = {50, 59, 67, 76, 84}
x045000_g_VoHon_OptionAttr[50] = {60, 70, 80, 90, 100}
x045000_g_VoHon_OptionAttr[51] = {5, 6, 6, 7, 8}
x045000_g_VoHon_OptionAttr[52] = {7, 8, 9, 10, 11}
x045000_g_VoHon_OptionAttr[53] = {10, 11, 13, 14, 16}
x045000_g_VoHon_OptionAttr[54] = {14, 17, 19, 22, 24}
x045000_g_VoHon_OptionAttr[55] = {20, 23, 26, 30, 33}
x045000_g_VoHon_OptionAttr[56] = {26, 31, 35, 40, 44}
x045000_g_VoHon_OptionAttr[57] = {34, 39, 45, 50, 56}
x045000_g_VoHon_OptionAttr[58] = {42, 49, 56, 63, 70}
x045000_g_VoHon_OptionAttr[59] = {50, 59, 67, 76, 84}
x045000_g_VoHon_OptionAttr[60] = {60, 70, 80, 90, 100}
x045000_g_VoHon_OptionAttr[61] = {5, 6, 6, 7, 8}
x045000_g_VoHon_OptionAttr[62] = {7, 8, 9, 10, 11}
x045000_g_VoHon_OptionAttr[63] = {10, 11, 13, 14, 16}
x045000_g_VoHon_OptionAttr[64] = {14, 17, 19, 22, 24}
x045000_g_VoHon_OptionAttr[65] = {20, 23, 26, 30, 33}
x045000_g_VoHon_OptionAttr[66] = {26, 31, 35, 40, 44}
x045000_g_VoHon_OptionAttr[67] = {34, 39, 45, 50, 56}
x045000_g_VoHon_OptionAttr[68] = {42, 49, 56, 63, 70}
x045000_g_VoHon_OptionAttr[69] = {50, 59, 67, 76, 84}
x045000_g_VoHon_OptionAttr[70] = {60, 70, 80, 90, 100}
x045000_g_VoHon_OptionAttr[71] = {5, 6, 6, 7, 8}
x045000_g_VoHon_OptionAttr[72] = {7, 8, 9, 10, 11}
x045000_g_VoHon_OptionAttr[73] = {10, 11, 13, 14, 16}
x045000_g_VoHon_OptionAttr[74] = {14, 17, 19, 22, 24}
x045000_g_VoHon_OptionAttr[75] = {20, 23, 26, 30, 33}
x045000_g_VoHon_OptionAttr[76] = {26, 31, 35, 40, 44}
x045000_g_VoHon_OptionAttr[77] = {34, 39, 45, 50, 56}
x045000_g_VoHon_OptionAttr[78] = {42, 49, 56, 63, 70}
x045000_g_VoHon_OptionAttr[79] = {50, 59, 67, 76, 84}
x045000_g_VoHon_OptionAttr[80] = {60, 70, 80, 90, 100}
x045000_g_VoHon_OptionAttr[81] = {5, 6, 6, 7, 8}
x045000_g_VoHon_OptionAttr[82] = {7, 8, 9, 10, 11}
x045000_g_VoHon_OptionAttr[83] = {10, 11, 13, 14, 16}
x045000_g_VoHon_OptionAttr[84] = {14, 17, 19, 22, 24}
x045000_g_VoHon_OptionAttr[85] = {20, 23, 26, 30, 33}
x045000_g_VoHon_OptionAttr[86] = {26, 31, 35, 40, 44}
x045000_g_VoHon_OptionAttr[87] = {34, 39, 45, 50, 56}
x045000_g_VoHon_OptionAttr[88] = {42, 49, 56, 63, 70}
x045000_g_VoHon_OptionAttr[89] = {50, 59, 67, 76, 84}
x045000_g_VoHon_OptionAttr[90] = {60, 70, 80, 90, 100}
x045000_g_VoHon_OptionAttr[91] = {5, 6, 6, 7, 8}
x045000_g_VoHon_OptionAttr[92] = {7, 8, 9, 10, 11}
x045000_g_VoHon_OptionAttr[93] = {10, 11, 13, 14, 16}
x045000_g_VoHon_OptionAttr[94] = {14, 17, 19, 22, 24}
x045000_g_VoHon_OptionAttr[95] = {20, 23, 26, 30, 33}
x045000_g_VoHon_OptionAttr[96] = {26, 31, 35, 40, 44}
x045000_g_VoHon_OptionAttr[97] = {34, 39, 45, 50, 56}
x045000_g_VoHon_OptionAttr[98] = {42, 49, 56, 63, 70}
x045000_g_VoHon_OptionAttr[99] = {50, 59, 67, 76, 84}
x045000_g_VoHon_OptionAttr[100] = {60, 70, 80, 90, 100}
x045000_g_VoHon_OptionAttr[101] = {5, 6, 6, 7, 8}
x045000_g_VoHon_OptionAttr[102] = {7, 8, 9, 10, 11}
x045000_g_VoHon_OptionAttr[103] = {10, 11, 13, 14, 16}
x045000_g_VoHon_OptionAttr[104] = {14, 17, 19, 22, 24}
x045000_g_VoHon_OptionAttr[105] = {20, 23, 26, 30, 33}
x045000_g_VoHon_OptionAttr[106] = {26, 31, 35, 40, 44}
x045000_g_VoHon_OptionAttr[107] = {34, 39, 45, 50, 56}
x045000_g_VoHon_OptionAttr[108] = {42, 49, 56, 63, 70}
x045000_g_VoHon_OptionAttr[109] = {50, 59, 67, 76, 84}
x045000_g_VoHon_OptionAttr[110] = {60, 70, 80, 90, 100}
x045000_g_VoHon_OptionAttr[111] = {5, 6, 6, 7, 8}
x045000_g_VoHon_OptionAttr[112] = {7, 8, 9, 10, 11}
x045000_g_VoHon_OptionAttr[113] = {10, 11, 13, 14, 16}
x045000_g_VoHon_OptionAttr[114] = {14, 17, 19, 22, 24}
x045000_g_VoHon_OptionAttr[115] = {20, 23, 26, 30, 33}
x045000_g_VoHon_OptionAttr[116] = {26, 31, 35, 40, 44}
x045000_g_VoHon_OptionAttr[117] = {34, 39, 45, 50, 56}
x045000_g_VoHon_OptionAttr[118] = {42, 49, 56, 63, 70}
x045000_g_VoHon_OptionAttr[119] = {50, 59, 67, 76, 84}
x045000_g_VoHon_OptionAttr[120] = {60, 70, 80, 90, 100}
x045000_g_VoHon_OptionAttr[121] = {1, 1, 2, 2, 2}
x045000_g_VoHon_OptionAttr[122] = {2, 2, 2, 3, 3}
x045000_g_VoHon_OptionAttr[123] = {2, 3, 3, 4, 4}
x045000_g_VoHon_OptionAttr[124] = {3, 4, 4, 5, 5}
x045000_g_VoHon_OptionAttr[125] = {4, 5, 6, 6, 7}
x045000_g_VoHon_OptionAttr[126] = {5, 6, 7, 8, 9}
x045000_g_VoHon_OptionAttr[127] = {7, 8, 10, 11, 12}
x045000_g_VoHon_OptionAttr[128] = {8, 10, 11, 13, 14}
x045000_g_VoHon_OptionAttr[129] = {10, 12, 14, 15, 17}
x045000_g_VoHon_OptionAttr[130] = {12, 14, 16, 18, 20}
x045000_g_VoHon_OptionAttr[131] = {1, 1, 2, 2, 2}
x045000_g_VoHon_OptionAttr[132] = {2, 2, 2, 3, 3}
x045000_g_VoHon_OptionAttr[133] = {2, 3, 3, 4, 4}
x045000_g_VoHon_OptionAttr[134] = {3, 4, 4, 5, 5}
x045000_g_VoHon_OptionAttr[135] = {4, 5, 6, 6, 7}
x045000_g_VoHon_OptionAttr[136] = {5, 6, 7, 8, 9}
x045000_g_VoHon_OptionAttr[137] = {7, 8, 10, 11, 12}
x045000_g_VoHon_OptionAttr[138] = {8, 10, 11, 13, 14}
x045000_g_VoHon_OptionAttr[139] = {10, 12, 14, 15, 17}
x045000_g_VoHon_OptionAttr[140] = {12, 14, 16, 18, 20}
x045000_g_VoHon_OptionAttr[141] = {1, 1, 2, 2, 2}
x045000_g_VoHon_OptionAttr[142] = {2, 2, 2, 3, 3}
x045000_g_VoHon_OptionAttr[143] = {2, 3, 3, 4, 4}
x045000_g_VoHon_OptionAttr[144] = {3, 4, 4, 5, 5}
x045000_g_VoHon_OptionAttr[145] = {4, 5, 6, 6, 7}
x045000_g_VoHon_OptionAttr[146] = {5, 6, 7, 8, 9}
x045000_g_VoHon_OptionAttr[147] = {7, 8, 10, 11, 12}
x045000_g_VoHon_OptionAttr[148] = {8, 10, 11, 13, 14}
x045000_g_VoHon_OptionAttr[149] = {10, 12, 14, 15, 17}
x045000_g_VoHon_OptionAttr[150] = {12, 14, 16, 18, 20}
x045000_g_VoHon_OptionAttr[151] = {1, 1, 2, 2, 2}
x045000_g_VoHon_OptionAttr[152] = {2, 2, 2, 3, 3}
x045000_g_VoHon_OptionAttr[153] = {2, 3, 3, 4, 4}
x045000_g_VoHon_OptionAttr[154] = {3, 4, 4, 5, 5}
x045000_g_VoHon_OptionAttr[155] = {4, 5, 6, 6, 7}
x045000_g_VoHon_OptionAttr[156] = {5, 6, 7, 8, 9}
x045000_g_VoHon_OptionAttr[157] = {7, 8, 10, 11, 12}
x045000_g_VoHon_OptionAttr[158] = {8, 10, 11, 13, 14}
x045000_g_VoHon_OptionAttr[159] = {10, 12, 14, 15, 17}
x045000_g_VoHon_OptionAttr[160] = {12, 14, 16, 18, 20}


--LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, XXXX)--Kiem tra Impact tren nguoi nhan vat--
--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, XXXX, 0)--Them Impact len nhan vat--
--LuaFnCancelSpecificImpact(sceneId, selfId, XXXX)--Huy bo Impact tren nguoi nhan vat--
function x045000_DoAction(sceneId, selfId, type, version_value, cloth_effect, player_id)
	
	if not version_value then
		BeginUICommand( sceneId )
			EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1002001 )
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 22341, 0)
	else
		if version_value == 20200622 or version_value == 20200622 then --version_value in SelfEquip.lua--
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 22341) == 1 then
				LuaFnCancelSpecificImpact(sceneId, selfId, 22341)
			end
		else
			BeginUICommand( sceneId )
				EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1002001 )
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 22341, 0)
		end
	end
	
	--Load Impact-Equip
	for i = 1, getn(x045000_g_EquipImpact) do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x045000_g_EquipImpact[i][2]) == 1 then
			LuaFnCancelSpecificImpact(sceneId, selfId, x045000_g_EquipImpact[i][2])
		end
	end
	
	for i = 100, 118 do
		local ItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i );
		for j = 1, getn(x045000_g_EquipImpact) do
			if ItemID == x045000_g_EquipImpact[j][1] then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x045000_g_EquipImpact[j][2], 0)
			end
		end
	end
	
	--RiderCommon
	local DataRiderCommon = GetMissionData(sceneId,selfId,CHARRIDER_INFO)
	if strlen(DataRiderCommon) == 9 then
		local SaveTime = tonumber(strsub(DataRiderCommon,1,8))
		local NowTime = GetTime2Day()

		if SaveTime >= NowTime then
			local RiderAttr = tonumber(strsub(DataRiderCommon,9,9))
			if RiderAttr >= 1 then
				local AttrHP = (RiderAttr+1)*1000
				local AttrTT = (RiderAttr+1)*10
				x045000_g_HP = x045000_g_HP + AttrHP
				x045000_g_CuongLuc = x045000_g_CuongLuc + AttrTT
				x045000_g_NoiLuc = x045000_g_NoiLuc + AttrTT
				x045000_g_TheLuc = x045000_g_TheLuc + AttrTT
				x045000_g_TriLuc = x045000_g_TriLuc + AttrTT
				x045000_g_ThanPhap = x045000_g_ThanPhap + AttrTT
			end
		end
	end
	
	--Dress Process--
	local Item116 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 116 );
	if Item116 ~= 0 then
		local Author, szAuthor = LuaFnGetItemCreator(sceneId, selfId, 116);
		if szAuthor then
			SetMissionData(sceneId,selfId,CHARDRESSTIME,tonumber(szAuthor))
		else
			SetMissionData(sceneId,selfId,CHARDRESSTIME,88888888)
		end
	else
		SetMissionData(sceneId,selfId,CHARDRESSTIME,0)
	end
	
	--DieuVan
	for i = 100, 118 do
		local ItemID = LuaFnGetItemTableIndexByIndex( sceneId, selfId, i );
		if ItemID ~= 0 then
			local Author, szAuthor = LuaFnGetItemCreator(sceneId, selfId, i);
			if ItemID >= 10171001 and ItemID <= 10177210 then --Am Khi
				szAuthor = "*"..strsub(ItemID,6,8);
			end
			if szAuthor then
				local Star = strfind(szAuthor,"*");
				if Star then
					local DwType = tonumber(strsub(szAuthor,Star+1,Star+3));
					if DwType ~= 0 then
						local DwLevel = tonumber(strsub(szAuthor,Star+3,Star+3));
						
						if DwLevel == 0 then
							DwLevel = 10;
						end
						
						if DwType >= 1 and DwType <= 10 then
							x045000_g_CuongLuc = x045000_g_CuongLuc + x045000_g_DieuVan_OptionAttr[DwLevel][1];
						elseif DwType >= 11 and DwType <= 20 then
							x045000_g_NoiLuc = x045000_g_NoiLuc + x045000_g_DieuVan_OptionAttr[DwLevel][1];
						elseif DwType >= 21 and DwType <= 30 then
							x045000_g_TheLuc = x045000_g_TheLuc + x045000_g_DieuVan_OptionAttr[DwLevel][1];
						elseif DwType >= 31 and DwType <= 40 then
							x045000_g_TriLuc = x045000_g_TriLuc + x045000_g_DieuVan_OptionAttr[DwLevel][1];
						elseif DwType >= 41 and DwType <= 50 then
							x045000_g_ThanPhap = x045000_g_ThanPhap + x045000_g_DieuVan_OptionAttr[DwLevel][1];
						elseif DwType >= 51 and DwType <= 60 then
							x045000_g_BangCong = x045000_g_BangCong + x045000_g_DieuVan_OptionAttr[DwLevel][2];
						elseif DwType >= 61 and DwType <= 70 then
							x045000_g_HoaCong = x045000_g_HoaCong + x045000_g_DieuVan_OptionAttr[DwLevel][2];
						elseif DwType >= 71 and DwType <= 80 then
							x045000_g_HuyenCong = x045000_g_HuyenCong + x045000_g_DieuVan_OptionAttr[DwLevel][2];
						elseif DwType >= 81 and DwType <= 90 then
							x045000_g_DocCong = x045000_g_DocCong + x045000_g_DieuVan_OptionAttr[DwLevel][2];
						elseif DwType >= 91 and DwType <= 100 then
							x045000_g_KhangBang = x045000_g_KhangBang + x045000_g_DieuVan_OptionAttr[DwLevel][3];
						elseif DwType >= 101 and DwType <= 110 then
							x045000_g_KhangHoa = x045000_g_KhangHoa + x045000_g_DieuVan_OptionAttr[DwLevel][3];
						elseif DwType >= 111 and DwType <= 120 then
							x045000_g_KhangHuyen = x045000_g_KhangHuyen + x045000_g_DieuVan_OptionAttr[DwLevel][3];
						elseif DwType >= 121 and DwType <= 130 then
							x045000_g_KhangDoc = x045000_g_KhangDoc + x045000_g_DieuVan_OptionAttr[DwLevel][3];
						elseif DwType >= 131 and DwType <= 140 then
							x045000_g_GKBang = x045000_g_GKBang + x045000_g_DieuVan_OptionAttr[DwLevel][3];
						elseif DwType >= 141 and DwType <= 150 then
							x045000_g_GKHoa = x045000_g_GKHoa + x045000_g_DieuVan_OptionAttr[DwLevel][3];
						elseif DwType >= 151 and DwType <= 160 then
							x045000_g_GKHuyen = x045000_g_GKHuyen + x045000_g_DieuVan_OptionAttr[DwLevel][3];
						elseif DwType >= 161 and DwType <= 170 then
							x045000_g_GKDoc = x045000_g_GKDoc + x045000_g_DieuVan_OptionAttr[DwLevel][3];
						end
						
						if i == 107 then --Hang Lien
							if DwType >= 171 and DwType <= 180 then
								SetMissionData(sceneId,selfId,DW_107_SETDAME,x045000_g_DieuVan_OptionAttr[DwLevel][4]);
								LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 17500, 0);
							elseif DwType >= 181 and DwType <= 210 then
								local ImpactDW107 = DwType + 17320;
								-- LuaFnAddGlobalCountNews(sceneId,ImpactDW107)
								if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactDW107) == 0 then
									LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId , ImpactDW107,0)
								end
								SetMissionData(sceneId,selfId,DW_107_SETDAME,0);
							else
								SetMissionData(sceneId,selfId,DW_107_SETDAME,0);
								LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 17500, 0);
							end
						end
					end
				else
					if i == 107 then
						SetMissionData(sceneId,selfId,DW_107_SETDAME,0);
						LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 17500, 0);
					end
				end
			else
				if i == 107 then
					SetMissionData(sceneId,selfId,DW_107_SETDAME,0);
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 17500, 0);
				end
			end
		else
			if i == 107 then
				SetMissionData(sceneId,selfId,DW_107_SETDAME,0);
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 17500, 0);
			end
		end
	end
	
	--SuperWeapon
	local Item100 = LuaFnGetItemTableIndexByIndex( sceneId, selfId, 100 ); --Vu Khi--
	local Item100_Author = "";
	if Item100 >= 10300000 and Item100 <= 10305444 then
		local Author, szAuthor = LuaFnGetItemCreator(sceneId,selfId,100);
		if szAuthor then
			Item108_Author = szAuthor;
			if strfind(szAuthor,"!") then
				local Type = 0;
				local AuthorType = strsub(Item108_Author,2,5)
				
				for i = 2, 31 do
					if AuthorType == x045000_g_SWAttr["TYPE"][i] then
						Type = i;
						break
					end
				end

				for i = 6, 12 do
					local Attr = strsub(Item108_Author,i,i)
					if Attr == "A" then
						x045000_g_HP = x045000_g_HP + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "B" then
						x045000_g_HPMAX = x045000_g_HPMAX + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "C" then
						x045000_g_MP = x045000_g_MP + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "D" then
						x045000_g_MPMAX = x045000_g_MPMAX + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "E" then
						x045000_g_BangCong = x045000_g_BangCong + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "F" then
						x045000_g_KhangBang = x045000_g_KhangBang + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "G" then
						x045000_g_HoaCong = x045000_g_HoaCong + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "H" then
						x045000_g_KhangHoa = x045000_g_KhangHoa + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "I" then
						x045000_g_HuyenCong = x045000_g_HuyenCong + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "J" then
						x045000_g_KhangHuyen = x045000_g_KhangHuyen + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "K" then
						x045000_g_DocCong = x045000_g_DocCong + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "L" then
						x045000_g_KhangDoc = x045000_g_KhangDoc + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "M" then
						x045000_g_NgoaiCong = x045000_g_NgoaiCong + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "N" then
						x045000_g_NgoaiThu = x045000_g_NgoaiThu + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "O" then
						x045000_g_NoiCong = x045000_g_NoiCong + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "P" then
						x045000_g_NoiThu = x045000_g_NoiThu + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "Q" then
						x045000_g_ChinhXac = x045000_g_ChinhXac + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "R" then
						x045000_g_NeTranh = x045000_g_NeTranh + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "S" then
						x045000_g_HoiCong = x045000_g_HoiCong + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "T" then
						x045000_g_CuongLuc = x045000_g_CuongLuc + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "U" then
						x045000_g_NoiLuc = x045000_g_NoiLuc + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "V" then
						x045000_g_TheLuc = x045000_g_TheLuc + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "W" then
						x045000_g_TriLuc = x045000_g_TriLuc + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "X" then
						x045000_g_ThanPhap = x045000_g_ThanPhap + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "Y" then
						x045000_g_HoiThu = x045000_g_HoiThu + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "Z" then
						x045000_g_CuongLuc = x045000_g_CuongLuc + x045000_g_SWAttr[Attr][Type];
						x045000_g_NoiLuc = x045000_g_NoiLuc + x045000_g_SWAttr[Attr][Type];
						x045000_g_TheLuc = x045000_g_TheLuc + x045000_g_SWAttr[Attr][Type];
						x045000_g_TriLuc = x045000_g_TriLuc + x045000_g_SWAttr[Attr][Type];
						x045000_g_ThanPhap = x045000_g_ThanPhap + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "a" then
						x045000_g_GKABang = x045000_g_GKABang + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "b" then
						x045000_g_GKAHoa = x045000_g_GKAHoa + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "c" then
						x045000_g_GKAHuyen = x045000_g_GKAHuyen + x045000_g_SWAttr[Attr][Type];
					elseif Attr == "d" then
						x045000_g_GKADoc = x045000_g_GKADoc + x045000_g_SWAttr[Attr][Type];
					end
				end
			end
		end		
	end
	
	--VoHon Process--
	local Item108 = LuaFnGetItemTableIndexByIndex(sceneId, selfId, 108); --VoHon--
	local Item108_Author = "";
	if Item108 >= 10308001 and Item108 <= 10308004 then
		local Author, szAuthor = LuaFnGetItemCreator(sceneId, selfId, 108);
		if szAuthor then
			Item108_Author = szAuthor;
		else
			Item108_Author = "0010000050010----------------------------0";
		end
		
		local VoHon_Level = tonumber(strsub(Item108_Author,1,3));
		local VoHon_Base = tonumber(strsub(Item108_Author,9,9)) - 5;
		local VoHon_Magic = tonumber(strsub(Item108_Author,42,42));

		if Item108 == 10308001 or Item108 == 10308003 then
			local Magic_Impact = 14951 + VoHon_Magic;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Magic_Impact) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Magic_Impact, 0)
			end
			x045000_g_CuongLuc = x045000_g_CuongLuc + x045000_g_VoHon_Property[VoHon_Level][VoHon_Base * 5 + 1];
			x045000_g_NoiLuc = x045000_g_NoiLuc + x045000_g_VoHon_Property[VoHon_Level][VoHon_Base * 5 + 2];
		end
		if Item108 == 10308002 or Item108 == 10308004 then
			local Magic_Impact = 14956 + VoHon_Magic;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Magic_Impact) == 0 then
				LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Magic_Impact, 0)
			end
			x045000_g_CuongLuc = x045000_g_CuongLuc + x045000_g_VoHon_Property[VoHon_Level][VoHon_Base * 5 + 2];
			x045000_g_NoiLuc = x045000_g_NoiLuc + x045000_g_VoHon_Property[VoHon_Level][VoHon_Base * 5 + 1];
		end 
		x045000_g_TheLuc = x045000_g_TheLuc + x045000_g_VoHon_Property[VoHon_Level][VoHon_Base * 5 + 3];
		x045000_g_TriLuc = x045000_g_TriLuc + x045000_g_VoHon_Property[VoHon_Level][VoHon_Base * 5 + 4];
		x045000_g_ThanPhap = x045000_g_ThanPhap + x045000_g_VoHon_Property[VoHon_Level][VoHon_Base * 5 + 5];
		
		if strsub(Item108_Author,14,34) ~= "---------------------" then
			local VoHon_OpP1 = {14,17,20,23,26,29,32}
			local VoHon_OpP2 = {16,19,22,25,28,31,34}
			
			for i = 1, 7 do
				local VoHon_Option = strsub(Item108_Author,VoHon_OpP1[i],VoHon_OpP2[i]);
				if VoHon_Option ~= "---" then
					VoHon_Option = tonumber(VoHon_Option);
					if VoHon_Option >= 1 and VoHon_Option <= 10 then
						x045000_g_BangCong = x045000_g_BangCong + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 11 and VoHon_Option <= 20 then
						x045000_g_HoaCong = x045000_g_HoaCong + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 21 and VoHon_Option <= 30 then
						x045000_g_HuyenCong = x045000_g_HuyenCong + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 31 and VoHon_Option <= 40 then
						x045000_g_DocCong = x045000_g_DocCong + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					
					if VoHon_Option >= 41 and VoHon_Option <= 50 then
						x045000_g_KhangBang = x045000_g_KhangBang + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 51 and VoHon_Option <= 60 then
						x045000_g_KhangHoa = x045000_g_KhangHoa + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 61 and VoHon_Option <= 70 then
						x045000_g_KhangHuyen = x045000_g_KhangHuyen + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 71 and VoHon_Option <= 80 then
						x045000_g_KhangDoc = x045000_g_KhangDoc + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					
					if VoHon_Option >= 81 and VoHon_Option <= 90 then
						x045000_g_GKBang = x045000_g_GKBang + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 91 and VoHon_Option <= 100 then
						x045000_g_GKHoa = x045000_g_GKHoa + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 101 and VoHon_Option <= 110 then
						x045000_g_GKHuyen = x045000_g_GKHuyen + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 111 and VoHon_Option <= 120 then
						x045000_g_GKDoc = x045000_g_GKDoc + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					
					if VoHon_Option >= 121 and VoHon_Option <= 130 then
						x045000_g_GKABang = x045000_g_GKABang + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 131 and VoHon_Option <= 140 then
						x045000_g_GKAHoa = x045000_g_GKAHoa + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 141 and VoHon_Option <= 150 then
						x045000_g_GKAHuyen = x045000_g_GKAHuyen + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
					if VoHon_Option >= 151 and VoHon_Option <= 160 then
						x045000_g_GKADoc = x045000_g_GKADoc + x045000_g_VoHon_OptionAttr[VoHon_Option][VoHon_Base + 1]
					end
				end
			end
		end
		
		if strsub(Item108_Author,35,41) ~= "-------" then
			local VoHon_Skill1 = strsub(Item108_Author,35,36);
			if VoHon_Skill1 ~= "--" then
				VoHon_Skill1 = tonumber(VoHon_Skill1) + 1360;
				if HaveSkill(sceneId,selfId,VoHon_Skill1) == -1 then
					AddSkill(sceneId,selfId,VoHon_Skill1)
				end
			else
				for i = 1361, 1384 do
					if HaveSkill(sceneId,selfId,i) == 1 then
						DelSkill(sceneId,selfId,i)
					end
				end
			end
			
			local VoHon_Skill2 = strsub(Item108_Author,37,39);
			if VoHon_Skill2 ~= "---" then
				VoHon_Skill2 = tonumber(VoHon_Skill2) + 1384;
				if HaveSkill(sceneId,selfId,VoHon_Skill2) == -1 then
					AddSkill(sceneId,selfId,VoHon_Skill2)
				end
			else
				for i = 1385, 1516 do
					if HaveSkill(sceneId,selfId,i) == 1 then
						DelSkill(sceneId,selfId,i)
					end
				end
			end
			
			local VoHon_Skill3 = strsub(Item108_Author,40,41);
			if VoHon_Skill3 ~= "--" then
				VoHon_Skill3 = tonumber(VoHon_Skill3) + 1516;
				if HaveSkill(sceneId,selfId,VoHon_Skill3) == -1 then
					AddSkill(sceneId,selfId,VoHon_Skill3)
				end
			else
				for i = 1517, 1600 do
					if HaveSkill(sceneId,selfId,i) == 1 then
						DelSkill(sceneId,selfId,i)
					end
				end
			end
		else
			for i = 1361, 1600 do
				if HaveSkill(sceneId,selfId,i) == 1 then
					DelSkill(sceneId,selfId,i)
				end
			end
		end
	else
		Item108_Author = "NoWuhun";
		for i = 1361, 1600 do
			if HaveSkill(sceneId,selfId,i) == 1 then
				DelSkill(sceneId,selfId,i)
			end
		end
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 14950, 0) --Cancel Model Wuhun--
	end
	
	---- FirstLogin
	-- SetMissionData(sceneId,selfId,CHARPOINT_CUONGLUC,0)
	
	--Add Point With t_Function--
	local CuongLucMD = GetMissionData(sceneId,selfId,CHARPOINT_CUONGLUC)
	if x045000_g_CuongLuc ~= CuongLucMD then
		local nCuongLuc = CuongLucMD - x045000_g_CuongLuc;
		local RemainPoint = GetPlayerRemainPoints(sceneId,selfId)
		LuaFnWashSomePoints(sceneId, selfId, 0, nCuongLuc)
		SetPlayerRemainPoints(sceneId,selfId,RemainPoint)
		SetMissionData(sceneId,selfId,CHARPOINT_CUONGLUC,x045000_g_CuongLuc)
	end
	local NoiLucMD = GetMissionData(sceneId,selfId,CHARPOINT_NOILUC)
	if x045000_g_NoiLuc ~= NoiLucMD then
		local nNoiLuc = NoiLucMD - x045000_g_NoiLuc;
		local RemainPoint = GetPlayerRemainPoints(sceneId,selfId)
		LuaFnWashSomePoints(sceneId, selfId, 1, nNoiLuc)
		SetPlayerRemainPoints(sceneId,selfId,RemainPoint)
		SetMissionData(sceneId,selfId,CHARPOINT_NOILUC,x045000_g_NoiLuc)
	end
	local TheLucMD = GetMissionData(sceneId,selfId,CHARPOINT_THELUC)
	if x045000_g_TheLuc ~= TheLucMD then
		local nTheLuc = TheLucMD - x045000_g_TheLuc;
		local RemainPoint = GetPlayerRemainPoints(sceneId,selfId)
		LuaFnWashSomePoints(sceneId, selfId, 2, nTheLuc)
		SetPlayerRemainPoints(sceneId,selfId,RemainPoint)
		SetMissionData(sceneId,selfId,CHARPOINT_THELUC,x045000_g_TheLuc)
	end
	local TriLucMD = GetMissionData(sceneId,selfId,CHARPOINT_TRILUC)
	if x045000_g_TriLuc ~= TriLucMD then
		local nTriLuc = TriLucMD - x045000_g_TriLuc;
		local RemainPoint = GetPlayerRemainPoints(sceneId,selfId)
		LuaFnWashSomePoints(sceneId, selfId, 3, nTriLuc)
		SetPlayerRemainPoints(sceneId,selfId,RemainPoint)
		SetMissionData(sceneId,selfId,CHARPOINT_TRILUC,x045000_g_TriLuc)
	end
	local ThanPhapMD = GetMissionData(sceneId,selfId,CHARPOINT_THANPHAP)
	if x045000_g_ThanPhap ~= ThanPhapMD then
		local nThanPhap = ThanPhapMD - x045000_g_ThanPhap;
		local RemainPoint = GetPlayerRemainPoints(sceneId,selfId)
		LuaFnWashSomePoints(sceneId, selfId, 4, nThanPhap)
		SetPlayerRemainPoints(sceneId,selfId,RemainPoint)
		SetMissionData(sceneId,selfId,CHARPOINT_THANPHAP,x045000_g_ThanPhap)
	end

	-- LuaFnAddGlobalCountNews(sceneId,CuongLucMD.."-"..NoiLucMD.."-"..TheLucMD.."-"..TriLucMD.."-"..ThanPhapMD)

	--Load Point With t_Impact
	if x045000_g_BangCong ~= 0 then
		local ImpactX = mod(x045000_g_BangCong,100) + 21000;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_BangCong >= 100 then
			local ImpactY = floor(x045000_g_BangCong/100) + 21100;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21100, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21000, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21100, 0)
	end
	if x045000_g_HoaCong ~= 0 then
		local ImpactX = mod(x045000_g_HoaCong,100) + 21300;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_HoaCong >= 100 then
			local ImpactY = floor(x045000_g_HoaCong/100) + 21400;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21400, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21300, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21400, 0)
	end
	if x045000_g_HuyenCong ~= 0 then
		local ImpactX = mod(x045000_g_HuyenCong,100) + 21600;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_HuyenCong >= 100 then
			local ImpactY = floor(x045000_g_HuyenCong/100) + 21700;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21700, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21600, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21700, 0)
	end
	if x045000_g_DocCong ~= 0 then
		local ImpactX = mod(x045000_g_DocCong,100) + 21900;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_DocCong >= 100 then
			local ImpactY = floor(x045000_g_DocCong/100) + 22000;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22000, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 21900, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22000, 0)
	end
	
	if x045000_g_KhangBang ~= 0 then
		local ImpactX = mod(x045000_g_KhangBang,100) + 22200;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_KhangBang >= 100 then
			local ImpactY = floor(x045000_g_KhangBang/100) + 22300;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22300, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22200, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22300, 0)
	end
	if x045000_g_KhangHoa ~= 0 then
		local ImpactX = mod(x045000_g_KhangHoa,100) + 22350;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_KhangHoa >= 100 then
			local ImpactY = floor(x045000_g_KhangHoa/100) + 22450;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22450, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22350, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22450, 0)
	end
	if x045000_g_KhangHuyen ~= 0 then --00 -> 99
		local ImpactX = mod(x045000_g_KhangHuyen,100) + 22500;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_KhangHuyen >= 100 then --0100 -> 4000
			local ImpactY = floor(x045000_g_KhangHuyen/100) + 22600;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22600, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22500, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22600, 0)
	end
	if x045000_g_KhangDoc ~= 0 then --00 -> 99
		local ImpactX = mod(x045000_g_KhangDoc,100) + 22650;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_KhangDoc >= 100 then --0100 -> 4000
			local ImpactY = floor(x045000_g_KhangDoc/100) + 22750;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22750, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22650, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22750, 0)
	end
	if x045000_g_GKBang ~= 0 then --00 -> 99
		local ImpactX = mod(x045000_g_GKBang,100) + 22800;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_GKBang >= 100 then --0100 -> 4000
			local ImpactY = floor(x045000_g_GKBang/100) + 22900;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22900, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22800, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22900, 0)
	end
	if x045000_g_GKHoa ~= 0 then --00 -> 99
		local ImpactX = mod(x045000_g_GKHoa,100) + 22950;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_GKHoa >= 100 then --0100 -> 4000
			local ImpactY = floor(x045000_g_GKHoa/100) + 23050;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 23050, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 22950, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 23050, 0)
	end
	if x045000_g_GKHuyen ~= 0 then --00 -> 99
		local ImpactX = mod(x045000_g_GKHuyen,100) + 23100;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_GKHuyen >= 100 then --0100 -> 4000
			local ImpactY = floor(x045000_g_GKHuyen/100) + 23200;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 23200, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 23100, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 23200, 0)
	end
	if x045000_g_GKDoc ~= 0 then --00 -> 99
		local ImpactX = mod(x045000_g_GKDoc,100) + 23250;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactX) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactX, 0)
		end
		if x045000_g_GKDoc >= 100 then --0100 -> 4000
			local ImpactY = floor(x045000_g_GKDoc/100) + 23350;
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactY) == 0 then
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, ImpactY, 0)
			end
		else
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 23350, 0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 23250, 0)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 23350, 0)
	end
	
	--GK Am
	local Dw107SetDame = GetMissionData(sceneId,selfId,DW_107_SETDAME)
	if x045000_g_GKABang + x045000_g_GKAHoa + x045000_g_GKAHuyen + x045000_g_GKADoc + Dw107SetDame ~= 0 then
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 23392) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,23392,0)
		end
		SetMissionData(sceneId,selfId,CHARPOINT_GKBANG,x045000_g_GKABang)
		SetMissionData(sceneId,selfId,CHARPOINT_GKHOA,x045000_g_GKAHoa)
		SetMissionData(sceneId,selfId,CHARPOINT_GKHUYEN,x045000_g_GKAHuyen)
		SetMissionData(sceneId,selfId,CHARPOINT_GKDOC,x045000_g_GKADoc)
	else
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,23391,0)
		SetMissionData(sceneId,selfId,CHARPOINT_GKBANG,0)
		SetMissionData(sceneId,selfId,CHARPOINT_GKHOA,0)
		SetMissionData(sceneId,selfId,CHARPOINT_GKHUYEN,0)
		SetMissionData(sceneId,selfId,CHARPOINT_GKDOC,0)
	end
	--GK Am
	
	if x045000_g_HPMAX ~= 0 then
		local ImpactZ = 24100 + x045000_g_HPMAX;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactZ) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,ImpactZ,0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,24100,0)
	end
	if x045000_g_MPMAX ~= 0 then
		local ImpactZ = 24400 + x045000_g_MPMAX;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactZ) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,ImpactZ,0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,24400,0)
	end
	if x045000_g_HoiCong ~= 0 then
		local ImpactZ = 25700 + x045000_g_HoiCong;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactZ) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,ImpactZ,0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,25700,0)
	end
	if x045000_g_HoiThu ~= 0 then
		local ImpactZ = 25850 + x045000_g_HoiThu;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactZ) == 0 then
			LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,ImpactZ,0)
		end
	else
		LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,25850,0)
	end

	--Load Point With t_Impact + t_Xinfa
	if x045000_g_HP ~= 0 then
		local Impact = mod(x045000_g_HP,300) + 23800;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Impact) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Impact, 0)
		end
		local Xinfa = floor(x045000_g_HP/300);
		if LuaFnGetXinFaLevel(sceneId, selfId, 101) ~= Xinfa then
			LuaFnSetXinFaLevel(sceneId, selfId, 101, Xinfa)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 23800, 0)
		if LuaFnGetXinFaLevel(sceneId, selfId, 101) ~= 0 then
			LuaFnSetXinFaLevel(sceneId, selfId, 101, 0)
		end
	end
	if x045000_g_MP ~= 0 then
		local Impact = mod(x045000_g_MP,200) + 24200;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Impact) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Impact, 0)
		end
		local Xinfa = floor(x045000_g_MP/200);
		if LuaFnGetXinFaLevel(sceneId, selfId, 102) ~= Xinfa then
			LuaFnSetXinFaLevel(sceneId, selfId, 102, Xinfa)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 24200, 0)
		if LuaFnGetXinFaLevel(sceneId, selfId, 102) ~= 0 then
			LuaFnSetXinFaLevel(sceneId, selfId, 102, 0)
		end
	end
	if x045000_g_NgoaiCong ~= 0 then
		local Impact = mod(x045000_g_NgoaiCong,200) + 24500;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Impact) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Impact, 0)
		end
		local Xinfa = floor(x045000_g_NgoaiCong/200);
		if LuaFnGetXinFaLevel(sceneId, selfId, 103) ~= Xinfa then
			LuaFnSetXinFaLevel(sceneId, selfId, 103, Xinfa)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 24500, 0)
		if LuaFnGetXinFaLevel(sceneId, selfId, 103) ~= 0 then
			LuaFnSetXinFaLevel(sceneId, selfId, 103, 0)
		end
	end
	if x045000_g_NoiCong ~= 0 then
		local Impact = mod(x045000_g_NoiCong,200) + 24700;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Impact) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Impact, 0)
		end
		local Xinfa = floor(x045000_g_NoiCong/200);
		if LuaFnGetXinFaLevel(sceneId, selfId, 104) ~= Xinfa then
			LuaFnSetXinFaLevel(sceneId, selfId, 104, Xinfa)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 24700, 0)
		if LuaFnGetXinFaLevel(sceneId, selfId, 104) ~= 0 then
			LuaFnSetXinFaLevel(sceneId, selfId, 104, 0)
		end
	end
	if x045000_g_NgoaiThu ~= 0 then
		local Impact = mod(x045000_g_NgoaiThu,200) + 24900;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Impact) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Impact, 0)
		end
		local Xinfa = floor(x045000_g_NgoaiThu/200);
		if LuaFnGetXinFaLevel(sceneId, selfId, 105) ~= Xinfa then
			LuaFnSetXinFaLevel(sceneId, selfId, 105, Xinfa)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 24900, 0)
		if LuaFnGetXinFaLevel(sceneId, selfId, 105) ~= 0 then
			LuaFnSetXinFaLevel(sceneId, selfId, 105, 0)
		end
	end
	if x045000_g_NoiThu ~= 0 then
		local Impact = mod(x045000_g_NoiThu,200) + 25100;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Impact) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Impact, 0)
		end
		local Xinfa = floor(x045000_g_NoiThu/200);
		if LuaFnGetXinFaLevel(sceneId, selfId, 106) ~= Xinfa then
			LuaFnSetXinFaLevel(sceneId, selfId, 106, Xinfa)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25100, 0)
		if LuaFnGetXinFaLevel(sceneId, selfId, 106) ~= 0 then
			LuaFnSetXinFaLevel(sceneId, selfId, 106, 0)
		end
	end
	if x045000_g_ChinhXac ~= 0 then
		local Impact = mod(x045000_g_ChinhXac,200) + 25300;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Impact) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Impact, 0)
		end
		local Xinfa = floor(x045000_g_ChinhXac/200);
		if LuaFnGetXinFaLevel(sceneId, selfId, 107) ~= Xinfa then
			LuaFnSetXinFaLevel(sceneId, selfId, 107, Xinfa)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25300, 0)
		if LuaFnGetXinFaLevel(sceneId, selfId, 107) ~= 0 then
			LuaFnSetXinFaLevel(sceneId, selfId, 107, 0)
		end
	end
	if x045000_g_NeTranh ~= 0 then
		local Impact = mod(x045000_g_NeTranh,200) + 25500;
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, Impact) == 0 then
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, Impact, 0)
		end
		local Xinfa = floor(x045000_g_NeTranh/200);
		if LuaFnGetXinFaLevel(sceneId, selfId, 108) ~= Xinfa then
			LuaFnSetXinFaLevel(sceneId, selfId, 108, Xinfa)
		end
	else
		LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 25500, 0)
		if LuaFnGetXinFaLevel(sceneId, selfId, 108) ~= 0 then
			LuaFnSetXinFaLevel(sceneId, selfId, 108, 0)
		end
	end
	
	BeginUICommand(sceneId)
		UICommand_AddString(sceneId,Item108_Author)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,74130101)
end

function x045000_AddFirstPoint(sceneId, selfId, Logic)
	if not Logic then
		return
	end
	
	SetMissionData(sceneId,selfId,CHARPOINT_CUONGLUC,0)
	SetMissionData(sceneId,selfId,CHARPOINT_NOILUC,0)
	SetMissionData(sceneId,selfId,CHARPOINT_THELUC,0)
	SetMissionData(sceneId,selfId,CHARPOINT_TRILUC,0)
	SetMissionData(sceneId,selfId,CHARPOINT_THANPHAP,0)
	
	LuaFnWashPoints(sceneId,selfId)
	local RemainPoint = GetPlayerRemainPoints(sceneId, selfId)
	SetPlayerRemainPoints(sceneId, selfId, RemainPoint + 5)
	
	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,Logic)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId, selfId, 32001)
end

function x045000_OnImpactFadeOut( sceneId, selfId, impactId )
	if selfId == nil then
		return
	end

	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	if targetId == nil then
		return
	end
	
	local Dw107SetDame = GetMissionData(sceneId,selfId,DW_107_SETDAME)
	if Dw107SetDame >= 1 then
		LuaFnSetDamage(sceneId, selfId, targetId, Dw107SetDame)
	end

	local objType = GetCharacterType(sceneId, targetId)
	if objType ~= 1 then
		return
	end

	local CheckObj = GetHumanGUID(sceneId, targetId)
	if CheckObj < 1010000000 then
		return
	end
	
	local GKBangA	= GetMissionData(sceneId,selfId,CHARPOINT_GKBANG)
	local GKHoaA	= GetMissionData(sceneId,selfId,CHARPOINT_GKHOA)
	local GKHuyenA	= GetMissionData(sceneId,selfId,CHARPOINT_GKHUYEN)
	local GKDocA	= GetMissionData(sceneId,selfId,CHARPOINT_GKDOC)
	
	if GKBangA ~= 0 then
		LuaFnSendSpecificImpactToUnit( sceneId, targetId, targetId, targetId, 23400 + GKBangA, 0)
	end
	
	if GKHoaA ~= 0 then
		LuaFnSendSpecificImpactToUnit( sceneId, targetId, targetId, targetId, 23500 + GKHoaA, 0)
	end
	
	if GKHuyenA ~= 0 then
		LuaFnSendSpecificImpactToUnit( sceneId, targetId, targetId, targetId, 23600 + GKHuyenA, 0)
	end
	
	if GKDocA ~= 0 then
		LuaFnSendSpecificImpactToUnit( sceneId, targetId, targetId, targetId, 23700 + GKDocA, 0)
	end
end

function x045000_EventParamReset(sceneId, selfId)
	if GetMissionData(sceneId, selfId, EVENT_PARAM_RESET) ~= 20200527 then
		SetMissionData(sceneId, selfId, EVENT_PARAM_RESET, 20200527)
		
		SetMissionData(sceneId, selfId, EVENT_PARAM1, 0)
		SetMissionData(sceneId, selfId, EVENT_PARAM2, 0)
		SetMissionData(sceneId, selfId, EVENT_PARAM3, 0)
		SetMissionData(sceneId, selfId, EVENT_PARAM4, 0)
		SetMissionData(sceneId, selfId, EVENT_PARAM5, 0)
		SetMissionData(sceneId, selfId, EVENT_PARAM6, 0)
		SetMissionData(sceneId, selfId, EVENT_PARAM7, 0)
		SetMissionData(sceneId, selfId, EVENT_PARAM8, 0)
		SetMissionData(sceneId, selfId, EVENT_PARAM9, 0)
	end
end

function x045000_NotifyTip(sceneId, selfId, Msg)
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

-------------------------------------------------
-------------------------------------------------
x045000_g_EquipImpact = {}
x045000_g_EquipImpact[01] = {10300000,9005}
x045000_g_EquipImpact[02] = {10300001,9006}
x045000_g_EquipImpact[03] = {10300002,9007}
x045000_g_EquipImpact[04] = {10300003,9008}
x045000_g_EquipImpact[05] = {10300004,9009}
x045000_g_EquipImpact[06] = {10300005,9010}
x045000_g_EquipImpact[07] = {10302000,9015}
x045000_g_EquipImpact[08] = {10302001,9016}
x045000_g_EquipImpact[09] = {10302002,9017}
x045000_g_EquipImpact[10] = {10302003,9018}
x045000_g_EquipImpact[11] = {10302004,9019}
x045000_g_EquipImpact[12] = {10302005,9020}
x045000_g_EquipImpact[13] = {10304000,9035}
x045000_g_EquipImpact[14] = {10304001,9036}
x045000_g_EquipImpact[15] = {10304002,9037}
x045000_g_EquipImpact[16] = {10304003,9038}
x045000_g_EquipImpact[17] = {10304004,9039}
x045000_g_EquipImpact[18] = {10304005,9040}
x045000_g_EquipImpact[19] = {10305000,9025}
x045000_g_EquipImpact[20] = {10305001,9026}
x045000_g_EquipImpact[21] = {10305002,9027}
x045000_g_EquipImpact[22] = {10305003,9028}
x045000_g_EquipImpact[23] = {10305004,9029}
x045000_g_EquipImpact[24] = {10305005,9030}

x045000_g_EquipImpact[25] = {10300100,9132}
x045000_g_EquipImpact[26] = {10300101,9133}
x045000_g_EquipImpact[27] = {10300102,9134}
x045000_g_EquipImpact[28] = {10301100,9141}
x045000_g_EquipImpact[29] = {10301101,9142}
x045000_g_EquipImpact[30] = {10301102,9141}
x045000_g_EquipImpact[31] = {10301200,9153}
x045000_g_EquipImpact[32] = {10301201,9154}
x045000_g_EquipImpact[33] = {10301202,9155}
x045000_g_EquipImpact[34] = {10302100,9135}
x045000_g_EquipImpact[35] = {10302101,9136}
x045000_g_EquipImpact[36] = {10302102,9137}
x045000_g_EquipImpact[37] = {10302200,9294}
x045000_g_EquipImpact[38] = {10302201,9295}
x045000_g_EquipImpact[39] = {10302202,9296}
x045000_g_EquipImpact[39] = {10303100,9138}
x045000_g_EquipImpact[40] = {10303101,9139}
x045000_g_EquipImpact[41] = {10303102,9140}
x045000_g_EquipImpact[42] = {10303200,9147}
x045000_g_EquipImpact[43] = {10303201,9148}
x045000_g_EquipImpact[44] = {10303202,9149}
x045000_g_EquipImpact[45] = {10304100,9156}
x045000_g_EquipImpact[46] = {10304101,9157}
x045000_g_EquipImpact[47] = {10304102,9158}
x045000_g_EquipImpact[48] = {10305100,9144}
x045000_g_EquipImpact[49] = {10305101,9145}
x045000_g_EquipImpact[50] = {10305102,9146}
x045000_g_EquipImpact[51] = {10305200,9150}
x045000_g_EquipImpact[52] = {10305201,9151}
x045000_g_EquipImpact[53] = {10305202,9152}

x045000_g_EquipImpact[54] = {10300103,9341}
x045000_g_EquipImpact[55] = {10300104,9342}
x045000_g_EquipImpact[56] = {10300105,9343}
x045000_g_EquipImpact[57] = {10300106,9341}
x045000_g_EquipImpact[58] = {10300107,9342}
x045000_g_EquipImpact[59] = {10300108,9343}
x045000_g_EquipImpact[60] = {10300109,9341}
x045000_g_EquipImpact[61] = {10300110,9342}
x045000_g_EquipImpact[62] = {10300111,9343}

x045000_g_EquipImpact[63] = {10301103,9344}
x045000_g_EquipImpact[64] = {10301104,9345}
x045000_g_EquipImpact[65] = {10301105,9346}
x045000_g_EquipImpact[66] = {10301106,9344}
x045000_g_EquipImpact[67] = {10301107,9345}
x045000_g_EquipImpact[68] = {10301108,9346}
x045000_g_EquipImpact[69] = {10301109,9344}
x045000_g_EquipImpact[70] = {10301110,9345}
x045000_g_EquipImpact[71] = {10301111,9346}

x045000_g_EquipImpact[72] = {10301203,9347}
x045000_g_EquipImpact[73] = {10301204,9348}
x045000_g_EquipImpact[74] = {10301205,9349}
x045000_g_EquipImpact[75] = {10301206,9347}
x045000_g_EquipImpact[76] = {10301207,9348}
x045000_g_EquipImpact[77] = {10301208,9349}
x045000_g_EquipImpact[78] = {10301209,9347}
x045000_g_EquipImpact[79] = {10301210,9348}
x045000_g_EquipImpact[80] = {10301211,9349}

x045000_g_EquipImpact[81] = {10302103,9350}
x045000_g_EquipImpact[82] = {10302104,9351}
x045000_g_EquipImpact[83] = {10302105,9352}
x045000_g_EquipImpact[84] = {10302106,9350}
x045000_g_EquipImpact[85] = {10302107,9351}
x045000_g_EquipImpact[86] = {10302108,9352}
x045000_g_EquipImpact[87] = {10302109,9350}
x045000_g_EquipImpact[88] = {10302110,9351}
x045000_g_EquipImpact[89] = {10302111,9352}

x045000_g_EquipImpact[90] = {10302203,9401}
x045000_g_EquipImpact[91] = {10302204,9402}
x045000_g_EquipImpact[92] = {10302205,9403}
x045000_g_EquipImpact[93] = {10302206,9401}
x045000_g_EquipImpact[94] = {10302207,9402}
x045000_g_EquipImpact[95] = {10302208,9403}
x045000_g_EquipImpact[96] = {10302209,9401}
x045000_g_EquipImpact[97] = {10302210,9402}
x045000_g_EquipImpact[98] = {10302211,9403}

x045000_g_EquipImpact[99]  = {10303103,9353}
x045000_g_EquipImpact[100] = {10303104,9354}
x045000_g_EquipImpact[101] = {10303105,9355}
x045000_g_EquipImpact[102] = {10303106,9353}
x045000_g_EquipImpact[103] = {10303107,9354}
x045000_g_EquipImpact[104] = {10303108,9355}
x045000_g_EquipImpact[105] = {10303109,9353}
x045000_g_EquipImpact[106] = {10303110,9354}
x045000_g_EquipImpact[107] = {10303111,9355}

x045000_g_EquipImpact[108] = {10303203,9356}
x045000_g_EquipImpact[109] = {10303204,9357}
x045000_g_EquipImpact[110] = {10303205,9358}
x045000_g_EquipImpact[111] = {10303206,9356}
x045000_g_EquipImpact[112] = {10303207,9357}
x045000_g_EquipImpact[113] = {10303208,9358}
x045000_g_EquipImpact[114] = {10303209,9356}
x045000_g_EquipImpact[115] = {10303210,9357}
x045000_g_EquipImpact[116] = {10303211,9358}

x045000_g_EquipImpact[117] = {10304103,9359}
x045000_g_EquipImpact[118] = {10304104,9360}
x045000_g_EquipImpact[119] = {10304105,9361}
x045000_g_EquipImpact[120] = {10304106,9359}
x045000_g_EquipImpact[121] = {10304107,9360}
x045000_g_EquipImpact[122] = {10304108,9361}
x045000_g_EquipImpact[123] = {10304109,9359}
x045000_g_EquipImpact[124] = {10304110,9360}
x045000_g_EquipImpact[125] = {10304111,9361}

x045000_g_EquipImpact[126] = {10305103,9362}
x045000_g_EquipImpact[127] = {10305104,9363}
x045000_g_EquipImpact[128] = {10305105,9364}
x045000_g_EquipImpact[129] = {10305106,9362}
x045000_g_EquipImpact[130] = {10305107,9363}
x045000_g_EquipImpact[131] = {10305108,9364}
x045000_g_EquipImpact[132] = {10305109,9362}
x045000_g_EquipImpact[133] = {10305110,9363}
x045000_g_EquipImpact[134] = {10305111,9364}

x045000_g_EquipImpact[135] = {10305203,9365}
x045000_g_EquipImpact[136] = {10305204,9366}
x045000_g_EquipImpact[137] = {10305205,9367}
x045000_g_EquipImpact[138] = {10305206,9365}
x045000_g_EquipImpact[139] = {10305207,9366}
x045000_g_EquipImpact[140] = {10305208,9367}
x045000_g_EquipImpact[141] = {10305209,9365}
x045000_g_EquipImpact[142] = {10305210,9366}
x045000_g_EquipImpact[143] = {10305211,9367}

x045000_g_EquipImpact[144] = {10300006,9311}
x045000_g_EquipImpact[145] = {10301000,9312}
x045000_g_EquipImpact[146] = {10301198,9313}
x045000_g_EquipImpact[147] = {10302006,9314}
x045000_g_EquipImpact[148] = {10302008,9315}
x045000_g_EquipImpact[149] = {10302010,9316}
x045000_g_EquipImpact[150] = {10303000,9317}
x045000_g_EquipImpact[151] = {10304006,9318}
x045000_g_EquipImpact[152] = {10304008,9318}
x045000_g_EquipImpact[153] = {10305006,9319}
x045000_g_EquipImpact[154] = {10305008,9320}

x045000_g_EquipImpact[155] = {10300400,9511}
x045000_g_EquipImpact[156] = {10301400,9512}
x045000_g_EquipImpact[157] = {10301401,9513}
x045000_g_EquipImpact[158] = {10302400,9514}
x045000_g_EquipImpact[159] = {10302401,9515}
x045000_g_EquipImpact[160] = {10302402,9516}
x045000_g_EquipImpact[161] = {10303400,9517}
x045000_g_EquipImpact[162] = {10304400,9518}
x045000_g_EquipImpact[163] = {10304401,9519}
x045000_g_EquipImpact[164] = {10305400,9520}
x045000_g_EquipImpact[165] = {10305401,9521}

x045000_g_EquipImpact[166] = {10300404,9441}
x045000_g_EquipImpact[167] = {10300405,9442}
x045000_g_EquipImpact[168] = {10300406,9443}
x045000_g_EquipImpact[169] = {10300407,9441}
x045000_g_EquipImpact[170] = {10300408,9442}
x045000_g_EquipImpact[171] = {10300409,9443}
x045000_g_EquipImpact[172] = {10300410,9441}
x045000_g_EquipImpact[173] = {10300411,9442}
x045000_g_EquipImpact[174] = {10300412,9443}

x045000_g_EquipImpact[175] = {10301408,9444}
x045000_g_EquipImpact[176] = {10301409,9445}
x045000_g_EquipImpact[177] = {10301410,9446}
x045000_g_EquipImpact[178] = {10301411,9444}
x045000_g_EquipImpact[179] = {10301412,9445}
x045000_g_EquipImpact[180] = {10301413,9446}
x045000_g_EquipImpact[181] = {10301414,9444}
x045000_g_EquipImpact[182] = {10301415,9445}
x045000_g_EquipImpact[183] = {10301416,9446}

x045000_g_EquipImpact[184] = {10301417,9447}
x045000_g_EquipImpact[185] = {10301418,9448}
x045000_g_EquipImpact[186] = {10301419,9449}
x045000_g_EquipImpact[187] = {10301420,9447}
x045000_g_EquipImpact[188] = {10301421,9448}
x045000_g_EquipImpact[189] = {10301422,9449}
x045000_g_EquipImpact[190] = {10301423,9447}
x045000_g_EquipImpact[191] = {10301424,9448}
x045000_g_EquipImpact[192] = {10301425,9449}

x045000_g_EquipImpact[193] = {10302412,9450}
x045000_g_EquipImpact[194] = {10302413,9451}
x045000_g_EquipImpact[195] = {10302414,9452}
x045000_g_EquipImpact[196] = {10302415,9450}
x045000_g_EquipImpact[197] = {10302416,9451}
x045000_g_EquipImpact[198] = {10302417,9452}
x045000_g_EquipImpact[199] = {10302418,9450}
x045000_g_EquipImpact[200] = {10302419,9451}
x045000_g_EquipImpact[201] = {10302420,9452}

x045000_g_EquipImpact[202] = {10302421,9501}
x045000_g_EquipImpact[203] = {10302422,9502}
x045000_g_EquipImpact[204] = {10302423,9503}
x045000_g_EquipImpact[205] = {10302424,9501}
x045000_g_EquipImpact[206] = {10302425,9502}
x045000_g_EquipImpact[207] = {10302426,9503}
x045000_g_EquipImpact[208] = {10302427,9501}
x045000_g_EquipImpact[209] = {10302428,9502}
x045000_g_EquipImpact[210] = {10302429,9503}

x045000_g_EquipImpact[211] = {10303404,9453}
x045000_g_EquipImpact[212] = {10303405,9454}
x045000_g_EquipImpact[213] = {10303406,9455}
x045000_g_EquipImpact[214] = {10303407,9453}
x045000_g_EquipImpact[215] = {10303408,9454}
x045000_g_EquipImpact[216] = {10303409,9455}
x045000_g_EquipImpact[217] = {10303410,9453}
x045000_g_EquipImpact[218] = {10303411,9454}
x045000_g_EquipImpact[219] = {10303412,9455}

x045000_g_EquipImpact[220] = {10303413,9456}
x045000_g_EquipImpact[221] = {10303414,9457}
x045000_g_EquipImpact[222] = {10303415,9458}
x045000_g_EquipImpact[223] = {10303416,9456}
x045000_g_EquipImpact[224] = {10303417,9457}
x045000_g_EquipImpact[225] = {10303418,9458}
x045000_g_EquipImpact[226] = {10303419,9456}
x045000_g_EquipImpact[227] = {10303420,9457}
x045000_g_EquipImpact[228] = {10303421,9458}

x045000_g_EquipImpact[229] = {10304408,9459}
x045000_g_EquipImpact[230] = {10304409,9460}
x045000_g_EquipImpact[231] = {10304410,9461}
x045000_g_EquipImpact[232] = {10304411,9459}
x045000_g_EquipImpact[233] = {10304412,9460}
x045000_g_EquipImpact[234] = {10304413,9461}
x045000_g_EquipImpact[235] = {10304414,9459}
x045000_g_EquipImpact[236] = {10304415,9460}
x045000_g_EquipImpact[237] = {10304416,9461}

x045000_g_EquipImpact[238] = {10305408,9462}
x045000_g_EquipImpact[239] = {10305409,9463}
x045000_g_EquipImpact[240] = {10305410,9464}
x045000_g_EquipImpact[241] = {10305411,9462}
x045000_g_EquipImpact[242] = {10305412,9463}
x045000_g_EquipImpact[243] = {10305413,9464}
x045000_g_EquipImpact[244] = {10305414,9462}
x045000_g_EquipImpact[245] = {10305415,9463}
x045000_g_EquipImpact[246] = {10305416,9464}

x045000_g_EquipImpact[247] = {10305417,9465}
x045000_g_EquipImpact[248] = {10305418,9466}
x045000_g_EquipImpact[249] = {10305419,9467}
x045000_g_EquipImpact[250] = {10305420,9465}
x045000_g_EquipImpact[251] = {10305421,9466}
x045000_g_EquipImpact[252] = {10305422,9467}
x045000_g_EquipImpact[253] = {10305423,9465}
x045000_g_EquipImpact[254] = {10305424,9466}
x045000_g_EquipImpact[255] = {10305425,9467}

x045000_g_EquipImpact[256] = {10300413,9541}
x045000_g_EquipImpact[257] = {10300414,9542}
x045000_g_EquipImpact[258] = {10300415,9543}
x045000_g_EquipImpact[259] = {10300416,9541}
x045000_g_EquipImpact[260] = {10300417,9542}
x045000_g_EquipImpact[261] = {10300418,9543}
x045000_g_EquipImpact[262] = {10300419,9541}
x045000_g_EquipImpact[263] = {10300420,9542}
x045000_g_EquipImpact[264] = {10300421,9543}

x045000_g_EquipImpact[265] = {10301426,9544}
x045000_g_EquipImpact[266] = {10301427,9545}
x045000_g_EquipImpact[267] = {10301428,9546}
x045000_g_EquipImpact[268] = {10301429,9544}
x045000_g_EquipImpact[269] = {10301430,9545}
x045000_g_EquipImpact[270] = {10301431,9546}
x045000_g_EquipImpact[271] = {10301432,9544}
x045000_g_EquipImpact[272] = {10301433,9545}
x045000_g_EquipImpact[273] = {10301434,9546}

x045000_g_EquipImpact[274] = {10301435,9547}
x045000_g_EquipImpact[275] = {10301436,9548}
x045000_g_EquipImpact[276] = {10301437,9549}
x045000_g_EquipImpact[277] = {10301438,9547}
x045000_g_EquipImpact[278] = {10301439,9548}
x045000_g_EquipImpact[279] = {10301440,9549}
x045000_g_EquipImpact[280] = {10301441,9547}
x045000_g_EquipImpact[281] = {10301442,9548}
x045000_g_EquipImpact[282] = {10301443,9549}

x045000_g_EquipImpact[283] = {10302430,9550}
x045000_g_EquipImpact[284] = {10302431,9551}
x045000_g_EquipImpact[285] = {10302432,9552}
x045000_g_EquipImpact[286] = {10302433,9550}
x045000_g_EquipImpact[287] = {10302434,9551}
x045000_g_EquipImpact[288] = {10302435,9552}
x045000_g_EquipImpact[289] = {10302436,9550}
x045000_g_EquipImpact[290] = {10302437,9551}
x045000_g_EquipImpact[291] = {10302438,9552}

x045000_g_EquipImpact[292] = {10302439,9601}
x045000_g_EquipImpact[293] = {10302440,9602}
x045000_g_EquipImpact[294] = {10302441,9603}
x045000_g_EquipImpact[295] = {10302442,9601}
x045000_g_EquipImpact[296] = {10302443,9602}
x045000_g_EquipImpact[297] = {10302444,9603}
x045000_g_EquipImpact[298] = {10302445,9601}
x045000_g_EquipImpact[299] = {10302446,9602}
x045000_g_EquipImpact[300] = {10302447,9603}

x045000_g_EquipImpact[301] = {10303422,9553}
x045000_g_EquipImpact[302] = {10303423,9554}
x045000_g_EquipImpact[303] = {10303424,9555}
x045000_g_EquipImpact[304] = {10303425,9553}
x045000_g_EquipImpact[305] = {10303426,9554}
x045000_g_EquipImpact[306] = {10303427,9555}
x045000_g_EquipImpact[307] = {10303428,9553}
x045000_g_EquipImpact[308] = {10303429,9554}
x045000_g_EquipImpact[309] = {10303430,9555}

x045000_g_EquipImpact[310] = {10303431,9556}
x045000_g_EquipImpact[311] = {10303432,9557}
x045000_g_EquipImpact[312] = {10303433,9558}
x045000_g_EquipImpact[313] = {10303434,9556}
x045000_g_EquipImpact[314] = {10303435,9557}
x045000_g_EquipImpact[315] = {10303436,9558}
x045000_g_EquipImpact[316] = {10303437,9556}
x045000_g_EquipImpact[317] = {10303438,9557}
x045000_g_EquipImpact[318] = {10303439,9558}

x045000_g_EquipImpact[319] = {10304417,9559}
x045000_g_EquipImpact[320] = {10304418,9560}
x045000_g_EquipImpact[321] = {10304419,9561}
x045000_g_EquipImpact[322] = {10304420,9559}
x045000_g_EquipImpact[323] = {10304421,9560}
x045000_g_EquipImpact[324] = {10304422,9561}
x045000_g_EquipImpact[325] = {10304423,9559}
x045000_g_EquipImpact[326] = {10304424,9560}
x045000_g_EquipImpact[327] = {10304425,9561}

x045000_g_EquipImpact[328] = {10305426,9562}
x045000_g_EquipImpact[329] = {10305427,9563}
x045000_g_EquipImpact[330] = {10305428,9564}
x045000_g_EquipImpact[331] = {10305429,9562}
x045000_g_EquipImpact[332] = {10305430,9563}
x045000_g_EquipImpact[333] = {10305431,9564}
x045000_g_EquipImpact[334] = {10305432,9562}
x045000_g_EquipImpact[335] = {10305433,9563}
x045000_g_EquipImpact[336] = {10305434,9564}

x045000_g_EquipImpact[337] = {10305435,9565}
x045000_g_EquipImpact[338] = {10305436,9566}
x045000_g_EquipImpact[339] = {10305437,9567}
x045000_g_EquipImpact[340] = {10305438,9565}
x045000_g_EquipImpact[341] = {10305439,9566}
x045000_g_EquipImpact[342] = {10305440,9567}
x045000_g_EquipImpact[343] = {10305441,9565}
x045000_g_EquipImpact[344] = {10305442,9566}
x045000_g_EquipImpact[345] = {10305443,9567}

x045000_g_EquipImpact[346] = {10300401,9651}
x045000_g_EquipImpact[347] = {10301402,9652}
x045000_g_EquipImpact[348] = {10301403,9653}
x045000_g_EquipImpact[349] = {10302403,9654}
x045000_g_EquipImpact[350] = {10302404,9655}
x045000_g_EquipImpact[351] = {10302405,9656}
x045000_g_EquipImpact[352] = {10303401,9657}
x045000_g_EquipImpact[353] = {10304402,9658}
x045000_g_EquipImpact[354] = {10304403,9658}
x045000_g_EquipImpact[355] = {10305402,9659}
x045000_g_EquipImpact[356] = {10305403,9660}

x045000_g_EquipImpact[357] = {10300007,9411}
x045000_g_EquipImpact[358] = {10301001,9412}
x045000_g_EquipImpact[359] = {10301199,9413}
x045000_g_EquipImpact[360] = {10302007,9414}
x045000_g_EquipImpact[361] = {10302009,9415}
x045000_g_EquipImpact[362] = {10302011,9416}
x045000_g_EquipImpact[363] = {10303001,9417}
x045000_g_EquipImpact[364] = {10304007,9418}
x045000_g_EquipImpact[365] = {10304009,9418}
x045000_g_EquipImpact[366] = {10305007,9419}
x045000_g_EquipImpact[367] = {10305009,9420}

x045000_g_EquipImpact[368] = {10300402,9611}
x045000_g_EquipImpact[369] = {10301404,9612}
x045000_g_EquipImpact[370] = {10301405,9613}
x045000_g_EquipImpact[371] = {10302406,9614}
x045000_g_EquipImpact[372] = {10302407,9615}
x045000_g_EquipImpact[373] = {10302408,9616}
x045000_g_EquipImpact[374] = {10303402,9617}
x045000_g_EquipImpact[375] = {10304404,9618}
x045000_g_EquipImpact[376] = {10304405,9618}
x045000_g_EquipImpact[377] = {10305404,9619}
x045000_g_EquipImpact[378] = {10305405,9620}

x045000_g_EquipImpact[379] = {10300403,9681}
x045000_g_EquipImpact[380] = {10301406,9682}
x045000_g_EquipImpact[381] = {10301407,9683}
x045000_g_EquipImpact[382] = {10302409,9684}
x045000_g_EquipImpact[383] = {10302410,9685}
x045000_g_EquipImpact[384] = {10302411,9686}
x045000_g_EquipImpact[385] = {10303403,9687}
x045000_g_EquipImpact[386] = {10304406,9688}
x045000_g_EquipImpact[387] = {10304407,9688}
x045000_g_EquipImpact[388] = {10305406,9689}
x045000_g_EquipImpact[389] = {10305407,9690}

x045000_g_EquipImpact[390] = {10309106,5952}
x045000_g_EquipImpact[391] = {10309112,5953}
x045000_g_EquipImpact[392] = {10309107,5971}
x045000_g_EquipImpact[393] = {10309101,5976}
x045000_g_EquipImpact[394] = {10309102,5977}
x045000_g_EquipImpact[395] = {10309103,5978}
x045000_g_EquipImpact[396] = {10309104,5979}
x045000_g_EquipImpact[397] = {10309105,5973}
x045000_g_EquipImpact[398] = {10309114,5980}
x045000_g_EquipImpact[399] = {10309115,5981}
x045000_g_EquipImpact[400] = {10309206,5967}
x045000_g_EquipImpact[401] = {10309212,5969}
