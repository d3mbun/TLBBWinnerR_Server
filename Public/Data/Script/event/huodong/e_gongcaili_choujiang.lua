--»î¶¯
--³é½±
--LuaFnGetAvailableItemCount(sceneId, selfId, itemId)


x808065_g_ScriptId = 808065;

--x808065_g_StartDayTime = 7285; --10.12
x808065_g_StartDayTime = 7304; --11.01
x808065_g_EndDayTime = 7325;   --11.22

x808065_g_ItemId   =
{
	["choujiang1"] = 40004431,
	["choujiang2"] = 30900006,
	["choujiangtudi"] = 40004433,
	["choujiangshifu"] = 40004432,
}

x808065_g_Key				=
{
	["choujiang1"]	=	101,			--³é½±»î¶¯1
	["choujiang2"]	= 102,			--³é½±»î¶¯2
	["choujiang3"]	= 103,			--³é½±»î¶¯3
	["choujianghuodong"]	= 104,			--³é½±Ë ği¬m÷
	["choujiangshuoming1"] = 105,
	["choujiangshuoming2"] = 106,
	["choujiangshuoming3"] = 107,
}

function x808065_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x808065_CheckRightTime();
	if 1 ~= isTime then
	
		return
		
	end
	
	local NumText = GetNumText();	
	local MyLevel = GetLevel( sceneId, selfId );
	if(NumText == x808065_g_Key["choujiang1"]) then
	
		if(MyLevel < 20) then
		
			x808065_Printf( sceneId,  selfId, targetId , ""..GetName( sceneId, selfId )..", ngß½i g¥n ğây · trên giang h° có chút vang dµi, nhßng cách tân binh ğoÕt bäo tiêu chu¦n còn có mµt chút khoäng cách. Ngß½i vçn ğşi ğªn #Gc¤p 20#W lÕi ğªn tìm ta!");
			
		elseif(MyLevel >=20 and MyLevel < 40) then
		
			local Num = LuaFnGetAvailableItemCount(sceneId, selfId, x808065_g_ItemId["choujiang1"]);
			if(Num > 0) then
			
				x808065_Printf( sceneId, selfId, targetId,  ""..GetName( sceneId, selfId )..", cüa ngß½i xác thñc th§t là trên giang h° không th¬ bö qua  mµt c² tân thª lñc. Nhßng là ngß½i không lâu phía trß¾c, ğã mu¯n · ta n½i này tr×u quá khen lÕp! Ngß½i xem, ngß½i trên ngß¶i còn mang theo vé x± s¯ ğâu!");
				
			else
				
				if( x808065_AddJiangjuan( sceneId, selfId, x808065_g_ItemId["choujiang1"]) == 1) then
				
					x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..", ngß½i ğã mu¯n thành công tiªn hành r°i lãnh thß·ng, tên cüa ngß½i ğã ğßşc xªp vào danh sách lãnh thß·ng. Thïnh kiên nhçn ch¶ ğşi thông tri, cø th¬ hoÕt ğµng nµi dung thïnh tìm ğ÷c trên trang web Thiên Long bát bµ.");
					
				end
			
			end
			
		end
	
	elseif(NumText == x808065_g_Key["choujiang2"] ) then
		
		if(MyLevel < 40) then
		
			x808065_Printf(sceneId, selfId, targetId, ""..GetName( sceneId, selfId )..", ngß½i g¥n ğây · trên giang h° có chút vang dµi, nhßng chï có trên giang h° t¯i höa tân thª lñc tài nång lînh siêu thích ğÕi l­ bao ğâu, ngß½i vçn phäi ğÕt t¾i #Gc¤p 40#W lÕi ğªn lînh ğÕi l­ bao ği!");
			
		elseif(MyLevel >=40 and MyLevel <=45) then
			
			if( GetMissionFlag( sceneId, selfId, MF_CHOUJIANGDALIBAO01 ) == 1) then
			--ÒÑ¾­Áì¹ı
				x808065_Printf(sceneId, selfId, targetId, ""..GetName( sceneId, selfId )..", cüa ngß½i xác thñc th§t là trên giang h° mµt thª lñc m¾i. Nhßng là ngß½i không lâu phía trß¾c, ğã mu¯n · ta n½i này lînh ğÕi l­ bao!");
			
			elseif( GetMissionFlag( sceneId, selfId, MF_CHOUJIANGDALIBAO01 ) == 0) then
			
				if( x808065_PutIntoPack( sceneId, selfId, targetId, x808065_g_ItemId["choujiang2"], QUALITY_MUST_BE_CHANGE, 1 , 1) == 1) then
				
					SetMissionFlag(sceneId, selfId, MF_CHOUJIANGDALIBAO01, 1);
					x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..", ngß½i ğã mu¯n thành công ğÕt ğßşc ğÕi l­ bao. Nhìn xem b÷c hành cüa ngß½i ği, bên trong hÆn là h½n mµt ki®n cho ngß½i!");
					
				end
			
			end
		
		elseif(MyLevel > 45 and MyLevel < 50) then
		
			x808065_Printf(sceneId, selfId, targetId, ""..GetName( sceneId, selfId )..", ngß½i g¥n ğây · trên giang h° có chút vang dµi, nhßng chï có trên giang h° t¯i höa tân thª lñc tài nång lînh ğÕi l­ bao ğâu, ngß½i phäi ğÕt t¾i #Gc¤p 50 #W lÕi ğªn lînh ğÕi l­ bao ği!");
			
		elseif(MyLevel >= 50 and MyLevel <= 55) then
		
			if( GetMissionFlag( sceneId, selfId, MF_CHOUJIANGDALIBAO02 ) == 1) then
			--ÒÑ¾­Áì¹ı
				x808065_Printf(sceneId, selfId, targetId, ""..GetName( sceneId, selfId )..", cüa ngß½i xác thñc th§t là trên giang h° mµt thª lñc m¾i. Nhßng là ngß½i không lâu phía trß¾c, ğã mu¯n · ta n½i này lînh ğÕi l­ bao!");
			
			elseif( GetMissionFlag( sceneId, selfId, MF_CHOUJIANGDALIBAO02 ) == 0) then
			
				if( x808065_PutIntoPack( sceneId, selfId, targetId, x808065_g_ItemId["choujiang2"], QUALITY_MUST_BE_CHANGE, 2 , 1) == 1) then
				
					SetMissionFlag(sceneId, selfId, MF_CHOUJIANGDALIBAO02, 1);
					x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..", ngß½i ğã mu¯n thành công ğÕt ğßşc ğÕi l­ bao. Nhìn xem b÷c hành cüa ngß½i ği, bên trong hÆn là h½n mµt ki®n cho ngß½i!");
					
				end
			
			end
				
		end
		
	elseif(NumText == x808065_g_Key["choujiang3"]) then
		x808065_ShiTuPrizeOption3(sceneId,selfId,targetId)
		return
		--local TeamFlag = LuaFnHasTeam( sceneId, selfId )
		--if( TeamFlag ~=1 ) then
		----Ã»ÓĞ×é¶Ó
		--	x808065_Printf(sceneId , selfId, targetId ,"Ngß½i c¥n ºÍCüa ngß½i Ê¦¸¸»òÕßÍ½µÜ×é¶Ó²ÅÄÜÀ´²Î¼ÓÊ¦Í½³é½±Å¶£¡ ¼Ç×.¬mµt ¶¨ĞúngÊ¦¸¸×ö¶Ó³¤,Í½µÜ×öĞµi viên ²ÅĞĞ.¶øÇÒ¶ÓÎéÀï²»ÄÜÓĞÆäËûÈËÅ¶!");
		--	return
		--
		--end
		--
		--local TeamSize = LuaFnGetTeamSize( sceneId, selfId );
		--local NearTeamSize = GetNearTeamCount( sceneId, selfId )
		--if( TeamSize ~= NearTeamSize) then
		----¼ì²éĞµi viên TÕi ²»TÕi ¸½½ü
		--	x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",ÄãÓĞ¶ÓÓÑ²»TÕi ¸½½üÄØ!");
		--	return
		--	
		--end
		--
		--if( TeamSize < 2 ) then
		--
		--	x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId ).."×÷Îª¶Ó³¤,ÒªºÍ×Ô¼ºtoÕ ğµ Í½µÜ×é¶Ó²ÅÄÜmµt ÆğÀ´²Î¼ÓÊ¦Í½³é½±ÄØ!");
		--	return		
		--
		--end
    --
		----¼ì²é×é¶ÓtoÕ ğµ Ê¦¸µ¹ØÏµ
		--local OkTeam = 1
		--local leaderID = GetTeamLeader( sceneId, selfId )
		--local otherPlayer
		--for i=0, NearTeamSize-1 do
		--	otherPlayer = GetNearTeamMember( sceneId, selfId, i )
		--	if leaderID ~= otherPlayer and LuaFnIsMaster(sceneId, otherPlayer, leaderID) ~= 1 then
		--		OkTeam = 0;
		--		break;
		--	end
		--end
		--if OkTeam == 0 then
		----×é¶Ó¹ØÏµ²»ÕıÈ·
		--	if(leaderID == selfId) then
		--	--ÎÒĞúng¶Ó³¤
		--		
		--		local PrenticeNum = LuaFnGetmasterLevel( sceneId, selfId );
		--		if( PrenticeNum == 0) then
		--			--Ê¦µÂ ği¬m
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",×÷Îª¶Ó³¤,Ê×ÏÈ ği¬m×Ô¼ºĞúngÊ¦¸¸²ÅÄÜmµt ÆğÀ´²Î¼ÓÊ¦Í½³é½±ÄØ!");
		--			return
		--		
		--		end
		--		x808065_Printf(sceneId , selfId, targetId , ""..GetName( sceneId, selfId )..",×÷Îª¶Ó³¤,¶ÓÎéÀïÓĞÈË²»ĞúngCüa ngß½i Í½µÜÄØ,Äã»¹ĞúngºÍCüa ngß½i Í½µÜmµt ÆğÀ´Lînh °É!");
		--		return
		--		
		--	else
		--	--ÎÒ²»Ğúng¶Ó³¤
		--		if(LuaFnHaveMaster( sceneId, selfId ) == 0) then
		--		
		--			x808065_Printf(sceneId , selfId, targetId , ""..GetName( sceneId, selfId )..",×÷ÎªĞµi viên ,Ê×ÏÈ ği¬m×Ô¼ºÓĞÊ¦¸¸²ÅÄÜmµt ÆğÀ´²Î¼ÓÊ¦Í½³é½±ÄØ!");
		--			return
		--		
		--		end
		--		x808065_Printf(sceneId , selfId, targetId , ""..GetName( sceneId, selfId )..",×÷ÎªĞµi viên ,Ä giâyùTÕi ¶ÓÎétoÕ ğµ ¶Ó³¤²»ĞúngËùÓĞĞµi viên toÕ ğµ Ê¦¸¸ÄØ£¡ÒªÈ·±£¶Ó³¤ĞúngËùÓĞĞµi viên toÕ ğµ Ê¦¸¸²ÅĞĞ°.¡");
		--		return
		--		
		--	end
		--end
		--
		----¼ì²éµÈc¤p
		--OkTeam = 1;
		--leaderID = GetTeamLeader( sceneId, selfId );
		--otherPlayer = 0;
		--for i=0, NearTeamSize-1 do
		--	otherPlayer = GetNearTeamMember( sceneId, selfId, i );
		--	if( leaderID == otherPlayer ) then
		--	else
		--		if(GetLevel(sceneId, otherPlayer) < 30 or GetLevel(sceneId, otherPlayer) > 49 ) then
		--			OkTeam = 0;
		--			break;
		--		end
		--	end
		--end
		--if OkTeam == 0 then
		----ÓĞÈËµÈc¤p²»·ûºÏÒªÇó
		--	if(leaderID == selfId) then
		--	--¶Ó³¤
		--		x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",×÷Îª¶Ó³¤,²Î¼ÓÊ¦Í½³é½±toÕ ğµ Ìõ¼şĞúng: Äã×é¶ÓtoÕ ğµ Í½µÜtoÕ ğµ µÈc¤pTÕi #G30c¤pµ½49c¤p#WÖ®¼äÅ¶,ÄãÓĞmµt Î»Í½µÜÒÑ¾­²»TÕi Cái này µÈc¤p·¶Î§ÄÚÁËÄØ!");
		--		return
		--		
		--	else
		--	
		--		if(GetLevel(sceneId, selfId) < 30 or GetLevel(sceneId, selfId) > 49) then
		--		
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",×÷ÎªĞµi viên ,²Î¼ÓÊ¦Í½³é½±toÕ ğµ Ìõ¼şĞúng: Cüa ngß½i µÈc¤pTÕi #G30c¤pµ½49c¤p#WÖ®¼äÅ¶,ÄãÒÑ¾­²»TÕi Cái này µÈc¤p·¶Î§ÄÚÁËÄØ!");
		--			return 
		--			
		--		else
		--	
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",×÷ÎªĞµi viên ,²Î¼ÓÊ¦Í½³é½±toÕ ğµ Ìõ¼şĞúng: ÄãÊ¦¸¸×é¶ÓtoÕ ğµ Í½µÜtoÕ ğµ µÈc¤p¶¼TÕi #G30c¤pµ½49c¤p#WÖ®¼äÅ¶,Cüa ngß½i mµt cái¶ÓÓÑÒÑ¾­²»TÕi Cái này µÈc¤p·¶Î§ÄÚÁËÄØ!");
		--			return
		--			
		--		end
		--		
		--	end
		--end
		--
		----ok ¸ø¶«Î÷ÁË
		--if(leaderID == selfId) then
		----¶Ó³¤
		--	
		--	local Num = LuaFnGetAvailableItemCount(sceneId, selfId, x808065_g_ItemId["choujiangshifu"]);
		--	if(Num > 0) then
		--	
		--		x808065_Printf( sceneId, selfId, targetId,  ""..GetName( sceneId, selfId )..",×÷Îª¶Ó³¤,ÄãÃÇtoÕ ğµ toÕ ğµ È·È·Ğúng½­ºşÉÏ×î»ğtoÕ ğµ mµt ¹ÉÊ¦Í½ĞÂÊÆÁ¦.¿ÉĞúngÄã²»¾ÃÖ®Ç°,ÒÑ¾­TÕi ÎÒÕâÀï²Î¼Ó¹ıÊ¦Í½³é½±ÁËÀ²£¡Äã¿´,ÄãÉíÉÏ»¹´ø×Å½±È¯ÄØ!");
		--		
		--	else
		--		
		--		if( x808065_AddJiangjuan( sceneId, selfId, x808065_g_ItemId["choujiangshifu"]) == 1) then
		--		
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",×÷Îª¶Ó³¤,ÄãÒÑ¾­³É¹¦µØ½øĞĞÁË³é½±,Cüa ngß½i TênÒÑ¾­±»ÁĞÈë³é½±Ãûµ¥.ÇëÄÍĞÄµÈ´ıÍ¨Öª,¾ßÌå»î¶¯ÄÚÈİÇë²éÔÄThiên Long°Ë²¿¹Ù·½ÍøÕ¾.");
		--			
		--		end
		--	
		--	end
		--	
		--else
		--
		--	local Num = LuaFnGetAvailableItemCount(sceneId, selfId, x808065_g_ItemId["choujiangtudi"]);
		--	if(Num > 0) then
		--	
		--		x808065_Printf( sceneId, selfId, targetId,  ""..GetName( sceneId, selfId )..",×÷ÎªĞµi viên ,ÄãÃÇtoÕ ğµ toÕ ğµ È·È·Ğúng½­ºşÉÏ×î»ğtoÕ ğµ mµt ¹ÉÊ¦Í½ĞÂÊÆÁ¦.¿ÉĞúngÄã²»¾ÃÖ®Ç°,ÒÑ¾­TÕi ÎÒÕâÀï²Î¼Ó¹ıÊ¦Í½³é½±ÁËÀ²!");
		--		
		--	else
		--		
		--		if( x808065_AddJiangjuan( sceneId, selfId, x808065_g_ItemId["choujiangtudi"]) == 1) then
		--		
		--			x808065_Printf(sceneId , selfId, targetId ,""..GetName( sceneId, selfId )..",×÷ÎªĞµi viên ,ÄãÒÑ¾­³É¹¦µØ½øĞĞÁË³é½±,Cüa ngß½i TênÒÑ¾­±»ÁĞÈë³é½±Ãûµ¥.ÇëÄÍĞÄµÈ´ıÍ¨Öª,¾ßÌå»î¶¯ÄÚÈİÇë²éÔÄThiên Long°Ë²¿¹Ù·½ÍøÕ¾.");
		--			
		--		end
		--	
		--	end
		--
		--end
	
	elseif(NumText == x808065_g_Key["choujianghuodong"]) then
		
		BeginEvent( sceneId )
			AddText( sceneId, "#{XSCJ_20070919_001}");
			AddNumText( sceneId, x808065_g_ScriptId, "#{XSCJ_20070919_002}", 11, x808065_g_Key["choujiangshuoming1"] )
			AddNumText( sceneId, x808065_g_ScriptId, "#{XSCJ_20070919_004}", 11, x808065_g_Key["choujiangshuoming2"] )
			AddNumText( sceneId, x808065_g_ScriptId, "#{XSCJ_20070919_006}", 11, x808065_g_Key["choujiangshuoming3"] )	
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif(NumText == 333) then
		SetMissionData( sceneId, selfId, MD_SHITU_PRIZE_COUNT, 0)
		for i = 60,80 do
			EraseItem(sceneId, selfId,i)
		end
		x808065_MessageBox( sceneId, selfId, "Mµt l¥n næa nh§n ph¥n thß·ng danh sß thß·ng cho thành công" )
	end
	
	x808065_OnEventRequest( sceneId, selfId, targetId )
	
