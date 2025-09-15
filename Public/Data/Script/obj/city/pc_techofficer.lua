--����NPC
--�Ƽ���Ա

x805015_g_scriptId = 805015
x805015_g_BuildingID9 = 13

--��ӵ�е��¼�ID�б�
x805015_g_eventList = { 600012 }

-- �����¼� ID �б������¼��������¼�
x805015_g_eventSetList = { 600012 }

--��ȡ�̽�������Ҫ�İﹱ����	--add by xindefeng
x805015_g_MingTieNeedBangGong = 50
--�̽�����ID	--add by xindefeng
x805015_g_TangJinMingTieID = 30505205
--ÿ�ο�����ȡ�̽���������
x805015_g_TangJinMingTieCount = 1

--**********************************
--�¼��б�
--**********************************
function x805015_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0
	
	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "    H�ng th� c�a M�n Th�nh, �u t�p trung v�o k� ngh� uy�n th�m, ch�ng ta l� huynh � c�ng bang, c� g� c�n ta gi�p, mau n�i �i." )
			for i, eventId in x805015_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			
			if IsHaveMission( sceneId, selfId, 1107 ) == 1 then 
				AddNumText( sceneId, x805015_g_scriptId, "#GHo�n T�t Nhi�m V� K� Thu�t", 4, 1001 )
			end
			
			AddNumText( sceneId, x805015_g_scriptId, "Gi�i thi�u nhi�m v� khoa h�c k� thu�t", 11, 1 )
			--AddNumText( sceneId, x805015_g_scriptId, "S�a ch�a danh x�ng bang h�i", 6, 3 )	--��m�t ��Ҫ��ɵ�--del by xindefeng
			AddNumText( sceneId, x805015_g_scriptId, "Nghi�n c�u th߽ng ph�m m�i", 6, 4 )
			AddNumText( sceneId, x805015_g_scriptId, "��c t��ng th�nh th�", 6, 5 )
			AddNumText( sceneId, x805015_g_scriptId, "S�ng ch� bang huy cho bang h�i", 6, 6 )
			AddNumText( sceneId, x805015_g_scriptId, "Gi�i thi�u th� ph�ng", 11, 2 )
			AddNumText( sceneId, x805015_g_scriptId, "L�nh N�ng Kim danh thi�p", 6, 20 )	--add by xindefeng
			AddNumText( sceneId, x805015_g_scriptId, "V� l�nh bang h�i t� ��nh danh hi�u", 11, 22 )	--add by xindefeng
		
			--life ���������������Ӧ�����ѡ��
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805015_g_scriptId,x805015_g_BuildingID9,888)
		else
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = "C� n߽ng "
			elseif PlayerGender == 1 then
				rank = "Ti�n sinh"
			else
				rank = "Xin h�i"
			end

			AddText( sceneId, "    A! " .. rank .. " Kh�ng gi�ng nh� ng߶i trong b�n bang, ti�u sinh kh�ng ti�n n�i nhi�u c�i ��." )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��������
--**********************************
function x805015_OnDefaultEvent( sceneId, selfId, targetId )
	x805015_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- �ж�ĳ���¼��Ƿ����ͨ���� NPC ִ��
