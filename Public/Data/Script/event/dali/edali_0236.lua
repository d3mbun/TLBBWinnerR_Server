--°Ë±¦ÖàÈÎÎñ
--Ñ°Îï
--MisDescBegin
--½Å±¾ºÅ
x210236_g_ScriptId = 210236

--Tiªp thøÈÎÎñNPCÊôĞÔ
x210236_g_Position_X=160.4355
x210236_g_Position_Z=127.9695
x210236_g_SceneID=2
x210236_g_AccomplishNPC_Name="Lı Công Bµ"

--Ç°ÌáÈÎÎñ
--g_MissionIdPre =

--ÈÎÎñºÅ
x210236_g_MissionId = 716

--Møc tiêu nhi®m vønpc
x210236_g_Name	="Lı Công Bµ"

--ÈÎÎñ¹éÀà
x210236_g_MissionKind = 13

--ĞÆng c¤p nhi®m vø 
x210236_g_MissionLevel = 8

--Ğúng·ñĞúngTinhÓ¢ÈÎÎñ
x210236_g_IfMissionElite = 0

--ÏÂÃæ¼¸ÏîĞúng¶¯Ì¬ÏÔÊ¾toÕ ğµ ÄÚÈİ,ÓÃÓÚTÕi ÈÎÎñÁĞ±íÖĞ¶¯Ì¬ÏÔÊ¾ÈÎÎñÇé¿ö**********************
--ÈÎÎñĞúng·ñÒÑ¾­Íê³É
x210236_g_IsMissionOkFail = 0		--±äÁ¿toÕ ğµ µÚ0Î»

--ÈÎÎñC¥n  ği¬mµ½toÕ ğµ ÎïÆ·
x210236_g_DemandItem={{id=20309004,num=1},{id=20309008,num=1}}		--´Ó±³°üÖĞ¼ÆËã
--ÒÔÉÏĞúng¶¯Ì¬**************************************************************

--ÈÎÎñ±äÁ¿µÚmµt Î»ÓÃÀ´´æ´¢Ëæ»ú ği¬mµ½toÕ ğµ ½Å±¾ºÅ

--ÈÎÎñÎÄ±¾ÃèÊö
x210236_g_MissionName="Ngñ tÑ tinh phß·ng y"
x210236_g_MissionInfo="#{event_dali_0049}"  --ÈÎÎñÃèÊö
x210236_g_MissionTarget="Tìm ğßşc Nh¤t Ph¦m Liên TØ và Nh¤t Ph¦m H°ng Täo, sau ğó v« #GNgû Hoa Ğàn thành ĞÕi Lı#W tìm 1 trong TÑ ğÕi thi®n nhân #RLı Công Bµ #W#{_INFOAIM160,128,2, Lı Công Bµ}. "    --Møc tiêu nhi®m vø
x210236_g_ContinueInfo="  Nh¤t Ph¦m Liên TØ và Nh¤t Ph¦m H°ng Täo các hÕ ğã tìm ğßşc chßa?"		--Î´Hoàn t¤t nhi®m vøtoÕ ğµ npc¶Ô»°
x210236_g_MissionComplete="  Ngß¶i trë tu±i, làm t¯t l¡m. "					--Hoàn t¤t nhi®m vønpcËµ»°toÕ ğµ »°

--ÈÎÎñ½±Àø
x210236_g_ItemBonus={{id=10413047,num=1}}
x210236_g_MoneyBonus=0
--MisDescEnd
--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x210236_OnDefaultEvent( sceneId, selfId, targetId )	-- ği¬m»÷¸ÃÈÎÎñºóÖ´ĞĞ´Ë½Å±¾
	--·¢ËÍÈÎÎñĞèÇótoÕ ğµ ĞÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x210236_g_MissionName)
		AddText(sceneId,x210236_g_MissionInfo)
		for i, item in x210236_g_DemandItem do
			AddItemDemand( sceneId, item.id, item.num )
		end
	EndEvent( )
	bDone = x210236_CheckSubmit( sceneId, selfId )
	DispatchMissionDemandInfo(sceneId,selfId,targetId,x210236_g_ScriptId,x210236_g_MissionId,bDone)
