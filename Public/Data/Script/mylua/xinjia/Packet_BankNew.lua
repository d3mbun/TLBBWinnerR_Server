
x900017_g_scriptId = 900017

function x900017_BankDataToUI(sceneId,selfId,keyid)

        if keyid == 99 then
                if sceneId ~= 0 and sceneId ~= 1 and sceneId ~= 2 and sceneId ~= 420 and sceneId ~= 186 then
                x900017_NotifyTip( sceneId, selfId,"Tùy thân kho hàng chï có th¬ · -LÕc Dß½ng, Tô Châu, ÐÕi Lý, Lâu Lan, bó buµc hà -trß¶ng cänh sØ døng!" )       
                return
            end
            BankBegin(sceneId, selfId,selfId)
        return
        end

	if GetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK) == 1 then
	return
	end
	if GetLevel(sceneId,selfId) < 1 then
	
	    x900017_NotifyTip(sceneId,selfId,"Chï có · C¤p 1 lúc sau m¾i có th¬ ðü sØ døng thiên c½ túi g¤m!")
		return
	end
	if keyid == nil or keyid < 0 or keyid > 11 then
	
	    x900017_NotifyTip(sceneId,selfId,"Phi pháp tham s¯")
		return
	end
	local startnum,endnum = 1+keyid*10,10+keyid*10
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,1)
	local ItemData = x900017_GetNewBanData(sceneId,selfId)
	local DataItemIDlist = {"","","","","","","","","",""}
	local DataItemIDNumlist = {"","","","","","","","","",""}
	for i = startnum,endnum do
		local sspos = mod(i-1,10)+1
		if sspos < 1 or sspos > 10 then
		break
		end
		DataItemIDlist[sspos] = DataItemIDlist[sspos]..tostring(ItemData[i][1])..","
		DataItemIDNumlist[sspos] = DataItemIDNumlist[sspos]..tostring(ItemData[i][2])..","
	end
	BeginUICommand(sceneId)
	UICommand_AddInt(sceneId,keyid)
		for i = 1,10 do
	    UICommand_AddString(sceneId,DataItemIDlist[i].."|"..DataItemIDNumlist[i])
		end
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,201901051)
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
end


function x900017_GetNewBanData(sceneId,selfId)
	local nGuid = LuaFnGetGUID(sceneId, selfId)
	local nHandle = openfile("./ServerBD/Bank/"..tostring(nGuid)..".txt", "r")
	local ItemData = {}
	if nHandle and nil ~= nHandle then
		local nLineData = ""
		for i=1, 120 do
			nLineData = read(nHandle, "*l")
			if nLineData == nil then
				return
			end
			local pos1,pos2,ItemCode,ItemNum = strfind(nLineData,"(%d+)\t(%d+)")
			if pos1~= nil and pos2~=nil then
			    ItemData[i] = {tonumber(ItemCode),tonumber(ItemNum)}
			else
				ItemData[i] = {0,0}
			end
		end
		closefile(nHandle)
	else
		for i = 1,120 do
			ItemData[i] = {0,0}
		end
	end

	return ItemData
end