--**********************************
function x805015_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805015_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805015_g_eventSetList do
			if CallScriptFunction( findId, "IsInEventList", sceneId, selfId, eventId ) == 1 then
				bValid = 1
				break
			end
		end
	end

	return bValid
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x805015_OnEventRequest( sceneId, selfId, targetId, eventId )
	if x805015_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	--life ����������������Ӧ�����ѡ��
	elseif eventId ~= x805015_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805015_g_scriptId, x805015_g_BuildingID9 )
		return
	end
	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Tec_Mission_Help}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_ShuFang}" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	--elseif GetNumText() == 3 then--��һ��Ҫ��ɵ�--del by xindefeng
	--	BeginEvent(sceneId)
	--	AddText( sceneId, "������ܼ�������" )		
	--	EndEvent(sceneId)
	--	DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 5 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 6 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 20 then																--��ȡ�̽�����	--add by xindefeng
		-- ����ȷ��ҳ��			add by WTT
		BeginEvent(sceneId)
			-- ��ȡ�̽�������Ҫ����50���ṱ�׶ȡ���ȷ��Ҫ��ȡ��
			AddText( sceneId, "#{TJMT_090213_01}" )
			--ȷ���һ���ť
			AddNumText(sceneId, x805015_g_scriptId, "��ng, ta x�c nh�n", 6, 201)				
			--Tr� v���m�t ҳ��ť
			AddNumText(sceneId, x805015_g_scriptId, "Kh�ng, t� b�", 6, 202)		
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 201 then																-- ȷ����ȡ�̽�����		add by WTT
		x805015_GetTangJinMinTie(sceneId, selfId, targetId)

	elseif GetNumText() == 202 then																-- ������ȡ�̽�����		add by WTT
		BeginEvent( sceneId )
			x805015_OnDefaultEvent( sceneId, selfId, targetId )				-- ������һҳ
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	
	elseif GetNumText() == 22 then	--������ȡ����Զ���ƺ�	--add by xindefeng
		BeginEvent(sceneId)
			AddText( sceneId, "#{TangJinMingTie_Help}")
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life ���������������Ӧ�����ѡ��
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805015_g_BuildingID9 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if GetNumText() == 1001 then
		if IsHaveMission( sceneId, selfId, 1107 ) <= 0 then --Chua Nhan Nhiem Vu
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� v�n ch�a nh�n Nhi�m v� K� Thu�t n�o c�?" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1107)
			local misIndexComplete = GetMissionParam(sceneId, selfId, misIndex, 0)
			if misIndexComplete >= 1 then
				BeginEvent( sceneId )
					AddText( sceneId, "Ch�ng ph�i ng߽i �� ho�n t�t nhi�m v� r�i sao?" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			else
				local Guild_LV = GetGuildLevel(sceneId, selfId)
				BeginEvent( sceneId )
					AddText( sceneId, "Ng߽i mu�n d�ng #GNg�n L��ng #Whay �i�m #GC�ng Hi�n #W� ho�n t�t nhi�m v�?" )
					AddText( sceneId, "Chi ph� Ng�n L��ng: "..Guild_LV.." #-02" )
					AddText( sceneId, "�i�m ph� C�ng Hi�n: "..(Guild_LV*2).."#G CH" )
					--AddText( sceneId, "#{_MONEY10000}" )
					AddNumText( sceneId, x805015_g_scriptId, "Ta d�ng #GNg�n L��ng", 6, 10011 )
					AddNumText( sceneId, x805015_g_scriptId, "Ta d�ng #GC�ng Hi�n", 6, 10012 )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			end
		end
	end
	
	if GetNumText() == 10011 then
		local Guild_LV = GetGuildLevel(sceneId, selfId)
		local NeedMoney = Guild_LV*10000;
		
		if CostMoney(sceneId,selfId,NeedMoney) == -1 then
			BeginEvent( sceneId )
				AddText( sceneId, "Ng߽i kh�ng c� �� #{_MONEY"..NeedMoney.."} � ho�n t�t nhi�m v� K� Thu�t!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1107)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600012, "OnSubmit", sceneId, selfId, targetId, 99999 )
			
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� K� Thu�t!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
	if GetNumText() == 10012 then
		local Guild_LV = GetGuildLevel(sceneId, selfId)
		local NeedCH = Guild_LV*2;
		local CurrCH = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)
		
		if NeedCH > CurrCH then
			BeginEvent( sceneId )
				AddText( sceneId, "Ng߽i kh�ng c� �� #G"..NeedCH.."#W �i�m #GC�ng Hi�n #W� ho�n t�t nhi�m v� K� Thu�t!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -NeedCH )
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1107)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600012, "OnSubmit", sceneId, selfId, targetId, 99999 )

			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� K� Thu�t!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
end

--**********************************
--���ܴ�NPC������
--**********************************
function x805015_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805015_NotifyFailTips( sceneId, selfId, "Ng߽i hi�n kh�ng th� nh�n nhi�m v� n�y" )
		elseif ret == -2 then
			x805015_NotifyFailTips( sceneId, selfId, "Kh�ng th� ti�p nh�n nhi�u nhi�m v�" )
		end

		return
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x805015_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805015_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x805015_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�ύ�����������
--**********************************
function x805015_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805015_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--�����¼�
--**********************************
function x805015_OnDie( sceneId, selfId, killerId )
end

function x805015_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--��ȡ�̽�����	--add by xindefeng
--**********************************
function x805015_GetTangJinMinTie(sceneId, selfId, targetId)
	--���ﹱ
	local szMsg = nil
	local nBangGongPoint = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)	--��ȡ�ﹱ����
  if nBangGongPoint < x805015_g_MingTieNeedBangGong then
  	szMsg = format("    �i�m c�ng hi�n kh�ng �� #G%d#W. Kh�ng th� �i ���c danh hi�u n�y.", x805015_g_MingTieNeedBangGong)
  	x805015_NotifyFailTips( sceneId, selfId, szMsg)
  	return
  end
  	
  --��ⱳ���Ƿ��еط�
	if (LuaFnGetPropertyBagSpace( sceneId, selfId ) < x805015_g_TangJinMingTieCount) then
		--��Ŀ��ʾ"�ռ䲻��"
		x805015_NotifyFailTips(sceneId, selfId, "#{YRJ_BagFullTip}")
		return
	end	
	
	--����ͨ��
	
	--ɾ���ﹱ
  local ret = CityChangeAttr(sceneId, selfId, 6, -x805015_g_MingTieNeedBangGong)
	if not ret or ret ~= 1 then		
		x805015_NotifyFailTips(sceneId, selfId, "    Kh�ng th� kh�u tr� Bang c�ng!")	--��Ŀ��ʾ"�޷�ɾ���ﹱ"
		return
	end
	
	--����һ��"�̽�����"
	BeginAddItem(sceneId)
		AddItem(sceneId, x805015_g_TangJinMingTieID, x805015_g_TangJinMingTieCount)
	EndAddItem(sceneId, selfId)
	AddItemListToHuman(sceneId, selfId)--����Ʒ�����
	
	--������,�½���:���պ�:)
	BeginEvent( sceneId )
		AddText( sceneId, "    ��y l� #GThi�p v�ng#W, c�m l�y v� s� d�ng t�t!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end
