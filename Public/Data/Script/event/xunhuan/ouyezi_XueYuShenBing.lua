--������[ QUFEI 2007-09-27 13:10 UPDATE BugID 25452 ]
--Ѫԡ�����¼��ű�
--ѭ������

--MisDescBegin
--�ű���
x500503_g_ScriptId	= 500503

--Ti�p th�����NPC����
x500503_g_Position_X=266.2833
x500503_g_Position_Z=140.0340
x500503_g_SceneID=1
x500503_g_AccomplishNPC_Name="�u D� T�"

--�����
x500503_g_MissionId			= 420
--��m�t c�i����to� � ID
x500503_g_MissionIdNext	= 420
--M�c ti�u nhi�m v�npc
x500503_g_Name			= "�u D� T�"
--�������
x500503_g_MissionKind			= 55
--��ng c�p nhi�m v� 
x500503_g_MissionLevel		= 10000
--��ng����ngTinhӢ����
x500503_g_IfMissionElite	= 0
--������ng���Ѿ����
x500503_g_IsMissionOkFail	= 0		--����to� � ��0λ
--����C�n ɱ��to� � ��
--��֤���Ը��ݵ�c�p��̬to� � �任ɱ������
x500503_g_RandomCustom = {{ id = "�� gi�t ch�t ", numNeeded = 3, numComplete = 1 }}

--�����ı�����
x500503_g_MissionName			= "Huy�t D�c Th�n Binh"
--��������
x500503_g_MissionInfo			= "H�c ��c th�n kh�"
--M�c ti�u nhi�m v�
x500503_g_MissionTarget		= "#{XYSB_20070928_010}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x500503_g_ContinueInfo		= "#{XYSB_20070928_009}"
--Ho�n t�t nhi�m v�npc˵to� � ��
x500503_g_MissionComplete	= "Vi�c ta giao �� ho�n th�nh ch�a?"
--��������
x500503_g_MaxRound	= 0
--���ƽű�
x500503_g_ControlScript		= 001066
--MisDescEnd

--����ű���
x500503_g_MissionScriptID	= 2			--����to� � ��2λ
--ɱ������
x500503_g_KillMonsterCount	= 3		--����to� � ��3λ
--��ǰɱ����
x500503_g_KillCountIng	= 4				--����to� � ��4λ

--��ӵ��to� � �¼�ID�б�
x500503_g_EventList	= {}

x500503_g_XueXiZhuZaoInfo			= "��c Th�n kh�"

--װ���c�i�����to� � ������
x500503_g_WeaponIdx	= 11

x500503_g_Weapon_ATTACK_P	 = 1			-- ������
x500503_g_Weapon_ATTACK_M  = 2			-- ħ������
x500503_g_Weapon_DEFENCE_P = 3			-- �������
x500503_g_Weapon_DEFENCE_M = 4			-- ħ������
x500503_g_Weapon_MISS = 5						-- ����
x500503_g_Weapon_HIT  = 6						-- ����

x500503_g_ITEM_APT_LEVEL = 16				-- ����Ti�p th�����to� � ��������c�p��
x500503_g_KillMONSTER_COUNT = 5000	-- Ҫ��ɱ��to� � ��������
x500503_g_WeaponLevelMin		= 40		-- ������͵�c�p
x500503_g_WeaponLevelMax		= 150		-- ������ߵ�c�p
x500503_g_AcceptLowLevel		= 40		-- Ti�p th�����to� � ��͵�c�p

x500503_g_Impact_Accept_Mission = 18		-- Ti�p th�����ʱto� � ��ЧID
x500503_g_Impact_Complete_Mission = 48	-- Ho�n t�t nhi�m v�ʱto� � ��ЧID