--**********************************
--thiên c½ túi g¤m ð¬ vào
--**********************************
function x900017_PutInItem(sceneId,selfId,nPos)
	if GetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK) == 1 then
	return
	end
	if nPos == nil or nPos < 0 or nPos > 59 then
	x900017_NotifyTip(sceneId,selfId,"Tay nãi v¸ trí sai l¥m")
	return
	end
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nPos)
	if  nItemId == 0 or nItemId == nil then
		return
	end
	if nItemId < 20000000 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return
	elseif nItemId >= 30008006 and nItemId < 30008008 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return
	elseif nItemId >= 30008012 and nItemId < 30008013 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return
	elseif nItemId >= 30008030 and nItemId < 30008031 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return		
	elseif nItemId >= 30008038 and nItemId < 30008039 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return
	elseif nItemId >= 30008048 and nItemId < 30008049 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return		
	elseif nItemId >= 30505700 and nItemId < 30505707 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return			
	elseif nItemId >= 30607000 and nItemId < 30607003 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return			
	elseif nItemId >= 30900045 and nItemId < 30900046 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return				
	elseif nItemId >= 31000000 and nItemId < 31000008 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi c¤m ð¬ vào nên ðÕo cø.")
		return					
	end

	--ð£c thù ðÕo cø gia nh§p
	-- local special = 0
	-- for j = 1,getn(x900017_g_SpecialItem) do
	    -- if x900017_g_SpecialItem[j] == nItemId then
			-- special = special + 1;
			-- break
		-- end
	-- end

	-- if special > 0 then
	    -- x900017_NotifyTip(sceneId,selfId,"#{SSCK_180821_04}")
		-- return
	-- end
	--ð£c thù ðÕo cø gia nh§p
    --x900017_NotifyTip(sceneId,selfId,nItemId)

	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,1)
	local ItemData = x900017_GetNewBanData(sceneId,selfId)
	local nTJJNIndex = 0 --?????
	local IsHaveItem = 0
	for i=1,120 do
		if ItemData[i][1] == nItemId then --???????
		    IsHaveItem = 1
			nTJJNIndex = i
			if ItemData[i][2] >= 9999 then --?????5??????
			    x900017_NotifyTip(sceneId,selfId,"Nên v§t ph¦m · thiên c½ túi g¤m nµi gØi s¯ lßþng ðã t¾i hÕn mÑc cao nh¤t")
				SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
		        return
			end
		break
		end
		if IsHaveItem < 1 then
		    if ItemData[i][1] == 0 then
				if nTJJNIndex == 0 then
					nTJJNIndex = i
				break
				end
			end
		end
	end
	if nTJJNIndex == 0 then
		x900017_NotifyTip(sceneId,selfId,"#HThiên c½ túi g¤m nµi không gian ðã ð¥y, xin sØa sang lÕi sau ði thêm ð¬ vào.")
		SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
		return
	end

	--VIPð£c quy«n âu
	local PosNum = LuaFnGetItemCountInBagPos(sceneId,selfId,nPos) --??????
	local delitem1 = LuaFnEraseItem(sceneId,selfId,nPos)
	if delitem1 < 1 then
		x900017_NotifyTip( sceneId, selfId, "V§t ph¦m di nh§p thiên c½ túi g¤m trong quá trình xu¤t hi®n sai l¥m! Xin liên h® ðßa vào hoÕt ðµng ðoàn ðµi ðªn giäi quyªt thØ v¤n ð«!" )
		SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
		return
	end
	if IsHaveItem == 1 then --????
	    ItemData[nTJJNIndex][2] = ItemData[nTJJNIndex][2] + PosNum
	else
		ItemData[nTJJNIndex][1] = nItemId
		ItemData[nTJJNIndex][2] = ItemData[nTJJNIndex][2] + PosNum --?????+PosNum????????0
	end
	local TiShiTextstring = "Thành công t°n nh§p, [#{_ITEM"..nItemId.."}]"..PosNum.."Cái"
	x900017_SetNewBanData(sceneId,selfId,ItemData)
	x900017_RefreshItemOnNewBankPos(sceneId,selfId,nTJJNIndex,ItemData[nTJJNIndex]) --???????
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	x900017_NotifyTip( sceneId, selfId, TiShiTextstring)

end
function x900017_RefreshItemOnNewBankPos(sceneId,selfId,nPos,OneItemData)
	if nPos < 1 or nPos > 120 then
		return
	end

	BeginUICommand(sceneId)
	    UICommand_AddInt(sceneId,OneItemData[1])
		UICommand_AddInt(sceneId,OneItemData[2])
		UICommand_AddInt(sceneId,nPos)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId,2022021299)
end

function x900017_SetNewBanData(sceneId,selfId,ItemData)
	local Guid = LuaFnGetGUID(sceneId,selfId)
	local FinData = ""
	for i = 1,120 do
		if ItemData[i] == nil or (ItemData[i][1] == nil and ItemData[i][2] == nil) then
		    FinData = FinData.."0\t0\n"
		else
			FinData = FinData..tostring(ItemData[i][1]).."\t"..tostring(ItemData[i][2]).."\n"
		end
	end
	local Coldfile = openfile("./ServerBD/Bank/"..tostring(Guid)..".txt", "w")
	if Coldfile and nil ~= Coldfile then
		if FinData ~= nil and FinData ~= "" then
			write(Coldfile, FinData)
		end
		closefile(Coldfile)
	else
		return
	end
	return
end

--**********************************
--thiên c½ túi g¤m l¤y ra
--**********************************
function x900017_PacketTemporaryTakeout(sceneId,selfId,nPos,outnum)
	if GetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK) == 1 then
	return
	end
	
	if outnum == nil or outnum > 9999 or outnum < 0 then
	return
	end
	if nPos == nil or nPos < 0 or nPos > 120 then
	    return
	end

	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,1)
	local ItemData = x900017_GetNewBanData(sceneId,selfId)
	local ItemID = ItemData[nPos][1]
	if ItemID == 0 then
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	    return
	end
	local haveitemnum = ItemData[nPos][2]
	local lishioutnum = outnum
	local yunum = 0
	if lishioutnum == 0 or lishioutnum > haveitemnum then
	lishioutnum = haveitemnum
	end
	yunum = haveitemnum-lishioutnum
	if haveitemnum ~= nil and haveitemnum ~= 0 then
		--n½i này sØa ð±i phß½ng án, duy nh¤t l¤y ra t¤t cä Không cách nµi dung
		BeginAddItem(sceneId)
		AddItem( sceneId,ItemID, lishioutnum)
		if EndAddItem(sceneId,selfId) <= 0 then
			SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
			return
		end

	else
		
		x900017_NotifyTip(sceneId,selfId,"Thiên c½ túi g¤m s¯ li®u d¸ thß¶ng, xin mau chóng liên h® khách phøc giäi quyªt v¤n ð«!")
		SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
		return
	end
	local TiShiTextstring = "Thành công l¤y ra, [#{_ITEM"..ItemID.."}]"..lishioutnum.."Cái"
	if yunum <= 0 then
	ItemID = 0
	end
	ItemData[nPos][1] = ItemID
	ItemData[nPos][2] = yunum	
		
	x900017_SetNewBanData(sceneId,selfId,ItemData)
	x900017_NotifyTip(sceneId,selfId,TiShiTextstring)
	x900017_RefreshItemOnNewBankPos(sceneId,selfId,nPos,ItemData[nPos]) --???????
	AddItemListToHuman(sceneId,selfId)
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
end


	
--**********************************
--thiên c½ túi g¤m toàn bµ l¤y ra
--**********************************
function x900017_PacketTemporaryTakeAllout(sceneId,selfId)
	x900017_NotifyTip(sceneId,selfId,"Nên công nång tÕm chßa m· ra!")

