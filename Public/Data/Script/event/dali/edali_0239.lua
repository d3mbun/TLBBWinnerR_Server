
--ÃÅÅÉÒýµ¼ÈÎÎñ

--MisDescBegin
--½Å±¾ºÅ
x210239_g_ScriptId = 210239

--Tiªp thøÈÎÎñNPCÊôÐÔ
x210239_g_Position_X=160.0895
x210239_g_Position_Z=156.9309
x210239_g_SceneID=2
x210239_g_AccomplishNPC_Name="Tri®u Thiên Sß"

--ÈÎÎñºÅ
x210239_g_MissionId = 719
--Ç°ÖÃÈÎÎñID
x210239_g_MissionIdPer = 718

--Ä¿±êNPC
x210239_g_Name	="Tri®u Thiên Sß"

--ÈÎÎñ¹éÀà
x210239_g_MissionKind = 13

--ÐÆng c¤p nhi®m vø 
x210239_g_MissionLevel = 10

--Ðúng·ñÐúngTinhÓ¢ÈÎÎñ
x210239_g_IfMissionElite = 0

--ÈÎÎñÃû
x210239_g_MissionName="Danh môn chính phái"
--ÈÎÎñÃèÊö
x210239_g_MissionInfo  = ""
x210239_g_MissionInfo1 = "    $N, cu¯i cùng các hÕ ðã ðªn. #rTuy®t l¡m tuy®t l¡m, gi¶ ðây cån c½ cüa các hÕ ðã luy®n tß½ng ð¯i væng ch¡c. V§y t¾i cØu ðÕi môn phái h÷c võ công cao thâm h½n cûng là chuy®n ðß½ng nhiên thôi."
x210239_g_MissionInfo2 = "    Ðúng, các hÕ nghe không sai, trong truy«n thuyªt cüa cØu ðÕi môn phái. Phái Tinh Túc là tây vñc ðÕi tông, phái Thiên S½n là tây b¡c kÏ ba, phái Thiên Long là thiên nam chi trø, phái Tiêu Dao là xu¤t th¥n nh§p quÖ, phái Nga My là vÕn ph§t tri«u tông, phái Võ Ðang là ðÕo c¯t tiên phong, Minh Giáo là thiên hÕ ð® nh¤t giáo, Cái Bang là thiên hÕ ð® nh¤t bang, phái Thiªu Lâm là thái s½n b¡c ð¦u cüa võ lâm thiên hÕ."
x210239_g_MissionInfo3 = "    Dù các hÕ bái nh§p môn phái nào, ð«u là bß¾c trên con ðß¶ng ðÕi ðÕo quang minh, m¤y lão già chúng ta cûng ðßþc th½m lây."
x210239_g_MissionInfo4 = "    Thª này nhé, các hÕ ði tìm ngß¶i thu nh§n cüa cØu ðÕi môn phái, nghe h÷ k¬ ð£c trßng cüa các ðÕi môn phái, sau ðó ch÷n l¤y 1 môn phái ð¬ gia nh§p. Ðþi ðªn khi các hÕ tr· thành ð® tØ cüa cØu ðÕi môn phái, hãy t¾i tìm ta, ta s¨ m· ti®c m×ng thành công."

--Møc tiêu nhi®m vø
x210239_g_MissionTarget="#{MIS_dali_ZTS_001}"
--Î´Hoàn t¤t nhi®m vøtoÕ ðµ npc¶Ô»°
x210239_g_ContinueInfo="    Ðã thành ð® tØ cüa mµt trong cØu ðÕi môn phái chßa?"
--Ìá½»Ê±npctoÕ ðµ »°
x210239_g_MissionComplete="    Xem ra các hÕ ðã ch÷n con ðß¶ng ðúng, hãy hß¾ng thÆng t¾i tß½ng lai!"


x210239_g_ItemBonus={}


x210239_g_IsMissionOkFail = 0		--±äÁ¿toÕ ðµ µÚ0Î»
x210239_g_Custom	= { {id="Ðã gia nh§p môn phái",num=1} }--±äÁ¿toÕ ðµ µÚ1Î»

--x210239_g_MenpaiArray = {}


--MisDescEnd


