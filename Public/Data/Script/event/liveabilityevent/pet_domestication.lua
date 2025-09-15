--���޲���Ѫ�Ϳ��ֶ�

--�ű���
x701603_g_ScriptId	= 701603

--**********************************
--������ں���
--**********************************
function x701603_OnDefaultEvent( sceneId, selfId, targetId, ButtomNum )
	--������������,�����ng0,�������Ӧ��ʾ
	local PetNum		= LuaFnGetPetCount( sceneId, selfId )
	local NpcName
	if PetNum <= 0 then
		local NpcName	= GetName( sceneId, targetId )
		BeginEvent( sceneId )
			AddText( sceneId, "  <"..NpcName.."> quan s�t c�c h� k� t� �u t�i ch�n, nh�n b�n tr�i, nh�n b�n ph�i, nh�n �ng sau, nheo m�t n�i v�i c�c h�:#rC� mang tr�n th� t�i ��u" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--��ȡ��ս����to� � ObjId
	local	ObjId			= x701603_FightingPet( sceneId, selfId )
	
	--���������Tr� li�uC�n ����Ǯ
	local	MoneyCost	= 0
	local i
	for i=0, PetNum-1, 1 do
		MoneyCost	= MoneyCost + x701603_CalcMoney_hp( sceneId, selfId, i )
	end

	if MoneyCost == 0 then
		BeginEvent( sceneId )
			AddText(sceneId, "  Tr�n th� c�a c�c h� r�t kho� m�nh, kh�ng c�n ch�a tr�" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		
		--Hu� b�ָ���������to� � ���ежԿ���ɢפ��Ч��
		if ObjId >= 0 then
			LuaFnDispelAllHostileImpacts( sceneId, ObjId )
		end
		return
	end
	
	local	Pet_MaxHP
	local PetID_H, PetID_L
	if ButtomNum == PET_FULL then
		BeginEvent( sceneId )
			AddText( sceneId, "  C�c h� c�n chi #G#{_EXCHG"..MoneyCost.."}#W, xin x�c �nh c� mu�n tr�n th� h�i ph�c kh�ng?" )
			--X�c nh�n�����޼�Ѫ��ť
			AddNumText( sceneId, x701603_g_ScriptId, "аng �", 6, PET_FULL_OK )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	elseif ButtomNum == PET_FULL_OK then
		--  �i�m�����Ӻͽ�Ǯ��Ŀ
		local nMoneyJZ = GetMoneyJZ ( sceneId, selfId )
		local nMoney = GetMoney ( sceneId, selfId )
		
		--��������ng�����㹻to� � �ֽ�
		if (nMoneyJZ + nMoney >= MoneyCost) then

			--�۳����Ӻͽ�Ǯ
			local moneyJZ, money = LuaFnCostMoneyWithPriority ( sceneId, selfId, MoneyCost )
		
			--���޻�Ѫ
			for i=0, PetNum-1, 1 do
				Pet_MaxHP	= LuaFnGetPet_MaxHP( sceneId, selfId, i )

				--��������index �i�m������guid
				PetID_H, PetID_L = LuaFnGetPetGUID( sceneId, selfId, i )
				--�Linh�HP
				LuaFnSetPetHP( sceneId, selfId, PetID_H, PetID_L, Pet_MaxHP )
			end
			
			--Hu� b�ָ���������to� � ���ежԿ���ɢפ��Ч��
			if ObjId >= 0 then
				LuaFnDispelAllHostileImpacts( sceneId, ObjId )
			end

			--T�i npc���촰��֪ͨ��m�t ����˶���Ǯ,��������������Ѿ��ָ���
			if (moneyJZ == MoneyCost) then
				-- ֻ�۽���
				BeginEvent( sceneId )
					AddText( sceneId, "  C�c h� �� chi #G#{_EXCHG"..moneyJZ.."}#W, tr�n th� c�a c�c h� �� h�i ph�c kh�e m�nh." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )

			elseif (moneyJZ > 0) and (moneyJZ + money) == MoneyCost then
				-- �۳����Ӻͽ�Ǯ
				BeginEvent( sceneId )
					AddText( sceneId, "  C�c h� �� chi #G#{_EXCHG"..moneyJZ.."}#W." )
					AddText( sceneId, "  C�c h� �� chi #G#{_MONEY"..money.."}#W." )
					AddText( sceneId, "  tr�n th� c�a c�c h� �� h�i ph�c kh�e m�nh." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )

			elseif (moneyJZ == 0) and ( money == MoneyCost) then
				-- �۳���Ǯ
				BeginEvent( sceneId )
					AddText( sceneId, "  C�c h� �� chi #G#{_MONEY"..money.."}#W, tr�n th� c�a c�c h� �� h�i ph�c kh�e m�nh." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )

			else			
				BeginEvent( sceneId )
					AddText( sceneId, "  Ch�a tr� kh�ng th�nh c�ng!" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			end
			
		-- Ǯ����
		else
			BeginEvent( sceneId )
				AddText( sceneId, "  C�c h� kh�ng �� ng�n l��ng" )
			EndEvent( sceneId )
			DispatchMissionTips( sceneId, selfId )
			return

		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x701603_OnEnumerate( sceneId, selfId, targetId )
	--��Ӱ�ť
	AddNumText(sceneId,x701603_g_ScriptId,"Tr� th߽ng cho tr�n th�", 6,PET_FULL)	--����to� � PET_FULL��ng������ʾC�i n�y ��ť��ng��m�t c�iҳ��to� � ��ʾ��ť,����ngX�c nh�n�ָ�to� � ��ť
	return
end

--**********************************
--���Ti�p th�����
--**********************************
function x701603_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x701603_OnAccept( sceneId, selfId, ABILITY_CAIKUANG )
end

--**********************************
--����ָ�Ѫ����
--**********************************
--��λѪѱ����ֵ: 0.025+n*0.0005(nΪ���޵�c�p)
--��λ���ֶȼ�ֵ: 0.373+0.44*n(nΪ���޵�c�p)
function x701603_CalcMoney_hp( sceneId, selfId, index )
	local lv			= LuaFnGetPet_Level( sceneId, selfId, index )
	local	hp			= LuaFnGetPet_HP( sceneId, selfId, index )
	local	hp_max	= LuaFnGetPet_MaxHP( sceneId, selfId, index )
	if hp >= hp_max then
		return 0
	end

	local	gld	= floor( ( 0.025+lv*0.0005 ) * (hp_max-hp) )
	if gld < 1 then
		gld			= 1
	end
	return gld
end

--**********************************
--��ȡ��ս����to� � ObjId
--**********************************
function x701603_FightingPet( sceneId, selfId )
	local	PetNum	= LuaFnGetPetCount( sceneId, selfId )
	local	i
	local	PetID_H, PetID_L
	local	objId
	if PetNum <= 0 then
		return -1
	end
	
	for i=0, PetNum-1, 1 do
		--��������index �i�m������guid
		PetID_H, PetID_L = LuaFnGetPetGUID( sceneId, selfId, i )
		objId	= LuaFnGetPetObjIdByGUID( sceneId, selfId, PetID_H, PetID_L )
		
		if objId >= 0 then
			return objId
		end
	end
	return -1
end
