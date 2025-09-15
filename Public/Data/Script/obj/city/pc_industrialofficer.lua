--����NPC
--����

x805008_g_scriptId = 805008
x805008_g_BuildingID16 = 5

--��ӵ�е��¼�ID�б�
x805008_g_eventList = { 600002 }

-- �����¼� ID �б������¼��������¼�
x805008_g_eventSetList = { 600002 }

--**********************************
--�¼��б�
--**********************************
function x805008_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if Humanguildid == cityguildid then
			AddText( sceneId, "    C�c c�ng vi�c nung ��c c�a b�n bang, c� th� t�m �ng M� c�a ch�ng ta, hy v�ng n�u gi�p ���c �i�u g�, ch�c ch�n s� kh�ng ch�i t�." )
			for i, eventId in x805008_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			if IsHaveMission( sceneId, selfId, 1105 ) == 1 then
				AddNumText( sceneId, x805008_g_scriptId, "#GHo�n T�t Nhi�m V� C�ng Tr�nh", 4, 1001 )
			end
			AddNumText( sceneId, x805008_g_scriptId, "Gi�i thi�u nhi�m v� c�ng tr�nh", 11, 7 )
			AddNumText( sceneId, x805008_g_scriptId, "S�a ch�a trang b�", 6, 9 )
			AddNumText( sceneId, x805008_g_scriptId, "��i L� h�p th�nh B�o Th�ch", 6, 10 )
			AddNumText( sceneId, x805008_g_scriptId, "C�a h�ng b�o ch�", 7, 6 )
			AddNumText( sceneId, x805008_g_scriptId, "Gi�i thi�u b� r�n", 11, 8 )
			AddNumText( sceneId, x805008_g_scriptId, "V� k� n�ng y�u th߽ng", 11, 11 )
			AddNumText( sceneId, x805008_g_scriptId, "Nh�n k� n�ng y�u th߽ng", 6, 12 )

			--life ���������������Ӧ�����ѡ��
			CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "AddCityLifeAbilityOpt",sceneId, selfId, x805008_g_scriptId,x805008_g_BuildingID16,888)
		else
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = "N� hi�p"
			elseif PlayerGender == 1 then
				rank = "��i hi�p"
			else
				rank = "Xin h�i"
			end

			AddText( sceneId, "    �ng M� l� m�t ng߶i th� k�ch, " .. rank .. " C� g� ch� gi�o?" )
		end
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��������
--**********************************
function x805008_OnDefaultEvent( sceneId, selfId, targetId )
	x805008_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- �ж�ĳ���¼��Ƿ����ͨ���� NPC ִ��
--**********************************
function x805008_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805008_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805008_g_eventSetList do
			if CallScriptFunction( findId, "IsInEventList", sceneId, selfId, eventId ) == 1 then
				bValid = 1
				break
			end
		end
	end

	return bValid
end

function x805008_CheckFavorOfGuild( sceneId, selfId )
    --�ɹ����� 0
    --���ɲ������� 1
    --�ﹱ���㷵�� 2
    --������ȡʱ�� 3
    --��ά��״̬   4

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	if( Humanguildid ~= cityguildid ) then
		return 1   --���Ǳ����Ա
	end

	local GuidPoint = CityGetAttr( sceneId, selfId, 6 )

	local CurDay = GetDayTime()
	local OldDay = GetMissionData( sceneId, selfId, MD_FAVOROFGUILD_LASTTIME ) --ȡ���ϴ���ȡ���ɹػ���ʱ��

	if( CurDay <= OldDay ) then
	    return 3  --���ϴ���ȡʱ�䲻��1��
	end

	if( GuidPoint < 1 ) then
	    return 2   --�ﹱ����1��
	end

	local citySceneId = CityGetSelfCityID( sceneId, selfId )
	local Status = CityGetMaintainStatus( sceneId, selfId, citySceneId )

	if( Status == 1 ) then
	    return 4     --��ά��״̬,������ȡ���ɹػ�
	end

	return 0  --�ɹ�
end

function x805008_SetFavorOfGuild( sceneId, selfId )

    local FavorCode = x805008_CheckFavorOfGuild( sceneId, selfId )
	if( 0 ~= FavorCode ) then
	    return
	end

	local Level = GetLevel( sceneId, selfId )
	--���ݵȼ�����buff

	local Name = GetName( sceneId, selfId )
	local Point = 0
	local BuffLevel = 0

	if( Level >= 10 and Level < 20 ) then
	    Point = 10
	    BuffLevel = 7800
	elseif ( Level >= 20 and Level < 30 ) then
	    Point = 15
	    BuffLevel = 7801
	elseif ( Level >= 30 and Level < 40 ) then
	    Point = 20
	    BuffLevel = 7802
	elseif ( Level >= 40 and Level < 50 ) then
	    Point = 25
	    BuffLevel = 7803
	elseif ( Level >= 50 and Level < 60 ) then
	    Point = 30
	    BuffLevel = 7804
	elseif ( Level >= 60 and Level < 70 ) then
	    Point = 35
	    BuffLevel = 7805
	elseif ( Level >= 70 and Level < 80 ) then
	    Point = 40
	    BuffLevel = 7806
	elseif ( Level >= 80 and Level < 90 ) then
	    Point = 45
	    BuffLevel = 7807
	elseif ( Level >= 90 and Level < 100 ) then
	    Point = 50
	    BuffLevel = 7808
	elseif ( Level >= 100 and Level < 110 ) then
	    Point = 55
	    BuffLevel = 30000
	elseif ( Level >= 110 and Level < 120 ) then
	    Point = 60
	    BuffLevel = 30001
	elseif ( Level >= 120 and Level < 130 ) then
	    Point = 65
	    BuffLevel = 30002
	elseif ( Level >= 130 and Level < 140 ) then
	    Point = 70
	    BuffLevel = 30003
	elseif ( Level >= 140 and Level < 150 ) then
	    Point = 75
	    BuffLevel = 30004
	elseif ( Level >= 150 and Level <= 160) then
	    Point = 80
	    BuffLevel = 30005
	else
	    Point = 0
	    BuffLevel = 0
	end

	if( Point > 0 ) then
	    local CurDay = GetDayTime()
	    local GuidPoint = CityGetAttr( sceneId, selfId, 6 )

        --CitySetAttr( sceneId, selfId, 6, GuidPoint - 1 )   --����һ��ﹱ
        CityChangeAttr( sceneId, selfId, 6, -1 )   --����һ��ﹱ

        SetMissionData( sceneId, selfId, MD_FAVOROFGUILD_LASTTIME, CurDay ) --������ȡ���ɹػ���ʱ��
        local sMessage = format("@*;SrvMsg;GLD:#Y#{_INFOUSR%s}#cffff00 � quan vi�n c�ng nghi�p#c00ff00 M� �ng H�ng#cffff00nh�n th�nh c�ng k� n�ng quan t�m c�a m�n ph�ic�a ng�y h�m nay, #c00ff00C߶ng l�c#cffff00 v�#c00ff00 N�i L�c#cffff00 m�i lo�i t�ng#c00ff00%d#cffff00 �i�m.", Name, Point );

	    BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
	    LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, BuffLevel, 0)   --����buff
	end



