--ÕÒÈËÈÎÎñ
--Tri®u Thiên SßÑ°ÕÒËï°ËÒ¯
--MisDescBegin
--½Å±¾ºÅ
x210246_g_ScriptId = 210246

--Tiªp thøÈÎÎñNPCÊôĞÔ
x210246_g_Position_X=296
x210246_g_Position_Z=239
x210246_g_SceneID=2
x210246_g_Name	="Tôn Bát Gia"

--ĞÆng c¤p nhi®m vø 
x210246_g_LevelLimit = 10

--ÈÎÎñÃû
x210246_g_MissionName="ÌìÌìÏòÉÏ"
x210246_g_MissionNameTip="¹ØÓÚÌìÌìÏòÉÏ"
x210246_g_starttime = 20080917
x210246_g_endtime = 20080928

--¸øÓè²Å×Ó¼ÑÈËidºÍÊıÁ¿
x210246_g_ItemData = {nItemId = 10124122, nItemNum = 1}
x210246_g_SpecificId = 49

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210246_OnDefaultEvent( sceneId, selfId, targetId )

	if GetNumText() == 1 then
		local strOutMsg = ""
		local CurLevel = LuaFnGetLevel( sceneId, selfId )
		local nBagNum = LuaFnGetPropertyBagSpace(sceneId, selfId)
		local bHave = 0
		if CurLevel < 10 then       --Không ğü ğÆng c¤p10c¤p
			x210246_Msg(sceneId, selfId, targetId, "#{TTXS_80821_01}")
			return
		end
		
		local bHave = GetMissionFlag(sceneId, selfId, MF_Xueshengzhuang_flag)
		if bHave == 1 then      --ÒÑ¾­²Î¼Ó¹ıÁË
			x210246_Msg(sceneId, selfId, targetId, "#{TTXS_80821_02}")
			return
		end
		
		if nBagNum < 1 then         --Ô ğÕo cø ğã ğ¥y¸²»×ãmµt cái
			x210246_Msg(sceneId, selfId, targetId, "#{TTXS_80821_03}")
			x210246_Tip(sceneId, selfId, "#{TTXS_80821_04}")
			return
		end
		

		--¸øÎïÆ·
		BeginAddItem(sceneId)                --¸øÎïÆ·
			AddItem(sceneId, x210246_g_ItemData.nItemId, x210246_g_ItemData.nItemNum)
		local canAdd = EndAddItem(sceneId,selfId)						
		if canAdd > 0 then
			AddItemListToHuman(sceneId, selfId)	
			SetMissionFlag(sceneId, selfId, MF_Xueshengzhuang_flag, 1)
			x210246_Msg(sceneId, selfId, targetId, "#{TTXS_80821_05}")
			x210246_Tip(sceneId, selfId, "#{TTXS_80821_06}")
			--Ôö¼ÓÌØĞ§
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x210246_g_SpecificId, 0);
			CreateXSzhuangAudit(sceneId, selfId, x210246_g_ItemData.nItemNum)
		end
	
	elseif GetNumText() == 2 then
		x210246_Msg(sceneId, selfId, targetId, "#{TTXS_80821_07}")
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210246_OnEnumerate( sceneId, selfId, targetId )

	local nDay = GetTime2Day(sceneId)
	if (nDay >= x210246_g_starttime and nDay <= x210246_g_endtime) then
		AddNumText(sceneId, x210246_g_ScriptId, x210246_g_MissionName, 6, 1);
		AddNumText(sceneId, x210246_g_ScriptId, x210246_g_MissionNameTip, 11, 2);
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210246_CheckAccept( sceneId, selfId )
end

--**********************************
--Tiªp thø
--**********************************
function x210246_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x210246_OnAbandon( sceneId, selfId )
end

--**********************************
--¼ÌĞø
--**********************************
function x210246_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210246_CheckSubmit( sceneId, selfId )
end

--**********************************
--Ìá½»
--**********************************
function x210246_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

function x210246_Msg( sceneId, selfId, targetId, strOutMsg)
	BeginEvent( sceneId )
		AddText(sceneId, strOutMsg)
	EndEvent( sceneId )
	DispatchEventList(sceneId,selfId,targetId)
end

function x210246_Tip( sceneId, selfId, strOutMsg)
	BeginEvent( sceneId )
		AddText(sceneId, strOutMsg)
	EndEvent( sceneId )
	DispatchMissionTips(sceneId, selfId);
end
