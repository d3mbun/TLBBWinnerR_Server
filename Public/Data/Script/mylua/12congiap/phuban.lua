
x000196_g_ScriptId = 000196
x000196_g_active = 1 --active event
x000196_g_time_start = 20200321
x000196_g_time_end = 20200323
x000196_g_CopySceneType = FUBEN_SINHTIEULOIDAI
x000196_g_string = {
[1] = "��y l� #R[Sinh Ti�u Th�]#W ��i di�n 12 con gi�p ch�ng ta, n�u c� th� ��nh b�i y s� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[2] = "��y l� #R[Sinh Ti�u Ng�u]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[3] = "��y l� #R[Sinh Ti�u H�]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[4] = "��y l� #R[Sinh Ti�u Th�]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[5] = " ��y l� #R[Sinh Ti�u Long]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[6] = "��y l� #R[Sinh Ti�u M�]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[7] = "��y l� #R[Sinh Ti�u D߽ng]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[8] = "��y l� #R[Sinh Ti�u H�u]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[9] = "��y l� #R[Sinh Ti�u K�]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[10] = "��y l� #R[Sinh Ti�u C�u]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[11] = "��y l� #R[Sinh Ti�u Tr�]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
[12] = "��y l� #R[Ni�n Th�]#W ��i di�n 12 con gi�p chung ta, n�u c� th� ��nh b�i y s� c� c� h�i nh�n ���c nhi�u ph�n qu� h�p d�n. S�n s�ng ch�a?",
}

x000196_g_TickTime		= 1
x000196_g_NoUserTime	= 30 
x000196_g_Fuben_X			= 26
x000196_g_Fuben_Z			= 26
x000196_g_FuBenTime		= 25*60	--th�i gian k�t th�c pb
x000196_g_solan = 12			--gi�i h�n s� l�n �i pb
x000196_g_NeedLever = 50