end

--**********************************
--thiên c½ túi g¤m tay nãi toàn bµ ð¬ vào
--**********************************
function x900017_PutInAllItem(sceneId,selfId)
if GetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK) == 1 then
return
end
SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,1)
	local ItemData = x900017_GetNewBanData(sceneId,selfId)
	local changnum = 0
	for nPos = 0,59 do
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nPos)
	local putin = 1
	local nTJJNIndex = 0 --?????
	local IsHaveItem = 0
	if  nItemId == 0 or nItemId == nil then
	putin = 0
	end
	if putin == 1 then
	if nItemId < 20000000 and nItemId > 1 then
	putin = 0
	elseif nItemId >= 50000000 and nItemId < 59000000 then
	putin = 0
	end
	end
	-- if putin == 1 then
	-- --ð£c thù ðÕo cø gia nh§p
	-- local special = 0
	-- for j = 1,getn(x900017_g_SpecialItem) do
	    -- if x900017_g_SpecialItem[j] == nItemId then
			-- special = special + 1;
			-- break
		-- end
	-- end

	-- if special > 0 then
	-- putin = 0
	-- end
	-- end
	if putin == 1 then
	for i=1,120 do
		if ItemData[i][1] == nItemId then --???????
		    IsHaveItem = 1
			nTJJNIndex = i
			if ItemData[i][2] >= 9999 then --?????5??????
			putin = 0
			end
		break
		end
		if IsHaveItem < 1 then
		    if ItemData[i][1] == 0 then
				if nTJJNIndex == 0 then
					nTJJNIndex = i
				break
				end
			end
		end
	end
	if nTJJNIndex == 0 then
			putin = 0
	end
	end
	if putin == 1 then
	local PosNum = LuaFnGetItemCountInBagPos(sceneId,selfId,nPos) --??????
	local delitem1 = LuaFnEraseItem(sceneId,selfId,nPos)
	if delitem1 < 1 then
	putin = 0
	end
	if putin == 1 then
	if IsHaveItem == 1 then --????
	    ItemData[nTJJNIndex][2] = ItemData[nTJJNIndex][2] + PosNum
	else
		ItemData[nTJJNIndex][1] = nItemId
		ItemData[nTJJNIndex][2] = ItemData[nTJJNIndex][2] + PosNum --?????+PosNum????????0
	end
	changnum = changnum + 1
	end
	end
	end
	
	if changnum > 0 then
	x900017_SetNewBanData(sceneId,selfId,ItemData)
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	x900017_BankDataToUI(sceneId,selfId,0)
	x900017_NotifyTip(sceneId,selfId,"Tay nãi v§t ph¦m, thành công t°n nh§p thiên c½ túi g¤m trung! !")
	return
	end
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	x900017_NotifyTip(sceneId,selfId,"Tay nãi v§t ph¦m, t°n nh§p thiên c½ túi g¤m th¤t bÕi! !")
end	
	
	

function x900017_ArrangePacket(sceneId,selfId,pram1)

if GetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK) == 1 then
return
end
SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,1)
    local ItemData = x900017_GetNewBanData(sceneId,selfId)	
	local NewItemData = {}
	local j = 1
	for i = 1,120 do
	    if ItemData[i][1] ~= 0 and ItemData[i][2] ~= 0 then
		    NewItemData[j] = {ItemData[i][1],ItemData[i][2]} --?????????insert??
			j = j + 1
		end
	end
	--b± sung nulls¯ li®u
	if j ~= 120 then
	    for i = j,120 do
			NewItemData[i] = {0,0}
		end
	end
	--Tái tiªn hành mµt l¥n sØa sang lÕi sau ki¬m tra
	if ItemData == NewItemData then --????????
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	    x900017_NotifyTip(sceneId,selfId,"Các hÕ thiên c½ túi g¤m không c¥n sØa sang lÕi!")
		return
	end
	
	
	x900017_SetNewBanData(sceneId,selfId,NewItemData)
	if pram1 == nil	then
		x900017_NotifyTip(sceneId,selfId,"Các hÕ thiên c½ túi g¤m sØa sang lÕi xong!")
	end
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	x900017_BankDataToUI(sceneId,selfId,0)
end

--**********************************
--b¡t m¡t nêu lên
--**********************************
function x900017_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