end

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x210236_OnEnumerate( sceneId, selfId, targetId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone(sceneId,selfId,x210236_g_MissionId) > 0 then
    	return
	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼ş
	elseif x210236_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId,x210236_g_ScriptId,x210236_g_MissionName,1,-1);
    end
end

--**********************************
--¼ì²âTiªp thøÌõ¼ş
--**********************************
function x210236_CheckAccept( sceneId, selfId )
	return 1
end

--**********************************
--Tiªp thø
--**********************************
function x210236_OnAccept( sceneId, selfId )
end

--**********************************
--·ÅÆú
--**********************************
function x210236_OnAbandon( sceneId, selfId )
	--É¾³ıÍæ¼ÒÈÎÎñÁĞ±íÖĞ¶ÔÓ¦toÕ ğµ ÈÎÎñ
    DelMission( sceneId, selfId, x210236_g_MissionId )
end

--**********************************
--¼ÌĞø
--**********************************
function x210236_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ğµ Ë ği¬m÷ĞÅÏ¢
    BeginEvent(sceneId)
    AddText(sceneId,x210236_g_MissionName)
    AddText(sceneId,x210236_g_MissionComplete)
    AddMoneyBonus( sceneId, x210236_g_MoneyBonus )
    for i, item in x210236_g_ItemBonus do
		AddItemBonus( sceneId, item.id, item.num )
	end
    EndEvent( )
    DispatchMissionContinueInfo(sceneId,selfId,targetId,x210236_g_ScriptId,x210236_g_MissionId)
end

--**********************************
--¼ì²âĞúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210236_CheckSubmit( sceneId, selfId )
	--Èç¹ûÍæ¼ÒÍê³É¹ıCái này ÈÎÎñ
    if IsMissionHaveDone( sceneId, selfId, x210236_g_MissionId ) > 0 then
		return 0
	end

	for i, item in x210236_g_DemandItem do
		itemCount = GetItemCount( sceneId, selfId, item.id )
		if itemCount < item.num then
			return 0
		end
	end
	return 1
end

--**********************************
--Ìá½»
--**********************************
function x210236_OnSubmit( sceneId, selfId, targetId,selectRadioId )
	if x210236_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		BeginAddItem(sceneId)
			for i, item in x210236_g_ItemBonus do
				AddItem( sceneId,item.id, item.num )
			end
		ret = EndAddItem(sceneId,selfId)
		--Ìí¼ÓÈÎÎñ½±Àø
		if ret > 0 then
			--¿Û³ıÈÎÎñÎïÆ·
			for i, item in x210236_g_DemandItem do
				ret = DelItem( sceneId, selfId, item.id, item.num )
			end
			if	ret > 0 then
				AddMoney(sceneId,selfId,x210236_g_MoneyBonus );
				LuaFnAddExp( sceneId, selfId,450)
				ret = DelMission( sceneId, selfId, x210236_g_MissionId )
				if ret > 0 then
					MissionCom( sceneId, selfId, x210236_g_MissionId )
					AddItemListToHuman(sceneId,selfId)
					Msg2Player(  sceneId, selfId,"#YHoàn t¤t nhi®m vø: Ban t£ng Tinh Phß·ng Y",MSG2PLAYER_PARA )
				end
			else
				--É¾³ıÎïÆ·²»³É¹¦
				BeginEvent(sceneId)
					strText = "Không th¬ Hoàn t¤t nhi®m vø"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
			end
		else
			--ÈÎÎñ½±ÀøÃ»ÓĞ¼Ó³É¹¦
			BeginEvent(sceneId)
				strText = "Không th¬ Hoàn t¤t nhi®m vø"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end
end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210236_OnKillObject( sceneId, selfId, objdataId ,objId)--²ÎÊıÒâË¼: ³¡¾°ºÅ¡¢Íæ¼ÒobjId¡¢¹ÖÎï±íÎ»ÖÃºÅ¡¢¹ÖÎïobjId
end

--**********************************
--½øÈëÇøÓòÊÂ¼ş
--**********************************
function x210236_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210236_OnItemChanged( sceneId, selfId, itemdataId )
end