x000196_g_NPCList ={
	{ mID=13848, ScriptID=400, text =x000196_g_string[1],bID=13836,name = "Sinh Ti�u Th�", 	skill = 636 ,chat1 ="#{SXLT_100119_56}",chat2 = "#{SXLT_100119_64}",
	item={  30505197,--th�i v�ng
				30070512,--�c tr�ng t�y
				30070507,--huy�n c� d��c tr�n
				30505107,--ti�u l�t b�
				30308293,--tr�ng tr�n th� nh� lang ch�n qu�n
				20503062,--ly h�a
				20503061,--trang b� tinh th�ng ph�
				30509042,--ph�o hoa m�a xu�n vui v�
	},	},	
	{ mID=13849, ScriptID=401, text =x000196_g_string[2],bID=13837,name = "Sinh Ti�u Ng�u", 	skill = 597,chat1 ="Luy�n t�p b�y l�u, gi� m�i c� d�p ki�m tra th�nh qu�. L�i ��y con m�i b� nh� kia!!!!",chat2 = "Xem ra s�c m�nh c�a ta qu� v��t tr�i r�i, еc C� C�u B�i l� ta!!!",
	item={	30008014,--th�ng thi�n linh �an
				20503061,--trang b� tinh th�ng ph�
				20503062,--ly h�a
				30070513,--duy�n linh th�o
				30509044,--ph�o hoa ch�o n�m m�i
				20503061,--trang b� tinh th�ng ph�
				30010088,--linh h�n to�i phi�n l�c
				30505197,--th�i v�ng
	}, },
	{ mID=13850, ScriptID=402, text = x000196_g_string[3],bID=13838,name = "Sinh Ti�u H�", 	skill = 625,chat1 ="#{SXLT_100119_62}",chat2 ="C� l� l�o h� ta �� c� tu�i r�i. Nh�ng r�i c�ng s� c� ng�y ta kh�i ph�c l�i uy phong" ,		
	item={	30070512,--�c tr�ng t�y
				30509043,--ph�a hoa ch�c m�ng n�m m�i
				20503062,--ly h�a
				20503061,--trang b� tinh th�ng ph�
				10157002,--long v�n
				30503140,--h�ng di�u th�ch
				20503061,--trang b� tinh th�ng ph�
				30308285,--tr�ng ch�n th� kim �ng ng�c n�
	}, 		},
	{ mID=13851, ScriptID=403, text =x000196_g_string[4],bID=13839,name = "Sinh Ti�u Th�", 	skill = 627, chat1 ="Ta tuy th�n h�nh kh�ng cao nh�ng h�y ch�ng m�t l�n m� xem s�c m�nh c�a ta ��y!!!!", chat2 ="AAAAAAAAAAAA,Th.....�....�...n...n....n...n.....c...�....�...n....g...c...�....a.......taaaaaaaaaaaa......!",
	item={	30509041,--ph�o hoa n�m m�i vui v�
				30070512,--�c tr�ng t�y
				20503061,--trang b� tinh th�ng ph�
				20503062,--ly h�a
				30070507,--huy�n c� d��c tr�n
				30505107,--ti�u l�t b�
				20503062,--ly h�a
	}, 		},
	{ mID=13852, ScriptID=404, text = x000196_g_string[5],bID=13840,name = "Sinh Ti�u Long", 	skill = 651, chat1 = "#{SXLT_100119_61}", chat2 = "#{SXLT_100119_58}" ,
	item={	30509045,--ph�o hoa v�n s� nh� �
				30503140,--h�ng di�u th�ch
				30309036,--tr�ng tr�n th� giao long
				30070507,--huy�n c� d��c tr�n
				38000184,--ch� v�n huy�t ng�c
				20503062,--ly h�a
				20503061,--trang b� tinh th�ng ph�
				20503062,--ly h�a
	}, 	},
	{ mID=13853, ScriptID=405, text = x000196_g_string[6],bID=13841,name = "Ni�n Th�", 		skill =  615, chat1 = "Ng߽i m�nh h�c x߽ng mai nh� v�y l�m sao s�nh v�i s�c m�nh c�a 12 con gi�p ta. Ti�p chi�u!!!!!!!!!!!!", chat2 = "C�c h� ��ng l� kh�ng ph�i nh�n v�t t�m th߶ng,xem ra ta ph�i luy�n t�p th�m m�i ���c. H�n ng�y t�i ng�!!!!!!!!!!!",
	item={	30509041, --ph�o hoa n�m m�i vui v�
				20503062,--ly h�a
				20503061,--trang b� tinh th�ng ph�
				30505107,--ti�u l�t b�
				30070512,--�c tr�ng t�y
				30505197,--th�i v�ng
				30070513,--duy�n linh th�o
				30070507,--huy�n c� d��c tr�n
				10141807,--th� c��i ni�n th� l�i ��nh 30d
				30309724,--tr�ng tr�n th� ni�n th� 85
				30309725,--tr�ng tr�n th� ni�n th� 95
	}, 	},
	{ mID=13854, ScriptID=406, text = x000196_g_string[7],bID=13842,name = "Sinh Ti�u M�", 	skill = 621,chat1 = "T�c �, s�c m�nh, nhanh nh�n �u h�i t� c� � ta, Ю nh�t M� V߽ng!!! Хu h�ng �i, ta s� tha m�ng!!!", chat2 = "Ta c� l�i khen cho s�c m�nh c�a nh� ng߽i. L�n sau t�i �u, nh�t �nh ta s� chi�n th�ng",	
	item={	30509044,--ph�o hoa ch�o n�m m�i
				30070513,--duy�n linh th�o
				30309092,--pet:th�i th��ng long t�
				20503061,--trang b� tinh th�ng ph�
				30008014,--th�ng thi�n linh �an
				--20503062,--ly h�a
				10157002,--long v�n
				30505107,--ti�u l�t b�
				10157002,--ly h�a
	}, 		},
	{ mID=13855, ScriptID=407, text =x000196_g_string[8],bID=13843,name = "Sinh Ti�u D߽ng", 	skill = 608 , chat1 = " ��ng th�y ta gi� y�u m� xem th߶ng, h�y xem chi�u!!!!!!!", chat2=" Hmmmmmmmm, xem ra tu�i t�c c�a ta �� gi�p ng߽i tho�t ���c ��i n�n ng�y h�m nay",
	item={	30509045,--ph�o hoa v�n s� nh� �
				20503062,--ly h�a
				30505197,--th�i v�ng
				20503062,--ly h�a
				20503061,--trang b� tinh th�ng ph�
				30070507,--huy�n c� d��c tr�n
				30505107,--ti�u l�t b�
	}, 	},
	{ mID=13856, ScriptID=408, text = x000196_g_string[9],bID=13844,name = "Sinh Ti�u K�", 	skill = 624, chat1 = "Ng߽i ��ng v�i coi khinh, � nh�t K� V߽ng ta kh�ng d� ��nh b�i ��u!!", chat2="H�m nay ta ch�a chu�n b�, tr�ng th�i kh�ng t�t, � cho ng߽i chi�m th��ng phong! Kh�ng ph�c, kh�ng ph�c!!!",
	item={	30509041,--ph�o hoa n�m m�i vui v�
				30070507,--huy�n c� d��c tr�n
				30070513,--duy�n linh th�o
				10157002,--long v�n
				30505197,--th�i v�ng
				38000184,--ch� v�n huy�t ng�c
				30008014,--th�ng thi�n linh �an
				10157002,--ly h�a
	}, 		},
	{ mID=13857, ScriptID=409, text = x000196_g_string[10],bID=13845,name = "Sinh Ti�u H�u", 	skill = 622, chat1="#{SXLT_100119_57}", chat2 = "C�c h� ��ng l� kh�ng ph�i nh�n v�t t�m th߶ng,xem ra ta ph�i luy�n t�p th�m m�i ���c" ,
	item={	30509045,--ph�o hoa v�n s� nh� �
				30505197,--th�i v�ng
				30505198,--linh h�n to�i phi�n ��i
				30308285,--tr�ng tr�n th� kim �ng ng�c n�
				30070513,--duy�n linh th�o
				20503062,--ly h�a
				20503061,--trang b� tinh th�ng ph�
	}, 	},
	{ mID=13858, ScriptID=410, text = x000196_g_string[11],bID=13846,name = "Sinh Ti�u C�u", 	skill = 1318 , chat1="#{SXLT_100119_61}", chat2="Ng߽i d�ng �m kh�, th�t kh�ng cam t�m, ��i ng�y kh�c t�i chi�n ta s� khi�n ng߽i t�m ph�c kh�u ph�c!",
	item={	10157002,--ly h�a
				30509044,--ph�o hoa ch�o n�m m�i
				30505197,--th�i v�ng
				30505107,--ti�u l�t b�
				30308293,--tr�ng tr�n th� nh� lang ch�n qu�n
				30070507,--huy�n c� d��c tr�n
				30070512,--�c tr�ng t�y
				--20503062,--ly h�a
				10157002,--long v�n
	}, 	},
	{ mID=13859, ScriptID=411, text = x000196_g_string[12],bID=13847,name = "Sinh Ti�u Tr�", 	skill = 643, chat1="#{SXLT_100119_59}", chat2="Ng߽i qu� th�t c� s�c m�nh v��t tr�i. S� ph� Tr� B�t Gi�i, xin h�y gi�p � t� tr� th�!!!!!" ,
	item={	30509041,--ph�o hoa n�m m�i vui v�
				30505197,--th�i v�ng
				30070513,--duy�n linh th�o
				20503062,--ly h�a
				30308297,--tr�ng tr�n th�  m�nh b�o tr�
				30070507,--huy�n c� d��c tr�n
				30008014,--th�ng thi�n linh �an
				30505107,--ti�u l�t b�
	},	},
}
x000196_g_selectBoss		= 6
x000196_g_mylevel			= 8
--x000196_g_Level			= 9
x000196_g_IDX_FuBenLifeStep	= 10
x000196_g_IDBOSS1		= 11
x000196_g_IDBOSS2		= 12
x000196_g_IDBOSS3		= 13
x000196_g_IDBOSS4		= 14
x000196_g_IDBOSS5		= 15
x000196_g_IDBOSS6		= 16
x000196_g_IDBOSS7		= 17
x000196_g_IDBOSS8		= 18
x000196_g_IDBOSS9		= 19
x000196_g_IDBOSS10		= 20
x000196_g_IDBOSS11		= 21
x000196_g_IDBOSS12		= 22
x000196_g_Flag	= 23
x000196_g_ntaichien = 25
function x000196_OnDefaultEvent( sceneId, selfId, targetId )
	if GetNumText() == 444 then
		BeginEvent(sceneId)
			AddText(sceneId, "#{SXLT_100119_03}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	if GetNumText() == 1 then
		BeginEvent( sceneId )	
			AddText(sceneId, "#{SXLT_100119_04}")
			AddNumText(sceneId, x000196_g_ScriptId, "#{SXLT_100119_05}",10,2 )
			AddNumText(sceneId, x000196_g_ScriptId, "#{SXLT_100119_06}",8,3 )
		EndEvent(sceneId )
        		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 2 then
		--LuaFnDelAvailableItem(sceneId,selfId,30504189,1)
		local ret, msg = x000196_CheckCanEnter( sceneId, selfId, targetId )
		if 1 ~= ret then
			BeginEvent(sceneId)
				AddText(sceneId,msg)
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		BeginUICommand(sceneId)
		EndUICommand(sceneId,msg)
		DispatchUICommand(sceneId,selfId, 1000)

		x000196_MakeCopyScene( sceneId, selfId )
	end
	if GetNumText()==3 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId,msg)
		DispatchUICommand(sceneId,selfId, 1000)
	end



