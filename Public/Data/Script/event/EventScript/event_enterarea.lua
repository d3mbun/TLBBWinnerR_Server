--Ì½Ë÷ÇøÓò(ËùÓÐÕâmµt ÀàÐÍ¶¼Ê¹ÓÃCái này LUA,ÐÞ¸ÄÇë×¢ÒâÍ¨ÓÃÐÔ)

--ÈÎÎñ¶Î·ÖÀàÁÐ±í_MissType	1.É±¹ÖÈÎÎñ	2.ËÍÐÅÈÎÎñ	3.Ì½Ë÷ÈÎÎñ	4.Ñ°ÎïÈÎÎñ	5.»¤ËÍÈÎÎñ
x006669_g_MissionTypeList	=	{ {StartIdx = 1000000, EndIdx = 1009999, ScriptId = 006666},
															{StartIdx = 1010000, EndIdx = 1019999, ScriptId = 006668},
															{StartIdx = 1020000, EndIdx = 1029999, ScriptId = 006669},
															{StartIdx = 1030000, EndIdx = 1039999, ScriptId = 006667},
															{StartIdx = 1050000, EndIdx = 1059999, ScriptId = 006671} }

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x006669_DisplayBonus(sceneId, missionIndex)
	local itemCt
	local a = {{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0}}
	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetAwardItem(missionIndex)
	for i=1, itemCt do
		if a[i].id > 0 then
			AddItemBonus( sceneId, a[i].id, a[i].ct)
		end
	end
	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetRadioItem(missionIndex)
	for i=1, itemCt do
		if a[i].id > 0 then 
			AddRadioItemBonus( sceneId, a[i].id, a[i].ct)
		end
	end
	itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct = TGetHideItem(missionIndex)
	for i=1, itemCt do
		if a[i].id > 0 then
			AddRandItemBonus( sceneId, a[i].id, a[i].ct)
		end
	end
	local awardMoney = TGetAwardMoney(missionIndex)
	AddMoneyBonus( sceneId, awardMoney)
end
			
