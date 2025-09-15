--Ç®×¯½Å±¾

--½Å±¾ºÅ
x000076_g_scriptId = 000076

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIDÁĞ±í
--g_eventList={211105,211106,211108}	

--¹ºÂò4cái´æ´¢Ïä»¨·ÑtoÕ ğµ Ç®
--Ä¬ÈÏÓĞ20cái¸ñ×Ó,´ËÊ±¹ºÂòÏÂmµt cáiC¥n »¨·Ñ50000(½»×Ó+½ğ±Ò)
x000076_g_Box	 = {{Capacity=20,Cost=50000},
			{Capacity=40,Cost=100000},
			--{Capacity=60,Cost=200000},
			--{Capacity=80,Cost=400000}
	    }

-- Íæ¼ÒÉíÉÏÄ¬ÈÏtoÕ ğµ ½»×ÓºÍ½ğ±ÒÊıÄ¿    
x000076_g_MoneyJZ = 0
x000076_g_Money = 0

--npc ği¬m»÷Ä¬ÈÏº¯Êı,ÕâÀïÓÃÀ´ÏÔÊ¾¶Ô»°ÎÄ×ÖºÍ¹¦ÄÜ°´Å¥
function x000076_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

		--Ìí¼ÓM· ngân kh¯½çÃætoÕ ğµ °´Å¥
		AddNumText(sceneId, 7, "M· ngân kh¯",5,-1)
		-- ği¬mµ½µ±Ç°ÒøĞĞtoÕ ğµ ´æ´¢¸ñÊı
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--²éÕÒ´æ´¢ÏäĞòºÅ
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId,targetId,CurrentRentIndex )
		if BoxNum ~= 0 then
			AddNumText(sceneId, x000076_g_Box[BoxNum].Capacity, "Mua rß½ng ğñng ğ° m¾i", 5, -1)
		end

		--M· Bäo hi¬m sß½ng
		AddNumText(sceneId, 101, "M· Bäo hi¬m sß½ng",5,-1)
		AddNumText(sceneId, 102, "Liên quan Bäo hi¬m sß½ng",11,3)
		AddNumText( sceneId, x000076_g_scriptId, "#{JZBZ_081031_02}", 11, 4)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x000076_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == -1 then
			if LuaFnGetLevel( sceneId, selfId ) < 11 then
				x000076_MsgBox( sceneId, selfId, "ĞÆng c¤p sØ døng kho c¥n c¤p 11, sau khi ğÕt ğßşc, ngß½i hãy t¾i tìm ta" )
				return
			end
	elseif GetNumText() == 4 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{JZBZ_081031_01}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--M· ngân kh¯
	if eventId == 7 then
		BankBegin(sceneId, selfId, targetId)	
	--Mua rß½ng ğñng ğ° m¾i
	elseif eventId == 8 then
		-- ği¬mµ½µ±Ç°ÒøĞĞtoÕ ğµ ´æ´¢¸ñÊı
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--²éÕÒ´æ´¢ÏäĞòºÅ
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId, targetId, CurrentRentIndex )
         
    --  ği¬mµ½½ğ±ÒºÍ½»×ÓtoÕ ğµ ÊıÄ¿
    x000076_g_MoneyJZ = GetMoneyJZ ( sceneId, selfId )
    x000076_g_Money = GetMoney ( sceneId, selfId )
		
		-- Èç¹û½ğÇ®ÊıÄ¿³ä×ã
		if (x000076_g_MoneyJZ + x000076_g_Money) >= x000076_g_Box[BoxNum].Cost then
			-- Ê¹ÓÃ´øÓÅÏÈc¤ptoÕ ğµ ½ğÇ®ÏûºÄº¯Êı
			LuaFnCostMoneyWithPriority (sceneId,selfId,x000076_g_Box[BoxNum].Cost)
			
			-- Ôö¼Ó´æ´¢Ïä²¢ÌáÊ¾
			x000076_EnableBankBox( sceneId, selfId, targetId, BoxNum )
			-- M· ngân kh¯½çÃæ
  		BankBegin(sceneId, selfId, targetId)
  	
		else
			x000076_MsgBox( sceneId, selfId, "Các hÕ không ğü ngân lßşng"  )
		end

	elseif eventId == 101 then
		BankOpt(sceneId, selfId, targetId, "opensafebox")

	elseif eventId == 102 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{YHBXX_20071220_17}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	else
		-- ği¬mµ½µ±Ç°ÒøĞĞtoÕ ğµ ´æ´¢¸ñÊı
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--²éÕÒ´æ´¢ÏäĞòºÅ
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId,targetId,CurrentRentIndex )
		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x000076_g_scriptId)
			UICommand_AddInt(sceneId,targetId)
			UICommand_AddInt(sceneId,8)
			UICommand_AddString(sceneId,"OnEventRequest")
			UICommand_AddString(sceneId,"Nªu mu¯n mua rß½ng chÑa ğ° m¾i, phäi t¯t #{_EXCHG"..x000076_g_Box[BoxNum].Cost.."} Các hÕ có ğ°ng ı mua không?")			
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)		--ÒøĞĞÕâÀïtoÕ ğµ Ñ¯ÎÊ´°¿ÚÕâÀï±ØĞëÌîĞ´24
	end

