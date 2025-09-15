-- ת��ս������ս����Ӫ

--************************************************************************
--MisDescBegin

-- �ű���
x600052_g_ScriptId = 600052

-- M�c ti�u nhi�m v� NPC
x600052_g_Name = "Th��ng Quan B�ng"
x600052_g_Name2 = "Th��ng Quan Tuy�t"

--��ս��������,��Ӧ������to� �  enum GUILDWAR_INT_ARRAY
x600052_g_A_LingShiIndex = 2
x600052_g_B_LingShiIndex = 7

x600052_g_LingShi = {"Thanh Long th�ch","B�ch H� th�ch","Chu T߾c th�ch","Huy�n V� th�ch","B�n C� th�ch"}		--LinhʯT�n
--x600052_g_LingShiID = {30900051,30900052,30900053,30900054,30900055}	--LinhʯID

x600052_g_GuildPoint_ExchangeTank = 6				--�л�m�t ��ս��to� � ���� ��t ���cto� � ���ֹ�������,��GuildWarPoint.txtto� � ID

x600052_g_WantLingShiNum = 20								--����Linhʯ��Ŀ

----c�i�˻�����������,��Ӧ����enum GUILDWAR_INT_INDEX
--x600052_g_Human_ResourceNumIndex = 4					--c�i�˽�����Դc�i������
--

x600052_g_TankID = {13334, 13335, 13336, 13337, 13338,	--�� �i�m�����ս��NPCto� � ID
										13339, 13340, 13341, 13342, 13343}	--�� �i�m���׻�ս��NPCto� � ID

x600052_g_AttrBuff = {31567, 31568, 31569, 31570, 31571,	--���ս��buff
											31572, 31573, 31574, 31575, 31576}	--�׻�ս��buff

x600052_g_ImmuneControlBuff = 10474							--NPC���߿���buff

x600052_g_A_FirstTankManSelfID = 13						--A��仯��ս��to� � ���to� � selfidT�i 32c�i����������to� � ����
x600052_g_A_SecondTankManSelfID = 14					--A��仯��ս��to� � ���to� � selfidT�i 32c�i����������to� � ����
x600052_g_B_FirstTankManSelfID = 15						--B��仯��ս��to� � ���to� � selfidT�i 32c�i����������to� � ����
x600052_g_B_SecondTankManSelfID = 16					--B��仯��ս��to� � ���to� � selfidT�i 32c�i����������to� � ����
x600052_g_A_FirstTankBuff = 17								--A��仯��ս��to� � BuffIDT�i 32c�i����������to� � ����
x600052_g_A_SecondTankBuff = 18								--A��仯��ս��to� � BuffIDT�i 32c�i����������to� � ����
x600052_g_B_FirstTankBuff = 19								--B��仯��ս��to� � BuffIDT�i 32c�i����������to� � ����
x600052_g_B_SecondTankBuff = 20								--B��仯��ս��to� � BuffIDT�i 32c�i����������to� � ����
x600052_g_A_FirstTankPos = 21									--A��仯��ս��to� � PosT�i 32c�i����������to� � ����
x600052_g_A_SecondTankPos = 22								--A��仯��ս��to� � PosT�i 32c�i����������to� � ����
x600052_g_B_FirstTankPos = 23									--B��仯��ս��to� � PosT�i 32c�i����������to� � ����
x600052_g_B_SecondTankPos = 24								--B��仯��ս��to� � PosT�i 32c�i����������to� � ����

x600052_g_DefaultTankPos = {{47,39},{47,39},{203,215},{203,215}}	--ս����Ӫto� � ����

x600052_g_TankName = {"Thanh Long chi�n xa","B�ch H� chi�n xa","Chu T߾c chi�n xa","Huy�n V� chi�n xa","B�n C� chi�n xa"}

x600052_g_Msg = {"#{BHXZ_081103_55}",
								"#{BHXZ_081103_46}",
								"#{BHXZ_081103_48}",
								"#{BHXZ_081103_50}",
								"#{BHXZ_081103_52}"}