--**********************************
--ÈÎÎñÈë¿Úº¯Êý    ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
--**********************************
function x006669_OnDefaultEvent( sceneId, selfId, targetId, missionIndex )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)

	local missionTarget
	local missionInfo
	local missionContinue
	local missionComplete 
	missionTarget, missionInfo, missionContinue, missionComplete = TGetMissionDesc(missionIndex)

	--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
	if IsHaveMission(sceneId,selfId,missionId) > 0 then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId, missionName)
			AddText(sceneId, missionContinue)
		EndEvent( )
		local bDone = x006669_CheckSubmit( sceneId, selfId, missionIndex )
		--PrintStr("bDone=" .. tostring(bDone))
		DispatchMissionDemandInfo(sceneId,selfId,targetId,missionIndex,missionId,bDone)
	elseif x006669_CheckAccept(sceneId,selfId,missionIndex) > 0 then
		--PrintStr("elseif x006669_CheckAccept(sceneId,selfId) > 0 then...")
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId, missionName)
			AddText(sceneId,missionInfo)
			x006669_DisplayBonus(sceneId, missionIndex)
			
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,missionIndex,missionId)
	end
	
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x006669_OnEnumerate( sceneId, selfId, targetId, missionIndex )
	--PrintStr("OnEnumerate..." .. sceneId .. selfId .. targetId .. missionIndex)
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)

	-- ÅÐ¶¨Íæ¼ÒtoÕ ðµ Ìõ¼þÐúng²»Ðúng¹»Tiªp thøCái này ÈÎÎñ,Èç¹û¹»¾ÍÏÔÊ¾,²»¹»¾Í²»ÏÔÊ¾
	local nLevel
	local nMis1
	local nMis2
	local nMis3 
	nLevel, nMis1, nMis2, nMis3 = TGetCheckInfo(missionIndex)
	if nLevel > GetLevel(sceneId, selfId)  then
		return
	end
	
	if nMis1 >=0   then
		if IsMissionHaveDone(sceneId, selfId, nMis1) <= 0   then
			return
		end
	end
	
	if nMis2 >=0   then
		if IsMissionHaveDone(sceneId, selfId, nMis2) <= 0   then
			return
		end
	end
	
	if nMis3 >=0   then
		if IsMissionHaveDone(sceneId, selfId, nMis3) <= 0   then
			return
		end
	end
	
	if IsMissionHaveDone(sceneId, selfId, missionId) > 0 then
   	return
   	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif IsHaveMission(sceneId, selfId, missionId) > 0 then
		local completeNpcScene, completeNpcName = TGetCompleteNpcInfo(missionIndex)
		if GetName(sceneId, targetId) == completeNpcName then
			--TEndEvent(sceneId)
				TAddNumText(sceneId, missionIndex, missionName,2,-1);
			TEndEvent()	
			TDispatchEventList(sceneId, selfId, targetId)
		end
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x006669_CheckAccept(sceneId, selfId, missionIndex) > 0 then
  	local acceptNpcScene, acceptNpcName = TGetAcceptNpcInfo(missionIndex)
		if GetName(sceneId, targetId) == acceptNpcName then
			--TEndEvent(sceneId)
				TAddNumText(sceneId, missionIndex, missionName,1,-1);
			TEndEvent()
			TDispatchEventList(sceneId, selfId, targetId)	
		end
  end
  
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x006669_CheckAccept( sceneId, selfId, missionIndex )
	local nLevel = LuaFnGetLevel(sceneId, selfId)
	local limitLevel
	local PreMisId1
	local PreMisId2
	local PreMisId3 
	
	limitLevel,PreMisId1,PreMisId2,PreMisId3 = TGetCheckInfo(missionIndex)

	if nLevel < limitLevel then
			TAddText(sceneId, "Kinh nghi®m giang h° cüa các hÕ, sþ không chiªn th¡ng ðßþc, ðþi".. tostring(limitLevel) .."Sau khi thång c¤p t¾i tìm ta")
		TEndEvent()
		TDispatchEventList(sceneId, selfId)
		return 0
	else
		local a = {}
		local index = 1
		if PreMisId1 > 0 then
			a[index] = PreMisId1
			index = index + 1
		end
		if PreMisId2 > 0 then
			a[index] = PreMisId2
			index = index + 1
		end
		if PreMisId3 > 0 then
			a[index] = PreMisId3
			index = index + 1
		end
		
		for i, v in a do
			if IsMissionHaveDone(sceneId, selfId, v) <= 0 then
				return 0
			end	
		end
		return 1
	end
end

--**********************************
--Tiªp thø
--**********************************
function x006669_OnAccept( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)

	-- ¼ì²âÍæ¼ÒÐúng²»ÐúngÒÑ¾­Íê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId, selfId, missionId) > 0   then
		return
	end

	-- ÔÙ´Î¼ì²âÍæ¼ÒÐúng²»Ðúng¿ÉÒÔ½ÓCái này ÈÎÎñ
	if x006669_CheckAccept( sceneId, selfId, missionIndex ) <= 0  then
		return		
	end

	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, missionId, missionIndex, 0, 1, 0 )
	
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"##YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end
	
	Msg2Player(  sceneId, selfId,"#YTiªp nh§n #W" .. tostring(missionName), MSG2PLAYER_PARA )
	BeginEvent(sceneId)
		strText = "#YTiªp nh§n #W" .. tostring(missionName)
		AddText(sceneId,strText);
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

end