end

--×Ô¶¨Òåº¯Êı,¸ø³öĞòºÅ,´ò¿ªµÚ Num+1 ĞòºÅcái´æ´¢Ïä
function x000076_EnableBankBox( sceneId, selfId, targetId, Num )
	
	-- C¥n »¨·Ñ½ğÇ®toÕ ğµ ÏÔÊ¾
	x000076_MoneyChange ( sceneId, selfId, targetId, x000076_g_Box[Num].Cost, x000076_g_Money, x000076_g_MoneyJZ )

	-- ¼¤»î´¢ÎïÏä
	EnableBankRentIndex(sceneId, selfId, Num+1)

end

--×Ô¶¨Òåº¯Êı,¸ø³öÈİÁ¿,Tr· v«ĞòºÅ
function x000076_FindBoxNum( sceneId, selfId,targetId,Capacity )
	-- ği¬mµ½´¢Îï¹ñĞòºÅ
	for i, findBox in x000076_g_Box do
		if findBox.Capacity == Capacity then
			return i
		end
	end

	return 0
end

-- ´òÓ¡¹ºÂò´¢ÎïÏäºótoÕ ğµ ÆÁÄ»ÌáÊ¾ĞÅÏ¢
-- ÕâÀïtoÕ ğµ Ç°ÌáÌõ¼şĞúng: Money + MoneyJZ >= Cost
-- Èë¿Ú²ÎÊı: 	Cost		--	¹ºÂò´¢ÎïÏätoÕ ğµ ¼Û¸ñ
--						Money		--	¹ºÂò´¢ÎïÏäÇ°Íæ¼ÒÓµÓĞtoÕ ğµ ½ğÇ®ÊıÄ¿
--						MoneyJZ	--	¹ºÂò´¢ÎïÏäÇ°Íæ¼ÒÓµÓĞtoÕ ğµ ½»×ÓÊıÄ¿
function x000076_MoneyChange ( sceneId, selfId, targetId, Cost, Money, MoneyJZ )

	-- ¹ºÂò´¢ÎïÏätoÕ ğµ »¨·Ñ   
  local nCost = Cost
  local nMoney = 0
  local nMoneyJZ = 0
  
	-- ½»×ÓÊıÄ¿³ä×ã
	if (MoneyJZ >= Cost) then
		nMoneyJZ = Cost
		nMoney = 0
		
		x000076_MsgBox( sceneId, selfId, "Các hÕ ğã chi #{_EXCHG"..nMoneyJZ.."} và nh§n ğßşc mµt rß½ng ğñng ğ° m¾i" )
		
	-- ½»×Ó²»×ã,µ«Ğúng ½»×Ó+½ğ±Ò ÊıÄ¿³ä×ã
	elseif (MoneyJZ > 0) and (Money > 0) and (MoneyJZ + Money) >= Cost then
		nMoneyJZ = MoneyJZ
		nMoney = Cost - MoneyJZ
		
		x000076_MsgBox ( sceneId, selfId, "Các hÕ ğã chi #{_EXCHG"..nMoneyJZ.."}" )
		x000076_MsgBox ( sceneId, selfId, "Các hÕ ğã chi #{_MONEY"..nMoney.."}"  )
		x000076_MsgBox ( sceneId, selfId, "BÕn nh§n ğßşc mµt rß½ng ğñng ğ° m¾i" )
		
	-- Ã»ÓĞ½»×Ó,Ö»ÓĞ½ğ±Ò
	elseif (MoneyJZ == 0) and (Money >= Cost) then
		nMoneyJZ = 0
		nMoney = Cost
		
		x000076_MsgBox ( sceneId, selfId, "Các hÕ ğã chi #{_MONEY"..nMoney.."} và nh§n ğßşc mµt rß½ng ğñng ğ° m¾i" )
		
	else
		nMoneyJZ = 0
		nMoney = 0
		
		-- Í¼±ê×ªÒå·û: 
		-- ½ğ½»×Ó: 	#-14
		-- Òø½»×Ó: 	#-15
		-- Í­½»×Ó: 	#-16
		-- ½ğ±Ò: 		#-02
		-- Òø±Ò: 		#-03
		-- Í­±Ò: 		#-04
		x000076_MsgBox ( sceneId, selfId, nMoneyJZ.."#-16,"..nMoney.."#-04" )
 
	end
		
	return
end

--×Ô¶¨Òåº¯Êı,ÆÁÄ»ÏûÏ¢ÌáÊ¾(Ö»ÄÜÏÔÊ¾mµt ĞĞ,²»ÄÜÓÃ#r»»ĞĞ,ÈçĞèÏÔÊ¾¶àĞĞĞè·Ö´Îµ÷ÓÃ.)
function x000076_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