end
function x000196_OnEventRequest( sceneId, selfId, targetId, eventId )
end

function x000196_OnEnumerate( sceneId, selfId, targetId )
	if x000196_g_active ==1  and (GetTime2Day()>= x000196_g_time_start and GetTime2Day()<=x000196_g_time_end) then
		AddNumText( sceneId, x000196_g_ScriptId, "Sinh Ti�u L�i ��i", 10, 1 )
		AddNumText( sceneId, x000196_g_ScriptId, "#{SXLT_100119_02}", 11, 444 )
	end
end

function x000196_CheckCanEnter( sceneId, selfId, targetId )
	if x000196_g_active ~= 1 then return end
	local msg=" "
		if GetLevel( sceneId, selfId) < x000196_g_NeedLever then
			msg="Ь �i ���c ph� b�n,c�c h� t�i thi�u ph�i ��t C�p #G50"
			return 0, msg
		end
	--local msg=" "
	local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30504189)
	local number2 = LuaFnGetAvailableItemCount(sceneId, selfId, 30504188)
		if number<1 and number2<1 then
			msg="#{SXLT_100119_08}"
			return 0,msg 
		end

	--local msg=" "
	if LuaFnHasTeam(sceneId,selfId) == 1 then
		msg="#{SXLT_100119_10}"
		return 0, msg
	end
	
	local CurDayTime = GetDayTime()
	local lastTime = GetMissionData( sceneId, selfId, EVENT_PARAM4 )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	if CurDayTime > lastDayTime then
			lastDayTime = CurDayTime
			lastDayCount = 0
	end
	if lastDayCount >= x000196_g_solan then
		msg="C�c h� �� tham gia �� l��t Sinh Ti�u trong ng�y. H�y quay l�i v�o ng�y mai !"
		return 0, msg
	end
	--x000196_Tips(sceneId, selfId,"123")
	return 1