--��ս�����ű�
x600052_g_BangzhanScriptId	= 402047

--MisDescEnd
--************************************************************************

--**********************************
-- ������ں���
--**********************************
function x600052_OnDefaultEvent( sceneId, selfId, targetId )	--  �i�m���������ִ�д˽ű�
--	if GetName( sceneId, targetId ) ~= x600052_g_Name then		-- �жϸ�npc��ng����ng��Ӧ����to� � npc
--		return
--	end

	local numText = GetNumText()
	
	if numText == 1 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_41}")
			for i = 1, getn( x600052_g_TankName ) do
					AddNumText(sceneId, x600052_g_ScriptId, x600052_g_TankName[i], 4, i*1000 )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if numText == 2 then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_59}")
			for i = 1, getn( x600052_g_TankName ) do
					AddNumText(sceneId, x600052_g_ScriptId, x600052_g_TankName[i], 4, i*1000+5000)
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	local TankManFirst = 0
	local TankManSecond = 0
	local base = 0
	local intbase = 0
	local isguildA = 0
	local guildid = 0
	local beginindex = 0
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	
	if GetName( sceneId, targetId ) == x600052_g_Name then
		TankManFirst = LuaFnGetCopySceneData_Param( sceneId, x600052_g_A_FirstTankManSelfID )
		TankManSecond = LuaFnGetCopySceneData_Param( sceneId, x600052_g_A_SecondTankManSelfID )
		base = 5
		intbase = 0 --(x600052_g_A_FirstTankBuff-x600052_g_A_FirstTankBuff)
		isguildA = 1
		guildid = floor(totalguildid / 10000)
		beginindex = x600052_g_A_LingShiIndex
	else
	 	TankManFirst = LuaFnGetCopySceneData_Param( sceneId, x600052_g_B_FirstTankManSelfID )
		TankManSecond = LuaFnGetCopySceneData_Param( sceneId, x600052_g_B_SecondTankManSelfID )
		base = 0
		intbase = 2 --(x600052_g_B_FirstTankBuff-x600052_g_A_FirstTankBuff)
		isguildA = 0
		guildid = mod(totalguildid, 10000)
		beginindex = x600052_g_B_LingShiIndex
	end
	
	if numText == 1000 or numText == 2000 or numText == 3000 or numText == 4000 or numText == 5000 then
		BeginEvent(sceneId)
			local index = numText/1000
			--��ǰ��ng����C�i n�y ս������
			if (TankManFirst ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManFirst) == x600052_g_AttrBuff[index+base]) or
				(TankManSecond ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManSecond) == x600052_g_AttrBuff[index+base]) or
				(x600052_FindWildTank( sceneId, index+base ) ~= 0) then
				AddText(sceneId, "  Mu�n t�ng ng߽i "..x600052_g_TankName[index].."#{BHXZ_081103_54}")
				for i = 1, getn( x600052_g_TankName ) do
					if index ~= i then
						AddNumText(sceneId, x600052_g_ScriptId, x600052_g_TankName[i], 4, numText + i*100 )
					end
				end
				AddNumText(sceneId, x600052_g_ScriptId, "Tr�n m�t", 8, 1 )
			else
				AddText(sceneId, "#{BHXZ_081103_42}"..x600052_g_TankName[index]..".")
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if numText == 6000 or numText == 7000 or numText == 8000 or numText == 9000 or numText == 10000 then
		BeginEvent(sceneId)
			local index = numText/1000
			index = index - 5
			--��ǰ��ng����C�i n�y ս������
			if (TankManFirst ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManFirst) == x600052_g_AttrBuff[index+base]) or
				(TankManSecond ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManSecond) == x600052_g_AttrBuff[index+base]) or
				(x600052_FindWildTank( sceneId, index+base ) ~= 0) then
				AddText(sceneId, "    #{BHXZ_081103_152}"..x600052_g_TankName[index].."#{BHXZ_081103_153}")
				AddNumText(sceneId, x600052_g_ScriptId, "X�c nh�n", 8, numText + 100 )
				AddNumText(sceneId, x600052_g_ScriptId, "Hu� b�", 8, numText + 200 )
			else
				AddText(sceneId, "#{BHXZ_081103_42}"..x600052_g_TankName[index]..".")
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if numText > 1000 and numText < 6000 then
		local thousand = floor(numText/1000)
		local hundred = floor((numText - thousand*1000)/100)
		if hundred == 0 or hundred >= getn( x600052_g_TankName )+1 or thousand == hundred then --�Ƿ�ֵ
			return
		end
		local ten = floor((numText - thousand*1000 - hundred*100)/10)
		
		if ten == 0 then --Ҫת����to� � ս����ѡ��
			--Ҫת����to� � ս��������ng���Ѿ���T�i ��
			if (TankManFirst ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManFirst) == x600052_g_AttrBuff[hundred+base]) or
			 	(TankManSecond ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManSecond) == x600052_g_AttrBuff[hundred+base]) or
			 	(x600052_FindWildTank( sceneId, hundred+base ) ~= 0) then
				x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_44}".. x600052_g_TankName[hundred] .."#{BHXZ_081103_45}" )
			else
				BeginEvent(sceneId)
					AddText(sceneId, x600052_g_Msg[hundred])
					AddNumText(sceneId, x600052_g_ScriptId, "X�c nh�n", 8, numText + 10 )
					AddNumText(sceneId, x600052_g_ScriptId, "Hu� b�", 8, numText + 20 )
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif ten == 1 then --X�c nh�n(C�n �����ж���ng����C�i n�y ս������,�Լ�Ҫת����to� � ս��������ng���T�i )
			if TankManFirst ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManFirst) == x600052_g_AttrBuff[thousand+base] then
				if (TankManSecond ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManSecond) == x600052_g_AttrBuff[hundred+base]) or
					(x600052_FindWildTank( sceneId, hundred+base ) ~= 0) then --���ظ�to� � ս������
					x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_44}".. x600052_g_TankName[hundred] .."#{BHXZ_081103_45}" )
				else	--û���ظ�to� � ս������
					local num = GetGuildIntNum( sceneId, guildid, beginindex+hundred-1 )
					
					if num < x600052_g_WantLingShiNum then
						x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_47}"..x600052_g_LingShi[hundred].."#{BHXZ_081103_56}"..num)
					else
						num = num - x600052_g_WantLingShiNum
						SetGuildIntNum( sceneId, guildid, beginindex+hundred-1, num )
						
						LuaFnSetCopySceneData_Param( sceneId, x600052_g_A_FirstTankManSelfID+intbase, 0 )
						LuaFnSetCopySceneData_Param( sceneId, x600052_g_A_FirstTankBuff+intbase, 0 )
						LuaFnSetCopySceneData_Param( sceneId, x600052_g_A_FirstTankPos+intbase, 0 )
						LuaFnCancelSpecificImpact(sceneId,TankManFirst,x600052_g_AttrBuff[thousand+base])
						--CallScriptFunction(600051, "PowerUptank", sceneId, TankManFirst, targetId, hundred+base, isguildA, 0)
						--m�t ��Ҫ�ҵ�m�t c�i���Է����selfIdto� � �ط��Ŵ���ս�to� � ���,��ֹ����������2��to� � ս��,����ս�����Ͳ����ظ�
						local selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, isguildA, hundred+base )
						if selfIdindex > 0 then
							local PosX,PosZ = GetWorldPos(sceneId,TankManFirst)
							local monsterID = LuaFnCreateMonster( sceneId, x600052_g_TankID[hundred+base], PosX, PosZ, 3, -1, 402302 )
							LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x600052_g_ImmuneControlBuff, 0 )
						end
						
						--���ӻ���
						local addpoint = GetGuildWarPoint(sceneId, x600052_g_GuildPoint_ExchangeTank)
						if isguildA == 1 then
							CallScriptFunction( x600052_g_BangzhanScriptId, "AddAGuildPoint", sceneId, 0, guildid, addpoint )
						else
							CallScriptFunction( x600052_g_BangzhanScriptId, "AddBGuildPoint", sceneId, 0, guildid, addpoint )
						end
						
						x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_111}" )
						Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[thousand].."Chuy�n ho�n th�nh "..x600052_g_TankName[hundred].."." , MSG2PLAYER_PARA)
					end
				end
			elseif TankManSecond ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManSecond) == x600052_g_AttrBuff[thousand+base] then
				if (TankManFirst ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManFirst) == x600052_g_AttrBuff[hundred+base]) or
					(x600052_FindWildTank( sceneId, hundred+base ) ~= 0) then --���ظ�to� � ս������
					x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_44}".. x600052_g_TankName[hundred] .."#{BHXZ_081103_45}" )
				else  --û���ظ�to� � ս������
					local num = GetGuildIntNum( sceneId, guildid, beginindex+hundred-1 )
					
					if num < x600052_g_WantLingShiNum then
						x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_47}"..x600052_g_LingShi[hundred].."#{BHXZ_081103_56}"..num)
					else
						num = num - x600052_g_WantLingShiNum
						SetGuildIntNum( sceneId, guildid, beginindex+hundred-1, num )
						
						LuaFnSetCopySceneData_Param( sceneId, x600052_g_A_SecondTankManSelfID+intbase, 0 )
						LuaFnSetCopySceneData_Param( sceneId, x600052_g_A_SecondTankBuff+intbase, 0 )
						LuaFnSetCopySceneData_Param( sceneId, x600052_g_A_SecondTankPos+intbase, 0 )
						LuaFnCancelSpecificImpact(sceneId,TankManSecond,x600052_g_AttrBuff[thousand+base])
						--CallScriptFunction(600051, "PowerUptank", sceneId, TankManSecond, targetId, hundred+base, isguildA, 0)
						
						--m�t ��Ҫ�ҵ�m�t c�i���Է����selfIdto� � �ط��Ŵ���ս�to� � ���,��ֹ����������2��to� � ս��,����ս�����Ͳ����ظ�
						local selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, isguildA, hundred+base )
						if selfIdindex > 0 then
							local PosX,PosZ = GetWorldPos(sceneId,TankManSecond)
							local monsterID = LuaFnCreateMonster( sceneId, x600052_g_TankID[hundred+base], PosX, PosZ, 3, -1, 402302 )
							LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x600052_g_ImmuneControlBuff, 0 )
						end
						
						--���ӻ���
						local addpoint = GetGuildWarPoint(sceneId, x600052_g_GuildPoint_ExchangeTank)
						if isguildA == 1 then
							CallScriptFunction( x600052_g_BangzhanScriptId, "AddAGuildPoint", sceneId, 0, guildid, addpoint )
						else
							CallScriptFunction( x600052_g_BangzhanScriptId, "AddBGuildPoint", sceneId, 0, guildid, addpoint )
						end
						
						x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_111}" )
						Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[thousand].."Chuy�n ho�n th�nh "..x600052_g_TankName[hundred].."." , MSG2PLAYER_PARA)
					end
				end
			else
				local tankobjID = x600052_FindWildTank( sceneId, thousand+base )
				
				--Ұ����ng����C�i n�y ս������
				if tankobjID ~= 0 then
					local PosX,PosZ = GetWorldPos(sceneId,tankobjID)

					if (TankManFirst ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManFirst) == x600052_g_AttrBuff[hundred+base]) or
						(TankManSecond ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManSecond) == x600052_g_AttrBuff[hundred+base]) or
						(x600052_FindWildTank( sceneId, hundred+base ) ~= 0) then --���ظ�to� � ս������
						x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_44}".. x600052_g_TankName[hundred] .."#{BHXZ_081103_45}" )
					else	--û���ظ�to� � ս������
						local num = GetGuildIntNum( sceneId, guildid, beginindex+hundred-1 )
						
						if num < x600052_g_WantLingShiNum then
							x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_47}"..x600052_g_LingShi[hundred].."#{BHXZ_081103_56}"..num)
						else
							num = num - x600052_g_WantLingShiNum
							SetGuildIntNum( sceneId, guildid, beginindex+hundred-1, num )
							
							LuaFnDeleteMonster(sceneId, tankobjID)
							local monsterID = LuaFnCreateMonster( sceneId, x600052_g_TankID[hundred+base], PosX, PosZ, 3, -1, 402302 )
							LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x600052_g_ImmuneControlBuff, 0 )
							
							--���ӻ���
							local addpoint = GetGuildWarPoint(sceneId, x600052_g_GuildPoint_ExchangeTank)
							if isguildA == 1 then
								CallScriptFunction( x600052_g_BangzhanScriptId, "AddAGuildPoint", sceneId, 0, guildid, addpoint )
							else
								CallScriptFunction( x600052_g_BangzhanScriptId, "AddBGuildPoint", sceneId, 0, guildid, addpoint )
							end
							
							x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_111}" )
							Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[thousand].."Chuy�n ho�n th�nh "..x600052_g_TankName[hundred].."." , MSG2PLAYER_PARA)
						end
					end
				else
					x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_42}"..x600052_g_TankName[thousand].."." )
				end
			end
		elseif ten == 2 then --Hu� b�
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
		
		return
	end
	
	if numText > 6000 and numText < 11000 then
		local thousand = floor(numText/1000)
		local hundred = floor((numText - thousand*1000)/100)
		thousand = thousand - 5
		
		if hundred == 1 then --X�c nh�n
			local countarray = {}
			for i = 0, 4 do
				countarray[i+1] = GetGuildIntNum( sceneId, guildid, beginindex+i )
				if countarray[i+1] < x600052_g_WantLingShiNum then
					x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_151}" )
					return
				end
			end
			
			if TankManFirst ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManFirst) == x600052_g_AttrBuff[thousand+base] then
				BeginUICommand(sceneId)
					UICommand_AddInt(sceneId, x600052_g_ScriptId)
					UICommand_AddInt(sceneId, targetId)
					UICommand_AddInt(sceneId, thousand+base)
					UICommand_AddString(sceneId, "ChangeOK");
					UICommand_AddString(sceneId, "    #{BHXZ_081103_152}"..x600052_g_TankName[thousand].."#{BHXZ_081103_153}");
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 24)
			elseif TankManSecond ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManSecond) == x600052_g_AttrBuff[thousand+base] then
				BeginUICommand(sceneId)
					UICommand_AddInt(sceneId, x600052_g_ScriptId)
					UICommand_AddInt(sceneId, targetId)
					UICommand_AddInt(sceneId, thousand+base)
					UICommand_AddString(sceneId, "ChangeOK");
					UICommand_AddString(sceneId, "    #{BHXZ_081103_152}"..x600052_g_TankName[thousand].."#{BHXZ_081103_153}");
				EndUICommand(sceneId)
				DispatchUICommand(sceneId,selfId, 24)
			else
				local tankobjID = x600052_FindWildTank( sceneId, thousand+base )
				
				--Ұ����ng����C�i n�y ս������
				if tankobjID ~= 0 then
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId, x600052_g_ScriptId)
						UICommand_AddInt(sceneId, targetId)
						UICommand_AddInt(sceneId, thousand+base)
						UICommand_AddString(sceneId, "ChangeOK");
						UICommand_AddString(sceneId, "    #{BHXZ_081103_152}"..x600052_g_TankName[thousand].."#{BHXZ_081103_153}");
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,selfId, 24)
				else
					x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_42}"..x600052_g_TankName[thousand].."." )
				end
			end
		elseif hundred == 2 then --Hu� b�
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 1000 )
		end
		
		return
	end
	
