--------------------
-- Giftcode
-- Author: Dark.Hades
--------------------

x999998_g_scriptId = GIFTCODE_SCRIPT_ID

x999998_g_GiftCode_Dir = './Var/GiftCode'

-- GiftCode base: ...xx....xxx...xx.
--x999998_g_GiftCode_0000 = 'THIENLONGHUBOPENSV' -- Toan server
x999998_g_GiftCode_0000 = 'WINNERV6DRAMAFUNNY' -- Toan server
x999998_g_GiftCode_2010 = 'WINNERV6FREEGIFT10' -- 
x999998_g_GiftCode_SOFM = 'SUNINGSOFMGIFTCODE' -- 
x999998_g_GiftCode_SN01 = 'SUNINGSOFMGO2FINAL' -- 
x999998_g_GiftCode_RECV = 'WINNERV6RECOVERY01' -- 

-- List num
x999998_g_AwardList = {}

x999998_g_AwardList[x999998_g_GiftCode_RECV] = {
	itemAward = {
		randomItemList = {},
		itemList = {
			{ id = 33024819, bind = 1, quantity = 1, },
			{ id = 33024819, bind = 1, quantity = 1, },
			{ id = 30503016, bind = 1, quantity = 1, },
			{ id = 30503016, bind = 1, quantity = 1, },
		},
	},
	money = {
		-- Cho gia tri Max = 0 neu khong dung random

		realMin = 100000, -- Vang khong khoa min
		realMax = 0, -- Vang khong khoa max

		jzMin = 0,--1000000, -- Vang khoa Min
		jzMax = 0, -- Vang khoa Max
	},
	need = {
		level = 20, -- -1:0 can
		propBagSpace = 4, -- Dao cu
		matBagSpace = 0, -- Nguyen Lieu
		taskBagSpace = 0, -- Nhiem vu
	},
	recvMsg = '',
	--broadMsgByChatPipe = "%s #Yt�m �n #G�� ��i S�ng (155,166)#Y � #G��i L� #Ycu�i c�ng �� k�ch ho�t th�nh c�ng giftcode #GSUNING WINNER#Y.",
	deleteAfterReceived = 1,
	limitType = 0, -- 1 code / Times: 0 | Day: 1
}

x999998_g_AwardList[x999998_g_GiftCode_SN01] = {
	itemAward = {
		randomItemList = {},
		itemList = {
			{ id = 33028479, bind = 1, quantity = 1, },
			{ id = 33028549, bind = 1, quantity = 1, },
			{ id = 30503016, bind = 1, quantity = 1, },
			{ id = 30503016, bind = 1, quantity = 1, },
			
			{ id = 30900130, bind = 1, quantity = 1, },
			{ id = 30900045, bind = 1, quantity = 1, },
			{ id = 30900014, bind = 1, quantity = 1, },
		},
	},
	money = {
		-- Cho gia tri Max = 0 neu khong dung random

		realMin = 0, -- Vang khong khoa min
		realMax = 0, -- Vang khong khoa max

		jzMin = 0,--1000000, -- Vang khoa Min
		jzMax = 0, -- Vang khoa Max
	},
	need = {
		level = 20, -- -1:0 can
		propBagSpace = 7, -- Dao cu
		matBagSpace = 0, -- Nguyen Lieu
		taskBagSpace = 0, -- Nhiem vu
	},
	recvMsg = '',
	broadMsgByChatPipe = "%s #Yt�m �n #G�� ��i S�ng (155,166)#Y � #G��i L� #Ycu�i c�ng �� k�ch ho�t th�nh c�ng giftcode #GSUNING GO FINAL#Y.",
	deleteAfterReceived = 0,
	limitType = 0, -- 1 code / Times: 0 | Day: 1
}

