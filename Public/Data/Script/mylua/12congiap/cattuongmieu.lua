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
			x000194_Tips( sceneId,selfId, "#HPh� b�n k�t th�c, r�i kh�i ph� b�n...")
			return
		end
		LuaFnSetCopySceneData_Param(sceneId, 24, temp)
	end
	local nMonsterNum = GetMonsterCount(sceneId)
	if selectbosss == 12 then
		BeginEvent( sceneId )
			AddText(sceneId, "C�c h� �� ho�n th�nh khi�u chi�n �� 12 con gi�p. Mau r�i kh�i ph� b�n!!!")
			AddNumText( sceneId,x000194_g_ScriptId,"Ch�p nh�n!",9,8890)
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
			local strText = format("C�c h� ch�a khi�u chi�n xong %s, b�y gi� c�c h� mu�n l�m g�?",x000196_g_NPCList[lastboss].name)
			AddText( sceneId, strText )
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_27}",9,8890)
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	else
	--x000196_Tips(sceneId, selfId,lastboss)
		BeginEvent( sceneId )
			local strText = format("C�c h� �� ��nh b�i #R[%s]#W, nay c�c h� c� th� ch�n ki�u chi�n l�n n�a v�i #R[%s]#W, ho�c ng�u nhi�n r�t ch�n 1 ��i bi�u c�a 12 con gi�p xu�t chi�n#r    N�u c�c h� ch�n khi�u chi�n #R[%s]#W l�n n�a, #Gt�i chi�n l�n �u ti�n#W c�n ti�u t�n #G10 #YSinh Ti�u Th�nh Thi�p#W, #Gt�i chi�n l�n 2 #W c�n ti�u t�n #G20 t�m #YSinh Ti�u Th�nh Thi�p#W, #Gt�i chi�n l�n 3#W c�n ti�u t�n #G30 t�m #YSinh Ti�u Th�nh Thi�p#W??#r    N�u c�c h� ch�n #Gr�t ch�n ng�u nhi�n#W 1 ��i bi�u 12 con gi�p xu�t chi�n ti�p theo th� ch� c�n ti�u t�n #G1 t�m #YSinh Ti�u Th�nh Thi�p#W.",x000196_g_NPCList[lastboss].name,x000196_g_NPCList[lastboss].name,x000196_g_NPCList[lastboss].name)
			AddText( sceneId, strText )
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_36}",6,1000+temp)
			AddNumText( sceneId,x000194_g_ScriptId,"#{SXLT_100119_37}",6,2000)--T�i chi�n ��i bi�u 12 con gi�p l�c n�y
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
			----------Vi�t h�m g�i con qu�i th� GetNumText()
		local mstrId = LuaFnCreateMonster(sceneId, x000196_g_NPCList[num].mID, 50, 50, 27, 0, 195)
		local bossLv = GetLevel(sceneId,selfId)
		SetLevel(sceneId, mstrId, bossLv)
		SetMonsterFightWithNpcFlag( sceneId, mstrId, 0 )
		LuaFnSetCopySceneData_Param( sceneId, selectbosss+11, num )	-- L�u s� th� t� c�a con boss th� selectbosss+1
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_selectBoss,selectbosss+1)	-- L�u l� �� x�c nh�n ��nh �n bos th� selectbosss+1
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
				x000194_Tips( sceneId,selfId, "#HPh� b�n k�t th�c, r�i kh�i ph� b�n...")
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
			-----------H�m G�i v� ��nh Qu�i------------- 	
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
		LuaFnSetCopySceneData_Param( sceneId, selectbosss+11, temp )	-- L�u s� th� t� c�a con boss th� selectbosss+1
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_selectBoss,selectbosss+1)	-- L�u l� �� x�c nh�n ��nh �n bos th� selectbosss+1
		LuaFnSetCopySceneData_Param( sceneId, x000196_g_ntaichien,0)	-- L�u l� �� x�c nh�n ��nh �n bos th� selectbosss+1
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
			local strText = format("C�c h� ch�n t�i khi�u chi�n #R[%s]#W l�n n�a, ��y l� #Gl�n  th� %s #W t�i chi�n ��i bi�u 12 con gi�p n�y n�n c�c h� c�n ti�u t�n #G%s #Ysinh Ti�u Th�nh Thi�p#W, x�c nh�n ti�p t�c ch�?",x000196_g_NPCList[lastboss].name,tieuhao,tieuhao*10)
				AddText(sceneId,strText)
				AddNumText(sceneId, x000194_g_ScriptId, "X�c nh�n!",10,6000)
				AddNumText(sceneId, x000194_g_ScriptId, "Kh�ng c�n ��u, c�m �n nh� ng߽i!",16,6001)
				
		EndEvent( sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end


	if GetNumText()==6000 then	-- t�i chi�n lai boss
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
			x000194_Tips( sceneId,selfId, "#HPh� b�n k�t th�c, r�i kh�i ph� b�n...")
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

