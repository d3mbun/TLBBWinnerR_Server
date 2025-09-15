					
--ÕÒÈËÈÎÎñ
--·¢ËÍÍ¨Öª
--MisDescBegin
--½Å±¾ºÅ
x250551_g_ScriptId = 250551

--ÈÎÎñºÅ
x250551_g_MissionId = 721

--ÉÏmµt cáiÈÎÎñtoÕ ðµ ID
--g_MissionIdPre = 

--Ä¿±êNPC
x250551_g_Name	="Khâu Hành LÕc"

--ÈÎÎñ¹éÀà 
x250551_g_MissionKind = 11

--ÐÆng c¤p nhi®m vø 
x250551_g_MissionLevel = 10000

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x250551_g_IfMissionElite = 0

--ÈÎÎñC¥n  ði¬mµ½toÕ ðµ ÎïÆ·
--g_DemandItem={{id=30701021,num=1}}


--ÈÎÎñÃû
x250551_g_MissionName="Truy«n kh¦u tín"
x250551_g_MissionInfo="Hãy giúp ta thông báo %s %s [%d,%d], ðÕi hµi Ðá C¥u s¡p b¡t ð¥u"
x250551_g_MissionTarget="%f"
x250551_g_ContinueInfo="Làm t¯t l¡m"		--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x250551_g_MissionComplete="Ta biªt, ðây là t£ng thß·ng cho ngß½i"

--ÓÃÀ´±£´æ×Ö·û´®¸ñÊ½»¯toÕ ðµ Êý¾Ý
x250551_g_FormatList = {
								"Tìm ðßþc %n",
								}
								
--¸ñÊ½×Ö·û´®ÖÐ¶ÔÓ¦ÓÚg_StringListÖÐ×Ö·û´®toÕ ðµ Ë÷Òý, ±íÊ¾´Ó4¿ªÊ¼,ºó¶àÉÙÎ»ÊÓSetMissionByIndexEx(...)toÕ ðµ ¶àÉÙ¶ø¶¨
x250551_g_StrForePart=4

--MisDescEnd

x250551_g_fasongtongzhiNpcIndex = 5