x500503_g_ItemBonus={{id=30505700,num=1,sqlvl=42},{id=30505701,num=1,sqlvl=52},{id=30505702,num=1,sqlvl=62},{id=30505703,num=1,sqlvl=72},{id=30505704,num=1,sqlvl=82},{id=30505705,num=1,sqlvl=92}}   -- ��ȱto� � ���
x500503_g_RadioItemBonus={{id=30302400 ,num=1},{id=30302401,num=1},{id=30302402,num=1},{id=30302403,num=1}}																			 -- �����䷽

-- ����to� � ���ʹ��Ŷ���
x500503_g_SubMissionTypeEnum = {killMonster=1}

--**********************************
--������ں���
--**********************************
-- �i�m���������ִ�д˽ű�
function x500503_OnDefaultEvent( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500503_g_Name then
		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
		
	--�������Ѿ���������
	if IsHaveMission( sceneId, selfId, x500503_g_MissionId ) > 0 then				
		
		local ItemLevel = GetMissionData( sceneId, selfId, MD_MISSHENBING_WEAPONLEVEL )		--  ��t ���c�۳�to� � ����to� � ��c�p
		local Errorlvl = GetMissionData( sceneId, selfId, 0 )															-- ��¼����to� � ����to� � ��c�p
		
		local LogInfo	= format( "[ShenBing]: x500503_OnDefaultEvent( sceneId=%d, GUID=%0X ), ItemLevel=%d, Errorlvl=%d",
													sceneId,
													LuaFnObjId2Guid( sceneId, selfId ),
													ItemLevel,
													Errorlvl )
		MissionLog(sceneId, LogInfo)
		
		local shenqilvl = 0					
		
		if ItemLevel >= x500503_g_WeaponLevelMin and ItemLevel < x500503_g_WeaponLevelMin + 10 then
			shenqilvl = x500503_g_ItemBonus[1].sqlvl
		elseif ItemLevel >= x500503_g_WeaponLevelMin + 10 and ItemLevel < x500503_g_WeaponLevelMin + 20 then
			shenqilvl = x500503_g_ItemBonus[2].sqlvl
		elseif ItemLevel >= x500503_g_WeaponLevelMin + 20 and ItemLevel < x500503_g_WeaponLevelMin + 30 then
			shenqilvl = x500503_g_ItemBonus[3].sqlvl
		elseif ItemLevel >= x500503_g_WeaponLevelMin + 30 and ItemLevel < x500503_g_WeaponLevelMin + 40 then
			shenqilvl = x500503_g_ItemBonus[4].sqlvl
		elseif ItemLevel >= x500503_g_WeaponLevelMin + 40 and ItemLevel < x500503_g_WeaponLevelMin + 50 then
			shenqilvl = x500503_g_ItemBonus[5].sqlvl
		elseif ItemLevel >= x500503_g_WeaponLevelMin + 50 then
			shenqilvl = x500503_g_ItemBonus[6].sqlvl	
		else
			shenqilvl = x500503_g_ItemBonus[1].sqlvl
				
			local LogInfo	= format( "[ShenBing]error: x500503_OnDefaultEvent( sceneId=%d, GUID=%0X ), shenqilvl=%d",
															sceneId,
															LuaFnObjId2Guid( sceneId, selfId ),
															shenqilvl )
			MissionLog(sceneId, LogInfo)					
		end
				
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId, x500503_g_MissionName)
			AddText( sceneId, "#{XYSB_20070928_009}" )
			AddText( sceneId, "#r#GNhi�m v� n�y t߽ng �ng v�i th�n kh� c�p: "..shenqilvl )
		EndEvent( )
		bDone = x500503_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId, selfId, targetId, x500503_g_ScriptId, x500503_g_MissionId, bDone)
		
	--���δ������
	else	
		--����c�p
		if LuaFnGetLevel( sceneId, selfId ) < x500503_g_AcceptLowLevel then
			BeginEvent(sceneId)	
			AddText( sceneId, "#{XYSB_20070928_002}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return 0
		end
					
		-- ����Ti�p th��������			
		x500503_AcceptMission( sceneId, selfId, targetId )
		
	end

end

--**********************************
--�о��¼�
--**********************************
function x500503_OnEnumerate( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500503_g_Name then
		return 0
	end

	AddNumText( sceneId, x500503_g_ScriptId, x500503_g_XueXiZhuZaoInfo, 6, 115 )		

end

--**********************************
--���Ti�p th�����,Ҳ�����������
--**********************************
function x500503_CheckAccept( sceneId, selfId, targetId )
	
	--��������ng�����Ti�p th�����to� � ����
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500503_g_Name then
		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end

	--�Ѿ��ӹ��򲻷�������
	if IsHaveMission( sceneId, selfId, x500503_g_MissionId ) > 0 then
		BeginEvent(sceneId)	
		AddText( sceneId, "#{XYSB_20070928_009}" )		
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	end
	
	--������������to� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId, x500503_g_MissionName)
		AddText(sceneId, "#{XYSB_20070928_003}")
	EndEvent( )
	bDone = 2
	DispatchMissionDemandInfo(sceneId, selfId, targetId, x500503_g_ScriptId, x500503_g_MissionId, bDone)
	
	return 1
end

function x500503_GetKillCountByLevel(iItemLevel)
	local iCount = 5000
	if (iItemLevel>=40 and iItemLevel<50) then
		iCount =3000
	elseif (iItemLevel>=50 and iItemLevel<60) then
		iCount = 4000
	end
	return iCount
end

--**********************************
--Ti�p th�,����������������ù�������
--**********************************
function x500503_OnAccept( sceneId, selfId, targetId, scriptId,iItemLevel )
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
 	if LuaFnGetName( sceneId, targetId ) ~= x500503_g_Name then
 		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
	
	
	--������������б�
	local bAdd = AddMission( sceneId, selfId, x500503_g_MissionId, x500503_g_ScriptId, 1, 0, 0 )
	if bAdd < 1 then
		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )			
		
		local LogInfo	= format( "[ShenBing]error: x500503_OnAccept( sceneId=%d, GUID=%0X ), bAdd=%d",
														sceneId,
														LuaFnObjId2Guid( sceneId, selfId ),
														bAdd )
		MissionLog(sceneId, LogInfo)
		return 0
	end

	-- �i�m������to� � ���к�
	local	misIndex		= GetMissionIndexByID( sceneId, selfId, x500503_g_MissionId )
	
	--�������кŰ��������to� � ��0λ��0 (����������)
	SetMissionByIndex( sceneId, selfId, misIndex, 0, 0 )
	--�������кŰ��������to� � ��1λ��Ϊ����ű���
	SetMissionByIndex( sceneId, selfId, misIndex, 2, scriptId )
	local iKillCount =x500503_GetKillCountByLevel(iItemLevel)
	SetMissionByIndex(sceneId, selfId, misIndex, 3, iKillCount)
	SetMissionByIndex(sceneId, selfId, misIndex, 1, 0)
	
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x500503_g_Impact_Accept_Mission, 0 )
	
	local LogInfo	= format( "[ShenBing]Succeed: x500503_OnAccept( sceneId=%d, GUID=%0X ), misIndex=%d",
														sceneId,
														LuaFnObjId2Guid( sceneId, selfId ),
														misIndex )
	MissionLog(sceneId, LogInfo)
		
	return 1