--È¡ ði¬m´ËÃÅÅÉÅÅÐòÓ¦ ði¬mtoÕ ðµ Kinh nghi®mÖµ.
function x210239_GetExpByMenpaiIndex( MenPaiIndex )
    --¸ù¾ÝÃÅÅÉtoÕ ðµ ÅÅÃû, ðÕt ðßþcÓ¦ ði¬mtoÕ ðµ Kinh nghi®mÖµ.

    local ReturnVal = 0

    if( 0 == MenPaiIndex ) then
        ReturnVal = 3000
    end
    if( 1 == MenPaiIndex ) then
        ReturnVal = 2900
    end
    if( 2 == MenPaiIndex ) then
        ReturnVal = 2600
    end
    if( 3 == MenPaiIndex ) then
        ReturnVal = 2500
    end
    if( 4 == MenPaiIndex ) then
        ReturnVal = 2200
    end
    if( 5 == MenPaiIndex ) then
        ReturnVal = 2000
    end
    if( 6 == MenPaiIndex ) then
        ReturnVal = 1200
    end
    if( 7 == MenPaiIndex ) then
        ReturnVal = 1000
    end
    if( 8 == MenPaiIndex ) then
        ReturnVal = 900
    end

    return ReturnVal

end


--0Thiªu Lâm 1Minh Giáo 2Cái Bang 3Võ Ðang 4Nga My 5Tinh Túc 6Thiên Long 7Thiên S½n 8ÏûÒ£
--¸ù¾ÝÃÅÅÉIDÈ¡ ði¬mÃÅÅÉÃû³Æ(ºº×Ö)
function x210239_GetMenpaiName( Menpai)
    local Name = "Không có"

    if( 0 == Menpai ) then
         Name = "Phái Thiªu Lâm"
    elseif( 1 == Menpai ) then
         Name = "Minh Giáo"
    elseif( 2 == Menpai ) then
         Name = "Cái Bang"
    elseif( 3 == Menpai ) then
         Name = "Phái Võ Ðang"
    elseif( 4 == Menpai ) then
         Name = " Nga My"
    elseif( 5 == Menpai ) then
         Name = " Tinh Túc"
    elseif( 6 == Menpai ) then
         Name = " Thiên Long"
    elseif( 7 == Menpai ) then
         Name = " Thiên S½n"
    elseif( 8 == Menpai ) then
         Name = "Phái Tiêu Dao"
    end

    return Name

end

function x210239_MenpaiSort()
    local MenpaiArray = {}
    local Max0 = 3
    local ZeroCount =0

    for i=1, 9 do
        MenpaiArray[ i ] = LuaFnGetWorldGlobalData( Max0 - 1 + i )
        if( 0 == MenpaiArray[ i ] ) then
            ZeroCount = ZeroCount + 1
        end
    end

    if( 9 == ZeroCount ) then
        MenpaiArray[ 1 ] = 6
        MenpaiArray[ 2 ] = 2
        MenpaiArray[ 3 ] = 7
        MenpaiArray[ 4 ] = 5
        MenpaiArray[ 5 ] = 8
        MenpaiArray[ 6 ] = 0
        MenpaiArray[ 7 ] = 3
        MenpaiArray[ 8 ] = 4
        MenpaiArray[ 9 ] = 1
    end

    return MenpaiArray

end