end
function x000196_MakeCopyScene( sceneId, selfId )
	local mylevel = GetLevel( sceneId, selfId )
    	local PlayerMaxLevel = GetHumanMaxLevelLimit()
	local iniLevel = 0
	if mylevel < 10 then
		iniLevel = 10
	elseif mylevel < PlayerMaxLevel then
		inilevel = floor( mylevel/10 ) * 10
	else
		inilevel = PlayerMaxLevel
	end

	local x = 0
	local z = 0
	local leaderguid=LuaFnObjId2Guid(sceneId,selfId)

	x,z = LuaFnGetWorldPos(sceneId,selfId)
	LuaFnSetSceneLoad_Map(sceneId, "hanyuchuang.nav")
	LuaFnSetCopySceneData_TeamLeader(sceneId, leaderguid)
	--LuaFnSetCopySceneData_Player(sceneId, selfId)

	LuaFnSetCopySceneData_NoUserCloseTime(sceneId, x000196_g_NoUserTime*1000)
	LuaFnSetCopySceneData_Timer(sceneId, x000196_g_TickTime*1000)
	LuaFnSetCopySceneData_Param(sceneId, 0, x000196_g_CopySceneType)
	LuaFnSetCopySceneData_Param(sceneId, 1, x000196_g_ScriptId)
	LuaFnSetCopySceneData_Param(sceneId, 2, 0)
	LuaFnSetCopySceneData_Param(sceneId, 3, sceneId)
	LuaFnSetCopySceneData_Param(sceneId, 4, x)
	LuaFnSetCopySceneData_Param(sceneId, 5, z)
	LuaFnSetCopySceneData_Param(sceneId, x000196_g_selectBoss, 0)
	LuaFnSetCopySceneData_Param(sceneId, 7, 0)



	LuaFnSetCopySceneData_Param( sceneId, x000196_g_mylevel, mylevel )
	
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 0 )

	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS1, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS2, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS3, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS4, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS5, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS6, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS7, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS8, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS9, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS10, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS11, 0 )
	LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDBOSS12, 0 )

	for i=24, 31 do
		LuaFnSetCopySceneData_Param(sceneId, i, 0)

	end
	LuaFnSetSceneLoad_Area( sceneId, "hanyuchuang_area.ini" )
	LuaFnSetSceneLoad_Monster( sceneId, "12congiap_monster.ini" )

	local bRetSceneID = LuaFnCreateCopyScene(sceneId)
	BeginEvent(sceneId)
		if bRetSceneID>0 then
			AddText(sceneId,"�ang d�ch chuy�n v�o ph� b�n");
		else
			AddText(sceneId,"S� l��ng ng߶i v�o ph� b�n v��t qu� gi�i h�n, d�ch chuy�n th�t b�i");
		end
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

