--Author: vanhong@2gvn
--Edited by hd
--Download from http://www.clbgamesvn.com
--Date:13/11/2013
--NPC Cat Tuong Mieu
x000194_g_ScriptId = 000194
x000194_g_antiwhile = 80 --han che so lan lap

function x000194_OnDefaultEvent( sceneId, selfId, targetId )
	local selectbosss = LuaFnGetCopySceneData_Param( sceneId, x000196_g_selectBoss)
	local lastboss = LuaFnGetCopySceneData_Param( sceneId, selectbosss+10)
	local temp = LuaFnGetCopySceneData_Param(sceneId, 24)
	--local temp = 0

	if temp == 0 then
		temp = x000194_RandomMonster(sceneId,selfId,targetId,0)
		if temp ==-1 then
			LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 11 )
			LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
			x000194_Tips( sceneId,selfId, "#HPhø bän kªt thúc, r¶i khöi phø bän...")
			return
		end
		LuaFnSetCopySceneData_Param(sceneId, 24, temp)
	end
	local nMonsterNum = GetMonsterCount(sceneId)
	if selectbosss == 12 then
		BeginEvent( sceneId )
			AddText(sceneId, "Các hÕ ðã hoàn thành khiêu chiªn ðü 12 con giáp. Mau r¶i khöi phø bän!!!")
			AddNumText( sceneId,x000194_g_ScriptId,"Ch¤p nh§n!",9,8890)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
						
	elseif selectbosss == 0 then
		BeginEvent( sceneId )
			local strText = ""..x000196_g_NPCList[temp].text
			AddText( sceneId, strText )
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_25}",10,temp)
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_26}",6,1000+temp)
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_27}",9,8890)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif nMonsterNum > 13 then
		BeginEvent( sceneId )
			local strText = format("Các hÕ chßa khiêu chiªn xong %s, bây gi¶ các hÕ mu¯n làm gì?",x000196_g_NPCList[lastboss].name)
			AddText( sceneId, strText )
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_27}",9,8890)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	else
	--x000196_Tips(sceneId, selfId,lastboss)
		BeginEvent( sceneId )
			local strText = format("Các hÕ ðã ðánh bÕi #R[%s]#W, nay các hÕ có th¬ ch÷n kiêu chiªn l¥n næa v¾i #R[%s]#W, ho£c ngçu nhiên rút ch÷n 1 ðÕi bi¬u cüa 12 con giáp xu¤t chiªn#r    Nªu các hÕ ch÷n khiêu chiªn #R[%s]#W l¥n næa, #Gtái chiªn l¥n ð¥u tiên#W c¥n tiêu t¯n #G10 #YSinh Tiêu Thïnh Thi®p#W, #Gtái chiªn l¥n 2 #W c¥n tiêu t¯n #G20 t¤m #YSinh Tiêu Thïnh Thi®p#W, #Gtái chiªn l¥n 3#W c¥n tiêu t¯n #G30 t¤m #YSinh Tiêu Thïnh Thi®p#W??#r    Nªu các hÕ ch÷n #Grút ch÷n ngçu nhiên#W 1 ðÕi bi¬u 12 con giáp xu¤t chiªn tiªp theo thì chï c¥n tiêu t¯n #G1 t¤m #YSinh Tiêu Thïnh Thi®p#W.",x000196_g_NPCList[lastboss].name,x000196_g_NPCList[lastboss].name,x000196_g_NPCList[lastboss].name)
			AddText( sceneId, strText )
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_36}",6,1000+temp)
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_37}",6,2000)--Tái chiªn ðÕi bi¬u 12 con giáp lúc nãy
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_27}",9,8890)
		
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
end


