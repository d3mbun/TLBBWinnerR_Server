--����NPC
--У��

x805013_g_scriptId = 805013
x805013_g_BuildingID7 = 15

--��ӵ�е��¼�ID�б�
x805013_g_eventList = {600046, 600023}-- zchw add 600046 �����ռ�

--��ӵ�е��¼�ID�б�2 Ϊ�����ռ����� zchw 
x805013_g_eventList2 = {600047, 600048, 600049}

-- �����¼� ID �б������¼��������¼�
x805013_g_eventSetList = { 600023 } 

--**********************************
--�¼��б�
--**********************************
function x805013_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "    иa v� v� danh ti�ng c�a bang ta tr�n giang h� do ta ��m nhi�m, c� � ki�n g� hay c� n�u ra" )
			for i, eventId in x805013_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			if IsHaveMission( sceneId, selfId, 1110 ) == 1 then
				AddNumText( sceneId, x805013_g_scriptId, "#GHo�n T�t Nhi�m V� Khu�ch Tr߽ng ", 4, 1001 )
			end
			AddNumText( sceneId, x805013_g_scriptId, "V� nhi�m v� khu�ch tr߽ng", 11, 1 )
			AddNumText( sceneId, x805013_g_scriptId, "Gi�i thi�u v� tr߶ng", 11, 2 )
			AddNumText( sceneId, x805013_g_scriptId, "Ph߽ng ph�p ch� t�o c�ng tr�nh", 7, 3 )
			AddNumText( sceneId, x805013_g_scriptId, "T�o ��i c� cho bang h�i", 6, 4 )
			AddNumText( sceneId, x805013_g_scriptId, "Tu luy�n ph�ng ng�", 6, 5 )
			AddNumText( sceneId, x805013_g_scriptId, "X�y d�ng th�p ki�m cao c�p", 6, 6 )
		else
			AddText( sceneId, "    ��y l� �a �i�m quan tr�ng c�a tr߶ng, tr� � t� b�n bang, kh�ng ai ���c xem tr�m � ��y" )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��������
--**********************************
function x805013_OnDefaultEvent( sceneId, selfId, targetId )
	x805013_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- �ж�ĳ���¼��Ƿ����ͨ���� NPC ִ��
--**********************************
function x805013_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805013_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805013_g_eventSetList do
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
function x805013_OnEventRequest( sceneId, selfId, targetId, eventId )

	if x805013_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	end

	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Expand_Mission_Help}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_JiaoChang}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 3 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 5 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 6 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if GetNumText() == 1001 then
		if IsHaveMission( sceneId, selfId, 1110 ) <= 0 then --Chua Nhan Nhiem Vu
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� v�n ch�a nh�n Nhi�m v� Khu�ch Tr߽ng n�o c�?" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1110)
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
					AddNumText( sceneId, x805013_g_scriptId, "Ta d�ng #GNg�n L��ng", 6, 10011 )
					AddNumText( sceneId, x805013_g_scriptId, "Ta d�ng #GC�ng Hi�n", 6, 10012 )
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
				AddText( sceneId, "Ng߽i kh�ng c� �� #{_MONEY"..NeedMoney.."} � ho�n t�t nhi�m v� Khu�ch Tr߽ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1110)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600023, "OnSubmit", sceneId, selfId, targetId, 99999 )
			
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� Khu�ch Tr߽ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
	if GetNumText() == 10012 then
		if GetTime2Day() == 20200927 then
			if GetHour() <= 5 then
				local Guild_LV = GetGuildLevel(sceneId, selfId)
				local NeedCH = Guild_LV*2;
				local CurrCH = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)
				
				if NeedCH > CurrCH then
					BeginEvent( sceneId )
						AddText( sceneId, "Ng߽i kh�ng c� �� #G"..NeedCH.."#W �i�m #GC�ng Hi�n #W� ho�n t�t nhi�m v� Khu�ch Tr߽ng!" )
					EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
				else
					CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -NeedCH )
					local misIndex = GetMissionIndexByID(sceneId, selfId, 1110)
					SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
					
					CallScriptFunction( 600023, "OnSubmit", sceneId, selfId, targetId, 99999 )

					BeginEvent( sceneId )
						AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� Khu�ch Tr߽ng!" )
					EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
				end
			else
				BeginEvent( sceneId )
					AddText( sceneId, "Ch�c n�ng kh�ng kh� d�ng!" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			end
		else
			BeginEvent( sceneId )
				AddText( sceneId, "Ch�c n�ng kh�ng kh� d�ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x805013_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, eventId in x805013_g_eventList2 do
		if missionScriptId == eventId then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
			return
		end
	end
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805013_NotifyFailTips( sceneId, selfId, "Ng߽i hi�n kh�ng th� nh�n nhi�m v� n�y" )
		elseif ret == -2 then
			x805013_NotifyFailTips( sceneId, selfId, "Kh�ng th� ti�p nh�n nhi�u nhi�m v�" )
		end

		return
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x805013_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805013_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x805013_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�ύ�����������
--**********************************
function x805013_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, eventId in x805013_g_eventList2 do
		if missionScriptId == eventId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		end
	end
	
	if x805013_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--�����¼�
--**********************************
function x805013_OnDie( sceneId, selfId, killerId )
end

function x805013_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