end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x805008_OnEventRequest( sceneId, selfId, targetId, eventId )
	if x805008_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	--life ����������������Ӧ�����ѡ��
	elseif eventId ~= x805008_g_scriptId then
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnDefaultEvent",sceneId, selfId, targetId, eventId, x805008_g_scriptId, x805008_g_BuildingID16 )
		return
	end
	if GetNumText() == 6 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )								--���ó����̵����
			UICommand_AddInt( sceneId, x805008_g_BuildingID16 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 104 )
	elseif GetNumText() == 7 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Industry_Mission_Help}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 8 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_DuanTai}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 9 then
		BeginEvent(sceneId)
			AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 10 then
		BeginEvent(sceneId)
			AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

	elseif GetNumText() == 11 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{function_help_085}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 12 then
	    local FavorCode = x805008_CheckFavorOfGuild( sceneId, selfId )
	    if( 0 == FavorCode ) then  --��������
	        x805008_SetFavorOfGuild( sceneId, selfId )
	    elseif( 1 == FavorCode ) then  --���Ǳ���
	        BeginEvent(sceneId)
			    AddText( sceneId, "#{FAVOROFGUILD_NOTMEMBER}" )
		    EndEvent(sceneId)
		    DispatchEventList( sceneId, selfId, targetId )
	    elseif( 2 == FavorCode ) then  --�ﹱ����1��
	        BeginEvent(sceneId)
			    AddText( sceneId, "#{FAVOROFGUILD_POINTNOTENOUGH}" )
		    EndEvent(sceneId)
		    DispatchEventList( sceneId, selfId, targetId )
	    elseif( 3 == FavorCode ) then  --������ȡʱ�� 3
	        BeginEvent(sceneId)
			    AddText( sceneId, "#{FAVOROFGUILD_TIMENOTENOUGH}" )
		    EndEvent(sceneId)
		    DispatchEventList( sceneId, selfId, targetId )
        elseif( 4 == FavorCode ) then  --��ά��״̬   4
	        BeginEvent(sceneId)
			    AddText( sceneId, "#{FAVOROFGUILD_CITYSTATENOTENOUGH}" )
		    EndEvent(sceneId)
		    DispatchEventList( sceneId, selfId, targetId )
	    end



	elseif GetNumText() == 888 then
		BeginEvent(sceneId)
		--life ���������������Ӧ�����ѡ��
		CallScriptFunction( CITY_BUILDING_ABILITY_SCRIPT, "OnEnumerate",sceneId, selfId, targetId, x805008_g_BuildingID16 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	end
	
	if GetNumText() == 1001 then
		if IsHaveMission( sceneId, selfId, 1105 ) <= 0 then --Chua Nhan Nhiem Vu
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� v�n ch�a nh�n Nhi�m v� C�ng Tr�nh n�o c�?" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1105)
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
					AddNumText( sceneId, x805008_g_scriptId, "Ta d�ng #GNg�n L��ng", 6, 10011 )
					AddNumText( sceneId, x805008_g_scriptId, "Ta d�ng #GC�ng Hi�n", 6, 10012 )
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
				AddText( sceneId, "Ng߽i kh�ng c� �� #{_MONEY"..NeedMoney.."} � ho�n t�t nhi�m v� C�ng Tr�nh!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1105)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600002, "OnSubmit", sceneId, selfId, targetId, 99999 )
			
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� C�ng Tr�nh!" )
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
				AddText( sceneId, "Ng߽i kh�ng c� �� #G"..NeedCH.."#W �i�m #GC�ng Hi�n #W� ho�n t�t nhi�m v� C�ng Tr�nh!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -NeedCH )
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1105)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600002, "OnSubmit", sceneId, selfId, targetId, 99999 )

			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� C�ng Tr�nh!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x805008_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805008_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805008_NotifyFailTips( sceneId, selfId, "Ng߽i hi�n kh�ng th� nh�n nhi�m v� n�y" )
		elseif ret == -2 then
			x805008_NotifyFailTips( sceneId, selfId, "Kh�ng th� ti�p nh�n nhi�u nhi�m v�" )
		end

		return
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x805008_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805008_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805008_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x805008_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805008_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�ύ�����������
--**********************************
function x805008_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805008_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--�����¼�
--**********************************
function x805008_OnDie( sceneId, selfId, killerId )
end

function x805008_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