--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x250551_OnDefaultEvent( sceneId, selfId, targetId )
  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if( IsHaveMission(sceneId,selfId,x250551_g_MissionId) > 0)  then
  	if GetName(sceneId, targetId) == x250551_g_Name then
  		local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)
  		local npcId = GetMissionParam(sceneId, selfId, misIndex, x250551_g_StrForePart+1)
  		local _, npcName, npcScene, x, z = GetNpcInfoByNpcId(sceneId,npcId)
  		local strText = format("L¶i nh¡n cüa các hÕ ðã ðßþc chuy¬n chßa? %s %s chính · (%d, %d). Các hÕ có th¬ nh¤n Alt+Q ki¬m tra møc tiêu nhi®m vø", npcScene, npcName, x, z)
			BeginEvent(sceneId)
				AddText(sceneId, strText)
			EndEvent()
			DispatchEventList(sceneId, selfId, -1)
  	else
	  	if x250551_CheckSubmit( sceneId, selfId ) > 0 then
		 		BeginEvent(sceneId)
					AddText(sceneId,x250551_g_MissionName)
					local BonusMoney = 500	--90 + (GetLevel(sceneId, selfId) - 10) * 5
					local BonusExp = 200
					AddText(sceneId, "Thß·ng cho các hÕ " .. tostring(BonusExp) .. " ði¬m kinh nghi®m và " .. "#{_MONEY" .. tostring(BonusMoney) .. "}, hãy mau ði báo cho Khâu Hành LÕc, ðã nh§n ðßþc l¶i nh¡n, xin ða tÕ")
					SetMissionCacheData(sceneId, selfId, 0, BonusMoney)
					SetMissionCacheData(sceneId, selfId, 1, BonusExp)
				EndEvent( )
				DispatchMissionContinueInfo(sceneId, selfId, targetId, x250551_g_ScriptId, x250551_g_MissionId,x250551_g_ScriptId)
			end	
		end
		--DispatchMissionDemandInfo(sceneId,selfId,targetId,x250551_g_ScriptId,x250551_g_MissionId,bDone,x250551_g_ScriptId)
    --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x250551_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) == x250551_g_Name then
			--///////////////////////////////////////////////////
			--local playerLevel = GetLevel(sceneId, selfId)
			--if playerLevel >= 21 then
			--	BeginEvent(sceneId)
			--		AddText(sceneId, "Cüa ngß½i µÈc¤pÒÑ¾­³¬¹ý20c¤pÁË,È¥×ömµt Ð©¸üÓÐÇ°Í¾toÕ ðµ ÈÎÎñ°É.")
			--	EndEvent( )
			--	DispatchEventList(sceneId, selfId, -1)
			--	return 
			--end
			--///////////////////////////////////////////////////
			--begin modified by zhangguoxin 090207
			local iDayCount = GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT)
			--local iTime = mod(iDayCount,100000)
			local iTime = GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME)
			local iDayTime = floor(iTime/100)					--ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ðµ Ê±¼ä(ÌìÊý)
			local iQuarterTime = mod(iTime,100)				--ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ðµ Ê±¼ä(mµt ¿ÌÖÖ)
			--local iDayHuan = floor(iDayCount/100000) 	--µ±ÌìÄÚÍê³ÉtoÕ ðµ S¯ l¥n nhi®m vø 
			local iDayHuan = iDayCount 	--µ±ÌìÄÚÍê³ÉtoÕ ðµ S¯ l¥n nhi®m vø 
			--print("iDayHuan ... is ... " .. iDayHuan)
			
			--local CurTime = GetHourTime()							--µ±Ç°Ê±¼ä
			local CurTime = GetQuarterTime()							--µ±Ç°Ê±¼ä
			local CurDaytime = floor(CurTime/100)			--µ±Ç°Ê±¼ä(Ìì)
			local CurQuarterTime = mod(CurTime,100) 	--µ±Ç°Ê±¼ä(mµt ¿ÌÖÓ)
			--end modified by zhangguoxin 090207
			
			if iDayTime ~= CurDaytime  then
				iDayHuan = 0
				CurQuarterTime = 99
			end

			if iDayHuan >= 10 then
				BeginEvent(sceneId)
					AddText(sceneId, "Hôm nay các hÕ ðã giúp ta ðßa 10 l¥n kh¦u tín r°i, ngày mai hãy ðªn nhé.")
				EndEvent( )
				DispatchEventList(sceneId, selfId, -1)
				return
				
			end

			if iDayTime == CurDaytime then
				if CurQuarterTime == iQuarterTime then
					BeginEvent(sceneId)
						AddText(sceneId, x250551_g_MissionName)
						AddText(sceneId, "  Do các hÕ ðã bö qua nhi®m vø, trong vòng 15 phút không th¬ tiªp nh§n nhi®m vø m¾i!")
					EndEvent( )
					DispatchEventList(sceneId, selfId, -1)
					return
				end
			end
			--/////////////////////////////////////////////////// end
			
			--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
			BeginEvent(sceneId)
				--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
				local bAdd = AddMission( sceneId,selfId, x250551_g_MissionId, x250551_g_ScriptId, 0, 0, 0 )
				if bAdd < 1 then
					return
				end	
				--Ñ°Îï, ËÍÐÅÔòÉèÖ giâyø¶¨Ä¿±êNPCtoÕ ðµ ÊÂ¼þFlag
				SetMissionEvent(sceneId, selfId, x250551_g_MissionId, 4)
				
				local nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc = GetOneMissionNpc(x250551_g_fasongtongzhiNpcIndex)
				print(nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ)
				--print(nNpcId, strNpcName, strNpcScene, nSceneId, nPosX, nPosZ, strNPCDesc)
				Msg2Player(  sceneId, selfId,"#YNh§n nhi®m vø#W: nhi®m vø ngß¶i m¾i kiªm ti«n", MSG2PLAYER_PARA )
				CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, nSceneId, nPosX, nPosZ, strNpcName)

				-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
				local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)
				
				SetMissionByIndex(sceneId, selfId, misIndex, 0, 0) --ÉèÖÃÈÎÎñÐúng·ñÍê³É(Î´Íê³É)
				
				SetMissionByIndex(sceneId, selfId, misIndex, x250551_g_StrForePart, 0)
				SetMissionByIndex(sceneId, selfId, misIndex, x250551_g_StrForePart+1, nNpcId)
				--////////////////////////////////////////////////////////////
				AddText(sceneId,x250551_g_MissionName)
				local str = format("Hãy giúp ta thông báo %s %s [%d,%d], ðÕi hµi Ðá C¥u s¡p b¡t ð¥u", strNpcScene, strNpcName, nPosX, nPosZ)
				AddText(sceneId, str)
				AddText(sceneId,"#{M_MUBIAO}")
				local strMissionTarget = format("Tìm ðßþc %s%s [%d,%d]", strNpcScene, strNpcName, nPosX, nPosZ)
				AddText(sceneId, strMissionTarget)
				
			EndEvent( )
			DispatchEventList(sceneId,selfId,targetId)
		end
  end
  
