
x900017_g_scriptId = 900017

function x900017_BankDataToUI(sceneId,selfId,keyid)

        if keyid == 99 then
                if sceneId ~= 0 and sceneId ~= 1 and sceneId ~= 2 and sceneId ~= 420 and sceneId ~= 186 then
                x900017_NotifyTip( sceneId, selfId,"T�y th�n kho h�ng ch� c� th� � -L�c D߽ng, T� Ch�u, ��i L�, L�u Lan, b� bu�c h� -tr߶ng c�nh s� d�ng!" )       
                return
            end
            BankBegin(sceneId, selfId,selfId)
        return
        end

	if GetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK) == 1 then
	return
	end
	if GetLevel(sceneId,selfId) < 1 then
	
	    x900017_NotifyTip(sceneId,selfId,"Ch� c� � C�p 1 l�c sau m�i c� th� �� s� d�ng thi�n c� t�i g�m!")
		return
	end
	if keyid == nil or keyid < 0 or keyid > 11 then
	
	    x900017_NotifyTip(sceneId,selfId,"Phi ph�p tham s�")
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
--thi�n c� t�i g�m � v�o
--**********************************
function x900017_PutInItem(sceneId,selfId,nPos)
	if GetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK) == 1 then
	return
	end
	if nPos == nil or nPos < 0 or nPos > 59 then
	x900017_NotifyTip(sceneId,selfId,"Tay n�i v� tr� sai l�m")
	return
	end
	local nItemId = GetItemTableIndexByIndex(sceneId, selfId, nPos)
	if  nItemId == 0 or nItemId == nil then
		return
	end
	if nItemId < 20000000 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return
	elseif nItemId >= 30008006 and nItemId < 30008008 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return
	elseif nItemId >= 30008012 and nItemId < 30008013 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return
	elseif nItemId >= 30008030 and nItemId < 30008031 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return		
	elseif nItemId >= 30008038 and nItemId < 30008039 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return
	elseif nItemId >= 30008048 and nItemId < 30008049 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return		
	elseif nItemId >= 30505700 and nItemId < 30505707 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return			
	elseif nItemId >= 30607000 and nItemId < 30607003 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return			
	elseif nItemId >= 30900045 and nItemId < 30900046 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return				
	elseif nItemId >= 31000000 and nItemId < 31000008 then
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i c�m � v�o n�n ��o c�.")
		return					
	end

	--�c th� ��o c� gia nh�p
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
	--�c th� ��o c� gia nh�p
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
			    x900017_NotifyTip(sceneId,selfId,"N�n v�t ph�m � thi�n c� t�i g�m n�i g�i s� l��ng �� t�i h�n m�c cao nh�t")
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
		x900017_NotifyTip(sceneId,selfId,"#HThi�n c� t�i g�m n�i kh�ng gian �� �y, xin s�a sang l�i sau �i th�m � v�o.")
		SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
		return
	end

	--VIP�c quy�n �u
	local PosNum = LuaFnGetItemCountInBagPos(sceneId,selfId,nPos) --??????
	local delitem1 = LuaFnEraseItem(sceneId,selfId,nPos)
	if delitem1 < 1 then
		x900017_NotifyTip( sceneId, selfId, "V�t ph�m di nh�p thi�n c� t�i g�m trong qu� tr�nh xu�t hi�n sai l�m! Xin li�n h� ��a v�o ho�t �ng �o�n �i �n gi�i quy�t th� v�n �!" )
		SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
		return
	end
	if IsHaveItem == 1 then --????
	    ItemData[nTJJNIndex][2] = ItemData[nTJJNIndex][2] + PosNum
	else
		ItemData[nTJJNIndex][1] = nItemId
		ItemData[nTJJNIndex][2] = ItemData[nTJJNIndex][2] + PosNum --?????+PosNum????????0
	end
	local TiShiTextstring = "Th�nh c�ng t�n nh�p, [#{_ITEM"..nItemId.."}]"..PosNum.."C�i"
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
--thi�n c� t�i g�m l�y ra
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
		--n�i n�y s�a �i ph߽ng �n, duy nh�t l�y ra t�t c� Kh�ng c�ch n�i dung
		BeginAddItem(sceneId)
		AddItem( sceneId,ItemID, lishioutnum)
		if EndAddItem(sceneId,selfId) <= 0 then
			SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
			return
		end

	else
		
		x900017_NotifyTip(sceneId,selfId,"Thi�n c� t�i g�m s� li�u d� th߶ng, xin mau ch�ng li�n h� kh�ch ph�c gi�i quy�t v�n �!")
		SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
		return
	end
	local TiShiTextstring = "Th�nh c�ng l�y ra, [#{_ITEM"..ItemID.."}]"..lishioutnum.."C�i"
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
--thi�n c� t�i g�m to�n b� l�y ra
--**********************************
function x900017_PacketTemporaryTakeAllout(sceneId,selfId)
	x900017_NotifyTip(sceneId,selfId,"N�n c�ng n�ng t�m ch�a m� ra!")

end

--**********************************
--thi�n c� t�i g�m tay n�i to�n b� � v�o
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
	-- --�c th� ��o c� gia nh�p
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
	x900017_NotifyTip(sceneId,selfId,"Tay n�i v�t ph�m, th�nh c�ng t�n nh�p thi�n c� t�i g�m trung! !")
	return
	end
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	x900017_NotifyTip(sceneId,selfId,"Tay n�i v�t ph�m, t�n nh�p thi�n c� t�i g�m th�t b�i! !")
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
	--b� sung nulls� li�u
	if j ~= 120 then
	    for i = j,120 do
			NewItemData[i] = {0,0}
		end
	end
	--T�i ti�n h�nh m�t l�n s�a sang l�i sau ki�m tra
	if ItemData == NewItemData then --????????
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	    x900017_NotifyTip(sceneId,selfId,"C�c h� thi�n c� t�i g�m kh�ng c�n s�a sang l�i!")
		return
	end
	
	
	x900017_SetNewBanData(sceneId,selfId,NewItemData)
	if pram1 == nil	then
		x900017_NotifyTip(sceneId,selfId,"C�c h� thi�n c� t�i g�m s�a sang l�i xong!")
	end
	SetMissionFlag(sceneId,selfId,MF_NEW_PACKBANK,0)
	x900017_BankDataToUI(sceneId,selfId,0)
end

--**********************************
--b�t m�t n�u l�n
--**********************************
function x900017_NotifyTip( sceneId, selfId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