end

--**********************************
-- ת��ս��to� � �ص��ű�
--**********************************
function x600052_ChangeOK( sceneId, selfId, targetId, tanktype )
	if not sceneId or not selfId or not targetId or not tanktype then
		return
	end
	
	local TankManFirst = 0
	local TankManSecond = 0
	local intbase = 0
	local guildid = 0
	local beginindex = 0
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	
	if GetName( sceneId, targetId ) == x600052_g_Name then
		TankManFirst = LuaFnGetCopySceneData_Param( sceneId, x600052_g_A_FirstTankManSelfID )
		TankManSecond = LuaFnGetCopySceneData_Param( sceneId, x600052_g_A_SecondTankManSelfID )
		intbase = 0 --(x600052_g_A_FirstTankBuff-x600052_g_A_FirstTankBuff)
		guildid = floor(totalguildid / 10000)
		beginindex = x600052_g_A_LingShiIndex
		--ս������to� � ֵ�Ϸ����ж�
		if tanktype < 6 or tanktype > 10 then
			return
		end
	elseif GetName( sceneId, targetId ) == x600052_g_Name2 then
	 	TankManFirst = LuaFnGetCopySceneData_Param( sceneId, x600052_g_B_FirstTankManSelfID )
		TankManSecond = LuaFnGetCopySceneData_Param( sceneId, x600052_g_B_SecondTankManSelfID )
		intbase = 2 --(x600052_g_B_FirstTankBuff-x600052_g_A_FirstTankBuff)
		guildid = mod(totalguildid, 10000)
		beginindex = x600052_g_B_LingShiIndex
		--ս������to� � ֵ�Ϸ����ж�
		if tanktype < 1 or tanktype > 5 then
			return
		end
	else
		return
	end
	
	--�жϰ���ID��ng����ͬ
	if guildid ~= GetHumanGuildID(sceneId, selfId) then
		return
	end
	
	local countarray = {}
	for i = 0, 4 do
		countarray[i+1] = GetGuildIntNum( sceneId, guildid, beginindex+i )
		if countarray[i+1] < x600052_g_WantLingShiNum then
			x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_151}" )
			return
		end
	end
	
	if TankManFirst ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManFirst) == x600052_g_AttrBuff[tanktype] then
		for i = 0, 4 do
			SetGuildIntNum( sceneId, guildid, beginindex+i, countarray[i+1]-20 )
		end
		
		SetPos(sceneId,TankManFirst,x600052_g_DefaultTankPos[1+intbase][1],x600052_g_DefaultTankPos[1+intbase][2])
		
		if 1 <= tanktype and tanktype <= 5 then
			x600052_NotifyFailBox( sceneId, selfId, targetId, "   "..x600052_g_TankName[tanktype].."#{BHXZ_081103_154}" )
			Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[tanktype].."#{BHXZ_081103_139}", MSG2PLAYER_PARA)
		elseif 6 <= tanktype and tanktype <= 10 then
			x600052_NotifyFailBox( sceneId, selfId, targetId, "   "..x600052_g_TankName[tanktype-5].."#{BHXZ_081103_154}" )
			Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[tanktype-5].."#{BHXZ_081103_139}", MSG2PLAYER_PARA)
		end
	elseif TankManSecond ~= 0 and CallScriptFunction(x600052_g_BangzhanScriptId, "HaveTankBuff", sceneId, TankManSecond) == x600052_g_AttrBuff[tanktype] then
		for i = 0, 4 do
			SetGuildIntNum( sceneId, guildid, beginindex+i, countarray[i+1]-20 )
		end
		
		SetPos(sceneId,TankManFirst,x600052_g_DefaultTankPos[1+intbase][1],x600052_g_DefaultTankPos[1+intbase][2])
		
		if 1 <= tanktype and tanktype <= 5 then
			x600052_NotifyFailBox( sceneId, selfId, targetId, "   "..x600052_g_TankName[tanktype].."#{BHXZ_081103_154}" )
			Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[tanktype].."#{BHXZ_081103_139}", MSG2PLAYER_PARA)
		elseif 6 <= tanktype and tanktype <= 10 then
			x600052_NotifyFailBox( sceneId, selfId, targetId, "   "..x600052_g_TankName[tanktype-5].."#{BHXZ_081103_154}" )
			Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[tanktype-5].."#{BHXZ_081103_139}", MSG2PLAYER_PARA)
		end
	else
		local tankobjID = x600052_FindWildTank( sceneId, tanktype )
		
		--Ұ����ng����C�i n�y ս������
		if tankobjID ~= 0 then
			for i = 0, 4 do
				SetGuildIntNum( sceneId, guildid, beginindex+i, countarray[i+1]-20 )
			end
			
			SetPos(sceneId,tankobjID,x600052_g_DefaultTankPos[1+intbase][1],x600052_g_DefaultTankPos[1+intbase][2])
			
			if 1 <= tanktype and tanktype <= 5 then
				x600052_NotifyFailBox( sceneId, selfId, targetId, "   "..x600052_g_TankName[tanktype].."#{BHXZ_081103_154}" )
				Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[tanktype].."#{BHXZ_081103_139}", MSG2PLAYER_PARA)
			elseif 6 <= tanktype and tanktype <= 10 then
				x600052_NotifyFailBox( sceneId, selfId, targetId, "   "..x600052_g_TankName[tanktype-5].."#{BHXZ_081103_154}" )
				Msg2Player(sceneId, selfId, "#{BHXZ_081103_138}"..x600052_g_TankName[tanktype-5].."#{BHXZ_081103_139}", MSG2PLAYER_PARA)
			end
		else
			if 1 <= tanktype and tanktype <= 5 then
				x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_42}"..x600052_g_TankName[tanktype].."." )
			elseif 6 <= tanktype and tanktype <= 10 then
				x600052_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_42}"..x600052_g_TankName[tanktype-5].."." )
			end
		end
	end
	