end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x808065_OnEventRequest( sceneId, selfId, targetId )

		local	key	= GetNumText()
		if(key == x808065_g_Key["choujiangshuoming1"]) then
		
			x808065_Printf(  sceneId, selfId, targetId, "#{XSCJ_20070919_003}" )
			
		elseif(key == x808065_g_Key["choujiangshuoming2"]) then
		
			x808065_Printf(  sceneId, selfId, targetId, "#{XSCJ_20070919_005}" )
			
		elseif(key == x808065_g_Key["choujiangshuoming3"]) then
		
			x808065_Printf(  sceneId, selfId, targetId, "#{XSCJ_20070919_007}" )
			
		end
end

function x808065_OnEnumerate( sceneId, selfId, targetId )

		--x808065_Printf(sceneId, selfId, targetId, GetDayTime());

    local isTime = x808065_CheckRightTime();
    local MyLevel = GetLevel( sceneId, selfId );
    if 1 == isTime then    	
    	
    	if( MyLevel <= 39) then
				AddNumText( sceneId, x808065_g_ScriptId, "Tân binh ğoÕt bäo: Cá nhân lãnh thß·ng", 6, x808065_g_Key["choujiang1"] )
			end
			if ( MyLevel <= 55) then
				AddNumText( sceneId, x808065_g_ScriptId, "Tân binh ğoÕt bäo: ğÕi l­ bao", 6, x808065_g_Key["choujiang2"] )
			end
			AddNumText( sceneId, x808065_g_ScriptId, "ĞÂ±ø¶á±¦: ÃûÊ¦³é½±", 6, x808065_g_Key["choujiang3"] )
			AddNumText( sceneId, x808065_g_ScriptId, "³é½±Ë ği¬m÷", 11, x808065_g_Key["choujianghuodong"] )												
			--AddNumText(sceneId,x808065_g_ScriptId, "ÖØĞÂÁìÃûÊ¦³é½±",9,333)
    end