end

--**********************************
--����,�������������
--**********************************
function x500503_OnAbandon( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x500503_g_MissionId ) > 0 then
	  DelMission( sceneId, selfId, x500503_g_MissionId )
	else		
		return 0
	end
  
end

--**********************************
--����
--**********************************
function x500503_OnContinue( sceneId, selfId, targetId )

	----PrintStr("OnContinue...")	
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500503_g_Name then
		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
	
	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500503_g_AcceptLowLevel then		
		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )					
		return 0
	end
	
	-- ���������ng�����
	if x500503_CheckSubmit( sceneId, selfId ) ~= 1 then			
		return 0
	end
	
	BeginEvent(sceneId)
		AddText(sceneId,x500503_g_MissionName)
		AddText( sceneId, x500503_g_MissionComplete )
								
		for i, item in x500503_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )					-- ������ѡm�t ��Ʒ
		end
				
		-- AddMoneyBonus( sceneId, x500503_g_MoneyBonus )
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x500503_g_ScriptId,x500503_g_MissionId)
	
end

--**********************************
--�����ng������ύ
--**********************************
function x500503_CheckSubmit( sceneId, selfId )

	if IsHaveMission( sceneId, selfId, x500503_g_MissionId ) <= 0 then				
		return 0
	end

	--T�i ���ж��ύ������ng�����,��������Ӧ����
	-- �i�m������to� � ���к�
	local misIndex = GetMissionIndexByID(sceneId,selfId,x500503_g_MissionId)	
	if GetMissionParam(sceneId, selfId, misIndex, 0) > 0 then	--�쿴������ng�����
		return 1
	end
	
	return 0
	