end

--**********************************
-- �о��¼�
--**********************************
function x600052_OnEnumerate( sceneId, selfId, targetId )
--	if GetName( sceneId, targetId ) ~= x600052_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
--		return
--	end
	
	AddNumText( sceneId, x600052_g_ScriptId, "#{BHXZ_081103_40}", 4, 1 )--ת��ս��
	AddNumText( sceneId, x600052_g_ScriptId, "#{BHXZ_081103_58}", 4, 2 )--ս����Ӫ
end

--**********************************
-- Ұ����ng������������to� � ս��,Tr� v�objID
--**********************************
function x600052_FindWildTank( sceneId, tankIDindex )
	local tankID = x600052_g_TankID[tankIDindex]
	
	if not tankID then
		return 0
	end
	
	local nNpcNum = GetMonsterCount(sceneId)
	for i=0, nNpcNum-1 do
		local nNpcId = GetMonsterObjID(sceneId,i)
		local DataId = GetMonsterDataID(sceneId, nNpcId)
		
		if DataId == tankID then
			return nNpcId
		end
	end

	return 0
end

--**********************************
-- ���Ti�p th�����
--**********************************
function x600052_CheckAccept( sceneId, selfId, targetId )
	return 1
end

--**********************************
--Ti�p th�
--**********************************
function x600052_OnAccept( sceneId, selfId, targetId )
end

--**********************************
--����
--**********************************
function x600052_OnContinue( sceneId, selfId, targetId )
--	BeginEvent( sceneId )
--		AddText( sceneId, x600052_g_MissionName )
--		AddText( sceneId, "good ����" )
--	EndEvent( )
--	DispatchMissionContinueInfo( sceneId, selfId, targetId, x600052_g_ScriptId, x600052_g_MissionId )
end

--**********************************
--����
--**********************************
function x600052_OnAbandon( sceneId, selfId )
end

--**********************************
--�����ng������ύ
--**********************************
function x600052_CheckSubmit( sceneId, selfId )
	return 1
end

--**********************************
--�ύ
--**********************************
function x600052_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x600052_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x600052_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