--±£´æÃÅÅÉÅÅÁÐ,Ê¹ÓÃÈÎÎñÊý¾ÝµÚ3,4,5,6,7
function x210239_SaveMenpaiArray( sceneId, selfId, MenpaiArray )
    --0Thiªu Lâm 1Minh Giáo 2Cái Bang 3Võ Ðang 4Nga My 5Tinh Túc 6Thiên Long 7Thiên S½n 8Tiêu Dao
		--Ê¹ÓÃÈÎÎñÊý¾Ý3,4,5,6,7ÓÃÀ´´æ·ÅÃÅÅÉÅÅÃû.

    local MixDWORD = 0
    local CurMenpai
    local misIndex = GetMissionIndexByID(sceneId,selfId,x210239_g_MissionId)

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 1 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 2 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 3, MixDWORD)   --ÈËÊý×î¶àÃÅÅÉ,·ÅTÕi ÈÎÎñÊý¾ÝµÚ3cáiÊý¾ÝtoÕ ðµ ¸ß16Î»,µÚ¶þ·ÅTÕi µÚ3cáiÊý¾ÝtoÕ ðµ µÍ16Î»

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 3 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 4 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 4, MixDWORD)   --ÈËÊýµÚÈýÃÅÅÉ,·ÅTÕi ÈÎÎñÊý¾ÝµÚ4cáiÊý¾ÝtoÕ ðµ ¸ß16Î»,µÚËÄ·ÅTÕi µÚ4cáiÊý¾ÝtoÕ ðµ µÍ16Î»

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 5 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 6 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 5, MixDWORD)   --ÈËÊýµÚÎåÃÅÅÉ,·ÅTÕi ÈÎÎñÊý¾ÝµÚ5cáiÊý¾ÝtoÕ ðµ ¸ß16Î»,µÚÁù·ÅTÕi µÚ5cáiÊý¾ÝtoÕ ðµ µÍ16Î»

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 7 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 8 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 6, MixDWORD)   --ÈËÊýµÚÆßÃÅÅÉ,·ÅTÕi ÈÎÎñÊý¾ÝµÚ6cáiÊý¾ÝtoÕ ðµ ¸ß16Î»,µÚ°Ë·ÅTÕi µÚ6cáiÊý¾ÝtoÕ ðµ µÍ16Î»

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 9 ] )
    MixDWORD = SetLowWord ( MixDWORD, 0 )
    SetMissionByIndex( sceneId, selfId, misIndex, 7, MixDWORD)   --ÈËÊýµÚ¾ÅÃÅÅÉ,·ÅTÕi ÈÎÎñÊý¾ÝµÚ7cáiÊý¾ÝtoÕ ðµ ¸ß16Î»,µÍ16Î»ÖÃ0

end


--**********************************
--ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x210239_OnDefaultEvent( sceneId, selfId, targetId )

   --x210239_GetMenpaiIndex( 9 )
  --Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
  if (IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0)  then
		--·¢ËÍÈÎÎñÐèÇótoÕ ðµ ÐÅÏ¢
		BeginEvent(sceneId)
			AddText(sceneId, x210239_g_MissionName)
			AddText(sceneId, x210239_g_ContinueInfo)
		EndEvent( )
		local bDone = x210239_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId,bDone)

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
  elseif x210239_CheckAccept(sceneId,selfId) > 0 then
		--·¢ËÍÈÎÎñTiªp thøÊ±ÏÔÊ¾toÕ ðµ ÐÅÏ¢
		local MenpaiArray = x210239_MenpaiSort()

		BeginEvent(sceneId)
			AddText(sceneId,x210239_g_MissionName)
			AddText(sceneId,x210239_g_MissionInfo1)
			AddText(sceneId,x210239_g_MissionInfo2)
			AddText(sceneId,x210239_g_MissionInfo3)
			AddText(sceneId,x210239_g_MissionInfo4)


			local MixStr1 = ""
			local MixStr2 = ""
			for i=1, 9 do
			    if( i <= 5 ) then
			        local MenpaiName = x210239_GetMenpaiName( MenpaiArray[ i ] )
			        local MenpaiExp  = x210239_GetExpByMenpaiIndex( i - 1 )
			        local Str = "    Nªu các hÕ gia nh§p " ..MenpaiName.. ", các hÕ s¨ ðÕt ðßþc "..MenpaiExp.." ði¬m thß·ng kinh nghi®m"
			        MixStr1 = MixStr1..Str.."#r"
			    end

			    if( i>5 and i<=9 ) then
			        local MenpaiName = x210239_GetMenpaiName( MenpaiArray[ i ] )
			        local MenpaiExp  = x210239_GetExpByMenpaiIndex( i - 1 )
			        local Str = "    Nªu các hÕ gia nh§p " ..MenpaiName.. ", các hÕ s¨ ðÕt ðßþc "..MenpaiExp.." ði¬m thß·ng kinh nghi®m"
			        MixStr2 = MixStr2..Str.."#r"
			    end

			end
			AddText( sceneId, MixStr1 )
      AddText( sceneId, MixStr2 )

			--AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,"#{M_MUBIAO}#r"..x210239_g_MissionTarget)

			--AddText(sceneId,"#{M_SHOUHUO}")
			--AddMoneyBonus( sceneId, x210239_g_MoneyBonus )
			--for i, item in x210239_g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		--    DispatchMissionInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId)
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId, 0 )

		--x210239_OnAccept( sceneId, selfId )
		x210239_DirectAccept( sceneId, selfId, MenpaiArray )

	end