end

function x808065_SendMail( sceneId, selfId )
	--³é½±»î¶¯
	if(x808065_CheckRightTime() == 1) then
		LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{XSCJ_20070919_008}" )
		LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{XSCJ_20070919_007}" )
	end
end

--**********************************
--¼ì²â»î¶¯Ğúng·ñÒÑ½áÊø
--**********************************
function x808065_CheckRightTime()

	local curDayTime = GetDayTime()
	if curDayTime >= x808065_g_StartDayTime and curDayTime <= x808065_g_EndDayTime then
		return 1
	else
		return 0
	end

end

function x808065_CheckPacketSpace( sceneId, selfId, targetId, space )

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < space then
	
		x808065_Printf(sceneId,selfId, targetId, ""..GetName( sceneId, selfId )..", b÷c hành lı cüa ngß½i ğã ğ¥y. Ği rØa sÕch mµt chút b÷c hành lı lÕi ğªn ği, ta s¨ · ch² này ch¶ cüa ngß½i!");
			
		return 0
		
	else
		return 1
	end

end

function x808065_PutIntoPack(sceneId, selfId, targetId, itemId, flag, num, isBind)
	
	if(x808065_CheckPacketSpace(sceneId, selfId, targetId, num) == 1) then
	--ËÍ¶«Î÷
		for i=0,num-1 do
			local bagIndex = TryRecieveItem( sceneId, selfId, itemId, QUALITY_MUST_BE_CHANGE );
			if(isBind == 1) then
				LuaFnItemBind( sceneId, selfId, bagIndex);
			end
		end
		return 1;
	else
		return 0;
	end
	