end

--**********************************
--�ύ,�������������
--**********************************
function x500503_OnSubmit( sceneId, selfId, targetId, selectRadioId )

	-- PrintStr("selectRadioId ="..selectRadioId)
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500503_g_Name then
		x500503_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end
	
	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500503_g_AcceptLowLevel then		
		x500503_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )					
		return 0
	end
		
  -- ���������ng�����
	if x500503_CheckSubmit( sceneId, selfId ) ~= 1 then
		x500503_NotifyTip( sceneId, selfId, "Tr� nhi�m v� th�t b�i" )			
		
		local LogInfo	= format( "[ShenBing]error: x500503_OnSubmit( sceneId=%d, GUID=%0X ), x500503_CheckSubmit=%d",
														sceneId,
														LuaFnObjId2Guid( sceneId, selfId ),
														x500503_CheckSubmit( sceneId, selfId ) )
		MissionLog(sceneId, LogInfo)
		return 0
	end
	
	local	Level			= GetLevel( sceneId, selfId )

	local ItemLevel = GetMissionData( sceneId, selfId, MD_MISSHENBING_WEAPONLEVEL )		--  ��t ���c�۳�to� � ����to� � ��c�p
	local Errorlvl = GetMissionData( sceneId, selfId, 0 )																-- ��¼����to� � ����to� � ��c�p
	local shenjieID = 0
	
	local LogInfo	= format( "[ShenBing]: x500503_OnSubmit( sceneId=%d, GUID=%0X ), ItemLevel=%d, Errorlvl=%d",
														sceneId,
														LuaFnObjId2Guid( sceneId, selfId ),
														ItemLevel,
														Errorlvl )
	MissionLog(sceneId, LogInfo)
			
	if ItemLevel >= x500503_g_WeaponLevelMin and ItemLevel < x500503_g_WeaponLevelMin + 10 then
			shenjieID = x500503_g_ItemBonus[1].id
	elseif ItemLevel >= x500503_g_WeaponLevelMin + 10 and ItemLevel < x500503_g_WeaponLevelMin + 20 then
			shenjieID = x500503_g_ItemBonus[2].id
	elseif ItemLevel >= x500503_g_WeaponLevelMin + 20 and ItemLevel < x500503_g_WeaponLevelMin + 30 then
			shenjieID = x500503_g_ItemBonus[3].id
	elseif ItemLevel >= x500503_g_WeaponLevelMin + 30 and ItemLevel < x500503_g_WeaponLevelMin + 40 then
			shenjieID = x500503_g_ItemBonus[4].id
	elseif ItemLevel >= x500503_g_WeaponLevelMin + 40 and ItemLevel < x500503_g_WeaponLevelMin + 50 then
			shenjieID = x500503_g_ItemBonus[5].id
	elseif ItemLevel >= x500503_g_WeaponLevelMin + 50 then
			shenjieID = x500503_g_ItemBonus[6].id	
	else
			shenjieID = x500503_g_ItemBonus[1].id
			
			local LogInfo	= format( "[ShenBing]error: x500503_OnSubmit( sceneId=%d, GUID=%0X ), ItemLevel=%d, shenjieID=%d",
														sceneId,
														LuaFnObjId2Guid( sceneId, selfId ),
														ItemLevel,
														shenjieID )
			MissionLog(sceneId, LogInfo)			
	end
	-- PrintStr("ItemLevel ="..ItemLevel)
	-- PrintStr("shenjieID ="..shenjieID)
	
	--���������	

	if selectRadioId == x500503_g_RadioItemBonus[1].id or selectRadioId == x500503_g_RadioItemBonus[2].id
			or selectRadioId == x500503_g_RadioItemBonus[3].id or selectRadioId == x500503_g_RadioItemBonus[4].id then
			
			BeginAddItem( sceneId )
			AddItem( sceneId, shenjieID, 2 )
			ret1 = EndAddItem( sceneId, selfId )
									
