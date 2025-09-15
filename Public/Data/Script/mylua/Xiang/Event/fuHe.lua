
--Tân mãng th¥n phù hþp thành

--k¸ch bän g¯c hào
x999006_g_ScriptId = 999006

x999006_g_ShenFuList={	
		[30505800] = {level=1,id=30505800,upNeed=2,downNum=0},
		[30505801] = {level=2,id=30505801,upNeed=2,downNum=2},
		[30505802] = {level=3,id=30505802,upNeed=2,downNum=2},
		[30505803] = {level=4,id=30505803,upNeed=2,downNum=2},
		[30505804] = {level=5,id=30505804,upNeed=2,downNum=2},
		[30505805] = {level=6,id=30505805,upNeed=2,downNum=2},
		[30505806] = {level=7,id=30505806,upNeed=0,downNum=2},
}

--**********************************
--ð® trình ðã làm xong nhi®m vø
--**********************************
function x999006_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	local ItemName = GetItemName(sceneId, selectRadioId)
	local info = x999006_g_ShenFuList[selectRadioId]
	local heLevel = info.level
	local needLevel = heLevel - 1
	local needItem
	for i, item in x999006_g_ShenFuList do
		if item.level == needLevel  then
			needItem = item.id
		end
	end
	local needItemInfo = x999006_g_ShenFuList[needItem]
	local needNum = needItemInfo.upNeed
	--ki¬m tra c¥n v§t ph¦m s¯ lßþng
	local haveCount = LuaFnGetAvailableItemCount(sceneId, selfId, needItem)
	local needItemName = GetItemName(sceneId, needItem)
	if haveCount < needNum then
		x999006_NotifyTip( sceneId, selfId, "Các hÕ Ðích"..needItemName.."S¯ lßþng không ðü")
		return
	end
	-- ki¬m tra tay nãi không gian
	BeginAddItem(sceneId)
		AddItem(sceneId, selectRadioId, 1)
	local bBagOk = EndAddItem(sceneId, selfId)
	
	if bBagOk < 1 then
		return
	end
	--xóa bö Tân mãng th¥n phù
	local bDelOk = 0
	bDelOk = LuaFnDelAvailableItem(sceneId,selfId, needItem, needNum)
	if bDelOk < 1  then	
		x999006_NotifyTip( sceneId, selfId, "Các hÕ Ðích"..needItemName.."S¯ lßþng không ðü")
		return			
	end
	
	--c¤p hoàn gia ð° v§t này n÷, hoàn thành
	local nBagIndex = TryRecieveItem( sceneId, selfId, selectRadioId, 1 );	
	local chatStr = needNum.."Cái"..needItemName.."Ðúc nóng thành"..ItemName.."!"
	x999006_NotifyTip( sceneId, selfId, "Chúc m×ng các hÕ s¨"..chatStr)	
	local szTransferItem = GetBagItemTransfer(sceneId,selfId, nBagIndex)
	local message = format("#I#{_INFOUSR%s}chân th§t tuy®t không th¬ tä nha! #Y#{_INFOMSG%s}#Wthª nhßng b¸ h¡n sØ døng"..needNum.."Cái"..needItemName.."Ðúc nóng ði ra!", GetName(sceneId, selfId), szTransferItem);
	BroadMsgByChatPipe(sceneId, selfId, message, 4);	
	--ð±i thành công, truy«n phát tin ð£c hi®u
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)	
end

--**********************************
--tØ vong sñ ki®n
--**********************************
function x999006_OnDie( sceneId, selfId, killerId )
end
--**********************************
-- màn hình trung gian tin tÑc nêu lên
--**********************************
function x999006_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end