end


--Ö±½ÓTiªp thøÈÎÎñ,Ã»ÓÐ¾­¹ý½çÃæ ði¬m»÷
function x210239_DirectAccept( sceneId, selfId, MenpaiArray )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	end

	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x210239_g_MissionId, x210239_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"Nh§n nhi®m vø: #Y" .. x210239_g_MissionName, MSG2PLAYER_PARA )


	local misIndex = GetMissionIndexByID(sceneId,selfId,719)
	local Menpai = LuaFnGetMenPai( sceneId, selfId )

  if( Menpai >= 0 and Menpai < 9 ) then
		  SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)    --ÈÎÎñ×·×ÙÇé¿ö±êÖ¾ 1/1
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)    --ÈÎÎñÍê³ÉÇé¿ö
  end

  x210239_SaveMenpaiArray( sceneId, selfId, MenpaiArray )

end



--**********************************
--ÁÐ¾ÙÊÂ¼þ
--**********************************
function x210239_OnEnumerate( sceneId, selfId, targetId )

	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	--Èç¹ûÒÑ½Ó´ËÈÎÎñ
	elseif IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0 then

	    local bDone = x210239_CheckSubmit( sceneId, selfId )
	    if( 1 == bDone ) then
	        AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 2, -1);
	    else
	        AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 1, -1);
	    end

	--Thöa mãnÈÎÎñ½ÓÊÕÌõ¼þ
	elseif x210239_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 1, -1);
	end
end

--**********************************
--¼ì²âTiªp thøÌõ¼þ
--**********************************
function x210239_CheckAccept( sceneId, selfId )

	--ÒªÇóÍê³ÉtoÕ ðµ Ç°ÐøÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionIdPer) <= 0 then
		return 0
	end

    return 1
end

--**********************************
--Tiªp thø
--**********************************
function x210239_OnAccept( sceneId, selfId )
	--Èç¹ûÍæ¼ÒÍê³É¹ýCái này ÈÎÎñ
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	end

	-- ¼ÓÈëÈÎÎñµ½Íæ¼ÒÁÐ±í
	local ret = AddMission( sceneId,selfId, x210239_g_MissionId, x210239_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh§t ký nhi®m vø cüa các hÕ ðã ð¥y" , MSG2PLAYER_PARA )
		return
	end

	--ÉèÖÃÈÎÎñ±äÁ¿±¦ÎïtoÕ ðµ ³¡¾°±àºÅºÍ×ø±êÎ»ÖÃ
	--local misIndex = GetMissionIndexByID(sceneId, selfId, x210239_g_MissionId)-- ði¬mµ½ÈÎÎñTÕi 20cáiÈÎÎñÖÐtoÕ ðµ ÐòÁÐºÅ
	--SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--¸ù¾ÝÐòÁÐºÅ°ÑÈÎÎñ±äÁ¿toÕ ðµ µÚmµt Î»ÖÃ0	µÚmµt Î»ÐúngÍê³É/th¤t bÕiÇé¿ö

	Msg2Player(  sceneId, selfId,"Nh§n nhi®m vø: #Y" .. x210239_g_MissionName, MSG2PLAYER_PARA )


	misIndex = GetMissionIndexByID(sceneId,selfId,719)
	local Menpai = LuaFnGetMenPai( sceneId, selfId )
  if( Menpai >= 0 and Menpai < 9 ) then
		  SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)    --ÈÎÎñ×·×ÙÇé¿ö±êÖ¾ 1/1
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)    --ÈÎÎñÍê³ÉÇé¿ö
  end

end

--**********************************
--·ÅÆú
--**********************************
function x210239_OnAbandon( sceneId, selfId )
	--É¾³ýÍæ¼ÒÈÎÎñÁÐ±íÖÐ¶ÔÓ¦toÕ ðµ ÈÎÎñ
	DelMission( sceneId, selfId, x210239_g_MissionId )
end

--**********************************
--¼ÌÐø
--**********************************
function x210239_OnContinue( sceneId, selfId, targetId )
	--Ìá½»ÈÎÎñÊ±toÕ ðµ Ë ði¬m÷ÐÅÏ¢
	BeginEvent(sceneId)
		AddText(sceneId,x210239_g_MissionName)
		AddText(sceneId,x210239_g_MissionComplete)

		for i, item in x210239_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId)
end