--			BeginAddItem( sceneId )
--			AddItem( sceneId, selectRadioId, 1 )
--			ret2 = EndAddItem( sceneId, selfId )
									
			if ret1 > 0 then
				TryRecieveItem( sceneId, selfId, shenjieID, QUALITY_MUST_BE_CHANGE )	-- �Ų��¾�û����				
				TryRecieveItem( sceneId, selfId, selectRadioId, QUALITY_MUST_BE_CHANGE )	-- �Ų��¾�û����
				
			else
					BeginEvent(sceneId)
					strText = "� ��o c� ho�c nguy�n li�u kh�ng �� kh�ng gian, th�nh s�a sang l�i sau l�i �n l�nh."
					AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return 0
			end
			
			if DelMission( sceneId, selfId, x500503_g_MissionId ) <= 0 then					
					MissionLog(sceneId, "[ShenBing]error: x500503_OnSubmit..DelMission")
					return 0
			end
			--����к�������,��ɾ��
			if IsHaveMission( sceneId, selfId, x500503_g_MissionIdNext ) > 0 then
					DelMission( sceneId, selfId, x500503_g_MissionIdNext )
			end
			
			--AddExp( sceneId, selfId, Exp )
			--AddMoney( sceneId, selfId, Money )
			--��ʾ�Ի���
			BeginEvent( sceneId )	
				AddText( sceneId, "  L�m t�t l�m, � ��y c� T�n khuy�t th�n ti�t, ��a cho ng߽i xem nh� ph�n th߷ng." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )			
			
			LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x500503_g_Impact_Complete_Mission, 0 )
	else
			BeginEvent(sceneId)
			strText = "Nh�n th߷ng th�t b�i h�y nh�n l�i m�t l�n n�a"
			AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
	end
end