end

--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x250551_OnEnumerate( sceneId, selfId, targetId )
    --Èç¹ûÒÑ½Ó´ËÈÎÎñ
    if IsHaveMission(sceneId,selfId,x250551_g_MissionId) > 0 then
    	AddNumText(sceneId,x250551_g_ScriptId,x250551_g_MissionName,3,-1);
	  --Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
    elseif x250551_CheckAccept(sceneId,selfId) > 0 then
			if GetName(sceneId,targetId) == x250551_g_Name then
				AddNumText(sceneId,x250551_g_ScriptId,x250551_g_MissionName,4,-1);
			end
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x250551_CheckAccept( sceneId, selfId )
		return 1
end

--**********************************
--Tiªp thø
--**********************************
function x250551_OnAccept( sceneId, selfId )

end

--**********************************
--·ÅÆú
--**********************************
function x250551_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)
	local npcId = GetMissionParam(sceneId, selfId, misIndex, x250551_g_StrForePart+1)
	local  _, strNpcName, strNpcScene, x, z, desc, scene = GetNpcInfoByNpcId(sceneId,npcId)
	
  DelMission( sceneId, selfId, x250551_g_MissionId )
	CallScriptFunction( SCENE_SCRIPT_ID, "DelSignpost", sceneId, selfId, scene, strNpcName, x250551_g_MissionId)
	
	-- TÕi ÕâÀï»¹ÐúngÒª¼ì²âCái này ÈÎÎñÀïÍ·´ætoÕ ðµ Ê±¼äÐúng²»Ðúng¹ýÈ¥mµt ÌìÁË,Èç¹û¹ýÈ¥ÁË,¾ÍÏÈ¸üÐÂ
	--begin modified by zhangguoxin 090207
	local iDayCount=GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT)
	--local iTime = mod(iDayCount,100000)
	local iTime = GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME)
	local iDayTime = floor(iTime/100)		--ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ðµ Ê±¼ä(ÌìÊý)
	local iQuarterTime = mod(iTime,100)	--ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ðµ Ê±¼ä(¿Ì)
	--local iDayHuan = floor(iDayCount/100000) --µ±ÌìÄÚÍê³ÉtoÕ ðµ S¯ l¥n nhi®m vø 
	local iDayHuan = iDayCount --µ±ÌìÄÚÍê³ÉtoÕ ðµ S¯ l¥n nhi®m vø 

	--local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
	local CurTime = GetQuarterTime()		--µ±Ç°Ê±¼ä
	local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
	
	if CurDaytime~=iDayTime then 	--ÉÏ´ÎHoàn t¤t nhi®m vøÐúngÍ¬mµt ÌìÄÚ
		iDayHuan = 0
	end
	
	--iDayCount = iDayHuan*100000 + CurTime 

	--ÉèÖÃÑ­»·ÈÎÎñtoÕ ðµ Ê±¼ä
	--SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT,iDayCount)
	SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT,iDayHuan)
	SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME,CurTime)
	--end modified by zhangguoxin 090207
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x250551_CheckSubmit( sceneId, selfId )
	if IsHaveMission(sceneId,selfId,x250551_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)
		if GetMissionParam(sceneId, selfId, misIndex, 0) == 1 then
			return 1
		end
	else
		return 0	
	end
end

