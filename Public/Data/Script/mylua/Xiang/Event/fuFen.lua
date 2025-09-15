
--Tân mãng th¥n phù hþp thành

--k¸ch bän g¯c hào
x999007_g_ScriptId = 999007
x999007_g_ShenFuList={	
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
function x999007_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	local info = x999007_g_ShenFuList[selectRadioId]
	local heLevel = info.level
	local needLevel = heLevel
	local needItem = selectRadioId
	local getItem
	local getItemNum = info.downNum
	for i, item in x999007_g_ShenFuList do
		if item.level == needLevel - 1  then
			getItem = item.id
		end
	end
	local ItemName = GetItemName(sceneId, getItem)
	local needItemInfo = x999007_g_ShenFuList[needItem]
	local needNum = 1
	--ki¬m tra c¥n v§t ph¦m s¯ lßþng
	local haveCount = LuaFnGetAvailableItemCount(sceneId, selfId, needItem)
	local needItemName = GetItemName(sceneId, needItem)
	if haveCount < needNum then
		x999007_NotifyTip( sceneId, selfId, "Các hÕ Ðích"..needItemName.."S¯ lßþng không ðü")
		return
	end
	-- ki¬m tra tay nãi không gian
	BeginAddItem(sceneId)
		AddItem(sceneId, getItem, getItemNum)
	local bBagOk = EndAddItem(sceneId, selfId)
	
	if bBagOk < 1 then
		return
	end
	--xóa bö Tân mãng th¥n phù
	local bDelOk = 0
	bDelOk = LuaFnDelAvailableItem(sceneId,selfId, needItem, needNum)
	if bDelOk < 1  then	
		x999007_NotifyTip( sceneId, selfId, "Các hÕ Ðích"..needItemName.."S¯ lßþng không ðü")
		return			
	end
	
	--c¤p hoàn gia ð° v§t này n÷, hoàn thành
	local nBagIndex
	for i=1,getItemNum,1 do 
		nBagIndex = TryRecieveItem( sceneId, selfId, getItem, 1 )
	end
	local chatStr = needNum.."Cái"..needItemName.."Phân giäi thành"..getItemNum.."Cái"..ItemName.."!"
	x999007_NotifyTip( sceneId, selfId, "Chúc m×ng các hÕ s¨"..chatStr)	
	local szTransferItem = GetBagItemTransfer(sceneId,selfId, nBagIndex)
	local message = format("#I#{_INFOUSR%s}th§t là làm ngß¶i khó hi¬u, h¡n thª nhßng s¨"..needItemName.."Chia lìa thành"..getItemNum.."Cái #Y#{_INFOMSG%s}", GetName(sceneId, selfId), szTransferItem);
	BroadMsgByChatPipe(sceneId, selfId, message, 4);	
	--ð±i thành công, truy«n phát tin ð£c hi®u
	LuaFnSendSpecificImpactToUnit(sceneId,selfId,selfId,selfId,18,0)	
end

--**********************************
--tØ vong sñ ki®n
--**********************************
function x999007_OnDie( sceneId, selfId, killerId )
end
--**********************************
-- màn hình trung gian tin tÑc nêu lên
--**********************************
function x999007_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end