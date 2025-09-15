--tiêu tß½ng chª tác QQ1400003003
x889065_g_ScriptId = 889065

x889065_g_shoptableindex=6

--x889065_XiaoXiangItem={
--{39999904,20310003,100},{39999905,20310004,300},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
--{20502003,20502001,25},{20502004,20502001,150},{20501003,20501001,25},{20501004,20501001,150},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
--{10556777,20103111,500},{10556780,20103111,500},{10556783,20103111,500},{10556786,20103111,500},{10556789,20103108,500},{10556792,20103108,500},{10556795,20103108,500},{10556798,20103108,500},{0,0,0},{0,0,0},
--{10422016,38001375,100},{10423024,38001375,100},{10556100,38001375,100},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},{0,0,0},
--{30309757,30501104,400},{30309758,30501104,400},{10155002,20310113,20},{30503140,20103008,100},{10141068,20103008,100},{30309759,30501104,400},{30309760,30501104,400},{0,0,0},{0,0,0},{0,0,0},
--{10557000,10556100,3},{10557001,10422016,3},{10557002,10423024,3},{10557003,10556101,3},
--}

x889065_XiaoXiangItem={
{10141083,{{30505192,400},}},{10141104,{{30505192,400},}},{10141086,{{30505192,400},}},{10141068,{{30505192,400},}},{10553094,{{30505192,400},}},{10553095,{{30505192,400},}},{10553096,{{30505192,400},}},{10553097,{{30505192,400},}},{0,{{0,0},}},{0,{{0,0},}},
{20500002,{{20500001,5},}},{20500003,{{20500002,5},}},{20500004,{{20500003,3},}},{20501002,{{20501001,5},}},{20501003,{{20501002,5},}},{20501004,{{20501003,5},}},{20502002,{{20502001,5},}},{20502003,{{20502002,5},}},{20502004,{{20502003,5},}},{0,{{0,0},}},
{10423026,{{20310101,5},}},{10423025,{{20310102,5},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},
{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},
{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},
{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},
{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},{0,{{0,0},}},
}

function x889065_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	AddText(sceneId,"#GÐi¬m ðánh v§t ph¦m xem xét c¥n v§t ph¦m cùng s¯ lßþng")
	-- AddText(sceneId, "#GTrùng Lâu thång c¤p Vi không t±n hao gì thång c¤p! ")
	-- AddText(sceneId, "#GB¯n s×ng phân bi®t ð¯i Ñng bång hoä huy«n ðµc! ")
	-- AddText(sceneId, "#GB¯n s×ng phân bi®t ð¯i Ñng bång hoä huy«n ðµc! ")
	-- AddText(sceneId, "#GSáo trang thång c¤p xin bö ði bäo thÕch, Ðiêu vån! ")
	-- AddText(sceneId, "#GSáo trang thång c¤p xin bö ði bäo thÕch, Ðiêu vån! ")
	AddNumText( sceneId, x889065_g_ScriptId, "V§t ph¦m ð±i", 3, 1999999 )
	--AddNumText(sceneId, x002084_g_scriptId, "#b#gB0E2FF nguyên bäo bán --giao tØ mua", 5, 301)
	-- AddNumText(sceneId, x889065_g_ScriptId, " Trùng Lâu thång c¤p", 6, 2999999)
	-- AddNumText(sceneId, x889065_g_ScriptId, " chí tôn Trùng Lâu tiªn giai", 6, 3999999)
	AddNumText( sceneId, x889065_g_ScriptId, "R¶i ði..", 0, 0 )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

function x889065_OnEventRequest( sceneId, selfId, targetId, eventId )
	local nNumText = GetNumText()
	if nNumText==1999999 then
		local XiaoXiang_HGFFN=""
		for _,XiaoXiang_OUED in x889065_XiaoXiangItem do
			XiaoXiang_HGFFN=XiaoXiang_HGFFN..gsub(format("%#x",XiaoXiang_OUED[1]),"0x","")..","
		end
		BeginUICommand(sceneId)
		UICommand_AddString( sceneId, "V§t ph¦m ð±i" )
		UICommand_AddString( sceneId, XiaoXiang_HGFFN )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 20220126)
	end

	
	if nNumText == 0  then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)
		return
	end

	if GetNumText() == 301 then
		DispatchShopItem( sceneId, selfId, targetId, x889065_g_shoptableindex )

	end
end

function x889065_GetGifts( sceneId, selfId,targetId,XiaoXiang_1,XiaoXiang_2 )
	if targetId==-131495 then
		local XiaoXiang_item=x889065_XiaoXiang_OnMissionSubmit( sceneId, selfId, XiaoXiang_2)
		if XiaoXiang_item==-1 then
			return
		end
		local XiaoXiang_nScdt=""
		for _,nOdvx in XiaoXiang_item do
			XiaoXiang_nScdt=XiaoXiang_nScdt.."#W[#B"..GetItemName( sceneId,nOdvx[1]).."#cffcc00*"..nOdvx[2].."#W]"
		end
		BeginUICommand(sceneId)
		UICommand_AddInt(sceneId, XiaoXiang_1)
		UICommand_AddString( sceneId, GetItemName( sceneId, XiaoXiang_2)..","..XiaoXiang_nScdt..",".."0" )
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 20220127)
	end
	if targetId==-131494 then
		local XiaoXiang_item=x889065_XiaoXiang_OnMissionSubmit( sceneId, selfId, XiaoXiang_2)
		if XiaoXiang_item==-1 then
			return
		end
		local materbagspace = LuaFnGetMaterialBagSpace( sceneId, selfId)
		if materbagspace < 2 or LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
			AddText(sceneId,"ÐÕo cø lan cùng tài li®u lan ít nh¤t c¥n 2 cái không v¸")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		for _,nOdvx in XiaoXiang_item do
			if LuaFnGetAvailableItemCount(sceneId, selfId,nOdvx[1])<nOdvx[2] then
				BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;DBD:"..GetItemName(sceneId,nOdvx[1]).."S¯ lßþng không ðü"..nOdvx[2].."Cái", 0)
				return
			end
		end
		for _,nOdvx in XiaoXiang_item do
			if LuaFnDelAvailableItem(sceneId,selfId, nOdvx[1], nOdvx[2])~=1 then return end
		end
		local XiaoXiang_pos=TryRecieveItem(sceneId,selfId,XiaoXiang_2,1)
		LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0)
		BroadMsgByChatPipe(sceneId, selfId, "@*; SrvMsg; DBD: Ð±i thành công", 0);
		local szTransferEquip = GetBagItemTransfer(sceneId,selfId, XiaoXiang_pos)
		local XiaoXiang_str = format( "Ngß¶i ch½i".."#{_INFOUSR%s}#c66ccffr¯t cøc nh§n ðßþc mong nh¾ ngày ðêm #{_INFOMSG%s}", GetName(sceneId,selfId),szTransferEquip)
		BroadMsgByChatPipe( sceneId, selfId, XiaoXiang_str, 4 )
	end
end
function x889065_XiaoXiang_OnMissionSubmit( sceneId, selfId, selectRadioId)
	for _,XiaoXiang_t in x889065_XiaoXiangItem do
		if XiaoXiang_t[1]==selectRadioId then
			return XiaoXiang_t[2]
		end
	end
	return -1
end

function x889065_OnDefaultEvent( sceneId, selfId,targetId )
	x889065_UpdateEventList( sceneId, selfId, targetId )
end
--**********************************
--sñ ki®n li®t bi¬u lña ch÷n hÕng nh¤t
--**********************************
function x889065_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
	AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end