--**********************************
--·ÅÆú
--**********************************
function x006669_OnAbandon( sceneId, selfId, missionIndex )
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	
  DelMission( sceneId, selfId, missionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x006669_OnContinue( sceneId, selfId, targetId, missionIndex )
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	local missionTarget
	local missionInfo
	local missionContinue
	local missionComplete 
	missionTarget,missionInfo,missionContinue,missionComplete = TGetMissionDesc(missionIndex)
	
	BeginEvent(sceneId)
		AddText(sceneId,missionName)
		AddText(sceneId,missionComplete)
		AddText(sceneId,"#{M_MUBIAO}#r")
		AddText(sceneId,missionTarget)
		x006669_DisplayBonus(sceneId, missionIndex)  
	EndEvent( )
	DispatchMissionContinueInfo(sceneId, selfId, targetId, missionIndex, missionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x006669_CheckSubmit( sceneId, selfId, missionIndex )
	local missionId = TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)
	local misIndex = GetMissionIndexByID(sceneId,selfId,missionId)
	
	-- ¼ì²âÍæ¼ÒÐúng·ñÒÑ¾­Ì½Ë÷ÁËËùÓÐtoÕ ðµ ÇøÓò
	local enterAreaCount = 0;
	local a = {{scene=0,ea=0},{scene=0,ea=0},{scene=0,ea=0}}
	
	enterAreaCount, a[1].scene, a[1].ea, a[2].scene, a[2].ea, a[3].scene, a[3].ea = TGetEnterAreaInfo(missionIndex)
	
	for i=1, enterAreaCount   do
		local misIndex=GetMissionIndexByID(sceneId,selfId,missionId)
		local num0 = GetMissionParam(sceneId,selfId,misIndex,i-1)
		if num0 < 1  then 
			return 0
		end
	end
	return 1
	
end	

--**********************************
--Ìá½»
--**********************************
function x006669_OnSubmit( sceneId, selfId, targetId, selectRadioId, missionIndex )
	if x006669_CheckSubmit(sceneId, selfId, missionIndex) > 0 then
		local missionId = TGetMissionIdByIndex(missionIndex)
		local missionName = TGetMissionName(missionIndex)
		
		-- °²È«ÐÔ¼ì²â
		-- 1¡¢¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐCái này ÈÎÎñ
		if IsHaveMission(sceneId,selfId,missionId) <= 0 then
			return
		end
		-- 2¡¢ÆäËû¼ì²â
		
		local nAddItemNum = 0;
		BeginAddItem(sceneId)
			local itemCt
			local a = {{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},{id=-1, ct=0},} 
			--///////////////////////////////////////////////////////////////////////////////////
			itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetAwardItem(missionIndex)
			for i=1, itemCt do
				if a[i].id > 0 then
					AddItem( sceneId, a[i].id, a[i].ct)
					nAddItemNum = nAddItemNum + 1
				end
			end
			--///////////////////////////////////////////////////////////////////////////////////
			itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetRadioItem(missionIndex)
			for i=1, itemCt do
				if a[i].id > 0 and a[i].id == selectRadioId then
					AddItem( sceneId, a[i].id, a[i].ct)
					nAddItemNum = nAddItemNum + 1
					break
				end
			end
			--///////////////////////////////////////////////////////////////////////////////////
			itemCt, a[1].id, a[1].ct, a[2].id, a[2].ct, a[3].id, a[3].ct, a[4].id, a[4].ct, a[5].id, a[5].ct = TGetHideItem(missionIndex)
			for i=1, itemCt do
				if a[i].id > 0 then
					AddItem( sceneId, a[i].id, a[i].ct)
					nAddItemNum = nAddItemNum + 1
				end
			end
		local ret = EndAddItem(sceneId,selfId)
		--///////////////////////////////////////////////////////////////////////////////////
		if ret > 0 then
			--É¾³ýÈÎÎñÖÐÌá½»toÕ ðµ ÎïÆ·
			--local a = {{name="",item=0,pro=0,ct=0},{name="",item=0,pro=0,ct=0},{name="",item=0,pro=0,ct=0},{name="",item=0,pro=0,ct=0},{name="",item=0,pro=0,ct=0}}
			--local killDataCount = 0
			--killDataCount,a[1].name,a[1].item,a[1].pro,a[1].ct, a[2].name,a[2].item,a[2].pro,a[2].ct,a[3].name,a[3].item,a[3].pro,a[3].ct,a[4].name,a[4].item,a[4].pro,a[4].ct,a[5].name,a[5].item,a[5].pro,a[5].ct = TGetLootItemInfo(missionIndex)
			--for i=1, killDataCount  do
			--	--PrintStr("id =" .. a[i].item .. "   num =" .. a[i].ct)
			--	if LuaFnGetAvailableItemCount(sceneId, selfId, a[i].item) >= a[i].ct then
			--		DelItem( sceneId, selfId, a[i].item, a[i].ct )
			--	else
			--		BeginEvent(sceneId)
			--			AddText(sceneId, "V§t ph¦m hi®n tÕi không th¬ dùng ho£c ðã b¸ khoá!")
			--		EndEvent( )
			--		DispatchMissionTips(sceneId,selfId)
			--		return		
			--	end
			--end

			if 	nAddItemNum > 0   then
				AddItemListToHuman(sceneId,selfId)
			end

			--Ìí¼ÓÈÎÎñ½±Àø
			local awardMoney = TGetAwardMoney(missionIndex)
			AddMoney(sceneId,selfId,awardMoney )
			local awardExp = TGetAwardExp(missionIndex)
			LuaFnAddExp( sceneId, selfId, awardExp)
			
			DelMission( sceneId,selfId, missionId )
			--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
			MissionCom( sceneId,selfId, missionId )

			local strText = "#Y" .. missionName .. " nhi®m vø ðã hoàn thành"
			BeginEvent( sceneId )
				AddText( sceneId, strText )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
			Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )

			--  ðÕt ðßþcºóÐøÈÎÎñtoÕ ðµ Index
			local NextMissIndex = GetNextMissionIndex( missionIndex )

			for i, MissType in x006669_g_MissionTypeList do
				if MissType.ScriptId ~= nil and MissType.ScriptId ~= 0 then
					if NextMissIndex ~= 0 and NextMissIndex >= MissType.StartIdx and NextMissIndex <= MissType.EndIdx then
						local missionId = TGetMissionIdByIndex( NextMissIndex )
						local szNpcName = GetName( sceneId, targetId )
						local AcceptNpcScene, AcceptNpcName = TGetAcceptNpcInfo( NextMissIndex )

						if sceneId == AcceptNpcScene and szNpcName == AcceptNpcName then
							if MissType.ScriptId == 006669 then
								if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
									x006669_OnDefaultEvent( sceneId, selfId, targetId, NextMissIndex )
								end
							else
								if IsHaveMission( sceneId, selfId, missionId ) <= 0 then
									CallScriptFunction( MissType.ScriptId, "OnDefaultEvent", sceneId, selfId, targetId, NextMissIndex )
								end
							end
						end
						
						break;
					end
				end
			end

		else
			--ÈÎÎñ½±ÀøÃ»ÓÐ¼Ó³É¹¦
			BeginEvent(sceneId)
				AddText(sceneId, "Không th¬ hoàn t¤t nhi®m vø");
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end		
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x006669_OnKillObject( sceneId, selfId, objdataId ,objId, missionIndex)--²ÎÊýÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x006669_OnItemChanged( sceneId, selfId,targetId,  itemdataId )
	