--**********************************
--ɱ����������
--**********************************
function x500503_OnKillObject( sceneId, selfId, objdataId ,objId)--������˼: �����š����objId�������λ�úš�����
		
	-- local nMonsterId = GetMissionParam(sceneId, selfId, misIndex, x500503_g_StrForePart+3)
	-- local _, strMonsterName = GetNpcInfoByNpcId(sceneId,nMonsterId)
	local monsterName = GetMonsterNamebyDataId(objdataId)
	
	local num = GetMonsterOwnerCount(sceneId,objId)
	for i=0,num-1  do
		-- ȡ �i�mӵ�з���Ȩto� � ��to� � objId
		local humanObjId = GetMonsterOwnerID(sceneId,objId,i)
		-- PrintStr("humanObjId=" .. humanObjId)
		-- ��C�i n�y ����ng����ng��C�i n�y ����
		if IsHaveMission(sceneId, humanObjId, x500503_g_MissionId) > 0 then
			-- ���ж���ng����ng�Ѿ�Th�a m�n����ɱ�־
			local misIndex = GetMissionIndexByID(sceneId,humanObjId,x500503_g_MissionId)
			if GetMissionParam(sceneId, humanObjId, misIndex, 0) <=0  then
				local	PlayerLevel = GetLevel( sceneId, humanObjId )
				local MonsterLevel = GetLevel(sceneId, objId)
	
				if ((PlayerLevel - MonsterLevel >= 0) and (PlayerLevel - MonsterLevel < 10))
					  or ((MonsterLevel - PlayerLevel >= 0) and (MonsterLevel - PlayerLevel < 10)) then
					--SetMissionParamByIndexEx(sceneId, humanObjId, misIndex, 3, 0, 30)														
					local demandKillCount = GetMissionParam(sceneId, humanObjId, misIndex, 3)
		
					--PrintStr("demandKillCount=" .. demandKillCount)
					local killedCount =	GetMissionParam(sceneId, humanObjId, misIndex, 1)
					killedCount = killedCount + 1
					--����˫��������to� � ��c�p ��t ���c���C�n ɱ����c�i��,
					--������ǰ40-60c�pto� � ����Ѿ���Ti�p th�����to� � ɱ5000to� � ��,C�n ���� -zz
					local ItemLevel = GetMissionData( sceneId, humanObjId, MD_MISSHENBING_WEAPONLEVEL )
					local iLevelCount =x500503_GetKillCountByLevel(ItemLevel)	 
					if (iLevelCount<demandKillCount) then
						demandKillCount = iLevelCount
						SetMissionByIndex(sceneId, humanObjId, misIndex, 3, demandKillCount)
					end	
					if (iLevelCount<killedCount) then
						killedCount = iLevelCount
					end
					SetMissionByIndex(sceneId, humanObjId, misIndex, 1, killedCount)
								
					BeginEvent(sceneId)
						local str = format("�� gi�t ch�t qu�i v�t y�u c�u: %d/%d",killedCount, demandKillCount )						
						AddText(sceneId, str)
					EndEvent(sceneId)
					DispatchMissionTips(sceneId, humanObjId)
					if killedCount >= demandKillCount then
						SetMissionByIndex(sceneId, humanObjId, misIndex, 0, 1)
					end
				end --if
			end --if
		end --if
	end --for

end

--**********************************
--���������¼�
--**********************************
function x500503_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x500503_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--���������ʾto� � ����
--**********************************
function x500503_AcceptDialog(sceneId, selfId, rand, g_Dialog, targetId )

	BeginEvent( sceneId )
		AddText( sceneId, g_Dialog )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--���������ʾto� � ����
--**********************************
function x500503_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--�����͵�����ʾto� � ����
--**********************************
function x500503_SubmitDialog( sceneId, selfId, rand )
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x500503_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--ȡ �i�m���¼�to� � MissionId,����obj�ļ��жԻ��龰to� � �ж�
--**********************************
function x500503_GetEventMissionId( sceneId, selfId )	
	MissionLog(sceneId, "[ShenBing]x500503_GetEventMissionId..x500503_g_MissionId="..x500503_g_MissionId)
	return x500503_g_MissionId
end