x999998_g_AwardList[x999998_g_GiftCode_SOFM] = {
	itemAward = {
		randomItemList = {},
		itemList = {
			{ id = 33027359, bind = 1, quantity = 1, },
			{ id = 30900077, bind = 1, quantity = 1, },
			{ id = 30503016, bind = 1, quantity = 1, },
			{ id = 30900045, bind = 1, quantity = 1, },
			{ id = 30900014, bind = 1, quantity = 1, },
		},
	},
	money = {
		-- Cho gia tri Max = 0 neu khong dung random

		realMin = 0, -- Vang khong khoa min
		realMax = 0, -- Vang khong khoa max

		jzMin = 0,--1000000, -- Vang khoa Min
		jzMax = 0, -- Vang khoa Max
	},
	need = {
		level = 20, -- -1:0 can
		propBagSpace = 5, -- Dao cu
		matBagSpace = 0, -- Nguyen Lieu
		taskBagSpace = 0, -- Nhiem vu
	},
	recvMsg = '',
	broadMsgByChatPipe = "%s #Yt�m �n #G�� ��i S�ng (155,166)#Y � #G��i L� #Ycu�i c�ng �� k�ch ho�t th�nh c�ng giftcode #GSUNING WINNER#Y.",
	deleteAfterReceived = 0,
	limitType = 0, -- 1 code / Times: 0 | Day: 1
}

x999998_g_AwardList[x999998_g_GiftCode_2010] = {
	itemAward = {
		randomItemList = {},
		itemList = {
			
			{ id = 30008014, bind = 1, quantity = 3, },
			{ id = 30900077, bind = 1, quantity = 1, },
			{ id = 33029389, bind = 1, quantity = 1, },
		},
	},
	money = {
		-- Cho gia tri Max = 0 neu khong dung random

		realMin = 0, -- Vang khong khoa min
		realMax = 0, -- Vang khong khoa max

		jzMin = 0,--1000000, -- Vang khoa Min
		jzMax = 0, -- Vang khoa Max
	},
	need = {
		level = 20, -- -1:0 can
		propBagSpace = 5, -- Dao cu
		matBagSpace = 1, -- Nguyen Lieu
		taskBagSpace = 0, -- Nhiem vu
	},
	recvMsg = '',
	broadMsgByChatPipe = "%s #Yt�m �n #G�� ��i S�ng (155,166)#Y � #G��i L� #Ycu�i c�ng �� k�ch ho�t th�nh c�ng #GGiftCode Th�ng 10#Y.",
	deleteAfterReceived = 0,
	limitType = 0, -- 1 code / Times: 0 | Day: 1
}

x999998_g_AwardList[x999998_g_GiftCode_0000] = {
	itemAward = {
		randomItemList = {},
		itemList = {
			
			{ id = 30008014, bind = 1, quantity = 3, },
			{ id = 30900077, bind = 1, quantity = 1, },
			{ id = 33007789, bind = 1, quantity = 1, },
		},
	},
	money = {
		-- Cho gia tri Max = 0 neu khong dung random

		realMin = 0, -- Vang khong khoa min
		realMax = 0, -- Vang khong khoa max

		jzMin = 0,--1000000, -- Vang khoa Min
		jzMax = 0, -- Vang khoa Max
	},
	need = {
		level = 20, -- -1:0 can
		propBagSpace = 5, -- Dao cu
		matBagSpace = 1, -- Nguyen Lieu
		taskBagSpace = 0, -- Nhiem vu
	},
	recvMsg = '',
	broadMsgByChatPipe = "%s #Yt�m �n #G�� ��i S�ng (155,166)#Y � #G��i L� #Ycu�i c�ng �� k�ch ho�t th�nh c�ng #GGiftCode TLBB Winner#Y.",
	deleteAfterReceived = 0,
	limitType = 0, -- 1 code / Times: 0 | Day: 1
}

function x999998_OnDefaultEvent( sceneId, selfId, targetId, num, targetScriptID )
	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 20161231 )
end

function x999998_CheckCard(sceneId, selfId, card, op)
	local targetId = -1
	local of = readfrom(x999998_g_GiftCode_Dir..'/GiftCodes/'..card)
	local ret = 0
	if of then
		closefile(of)
		if (x999998_GetAward( sceneId, selfId, targetId, card ) == 1) then
			-- Logs
			local log = appendto("Log/GiftCode_"..date("%Y-%m-%d")..".log")
			if log then
				local cd = " ("..date("T0=%Y-%m-%d_%X T1=")..tostring(clock())..")"
				local guid = LuaFnObjId2Guid(sceneId, selfId)
				write(log, tostring(guid)..","..tostring(card)..cd.."\n")
				closefile(log)
			end
			ret = 1
		end
	else
		x999998_NotifyFailBox(sceneId, selfId, targetId, "    M� c�c h� v�a nh�p v�o kh�ng ch�nh x�c, vui l�ng th� l�i ho�c li�n h� Ch�nh Kh� �߶ng n�u c�m th�y ��y l� m�t l�i")
	end
	return ret