function x000194_OnEventRequest( sceneId, selfId, targetId, eventId )


		
	local selectbosss = LuaFnGetCopySceneData_Param( sceneId, x000196_g_selectBoss)
	local lastboss = LuaFnGetCopySceneData_Param( sceneId, selectbosss+10)
	local num = GetNumText()
	if num >0 and num < 13 then		-- danh boss dau tien
		--BeginEvent( sceneId )
			x000194_Tips(sceneId,selfId,"#{SXLT_100119_28}")
			----------Viªt hàm g÷i con quái thÑ GetNumText()
		local mstrId = LuaFnCreateMonster(sceneId, x000196_g_NPCList[num].mID, 50, 50, 27, 0, 195)
		local bossLv = GetLevel(sceneId,selfId)
		SetLevel(sceneId, mstrId, bossLv)
		SetMonsterFightWithNpcFlag( sceneId, mstrId, 0 )
		LuaFnSetCopySceneData_Param( sceneId, selectbosss+11, num )	-- Lßu s¯ thÑ tñ cüa con boss thÑ selectbosss+1
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_selectBoss,selectbosss+1)	-- Lßu là ðã xác nh§n ðánh ðªn bos thÑ selectbosss+1
		BeginUICommand(sceneId)
		EndUICommand(sceneId,msg)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	if num >1000 and num < 1013 then	-- Rut tham boss khac
		BeginEvent( sceneId )
			AddText(sceneId, "#{SXLT_100119_29}")
			AddNumText(sceneId,x000194_g_ScriptId,"#{SXLT_100119_30}",6,num+3000)
			AddNumText(sceneId,x000194_g_ScriptId,"#{SXLT_100119_31}",6,8894)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end

	if num > 4000 and num <4013 then
		local number = LuaFnGetAvailableItemCount(sceneId, selfId, 30504189)
		local number2 = LuaFnGetAvailableItemCount(sceneId, selfId, 30504188)
		if number< 1 and number2 <1 then
			BeginEvent( sceneId )
				AddText(sceneId, "#{SXLT_100119_32}")
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		else
			
			local temp = mod(num,4000)
			if number >=1 then
			LuaFnDelAvailableItem(sceneId,selfId,30504189,1)
			else
				LuaFnDelAvailableItem(sceneId,selfId,30504188,1)
			end
			local bossnum = x000194_RandomMonster(sceneId,selfId,targetId,temp)
			if bossnum ==-1 then
				LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 11 )
				LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
				x000194_Tips( sceneId,selfId, "#HPhø bän kªt thúc, r¶i khöi phø bän...")
				return
			end
			BeginEvent( sceneId )
				strText = ""..x000196_g_NPCList[bossnum].text
					AddText( sceneId, strText )
					AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_25}",10,3000+bossnum)
					AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_26}",6,1000+temp)
					AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_27}",9,8890)
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			--x000196_Tips(sceneId, selfId,"1234")
			-----------Hàm G÷i và Ðánh Quái------------- 	
		end

	end
	
	
	if num >3000 and num < 3013 then
		local temp = mod(num,3000)
		--x000196_Tips(sceneId, selfId,x000196_g_NPCList[temp].mID)
		local mstrId = LuaFnCreateMonster(sceneId, x000196_g_NPCList[temp].mID, 50, 50, 27, 0, 195)
		local bossLv = GetLevel(sceneId,selfId)
		SetLevel(sceneId, mstrId, bossLv)
		--x000196_Tips(sceneId, selfId,x000196_g_mylevel)
		SetMonsterFightWithNpcFlag( sceneId, mstrId, 0 )
		LuaFnSetCopySceneData_Param( sceneId, selectbosss+11, temp )	-- Lßu s¯ thÑ tñ cüa con boss thÑ selectbosss+1
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_selectBoss,selectbosss+1)	-- Lßu là ðã xác nh§n ðánh ðªn bos thÑ selectbosss+1
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_ntaichien,0)	-- Lßu là ðã xác nh§n ðánh ðªn bos thÑ selectbosss+1
		BeginUICommand(sceneId)
		EndUICommand(sceneId,msg)
		DispatchUICommand(sceneId,selfId, 1000)
		SetMonsterFightWithNpcFlag( sceneId, mstrId, 0 )
	end
	if GetNumText()==2000 then --tai chien con giap vua dau
		local tieuhao = LuaFnGetCopySceneData_Param( sceneId, x000196_g_ntaichien)
		tieuhao = tieuhao+1
		BeginEvent(sceneId)
			local selectbosss = LuaFnGetCopySceneData_Param( sceneId, x000196_g_selectBoss)
			local lastboss = LuaFnGetCopySceneData_Param( sceneId, selectbosss+10)
			local strText = format("Các hÕ ch÷n tái khiêu chiªn #R[%s]#W l¥n næa, ðây là #Gl¥n  thÑ %s #W tái chiªn ðÕi bi¬u 12 con giáp này nên các hÕ c¥n tiêu t¯n #G%s #Ysinh Tiêu Thïnh Thi®p#W, xác nh§n tiªp tøc chÑ?",x000196_g_NPCList[lastboss].name,tieuhao,tieuhao*10)
				AddText(sceneId,strText)
				AddNumText(sceneId, x000194_g_ScriptId, "Xác nh§n!",10,6000)
				AddNumText(sceneId, x000194_g_ScriptId, "Không c¥n ðâu, cäm ½n nhà ngß½i!",16,6001)
				
		EndEvent( sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end


	if GetNumText()==6000 then	-- tái chiªn lai boss
		BeginEvent(sceneId)
			local tieuhao = LuaFnGetCopySceneData_Param( sceneId, x000196_g_ntaichien)
			local soitem=LuaFnGetAvailableItemCount(sceneId, selfId, 30504189)
			tieuhao = tieuhao+1
			if soitem >= 10*tieuhao then 
				LuaFnDelAvailableItem(sceneId,selfId,30504189,10*tieuhao)
				LuaFnSetCopySceneData_Param(sceneId,x000196_g_ntaichien,tieuhao)
				--x000196_Tips(sceneId, selfId,x000196_g_NPCList[lastboss].mID)
				local mstrId = LuaFnCreateMonster(sceneId, x000196_g_NPCList[lastboss].mID, 50, 50, 27, 0, 195)
				local bossLv = GetLevel(sceneId,selfId)
				SetLevel(sceneId, mstrId, bossLv)
				SetMonsterFightWithNpcFlag( sceneId, mstrId, 0 )
				BeginUICommand(sceneId)
				EndUICommand(sceneId,msg)
				DispatchUICommand(sceneId,selfId, 1000)
			else
				BeginEvent( sceneId )
					AddText(sceneId, "#{SXLT_100119_32}")
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				--x000196_Tips(sceneId, selfId,"123")
			end
	elseif GetNumText()==6001 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId,msg)
		DispatchUICommand(sceneId,selfId, 1000)
	end
	if GetNumText() == 8894 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId,msg)
		DispatchUICommand(sceneId,selfId, 1000)
	end
		
	if GetNumText() == 8890 then
		NewWorld( sceneId, selfId, 2, 270, 130 )
		return
	end
