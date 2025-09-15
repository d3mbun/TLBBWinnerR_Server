-- 200052 »·Åå¿Õ¹éÔÂÒ¹»ê
-- ½«Lı Thu ThüyÈ¥ÊÀtoÕ ğµ ÏûÏ¢Í¨ÖªLÕc Dß½ng³ÇtoÕ ğµ ºÕÁ¬ÌúÊ÷.

--************************************************************************
--MisDescBegin
--½Å±¾ºÅ
x200052_g_ScriptId = 200052

--ÈÎÎñºÅ
x200052_g_MissionId = 42

--Ç°ĞøÈÎÎñºÅ
x200052_g_PreMissionId = 41

--Møc tiêu nhi®m vøNPCÊôĞÔ
x200052_g_Position_X=113
x200052_g_Position_Z=64
x200052_g_SceneID=0
x200052_g_AccomplishNPC_Name="Hách Liên Thiªt Thø"

--Ä¿±êNPC
x200052_g_Name = "Hách Liên Thiªt Thø"

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x200052_g_IfMissionElite = 1

--ĞÆng c¤p nhi®m vø 
x200052_g_MissionLevel = 70

--ÈÎÎñ¹éÀà
x200052_g_MissionKind = 49

--ÈÎÎñÎÄ±¾ÃèÊö
x200052_g_MissionName="Hoàn Phøng Không quy nguy®t dÕ h°n"
x200052_g_MissionInfo="#{Mis_juqing_0042}"
x200052_g_MissionTarget="#{Mis_juqing_Tar_0042}"	--Møc tiêu nhi®m vø
x200052_g_MissionComplete="  Chà, Hoàng Thái Phi ğµt nhiên quy tiên trên ğß¶ng...hoàng thßşng ¡t ğau lòng l¡m"


x200052_g_MoneyBonus=10800
x200052_g_exp=12000

x200052_g_Custom	= { {id="Ğã tìm ğßşc Liên Thiªt Thø",num=1} }

--MisDescEnd
--************************************************************************

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x200052_OnDefaultEvent( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if (IsMissionHaveDone(sceneId,selfId,x200052_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x200052_g_MissionId) > 0)  then
		-- ¼ì²âĞúng²»ĞúngTÕi ¸±±¾,ÔÙ¼ì²âĞúng²»Ğúng,Èç¹ûĞúng¾Í¿ÉÒÔÖ±Hoàn t¤t nhi®m vø,^_^
			-- ¼ì²âÏÂTên,°²È« ği¬m ği¬m
		if GetName(sceneId, targetId) == x200052_g_Name  then
	    BeginEvent(sceneId)
				AddText(sceneId,x200052_g_MissionName)
				AddText(sceneId,x200052_g_MissionComplete)
				AddMoneyBonus( sceneId, x200052_g_MoneyBonus )
	    EndEvent( )
			DispatchMissionContinueInfo(sceneId,selfId,targetId,x200052_g_ScriptId,x200052_g_MissionId)
		end
	
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200052_CheckAccept(sceneId, selfId, targetId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ğµ ĞÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId,x200052_g_MissionName)
			AddText(sceneId,x200052_g_MissionInfo)
			AddText(sceneId,"#{M_MUBIAO}#r")
			AddText(sceneId,x200052_g_MissionTarget)
			AddText(sceneId,"#{M_SHOUHUO}#r")
			AddMoneyBonus( sceneId, x200052_g_MoneyBonus )
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x200052_g_ScriptId,x200052_g_MissionId)
	end
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x200052_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x200052_g_MissionId) > 0 then
		return 
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x200052_g_MissionId) > 0 then
		--C¥n TÕi ¸±±¾²Å¿ÉÒÔ
		if GetName(sceneId, targetId) == x200052_g_Name    then
			AddNumText(sceneId, x200052_g_ScriptId,x200052_g_MissionName,2,-1);
		end
		
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x200052_CheckAccept(sceneId,selfId,targetId) > 0 then	
		if GetName(sceneId, targetId) == "Hß Trúc"    then
			AddNumText(sceneId,x200052_g_ScriptId,x200052_g_MissionName,1,-1);
		end
	end

end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x200052_CheckAccept( sceneId, selfId, targetId )
	--ÅĞ¶¨Ìõ¼ş
	--1,Ç°ĞøÈÎÎñÍê³É
	if IsMissionHaveDone(sceneId,selfId,x200052_g_PreMissionId) < 1 then
		return 0
	end
	if IsMissionHaveDone(sceneId,selfId,x200052_g_MissionId) > 0  then
		return 0
	end
	
	--2,µÈc¤p´ïµ½50
	if GetLevel(sceneId, selfId) < 70   then
		return 0
	end

	return 1
end


--**********************************
--Tiªp thø
--**********************************
function x200052_OnAccept( sceneId, selfId, targetId )

	if x200052_CheckAccept(sceneId, selfId, targetId) ~= 1   then
		return 0
	end
	
	--¼ÓÈëÈÎÎñµ½Íæ¼ÒÁĞ±í
	local ret = AddMission( sceneId,selfId, x200052_g_MissionId, x200052_g_ScriptId, 0, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t kı nhi®m vø cüa các hÕ ğã ğ¥y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"#Ynh§n nhi®m vø: Hoàn Phøng Không quy nguy®t dÕ h°n",MSG2PLAYER_PARA )

	local misIndex = GetMissionIndexByID(sceneId,selfId,x200052_g_MissionId)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)
	SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)

end

--**********************************
--¶¨Ê±ÊÂ¼ş
--**********************************
function x200052_OnTimer(sceneId,selfId)
end

--**********************************
--·ÅÆú
--**********************************
function x200052_OnAbandon( sceneId, selfId )
  DelMission( sceneId, selfId, x200052_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x200052_OnContinue( sceneId, selfId, targetId )
	
end	

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x200052_CheckSubmit( sceneId, selfId, selectRadioId )

end

--**********************************
--Ìá½»
--**********************************
function x200052_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	-- ¿ÉÒÔÌá½»toÕ ğµ Ìõ¼şÅĞ¶¨
		--Ìí¼ÓÈÎÎñ½±Àø
		AddMoney(sceneId,selfId, x200052_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x200052_g_exp)

		DelMission( sceneId, selfId, x200052_g_MissionId )
		MissionCom( sceneId, selfId, x200052_g_MissionId )
		Msg2Player( sceneId, selfId, "#YHoàn t¤t nhi®m vø#W: Hoàn Phøng Không quy nguy®t dÕ h°n", MSG2PLAYER_PARA )
	--¸ø½±ÀøºÍ½ğÇ®

		-- µ÷ÓÃºóĞøÈÎÎñ
		CallScriptFunction((200053), "OnDefaultEvent",sceneId, selfId, targetId )
	
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x200052_OnKillObject( sceneId, selfId, objdataId, objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x200052_OnEnterZone( sceneId, selfId, zoneId )
	
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x200052_OnItemChanged( sceneId, selfId, itemdataId )
	
end