function x000196_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param(destsceneId, 3, sceneId)
	local leaderguid  = LuaFnGetCopySceneData_TeamLeader(destsceneId)
	local leaderObjId = LuaFnGuid2ObjId(sceneId,leaderguid)

	if LuaFnIsCanDoScriptLogic( sceneId, leaderObjId ) ~= 1 then
		return
	end
	--AddGlobalCountNews(sceneId,"1111111111111111")
	--if LuaFnHasTeam( sceneId, leaderObjId ) == 0  then
		NewWorld( sceneId, leaderObjId, destsceneId, x000196_g_Fuben_X, x000196_g_Fuben_Z) ;
	--else
	--	if IsCaptain(sceneId, leaderObjId) == 0  then
	--		NewWorld( sceneId, leaderObjId, destsceneId, x000196_g_Fuben_X, x000196_g_Fuben_Z) ;
	--	else
	--		local	nearteammembercount = GetNearTeamCount( sceneId, leaderObjId) 
	--		local mems = {}
	--		for	i=0,nearteammembercount-1 do
	--			mems[i] = GetNearTeamMember(sceneId, leaderObjId, i)
	--			NewWorld( sceneId, mems[i], destsceneId, x000196_g_Fuben_X, x000196_g_Fuben_Z)
	--		end
	--	end		
	--end

end