end

function x999998_GetAward(sceneId, selfId, targetId, card)
	local awardInfo = x999998_g_AwardList[card]
	local pattern
	if not awardInfo then
		for i,_ in x999998_g_AwardList do
			if (strfind(card, i)) then
				awardInfo = x999998_g_AwardList[i]
				pattern = i
				break
			end
		end
		if not awardInfo then
			x999998_NotifyFailBox(sceneId, selfId, targetId, "    R�t ti�c ph�n th߷ng GiftCode n�y ch�a ���c c�ng b�, xin vui l�ng li�n h� Ch�nh Kh� �߶ng / Fanpage")
			return
		end
	end

	local redunMessage = '    C�c h� �� nh�n ph�n th߷ng Gift Code r�i, kh�ng th� nh�n l�i.'
	local guid = LuaFnObjId2Guid(sceneId, selfId)
	local user_card_dir = x999998_g_GiftCode_Dir..'/Users/'..guid
	local cardLimitType = awardInfo.limitType
	if cardLimitType == 0 then -- Times
	elseif cardLimitType == 1 then -- Day
		user_card_dir = user_card_dir..'-'..GetDayTime()
		-- Fix this code
		redunMessage = '    H�m nay c�c h� �� nh�n ph�n th߷ng lo�i Gift Code n�y r�i, vui l�ng th� l�i v�o h�m sau.'
	end

	-- Read GiftCode
	local isRedun = 0
	local of = openfile(user_card_dir, 'r')
	if of ~= nil then
		while 1 do
			local code = read(of, '*l')
			if code == nil then break end

			-- Must check
			if code == card then
				isRedun = 1
				break
			end

			-- Check first byte
			if pattern and strfind(code, pattern) then
				isRedun = 1
				break
			end
		end

		closefile(of)
	end

	if isRedun == 1 then
		x999998_NotifyFailBox( sceneId, selfId, targetId, redunMessage)
		return
	end

	if GetLevel( sceneId, selfId ) < awardInfo.need.level then
		x999998_NotifyFailBox( sceneId, selfId, targetId, "    �, ��ng c�p c�a ng߽i ch�a ��, ��i � ��ng c�p ��t t�i " .. awardInfo.need.level .. " c�p l�i �n t�m ta" )
		return
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awardInfo.need.propBagSpace then
		x999998_NotifyFailBox( sceneId, selfId, targetId, "    Thanh ��o c� ba l� c�a ng߽i �t nh�t c�n ph�i � l�i " .. awardInfo.need.propBagSpace .. " �" )
		return
	end

	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awardInfo.need.matBagSpace then
		x999998_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nguy�n li�u ba l� c�a ng߽i �t nh�t c�n ph�i � l�i " .. awardInfo.need.matBagSpace .. " �" )
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < awardInfo.need.taskBagSpace then
		x999998_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nhi�m v� ba l� c�a ng߽i �t nh�t c�n ph�i � l�i " .. awardInfo.need.taskBagSpace .. " �" )
		return
	end

	if awardInfo.FLAG_MF then
		if GetMissionFlag( sceneId, selfId, awardInfo.FLAG_MF ) == 1 then
			ZengDian(sceneId,selfId,targetId,1,23520)
			x002084_NotifyFailBox( sceneId, selfId, targetId, "    C�c h� �� k�ch ho�t l�i Th� T�i Ph�, �� nh�n ���c �i�m t�ng!" )
			--return
		else
			SetMissionFlag( sceneId, selfId, awardInfo.FLAG_MF, 1 )
		end
	end

	-- Receive
	local itemAward = awardInfo.itemAward
	local item, bagIndex
	for i, item in itemAward.itemList do
		for c = 1, item.quantity, 1 do
			bagIndex = TryRecieveItem(sceneId, selfId, item.id, 9)
			if item.bind == 1 then
				LuaFnItemBind(sceneId, selfId, bagIndex)
			end
		end
	end

	local randomItemCount = getn(itemAward.randomItemList)
	if randomItemCount > 0 then
		local randN = random(1, randomItemCount)
		local item = itemAward.randomItemList[randN]
		for c = 1, item.quantity, 1 do
			bagIndex = TryRecieveItem( sceneId, selfId, item.id, 9 )
			if item.bind == 1 then
				LuaFnItemBind(sceneId, selfId, bagIndex)
			end
		end
	end

	-- Money
	local awMoney = awardInfo.money
	if awMoney.realMin > 0 then
		local recvMoney = awMoney.realMin
		if awMoney.realMax > 0 and awMoney.realMax > awMoney.realMin then
			recvJZ = random(awMoney.realMin, awMoney.realMax)
		end
		AddMoney( sceneId, selfId, recvMoney )
	end
	-- JZMoney
	if awMoney.jzMin > 0 then
		local recvMoney = awMoney.jzMin
		if awMoney.jzMax > 0 and awMoney.jzMax > awMoney.jzMin then
			recvMoney = random(awMoney.jzMin, awMoney.jzMax)
		end
		AddMoneyJZ( sceneId, selfId, recvMoney )
	end

	if not awardInfo.recvMsg or awardInfo.recvMsg == nil or awardInfo.recvMsg == '' then
		awardInfo.recvMsg = "    M�y m�n � trang s�c � ��y, l�u l�c tr�n giang h� �t nhi�u �u c�n �n ngo�i ra ch� ti�n n�y �u t�ng cho c�c h�, ch�c c�c h� vui v� trong tr� ch�i Thi�n Long B�t B�"
	end

	x999998_NotifyFailBox( sceneId, selfId, targetId, awardInfo.recvMsg )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 18, 0 )
	if awardInfo.broadMsgByChatPipe then
		local name = GetName( sceneId, selfId )
		local message = format(awardInfo.broadMsgByChatPipe, name);
		BroadMsgByChatPipe( sceneId, selfId, message, 4 )
	end

	if awardInfo.deleteAfterReceived == 1 then
		remove(x999998_g_GiftCode_Dir..'/GiftCodes/'..card)
	end
	local acceptCard = appendto(user_card_dir)
	if acceptCard then
		write(acceptCard, tostring(card)..'\n')
		closefile(acceptCard)
	end

	return 1
