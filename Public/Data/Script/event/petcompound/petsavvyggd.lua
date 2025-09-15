-- ³èÎïÎòÐÔÌLinhý

-- ½Å±¾ºÅ
x800106_g_ScriptId = 800106

-- NPC Tên
x800106_g_Name = "Vân Phi Phi"

	
--**********************************
-- ÈÎÎñÈë¿Úº¯Êý
--**********************************
function x800106_OnDefaultEvent( sceneId, selfId, targetId )	-- ði¬m»÷¸ÃÈÎÎñºóÖ´ÐÐ´Ë½Å±¾
	if GetName( sceneId, targetId ) ~= x800106_g_Name then		--ÅÐ¶Ï¸Ã npc Ðúng·ñÐúngÖ¸¶¨toÕ ðµ npc
		return
	end

	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 19820425 )
end

--**********************************
-- ÁÐ¾ÙÊÂ¼þ
--**********************************
function x800106_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x800106_g_Name then		--ÅÐ¶Ï¸Ã npc Ðúng·ñÐúngÖ¸¶¨toÕ ðµ npc
		return
	end

	AddNumText( sceneId, x800106_g_ScriptId, "SØ døng Cån c¯t ðan thång c¤p ngµ tính" ,6,-1)
end


--**********************************
-- ³èÎïÎòÐÔÌLinhý
--**********************************
function x800106_PetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL )
	
	local	SelfMoney = GetMoney(sceneId, selfId)
	
	local gengu = LuaFnGetPetGenGuByGUID(sceneId, selfId, mainPetGuidH, mainPetGuidL)
	local savvy = GetPetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL )
	if savvy == 10 then
		x800106_NotifyTip(sceneId, selfId, "Ngµ tính ðã ðÕt cao nh¤t, không th¬ thång c¤p!" );
		return 0;
	end
	local cost = GetCostOfGenGuBySavvy(sceneId, selfId, savvy);
	local succRate = GetSuccrateOfGenGuBySavvy(sceneId, selfId, savvy);
	local rand = random(1000)
	
	--¼ì²é ¸ú¹Ç µ¤
	local nSavvyNeed = savvy+1;	
	local nItemIdGenGuDan = 0;
	local msgTemp;
	if nSavvyNeed >= 1 and nSavvyNeed <= 3 then
		msgTemp = "Th¤p";
		nItemIdGenGuDan = 30504038;
	elseif nSavvyNeed >= 4 and nSavvyNeed <= 6 then
		msgTemp = "Trung"
		nItemIdGenGuDan = 30502001;
	elseif nSavvyNeed >= 7 and nSavvyNeed <= 10 then
		msgTemp = "Cao"
		nItemIdGenGuDan = 30502002;
	end
	
	local nYaoDingCount = GetItemCount(sceneId, selfId, nItemIdGenGuDan);
	if nYaoDingCount <= 0 then
		if nSavvyNeed >= 1 and nSavvyNeed <= 3 then
			--Ã»ÓÐ°ó¶¨toÕ ðµ µÍc¤p¸ù¹Çµ¤
			nItemIdGenGuDan = 30502000
			local nYaoDingCount = GetItemCount(sceneId, selfId, nItemIdGenGuDan);
			if nYaoDingCount<= 0 then
				local msg = format("Trân thú mu¯n thång c¤p ngµ tính ðªn %d c¥n %s c¤p Cån c¯t ðan", savvy+1, msgTemp )
				x800106_NotifyTip(sceneId, selfId, msg );
				return 0;
			end
		else
			local msg = format("Trân thú mu¯n thång c¤p ngµ tính ðªn %d c¥n %s c¤p Cån c¯t ðan", savvy+1, msgTemp )
			x800106_NotifyTip(sceneId, selfId, msg );
			return 0;
		end
	end
	local	SelfMoney = GetMoney(sceneId, selfId)  +  GetMoneyJZ(sceneId, selfId);   --½»×ÓÆÕ¼° Vega
	if SelfMoney < cost then 
		return 0;
	end
	
	--É¾³ý¸ú¹Ç µ¤
	local bRet = DelItem(sceneId, selfId, nItemIdGenGuDan, 1)
	
	if bRet<=0 then
		local msg = format("Hüy ðÕo cø th¤t bÕi!");
		x800106_NotifyTip(sceneId, selfId, msg );		
		return 0;
	end
	
	local costRet = LuaFnCostMoneyWithPriority(sceneId,selfId,cost)
	if costRet < 0 then
		return 0;
	end
		
	if rand > succRate then
		
		local nSavvyDown = GetLeveldownOfCompoundBySavvy( sceneId,selfId, savvy );
		if nSavvyDown > savvy then
			nSavvyDown = savvy;	
		end
		
		SetPetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL, savvy - nSavvyDown );
		
		Audit_PetImproveWuxing( sceneId, selfId, mainPetGuidH, mainPetGuidL, 0, savvy - nSavvyDown );
		
		local msg = format("Hþp thành th¤t bÕi, trß¾c m¡t ngµ tính cüa Trân thú là %d", savvy - nSavvyDown );
		x800106_NotifyTip(sceneId, selfId, msg );
		return 0;
	end
	
	SetPetSavvy( sceneId, selfId, mainPetGuidH, mainPetGuidL, nSavvyNeed )
	
	Audit_PetImproveWuxing( sceneId, selfId, mainPetGuidH, mainPetGuidL, 1, nSavvyNeed );
	
	local szPlayerName, szPetTransString;
	
	szPetTransString = GetPetTransString(  sceneId, selfId, mainPetGuidH, mainPetGuidL );
	szPlayerName = GetName( sceneId, selfId );
	
	local msg = format("Chúc m×ng các hÕ, hþp thành thành công, ngµ tính Trân thú cüa các hÕ +1");
	x800106_NotifyTip(sceneId, selfId, msg );

	--¹«¸æTinh¼ò,ÎòÐÔÌLinhýµ½7ºÍÒÔÉÏ²Å¹«¸æ
	if nSavvyNeed >= 7 then
		
		local szMsg;
		szMsg = format("#W#{_INFOUSR%s}#c00FFFF ðã giúp cho #{_INFOMSG%s} nâng cao ngµ tính ðªn #Y%d#c00FFFF!",szPlayerName, szPetTransString, nSavvyNeed );
		
		-- AddGlobalCountNews( sceneId, szMsg );
	
	end
	
	--³É¹¦toÕ ðµ ¹âÐ§
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
		
end


--**********************************
--ÐÑÄ¿ÌáÊ¾
--**********************************
function x800106_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