function x000196_OnCopySceneTimer( sceneId, nowTime )
	local lifeStep = LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep )
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )
	local TickFlag = LuaFnGetCopySceneData_Param( sceneId, 7 )
	

	TickCount = TickCount + 1
	TickFlag = TickFlag + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )
	LuaFnSetCopySceneData_Param( sceneId, 7, TickFlag )
	
	if lifeStep >= 11 and TickFlag == 5 then
		x000196_TipAllHuman( sceneId, "C�n 5 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep >= 11 and TickFlag == 7 then
		x000196_TipAllHuman( sceneId, "C�n 3 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep >= 11 and TickFlag == 8 then
		x000196_TipAllHuman( sceneId, "C�n 2 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep >= 11 and TickFlag == 9 then
		x000196_TipAllHuman( sceneId, "C�n 1 gi�y n�a s� r�i kh�i ph� b�n")
	elseif lifeStep >= 11 and TickFlag == 10 then
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 12 )
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end
		return
	end
	--end hd add
	if lifeStep == 2 and TickFlag == 120 then
		local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
		local oldSceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )
		local oldX = LuaFnGetCopySceneData_Param( sceneId, 4 )
		local oldZ = LuaFnGetCopySceneData_Param( sceneId, 5 )
		for i=0, nHumanNum-1  do
			local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
			if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
				NewWorld( sceneId, PlayerId, oldSceneId, oldX, oldZ )
			end
		end
		return
	end

	if lifeStep == 0 then
		--x000196_CreateNPC(sceneId)
		--x000196_Tips(sceneId, selfId,"12345")
		x000196_TipAllHuman( sceneId, "C�n 15 gi�y n�a m�i c� th� khi�u chi�n" )
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 1 )
	end
	if lifeStep == 2 and TickFlag == 0 then
		x000196_TipAllHuman( sceneId, "C�n 5 gi�y n�a s� tho�t kh�i ph� b�n!")
	end
	--hd add
	local nMonsterNum = GetMonsterCount(sceneId)
	if nMonsterNum > 14 then --anti bug 2 boss
		x000196_TipAllHuman( sceneId, "#HL�i ph� b�n, r�i kh�i ph� b�n ...")
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 11 )
		LuaFnSetCopySceneData_Param( sceneId, 7, 9 ) --fix bug multi boss
		--return
	end
	--end anti bug >=2 BOSS
	--hd add 8/2/2016 check >=2 human
	local nHumanCount = LuaFnGetCopyScene_HumanCount(sceneId)
	if nHumanCount >=2 then
		x000196_TipAllHuman( sceneId, "#HL�i ph� b�n c� h�n 1 nh�n v�t, r�i kh�i ph� b�n ...")
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 11 )
		LuaFnSetCopySceneData_Param( sceneId, 7, 9 ) --fix bug multi boss
	end
	--end hd add 8/2/2016
	if TickCount == 5*60 or TickCount == 10*60 or TickCount == 15*60 or TickCount == 20*60 or TickCount == 24*60 then
		x000196_TipAllHuman( sceneId, "#HPh� b�n s� ��ng sau "..floor((x000196_g_FuBenTime-TickCount)/60).." ph�t, h�y nhanh ch�ng khi�u chi�n")
	elseif TickCount == x000196_g_FuBenTime then
		x000196_TipAllHuman( sceneId, "#HPh� b�n k�t th�c, r�i kh�i ph� b�n...")
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 11 )
		LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
	end
	
	
end
--end