end

--²âÊÔ
function x808065_MessageBox( sceneId, selfId, str )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x808065_Printf(  sceneId, selfId, targetId, str )
		BeginEvent( sceneId );
			AddText(sceneId, str);
		EndEvent( sceneId );
		DispatchEventList( sceneId, selfId, targetId )		
end

function x808065_AddJiangjuan(sceneId, selfId, itemId)
		BeginAddItem( sceneId )
		AddItem( sceneId, itemId, 1 )
		ret = EndAddItem( sceneId, selfId )
		if ret > 0 then
			AddItemListToHuman(sceneId,selfId )
			--TÕi ³é½±ÈÕÖ¾ÖĞ¼ÇÂ¼....
			--ÈÕÖ¾±àºÅ,Íæ¼ÒGUID,Íæ¼ÒTên,½±È¯ÎïÆ·ID
			local logstr = format("PL:%d,0x%X,%s,%d",
									 				PRIZE_LOG_XINSHOUSHITU,
									 				LuaFnGetGUID(sceneId,selfId),
									 				GetName(sceneId,selfId),
									 				itemId)
			LuaFnLogPrize(logstr)
			return 1;
		else
			return 0;
		end
end

--ĞÂÊ¦Í½³é½±Ñ¡Ïî3
function x808065_ShiTuPrizeOption3(sceneId,selfId,targetId)
	--local sname = GetName( sceneId, selfId )
	--0.¼ì²éĞúng·ñÓĞÊ¦¸¸Éí·İ
	--local	nMlevel	= LuaFnGetmasterLevel( sceneId, selfId )
	--if nMlevel < 1 or nMlevel > 4 then
	--	x808065_Printf( sceneId, selfId, targetId, sname..",ÏëÒª²Î¼ÓÃûÊ¦³é½±»î¶¯,Ê×ÏÈÒª³ÉÎªÊ¦¸¸²ÅĞĞ°.¡")
	--	return
	--end
	--1.¼ì²éĞúng·ñÓĞÍ½µÜ
	--if LuaFnGetPrenticeCount( sceneId, selfId ) == 0 then
	--	x808065_Printf( sceneId, selfId, targetId, sname..",ÏëÒª²Î¼ÓÃûÊ¦³é½±»î¶¯,Ê×ÏÈ ği¬mÒªÊÕÁËÍ½µÜ²ÅĞĞ°.¡¶øÇÒÍ½µÜÒªTÕi Cüa ngß½i ½Ìµ¼ÏÂÉıµ½40c¤pºÍ50c¤pÊ±²ÅĞĞÄØ!")
	--	return 0
	--end
	--2.Ğúng·ñÁì½±´ÎÊıÒÑ¾­´ïµ½Ê®´ÎÁË
	--±ØĞëTÕi ¿ÉÖ´ĞĞÓÊ¼şLînh toÕ ğµ Ê±ºòÅĞ¶Ï
	--local ct = GetMissionData(sceneId, selfId, MD_SHITU_PRIZE_COUNT)
	--²éÑ¯Cái này Ê¦¸¸Ğúng²»ĞúngÓĞ½±ÀøÓÊ¼ş
	LuaFnAskNpcScriptMail(sceneId, selfId, MAIL_SHITUPRIZE)
end