end

function x000194_RandomMonster(sceneId,selfId,targetId,temp)
	local IDBOSS1=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS1)
	local IDBOSS2=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS2)
	local IDBOSS3=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS3)
	local IDBOSS4=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS4)
	local IDBOSS5=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS5)
	local IDBOSS6=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS6)
	local IDBOSS7=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS7)
	local IDBOSS8=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS8)
	local IDBOSS9=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS9)
	local IDBOSS10=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS10)
	local IDBOSS11=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS11)
	local IDBOSS12=LuaFnGetCopySceneData_Param( sceneId, x000196_g_IDBOSS12)
	
	
	local antiwhile =0
	local ran =random(1,12)
	while (ran == IDBOSS1) or (ran == IDBOSS2) or (ran == IDBOSS3) or (ran == IDBOSS4) or (ran == IDBOSS5) or (ran == IDBOSS6) or (ran == IDBOSS7) or 
		(ran == IDBOSS8) or (ran == IDBOSS9) or (ran == IDBOSS10) or (ran == IDBOSS11) or (ran == IDBOSS12) do
		ran = random(1,12)
		antiwhile=antiwhile+1
		if antiwhile > x000194_g_antiwhile then
			x000194_Tips( sceneId,selfId, "#HPhø bän kªt thúc, r¶i khöi phø bän...")
			LuaFnSetCopySceneData_Param( sceneId, x000196_g_IDX_FuBenLifeStep, 11 )
			LuaFnSetCopySceneData_Param( sceneId, 7, 0 )
			return -1
		end
	end
	return ran
end

function x000194_Tips(sceneId, selfId,Tips)
	BeginEvent(sceneId)
		AddText(sceneId, Tips)
	EndEvent(sceneId)
	DispatchMissionTips(sceneId, selfId)
end