--**********************************
--Ìá½»
--**********************************
function x250551_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	
	if x250551_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--begin modified by zhangguoxin 090207
		local iDayCount=GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT)
		--local iTime = mod(iDayCount,100000)
		local iTime = GetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME)
		local iDayTime = floor(iTime/100)		--ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ðµ Ê±¼ä(ÌìÊý)
		local iQuarterTime = mod(iTime,100)	--ÉÏmµt ´Î·ÅÆúÈÎÎñtoÕ ðµ Ê±¼ä(¿Ì)
		--local iDayHuan = floor(iDayCount/100000)	--µ±ÌìÄÚÍê³ÉtoÕ ðµ S¯ l¥n nhi®m vø 
		local iDayHuan = iDayCount 									--µ±ÌìÄÚÍê³ÉtoÕ ðµ S¯ l¥n nhi®m vø 
	
		--local CurTime = GetHourTime()		--µ±Ç°Ê±¼ä
		local CurTime = GetQuarterTime()		--µ±Ç°Ê±¼ä
		local CurDaytime = floor(CurTime/100)	--µ±Ç°Ê±¼ä(Ìì)
		local CurQuarterTime = mod(CurTime,100)	--µ±Ç°Ê±¼ä(¿Ì)
		
		if CurDaytime==iDayTime then 	--ÉÏ´ÎHoàn t¤t nhi®m vøÐúngÍ¬mµt ÌìÄÚ
			iDayHuan = iDayHuan+1
		else							--ÉÏ´ÎHoàn t¤t nhi®m vø²»TÕi Í¬mµt Ìì,ÖØÖÃ
			iDayTime = CurDaytime
			iDayHuan = 1
		end
		
		-- Ö»ÒªÍæ¼Ò½»ÁËÈÎÎñ,¾ÍÈÃ·ÅÆúÈÎÎñtoÕ ðµ Êý¾ÝÎÞÐ§
		iQuarterTime = 99
		
		--iDayCount = iDayHuan*100000+iDayTime*100+iQuarterTime 
		iDayCount = iDayHuan;
		local newTime = CurDaytime * 100 + iQuarterTime;
		--ÉèÖÃÑ­»·ÈÎÎñtoÕ ðµ DAYCOUNT
		SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYCOUNT,iDayCount)
		SetMissionData(sceneId,selfId,MD_FASONGTONGZHI_DAYTIME,newTime)
		--end modified by zhangguoxin 090207
		
		local BonusMoney = GetMissionCacheData(sceneId, selfId, 0)
		local BonusExp = GetMissionCacheData(sceneId, selfId, 1)
		AddMoney(sceneId,selfId,BonusMoney )
		AddExp(sceneId,selfId,BonusExp )
		
		----------------------------------------changed by xindefeng-------------------------------------------------
		--AddMoney()&AddExp()±¾Éí»áTÕi H® th¯ngÆµµÀÌáÊ¾,ËùÒÔ½«ÒÔÏÂÁ½¾äÌáÊ¾×¢ÊÍµô
		----Msg2Player(  sceneId, selfId, "Các hÕ ðã nh§n ðßþc " .. tostring(BonusExp) .. " ði¬mKinh nghi®m", MSG2PLAYER_PARA )
		----Msg2Player(  sceneId, selfId, "Các hÕ ðã nh§n ðßþc #{_MONEY" .. tostring(BonusMoney) .. "}", MSG2PLAYER_PARA )
		----------------------------------------changed by xindefeng-------------------------------------------------
		
		DelMission( sceneId,selfId, x250551_g_MissionId )
		Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø#W: thông báo mi®ng",MSG2PLAYER_PARA )
		-- µ±Ã¿ÌìÍê³ÉµÚ10´ÎºÍµÚ20´ÎtoÕ ðµ Ê±ºò,Æô¶¯·ÀÍâ¹ÒÌáÎÊ
		if iDayHuan == 5 or iDayHuan == 10   then
			LuaFnSendGuajiQuestion(sceneId,selfId)
		end
	end
end

function x250551_OnLockedTarget(sceneId, selfId, objId )
	-- ÅÐ¶ÏÐúng²»ÐúngËø¶¨toÕ ðµ Npc
	if IsHaveMission(sceneId, selfId, x250551_g_MissionId) > 0 then
		local misIndex = GetMissionIndexByID(sceneId,selfId,x250551_g_MissionId)		-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
		local missionType = GetMissionParam(sceneId, selfId, misIndex, 1)
		
		local nNpcId = GetMissionParam(sceneId, selfId, misIndex, x250551_g_StrForePart+1)
		local _, strNpcName, strNpcScene, PosX, PosZ, desc = GetNpcInfoByNpcId(sceneId,nNpcId)
			 
		if GetName(sceneId, objId) == strNpcName then
			TAddNumText(sceneId, x250551_g_ScriptId,x250551_g_MissionName,4,-1,x250551_g_ScriptId);
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
		end	
	end 
	
	return 0;

end
	
											