end

function x999998_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId,x999998_g_scriptId,"#cFF0000Ta mu�n K�ch ho�t GIFTCODE", 7, 0)
	--AddNumText(sceneId,x999998_g_scriptId,"T�i h� mu�n s� d�ng G", 2, 0)
end

function x999998_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
	AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

function x999998_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
	AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x999998_CreateGift(sceneId)
	
	-- LuaFnAddGlobalCountNews(sceneId,"Call OK")
	
	local dir = './Var/GiftCode/Creator/'
	local str = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

	local rand = 0
	local m_01_03 = "xxx"
	rand = random(1,62)
	m_01_03 = strsub(str,rand,rand)
	rand = random(1,62)
	m_01_03 = m_01_03..strsub(str,rand,rand)
	rand = random(1,62)
	m_01_03 = m_01_03..strsub(str,rand,rand)
	
	local m_06_09 = "xxxx"
	rand = random(1,62)
	m_06_09 = strsub(str,rand,rand)
	rand = random(1,62)
	m_06_09 = m_06_09..strsub(str,rand,rand)
	rand = random(1,62)
	m_06_09 = m_06_09..strsub(str,rand,rand)
	rand = random(1,62)
	m_06_09 = m_06_09..strsub(str,rand,rand)

	local m_13_15 = "xxx"
	rand = random(1,62)
	m_13_15 = strsub(str,rand,rand)
	rand = random(1,62)
	m_13_15 = m_13_15..strsub(str,rand,rand)
	rand = random(1,62)
	m_13_15 = m_13_15..strsub(str,rand,rand)

	local m_18_18 = "x"
	rand = random(1,62)
	m_18_18 = strsub(str,rand,rand)
	
		--GiftCode base: ...xx....xxx...xx.
	local GiftCode = m_01_03.."mn"..m_06_09.."tlh"..m_13_15.."km"..m_18_18;
	
	local of = readfrom(dir..GiftCode)
	if of then
		--GiftCode Da Ton Tai
	else
		local Gift = appendto(dir..GiftCode)
		if Gift then
			local handle = openfile(dir.."0000_LIST.txt", "a+")
			if nil ~= handle then
				write(handle,GiftCode.."\n")
				closefile(handle)
			end
		end
	end
end