function x000196_OnPlayerEnter( sceneId, selfId )
	SetPlayerDefaultReliveInfo( sceneId, selfId, "%10", -1, "0", sceneId, x000196_g_Fuben_X, x000196_g_Fuben_Z )

	local lastTime = GetMissionData( sceneId, selfId, EVENT_PARAM4 )
	local lastDayTime = floor( lastTime / 100 )
	local lastDayCount = mod( lastTime, 100 )
	local CurDayTime = GetDayTime()

	if CurDayTime > lastDayTime then
		lastDayTime = CurDayTime
		lastDayCount = 0
	end

	lastDayCount = lastDayCount + 1
	lastTime = lastDayTime * 100+ lastDayCount
	SetMissionData( sceneId, selfId, EVENT_PARAM4, lastTime )
	local num1 = LuaFnGetAvailableItemCount(sceneId, selfId, 30504188)
	 local num2 = LuaFnGetAvailableItemCount(sceneId, selfId, 30504189)
	 if num2>=1 then
	
	LuaFnDelAvailableItem(sceneId,selfId,30504189,1)
	 else
	 LuaFnDelAvailableItem(sceneId,selfId,30504188,1)
	end
end


function x000196_OnHumanDie( sceneId, selfId, killerId )
	
end


function x000196_TipAllHuman( sceneId, Str )

	local nHumanNum = LuaFnGetCopyScene_HumanCount(sceneId)
	for i=0, nHumanNum-1  do
		local PlayerId = LuaFnGetCopyScene_HumanObjId(sceneId, i)
		if LuaFnIsObjValid( sceneId, PlayerId ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, PlayerId ) == 1 then
			BeginEvent(sceneId)
				AddText(sceneId, Str)
			EndEvent(sceneId)
			DispatchMissionTips(sceneId, PlayerId)
		end
	end

end

function x000196_PickupItem(sceneId, selfId, itemId, bagidx )
	--thong bao he thong
	local itemName = GetItemName(sceneId, itemId)
	local transfer = GetBagItemTransfer(sceneId,selfId,bagidx)
	if transfer == nil then return	end
	if itemId==30505167 or itemId==30505169 or
	itemId==30505197 or itemId==30505198 
	then ---tien vang & linh hon toai phien
		return
	end
	for i=1,getn(x000195_ItemList2) do
		if itemId == x000195_ItemList2[i] then
			return
		end
	end
	for i=1,getn(x000195_ItemList_ThuCuoi_VIP) do
		if itemId == x000195_ItemList_ThuCuoi_VIP[i] then
			return
		end
	end
	
	if itemId==20310101 or itemId==20310102 then --trung lau chi le, chi mang
		local str = format("@*;SrvMsg;SCA: #P#{_INFOUSR%s} t�i #Y [Sinh Ti�u L�i ��i] #P, �t nhi�n tr�n tr�i r�i xu�ng, ti�n tay nh�t ���c #Y#{_INFOMSG%s} #Pth�t l� may m�n!",GetName(sceneId,selfId),transfer)
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
		return
	end
	if itemId==10423064 or itemId==10420091 or itemId==10422155 then --trung lau quy, phan, trieu
		local str = format("@*;SrvMsg;SCA: #P#{_INFOUSR%s} t�i #Y [Sinh Ti�u L�i ��i] #P, �t nhi�n tr�n tr�i r�i xu�ng, ti�n tay nh�t ���c #Y#{_INFOMSG%s} #Pth�t l� may m�n!",GetName(sceneId,selfId),transfer)
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
		return
	end
	if itemId==10413096 or itemId==10413094 or itemId==10413092 then --trung lau kien thu doi
		local str = format("@*;SrvMsg;SCA: #P#{_INFOUSR%s} t�i #Y [Sinh Ti�u L�i ��i] #P, �t nhi�n tr�n tr�i r�i xu�ng, ti�n tay nh�t ���c #Y#{_INFOMSG%s} #Pth�t l� may m�n!",GetName(sceneId,selfId),transfer)
		BroadMsgByChatPipe(sceneId, selfId, str, 4)
		return
	end
	
	local str = format("#P#{_INFOUSR%s} t�i #Y [Sinh Ti�u L�i ��i] #P, �t nhi�n tr�n tr�i r�i xu�ng, ti�n tay nh�t ���c #Y#{_INFOMSG%s} #Pth�t l� may m�n!",GetName(sceneId,selfId),transfer)
	BroadMsgByChatPipe(sceneId, selfId, str, 4)
end


function x000196_Tips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end