end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x006669_OnEnterArea( sceneId, selfId, areaId, missionIndex)
	
	local missionId 	= TGetMissionIdByIndex(missionIndex)
	local missionName = TGetMissionName(missionIndex)

	local enterAreaCount = 0;
	local a = {{scene=0,ea=0},{scene=0,ea=0},{scene=0,ea=0}}
	
	enterAreaCount, a[1].scene, a[1].ea, a[2].scene, a[2].ea, a[3].scene, a[3].ea = TGetEnterAreaInfo(missionIndex)

	for i=1, enterAreaCount do
		if sceneId == a[i].scene and areaId == a[i].ea  then
			
			local bHave = 0
			local szDesc = ""
			local szTip = ""
			bHave, szDesc, szTip = TGetEnterAreaDesc(missionIndex)

			if bHave > 0  then
				BeginEvent(sceneId)
					AddText(sceneId,szDesc)
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,selfId)
			end
	
			--ÈÎÎñ´¦Àí
			local misIndex=GetMissionIndexByID(sceneId,selfId,missionId)
			local num0 = GetMissionParam(sceneId,selfId,misIndex,0)
			if num0 < 1 then				--Èç¹ûChßa ðüÈÎÎñÍê³É ði¬mÌõ¼þ
				SetMissionByIndex(sceneId,selfId,misIndex,0,1)		--ÈÎÎñ±äÁ¿µÚmµt Î»Ôö¼Ó1
				SetMissionByIndex(sceneId,selfId,misIndex,1,1)		--ÈÎÎñ±äÁ¿µÚmµt Î»Ôö¼Ó1
				-- Ö»ÓÐTÕi ÓÐÈÎÎñ,²¢ÇÒTÕi Íê³ÉtoÕ ðµ Ê±ºmµt áµ¯³ö
				BeginEvent(sceneId)										--ÏÔÊ¾ÌáÊ¾ÐÅÏ¢
					AddText(sceneId, szTip);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
		end
	end
end
