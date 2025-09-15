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
	--broadMsgByChatPipe = "%s #Ytìm ðªn #GÐô ÐÕi Säng (155,166)#Y · #GÐÕi Lý #Ycu¯i cùng ðã kích hoÕt thành công giftcode #GSUNING WINNER#Y.",
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
	broadMsgByChatPipe = "%s #Ytìm ðªn #GÐô ÐÕi Säng (155,166)#Y · #GÐÕi Lý #Ycu¯i cùng ðã kích hoÕt thành công giftcode #GSUNING GO FINAL#Y.",
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
	broadMsgByChatPipe = "%s #Ytìm ðªn #GÐô ÐÕi Säng (155,166)#Y · #GÐÕi Lý #Ycu¯i cùng ðã kích hoÕt thành công giftcode #GSUNING WINNER#Y.",
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
	broadMsgByChatPipe = "%s #Ytìm ðªn #GÐô ÐÕi Säng (155,166)#Y · #GÐÕi Lý #Ycu¯i cùng ðã kích hoÕt thành công #GGiftCode Tháng 10#Y.",
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
	broadMsgByChatPipe = "%s #Ytìm ðªn #GÐô ÐÕi Säng (155,166)#Y · #GÐÕi Lý #Ycu¯i cùng ðã kích hoÕt thành công #GGiftCode TLBB Winner#Y.",
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
		x999998_NotifyFailBox(sceneId, selfId, targetId, "    Mã các hÕ v×a nh§p vào không chính xác, vui lòng thØ lÕi ho£c liên h® Chính Khí Ðß¶ng nªu cäm th¤y ðây là mµt l²i")
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
			x999998_NotifyFailBox(sceneId, selfId, targetId, "    R¤t tiªc ph¥n thß·ng GiftCode này chßa ðßþc công b¯, xin vui lòng liên h® Chính Khí Ðß¶ng / Fanpage")
			return
		end
	end

	local redunMessage = '    Các hÕ ðã nh§n ph¥n thß·ng Gift Code r°i, không th¬ nh§n lÕi.'
	local guid = LuaFnObjId2Guid(sceneId, selfId)
	local user_card_dir = x999998_g_GiftCode_Dir..'/Users/'..guid
	local cardLimitType = awardInfo.limitType
	if cardLimitType == 0 then -- Times
	elseif cardLimitType == 1 then -- Day
		user_card_dir = user_card_dir..'-'..GetDayTime()
		-- Fix this code
		redunMessage = '    Hôm nay các hÕ ðã nh§n ph¥n thß·ng loÕi Gift Code này r°i, vui lòng thØ lÕi vào hôm sau.'
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
		x999998_NotifyFailBox( sceneId, selfId, targetId, "    », ðÆng c¤p cüa ngß½i chßa ðü, ðþi ð¬ ðÆng c¤p ðÕt t¾i " .. awardInfo.need.level .. " c¤p lÕi ðªn tìm ta" )
		return
	end

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < awardInfo.need.propBagSpace then
		x999998_NotifyFailBox( sceneId, selfId, targetId, "    Thanh ðÕo cø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi " .. awardInfo.need.propBagSpace .. " Ô" )
		return
	end

	if LuaFnGetMaterialBagSpace( sceneId, selfId ) < awardInfo.need.matBagSpace then
		x999998_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nguyên li®u ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi " .. awardInfo.need.matBagSpace .. " Ô" )
		return
	end

	if LuaFnGetTaskItemBagSpace( sceneId, selfId ) < awardInfo.need.taskBagSpace then
		x999998_NotifyFailBox( sceneId, selfId, targetId, "    Thanh nhi®m vø ba lô cüa ngß½i ít nh¤t c¥n phäi ð¬ lÕi " .. awardInfo.need.taskBagSpace .. " Ô" )
		return
	end

	if awardInfo.FLAG_MF then
		if GetMissionFlag( sceneId, selfId, awardInfo.FLAG_MF ) == 1 then
			ZengDian(sceneId,selfId,targetId,1,23520)
			x002084_NotifyFailBox( sceneId, selfId, targetId, "    Các hÕ ðã kích hoÕt lÕi Thë Tài Phú, ðã nh§n ðßþc ði¬m t£ng!" )
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
		awardInfo.recvMsg = "    M¤y món ð° trang sÑc · ðây, lßu lÕc trên giang h° ít nhi«u ð«u c¥n ðªn ngoài ra chõ ti«n này ð«u t£ng cho các hÕ, chúc các hÕ vui vë trong trò ch½i Thiên Long Bát Bµ"
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
	AddNumText(sceneId,x999998_g_scriptId,"#cFF0000Ta mu¯n Kích hoÕt GIFTCODE", 7, 0)
	--AddNumText(sceneId,x999998_g_scriptId,"TÕi hÕ mu¯n sØ døng G", 2, 0)
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