function x500503_AcceptMission( sceneId, selfId, targetId )

	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, targetId ) ~= x500503_g_Name then
		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )			
		MissionLog(sceneId, "[ShenBing]error: x500503_AcceptMission..LuaFnGetName="..LuaFnGetName( sceneId, targetId ))
		return 0
	end

	local  PlayerName=GetName(sceneId,selfId)		
	
	--��������Ti�p th�ʱ��ʾto� � ��Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x500503_g_MissionName)
		AddText( sceneId, x500503_g_MissionInfo )
		AddText(sceneId,"#{M_MUBIAO}")
		AddText(sceneId,"#{XYSB_20070928_007}"..PlayerName.."#{XYSB_20070928_008}")		
		AddText(sceneId,"#{M_SHOUHUO}")
		-- AddItemDemand( sceneId, x500503_g_ItemBonus[1].id, x500503_g_ItemBonus[1].num )  -- ����m�t ����Ʒ
		
		AddText(sceneId,"#{XYSB_20070930_012}")
						
		for i, item in x500503_g_RadioItemBonus do
			AddRadioItemBonus( sceneId, item.id, item.num )					-- ������ѡm�t ��Ʒ
		end
				
		-- AddMoneyBonus( sceneId, x500503_g_MoneyBonus )
	EndEvent( )
	DispatchMissionInfo(sceneId,selfId,targetId,x500503_g_ScriptId,x500503_g_MissionId)	

end