--**********************************
--¼ì²âÐúng·ñ¿ÉÒÔÌá½»
--**********************************
function x210239_CheckSubmit( sceneId, selfId )

    local MenPai = GetMenPai( sceneId, selfId )

    if( MenPai > 8 ) then
        return 0
    end

    if( MenPai < 0 ) then
        return 0
    end

	return 1

end


--***********************************************
--°´ÕÕÍæ¼ÒÃÅÅÉºÍ´æTÕi ÈÎÎñÊý¾ÝÖÐtoÕ ðµ ÃÅÅÉÅÅÐò¼ÆËãKinh nghi®m
--***********************************************
function x210239_CalculatePlayerExp( sceneId, selfId )
    local Exp = 0
    local MenpaiArray ={}
    for i=1, 9 do
        MenpaiArray[ i ] = 0
    end

    if IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0 then
        local misIndex = GetMissionIndexByID(sceneId, selfId, x210239_g_MissionId)

        local MixDWORD
        local High
        local Low
        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 3)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 1 ] = High
        MenpaiArray[ 2 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 4)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 3 ] = High
        MenpaiArray[ 4 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 5)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 5 ] = High
        MenpaiArray[ 6 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 6)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 7 ] = High
        MenpaiArray[ 8 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 7)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 9 ] = High

    end

    local MenpaiID = LuaFnGetMenPai( sceneId, selfId )

    for i=1, 9 do
        if( MenpaiArray[ i ] == MenpaiID ) then
            Exp = x210239_GetExpByMenpaiIndex( i - 1 )
        end
    end

    return Exp
end
--**********************************
--Ìá½»
--**********************************
function x210239_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		-- °²È«ÐÔ¼ì²â
		-- 1¡¢¼ì²âÍæ¼ÒÐúng²»ÐúngÓÐCái này ÈÎÎñ
		if IsHaveMission(sceneId,selfId,x210239_g_MissionId) <= 0 then
			return
		end

		-- 2¡¢Hoàn t¤t nhi®m vøtoÕ ðµ Çé¿ö¼ì²â
		if x210239_CheckSubmit(sceneId, selfId) <= 0    then
			return
		end

		local nPlayerExp = x210239_CalculatePlayerExp( sceneId, selfId )


		-- ½ðÇ®ºÍKinh nghi®m
		LuaFnAddExp( sceneId, selfId, nPlayerExp)

		DelMission( sceneId,selfId, x210239_g_MissionId )
		--ÉèÖÃÈÎÎñÒÑ¾­±»Íê³É¹ý
		MissionCom( sceneId,selfId, x210239_g_MissionId )

		local MenpaiID = LuaFnGetMenPai( sceneId, selfId )
    local MenpaiName = x210239_GetMenpaiName( MenpaiID )

    local PlayerName = GetName( sceneId, selfId )
    local PlayerSex=GetSex(sceneId,selfId)

    local strSex = ""
    if PlayerSex == 0 then
        strSex = "muµi ¤y "
    else
        strSex = "huynh ¤y "
    end

    local SysStr = "#YTri®u Thiên Sß hét to#W: b¾ b¢ng hæu cüa TÑ ÐÕi Thi®n Nhân #{_INFOUSR"..PlayerName .."} ðã tr· thành"..MenpaiName.." ð® tØ, m¤y huynh ð®, hãy t¾i chúc m×ng"..strSex.."Nào! #W"

    --local SysStr = "#YTri®u Thiên Sß´óº°: ËÄ´óÉÆÈËtoÕ ðµ ÅóÓÑ$NÒÑ¾­³ÉÎªÁË"..MenpaiName.."toÕ ðµ µÜ×Ó,ÀÏ¸ç¶ù¼¸cái,mµt ÆðÀ´×: ØËû°É£¡#W"
    
    if IsPermitAreetAddMenpai()==1 then --modi:lby20071107ÐÂÊÖ¼ÓÈëÃÅÅÉÐúng·ñÍ¨ÖªÍæ¼Ò
    	BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
		end


end

--**********************************
--É±ËÀ¹ÖÎï»òÍæ¼Ò
--**********************************
function x210239_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--½øÈëÇøÓòÊÂ¼þ
--**********************************
function x210239_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--µÀ¾ß¸Ä±ä
--**********************************
function x210239_OnItemChanged( sceneId, selfId, itemdataId )
end