-- �����ύ�¼�
function x500503_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, petindex )
  
	--PrintStr("OnMissionCheck...")
	-- print(sceneId, selfId, npcid, scriptId, index1, index2, index3, petindex)
	
	local LogInfo	= format( "[ShenBing]: x500503_OnMissionCheck( sceneId=%d, GUID=%0X ), index1=%d, index2=%d, index3=%d, petindex=%d",
														sceneId,
														LuaFnObjId2Guid( sceneId, selfId ),
														index1,
														index2,
														index3,
														petindex)	
	MissionLog(sceneId, LogInfo)	
	
	-- Ѫ����������ύ����
	-- �ύ����to� � ������ng����ngҪTi�p th�to� � ����
	if scriptId ~= x500503_g_ScriptId then
		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )			
		MissionLog(sceneId, "[ShenBing]error: x500503_OnMissionCheck..scriptId="..scriptId)
		return 0
	end
	
	--�жϸ�npc��ng����ng��Ӧ����to� � npc
	if LuaFnGetName( sceneId, npcid ) ~= x500503_g_Name then
		x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )			
		MissionLog(sceneId, "[ShenBing]error: x500503_OnMissionCheck..LuaFnGetName="..LuaFnGetName( sceneId, npcid ))
		return 0
	end
	
	--�������Ѿ���������
	if IsHaveMission( sceneId, selfId, x500503_g_MissionId ) > 0 then	
		BeginEvent(sceneId)	
		AddText( sceneId, "#{XYSB_20070928_009}" )		
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,npcid)
		return 0
	end
	
	--����c�p
	if LuaFnGetLevel( sceneId, selfId ) < x500503_g_AcceptLowLevel then
		BeginEvent(sceneId)	
		AddText( sceneId, "#{XYSB_20070928_002}" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,npcid)
		return 0
	end
	
	local index = 0
	local ItemLevel = 0	
	local ItemID = 0	
	local PlayerLevel = GetLevel( sceneId, selfId )
	
	for i=1, 3 do
		if i == 1 then
			index = index1
		elseif i == 2 then
			index = index2
		elseif i == 3 then
			index = index3
		else
			index = index1
		end
		
		if index < 100 then
			ItemLevel = GetBagItemLevel(sceneId, selfId, index)
			ItemID = LuaFnGetItemTableIndexByIndex(sceneId, selfId, index)
			-- PrintStr("ItemID ="..ItemID)
			
			-- ���������ng���������Ti�p th�Ҫ��  level >= x500503_g_WeaponLevelMin �ڹ��������⹦���� >= x500503_g_ITEM_APT_LEVEL ����to� � ��c�p���ܳ������to� � ��c�p �Ѽ���������
			local attack_p = GetItemApt(sceneId, selfId, index, x500503_g_Weapon_ATTACK_P)
			local attack_m = GetItemApt(sceneId, selfId, index, x500503_g_Weapon_ATTACK_M)
			local isJudge = LuaFnIsJudgeApt(sceneId, selfId, index)				
			local EquipType = GetItemEquipPoint( ItemID )
			
			local LogInfo	= format( "[ShenBing]: x500503_OnMissionCheck( sceneId=%d, GUID=%0X ), ItemID=%d, ItemLevel=%d, attack_p=%d, attack_m=%d, isJudge=%d, isLock=%d, EquipType=%d",
														sceneId,
														LuaFnObjId2Guid( sceneId, selfId ),
														ItemID,
														ItemLevel,
														attack_p,
														attack_m,
														isJudge,
														LuaFnIsItemAvailable( sceneId, selfId, index ),
														EquipType )	
			MissionLog(sceneId, LogInfo)	
			
			-- ��Ʒ��ng��Ϊ����
			if EquipType ~= 0 then
				x500503_NotifyTip( sceneId, selfId, "#{XYSB_20070928_014}" )								
				return 0
			end
			
			-- ��Ʒ��ng��T�i 40c�p����
			if ItemLevel < x500503_g_WeaponLevelMin then
				x500503_NotifyTip( sceneId, selfId, "#{XYSB_20070928_014}" )								
				return 0
			end
			
			-- �����ng���ܹ�ʹ��
			if ItemLevel > PlayerLevel then
				x500503_NotifyTip( sceneId, selfId, "#{XYSB_20070928_015}" )								
				return 0
			end
	
			-- ��Ʒ��ng�����
			if isJudge ~= 1 then
				x500503_NotifyTip( sceneId, selfId, "#{XYSB_20070928_017}" )								
				return 0
			end
			
			-- ��Ʒ��ng��˫����
			if attack_p < x500503_g_ITEM_APT_LEVEL or attack_m < x500503_g_ITEM_APT_LEVEL then
				x500503_NotifyTip( sceneId, selfId, "#{XYSB_20070928_016}" )								
				return 0
			end
	
			-- ��Ʒ��ng������
			if LuaFnIsItemAvailable( sceneId, selfId, index ) == 0 then
					x500503_NotifyTip( sceneId, selfId, "#{XYSB_20070928_018}" )								
					return 0
			end
				
			-- PrintStr("ItemLevel ="..ItemLevel)
				
			local accres = x500503_OnAccept( sceneId, selfId, npcid, scriptId ,ItemLevel)
			
			if accres > 0 then
				local ret = EraseItem( sceneId, selfId, index )
				if	ret > 0 then
					SetMissionData(sceneId, selfId, MD_MISSHENBING_WEAPONLEVEL, ItemLevel )		--��¼�۳�to� � ����to� � ��c�p
					
					local LogInfo	= format( "[ShenBing]: x500503_OnMissionCheck( sceneId=%d, GUID=%0X ), ItemID=%d",
														sceneId,
														LuaFnObjId2Guid( sceneId, selfId ),
														ItemID)	
					MissionLog(sceneId, LogInfo)	
					return 1
				else
					BeginEvent(sceneId)			
						local strText = format("Kh�u tr� v� kh� th�t b�i")
						AddText(sceneId,strText)									
					EndEvent(sceneId)
			
					DispatchEventList(sceneId,selfId,-1)
				end					
			end
			
			x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i" )			
			MissionLog(sceneId, "[ShenBing]error: x500503_OnMissionCheck..index..accres="..accres)
			return 0					
						
		end
	end
				
	x500503_NotifyTip( sceneId, selfId, "Nh�n nhi�m v� th�t b�i: v� kh� kh�ng h�p l�" )
			
end

--/////////////////////////////////////////////////////////////////////////////////////////////////////
--��ȡ����itemto� � ��ϸ��Ϣ
function x500503_GetItemDetailInfo(itemId)
	local itemId, itemName, itemDesc = GetItemInfoByItemId(itemId)
	if itemId == -1 then
		local strText = format("%s v�t ph�m � 'EquipBase.txt' kh�ng t�m th�y!!", itemName)		
	end
	return itemId, itemName, itemDesc
end	
