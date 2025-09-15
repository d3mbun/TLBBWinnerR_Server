--����NPC
--�����

x805028_g_scriptId=805028
x805028_g_BuildingID16 = 11

--��ӵ�е��¼�ID�б�
x805028_g_eventList = {600030} --zchw

-- �����¼� ID �б������¼��������¼�
x805028_g_eventSetList = {600030}

x805028_TIME_2000_01_03_ = 946828868

x805028_g_BuffPalyer_25 = 60
x805028_g_BuffAll_15    = 62

x805028_g_BangGongLimit    = 20 --[tx43764]
x805028_g_Item = 40004426

--**********************************
--�¼��б�
--**********************************
function x805028_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0
	local PlayerName = GetName( sceneId, selfId )

	--�Ƿ��Ǳ����Ա
	local guildid 		= GetHumanGuildID(sceneId,selfId)
	local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
	local strText

	if(guildid ~= cityguildid) then
		BeginEvent(sceneId)
			strText = "Ng߶i n�o! d�m x�ng v�o bang c�a ta!"
			AddText(sceneId,strText)
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	BeginEvent( sceneId )
		strText = "L�o V� l� quan v� c�a b�n th�nh, m�c d� V� m� th�nh th�o v� ngh�, c� c� h�i c� th� c�ng ta th� s�c. ��ng r�i, c�n c� �i�u g� ch� gi�o? L�o C� l� quan v� c�a B�n th�nh, m�c d� V� m�u"
		AddText(sceneId,strText);
		AddText(sceneId, "    " .. PlayerName .. "! T�i l�m nhi�m v� qu�c ph�ng!")
		if CityGetSelfCityID( sceneId, selfId ) == sceneId then
			for i, eventId in x805028_g_eventList do
				--PrintStr("eventId" .. eventId)
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
		end
		
		if IsHaveMission( sceneId, selfId, 1109 ) == 1 then
			AddNumText( sceneId, x805028_g_scriptId, "#GHo�n T�t Nhi�m V� Qu�c Ph�ng", 4, 1001 )
		end
		
		AddNumText( sceneId, x805028_g_scriptId, "Gi�i thi�u nhi�m v� qu�c ph�ng", 11, 1 )
		AddNumText( sceneId, x805028_g_scriptId, "Tu s�a x�y d�ng l�u ki�m", 6, 3 )
		AddNumText( sceneId, x805028_g_scriptId, "Tu luy�n t�n c�ng", 6, 4 )
		AddNumText( sceneId, x805028_g_scriptId, "Mua gi�y v� ph�ng c�", 7, 5 )
		AddNumText( sceneId, x805028_g_scriptId, "Gi�i thi�u v� ph߶ng", 11, 2 )

		-- ������˫
		AddNumText( sceneId, x805028_g_scriptId, "L�nh 2 l�n kinh nghi�m", 6, 6 )
		
		AddNumText( sceneId, x805028_g_scriptId, "#{YPLJ_090116_01}", 6, 7 )--[tx43764]

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��������
--**********************************
function x805028_OnDefaultEvent( sceneId, selfId,targetId )
	x805028_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- �ж�ĳ���¼��Ƿ����ͨ���� NPC ִ��
--**********************************
function x805028_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805028_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805028_g_eventSetList do
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
function x805028_OnEventRequest( sceneId, selfId, targetId, eventId )
	if x805028_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	end
	if GetNumText() == 1 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Defance_Mission_Help}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		BeginEvent(sceneId)
		AddText( sceneId, "#{City_Intro_WuFang}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	 elseif GetNumText() == 3 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 4 then
		BeginEvent(sceneId)
		AddText( sceneId, "Ch�c n�ng n�y s�p ���c th�c hi�n" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 5 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )								--���ó����̵����
			UICommand_AddInt( sceneId, x805028_g_BuildingID16 )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 104 )

	elseif GetNumText() == 6 then
		-- ������ǲ��Ǵ��ڵ�ά��״̬��
		-- 1������ҳ����ǲ��Ǵ��ڵ�ά��״̬��
		if CityGetMaintainStatus(sceneId, selfId, sceneId) == 1  then
			BeginEvent(sceneId)
				AddText( sceneId, "  Hi�n b�n bang �ang � tr�ng th�i duy tr� th�p, m�i ph�c l�i �u kh�ng th� cung c�p cho ch� v�, �ng cam c�ng kh� c� g�ng ki�m ���c c�ng nhi�u v�n cho b�n th�nh v�n l� t�t nh�t." )
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		BeginEvent(sceneId)
			AddText( sceneId, " H�nh t�u tr�n giang h�, coi tr�ng hi�u qu� t�c �, c� ph�i mu�n l�nh th�i gian g�p ��i kinh nghi�m kh�ng?" )
			AddNumText( sceneId, x805028_g_scriptId, "Nh�n 1 gi� g�p ��i kinh nghi�m", 6, 111 )
			AddNumText( sceneId, x805028_g_scriptId, "Nh�n 2 gi� g�p ��i kinh nghi�m", 6, 222 )
			AddNumText( sceneId, x805028_g_scriptId, "Nh�n 4 gi� g�p ��i kinh nghi�m", 6, 333 )
			AddNumText( sceneId, x805028_g_scriptId, "Xem th�i gian nh�n kinh nghi�m", 6, 444 )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		
	elseif GetNumText() == 7 then
	
		if GetItemCount(sceneId, selfId, x805028_g_Item) >= 1  then
			BeginEvent(sceneId)
				AddText( sceneId, "#{YPLJ_090116_02}" )--[tx43764]
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		
		if CityGetAttr(sceneId, selfId, 6) < x805028_g_BangGongLimit   then --[tx43764]
			BeginEvent(sceneId)
				AddText( sceneId, "#{YPLJ_090116_03}" )--[tx43764]
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		
		BeginEvent(sceneId)
			AddText( sceneId, "#{YPLJ_090116_04}" )--[tx43764]
			AddNumText( sceneId, x805028_g_scriptId, "#{YPLJ_090116_05}", 6, 8 )--[tx43764]
			AddNumText( sceneId, x805028_g_scriptId, "#{YPLJ_090116_06}", 6, 9 )--[tx43764]
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return
		
	elseif GetNumText() == 8 then
		if GetItemCount(sceneId, selfId, x805028_g_Item) >= 3  then
			return
		end

		local nGuildPoint = CityGetAttr(sceneId, selfId, 6)
		if nGuildPoint<x805028_g_BangGongLimit then --[tx43764]
			return
		end
		
		-- �����Ʒ
		BeginAddItem(sceneId)
			AddItem( sceneId, x805028_g_Item, 1 )
		local ret = EndAddItem(sceneId,selfId)
		
		if ret ~= 1  then
			BeginEvent(sceneId)
				AddText( sceneId, "#{YPLJ_090116_07}" )--[tx43764]
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		
		if CityChangeAttr(sceneId, selfId, 6, -x805028_g_BangGongLimit) ~= 1  then--[tx43764]
			BeginEvent(sceneId)
				AddText( sceneId, "#{YPLJ_090116_08}" )--[tx43764]
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		
		AddItemListToHuman(sceneId,selfId)
		
		BeginEvent(sceneId)
			AddText( sceneId, "#{YPLJ_090116_09}" )--[tx43764]
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return
	
	elseif GetNumText() == 9 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)

		return
	
	elseif GetNumText() == 111 then
		x805028_DoubleExpTime(sceneId, selfId, targetId, 1)

	elseif GetNumText() == 222 then
		x805028_DoubleExpTime(sceneId, selfId, targetId, 2)

	elseif GetNumText() == 333 then
		x805028_DoubleExpTime(sceneId, selfId, targetId, 4)

	elseif GetNumText() == 444 then
		-- ��ѯ���ܵ�˫������ʱ��
		local _,nCount = DEGetCount(sceneId, selfId)
		if nCount==0  then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th�t ��ng ti�c, th�i gian g�p ��i kinh nghi�m m� ta c� th� cung c�p cho ng߽i �� l� #R0 gi�#W r�i.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)

		else
			BeginEvent(sceneId)
				AddText(sceneId,"  Th�i gian g�p ��i kinh nghi�m trong tu�n m� ta c� th� cung c�p cho ng߽i l� #R" .. nCount .. " gi�#W, mau t�n d�ng t�t.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)

		end

	elseif GetNumText() == 201 then
		x805028_DealDoubleExpTime(sceneId, selfId, targetId, GetNumText()-200)
		
	elseif GetNumText() == 202 then
		x805028_DealDoubleExpTime(sceneId, selfId, targetId, GetNumText()-200)
		
	elseif GetNumText() == 204 then
		x805028_DealDoubleExpTime(sceneId, selfId, targetId, GetNumText()-200)
		
	elseif GetNumText() == 300 then
		BeginUICommand(sceneId)
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 1000)

		return
	end
	
	if GetNumText() == 1001 then
		if IsHaveMission( sceneId, selfId, 1109 ) <= 0 then --Chua Nhan Nhiem Vu
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� v�n ch�a nh�n Nhi�m v� Qu�c Ph�ng n�o c�?" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1109)
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
					AddNumText( sceneId, x805028_g_scriptId, "Ta d�ng #GNg�n L��ng", 6, 10011 )
					AddNumText( sceneId, x805028_g_scriptId, "Ta d�ng #GC�ng Hi�n", 6, 10012 )
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
				AddText( sceneId, "Ng߽i kh�ng c� �� #{_MONEY"..NeedMoney.."} � ho�n t�t nhi�m v� Qu�c Ph�ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1109)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600030, "OnSubmit", sceneId, selfId, targetId, 99999 )
			
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� X�y D�ng!" )
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
				AddText( sceneId, "Ng߽i kh�ng c� �� #G"..NeedCH.."#W �i�m #GC�ng Hi�n #W� ho�n t�t nhi�m v� Qu�c Ph�ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -NeedCH )
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1109)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600030, "OnSubmit", sceneId, selfId, targetId, 99999 )

			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� Qu�c Ph�ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
end

function x805028_DealDoubleExpTime(sceneId, selfId, targetId, nPoint)

	-- �������ڰ���еĵȼ�
	-- �������Բ������İﹱ�����������
	local nGuildPos = GetGuildPos(sceneId, selfId)
	
	local BasePoint = 25
	if nGuildPos == 8  then
		BasePoint = 12.5
	elseif nGuildPos == 9  then
		BasePoint = 0
	else
		BasePoint = 25
	end
	
	local bTimeOk = 1
	
	-- �����ǲ��ǵ���ʱ��ļ��
	if nGuildPos==8 or nGuildPos==9  then
		local isPosLongEnough = IsGuildPosLongEnough(sceneId, selfId)
		if isPosLongEnough < 1 then
			bTimeOk = 0
			BasePoint = 25
		end
	else
		bTimeOk = -1
	end

	-- �������ǲ������㹻�İ�ṱ��ֵ
	local nCity = CityGetAttr(sceneId, selfId, 6)
	if nCity < floor(BasePoint*nPoint)   then
		BeginEvent(sceneId)
			AddText(sceneId,"  е c�ng hi�n bang h�i c�a ng߽i kh�ng ��, c� th� ti�u hao.")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	if BasePoint ~= 0  then
		if CityChangeAttr( sceneId, selfId, 6, -(floor(BasePoint*nPoint)) ) ~= 1  then
			BeginEvent(sceneId)
				AddText( sceneId, " Kh�u tr� � c�ng hi�n bang h�i th�t b�i, xin l�c sau th� l�i.." )
			EndEvent(sceneId)
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
	end
	
	local _,nCount = DEGetCount(sceneId, selfId)
	if nCount < nPoint    then
		return
	end

	local nCurHave = DEGetFreeTime(sceneId, selfId)
	nCurHave = nCurHave + DEGetMoneyTime(sceneId, selfId)

	local nFreeTime = DEGetFreeTime(sceneId, selfId)

	-- �ȼ����µ�ǰ�������ʣ�µ�ʱ��
	local nTrueTime = nCurHave;

	if nTrueTime < 0 then
		nTrueTime = 0
	end

	-- �����µĽӿ�
	WithDrawFreeDoubleExpTime(sceneId, selfId, 0, nPoint, 0 )

	local nCurTime = LuaFnGetCurrentTime()

	BeginEvent(sceneId)
		AddText(sceneId,"  C�c h� �� l�nh th�nh c�ng #R".. nPoint .." gi� #Wg�p ��i kinh nghi�m. Hi�n c�c h� c� #Y".. tostring(floor((nTrueTime + nPoint*3600)/60)) .. " ph�t #Wg�p ��i kinh nghi�m.")
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	BeginEvent(sceneId)
		AddText(sceneId,"  C�c h� �� l�nh th�nh c�ng #R".. nPoint .." gi� #Wg�p ��i kinh nghi�m. Hi�n c�c h� c� #Y".. tostring(floor((nTrueTime + nPoint*3600)/60)) .. " ph�t #Wg�p ��i kinh nghi�m.")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)

	if bTimeOk == 1  then
		if nGuildPos == 8  then -- ������
			BeginEvent(sceneId)
				AddText(sceneId,"  Do c�c h� ��m nhi�m Ph� bang ch� tr�n 1 tu�n, n�n l�n l�nh song n�y hao t�n �i�m c�ng hi�n bang h�i ���c gi�m 1 n�a.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		elseif nGuildPos == 9  then  --����
			BeginEvent(sceneId)
				AddText(sceneId,"  Do c�c h� ��m nhi�m Bang ch� tr�n 1 tu�n, l�n l�nh song n�y kh�ng hao t�n �i�m c�ng hi�n bang h�i.")
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
		end
	end

	-- ͬ�����ݵ��ͻ���
	SendDoubleExpToClient(sceneId,selfId)

end

--**********************************
--������˫�ĺ���
--**********************************
function x805028_DoubleExpTime(sceneId, selfId, targetId, nTime)

	-- 1������ҳ����ǲ��Ǵ��ڵ�ά��״̬��
	if CityGetMaintainStatus(sceneId, selfId, sceneId) == 1  then
		BeginEvent(sceneId)
			AddText( sceneId, "  Hi�n b�n bang �ang � tr�ng th�i duy tr� th�p, m�i ph�c l�i �u kh�ng th� cung c�p cho ch� v�, �ng cam c�ng kh� c� g�ng ki�m ���c c�ng nhi�u v�n cho b�n th�nh v�n l� t�t nh�t." )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	-- ����ǲ�����Ҫ����ˢ������
	-- ����ʱ��
	local nCurTime = LuaFnGetCurrentTime()
	-- �ϴ�ˢ�����ݵ�ʱ��
	local nPreTime = DEGetPreTime(sceneId, selfId)

	if (nCurTime - nPreTime  >= 3600*24*7)  or
		 (floor((nCurTime-x805028_TIME_2000_01_03_)/(3600*24*7)) ~= floor((nPreTime-x805028_TIME_2000_01_03_)/(3600*24*7)))   then
		----DESetLock(sceneId, selfId, 0)
		----DESetBeginTime(sceneId, selfId, 0)
		--DESetFreeTime(sceneId, selfId, 0)
		--DESetPreTime(sceneId, selfId, nCurTime)
		--DESetCount(sceneId, selfId, 5, 4, 0)

		DEResetWeeklyFreeTime(sceneId, selfId)
	end

	--
	x805028_AddDETime( sceneId, selfId, targetId, nTime, nCurTime, nPreTime )

end

function x805028_AddDETime(sceneId, selfId, targetId, nPoint, nCurTime, nPreTime)
		local nCurHave = DEGetFreeTime(sceneId, selfId)
		nCurHave = nCurHave + DEGetMoneyTime(sceneId, selfId)
		-- �ȼ����µ�ǰ�������ʣ�µ�ʱ��
		local nTrueTime = nCurHave;

		local nFreeTime = DEGetFreeTime(sceneId, selfId)

		if nTrueTime < 0 then
			nTrueTime = 0
		end

		-- ������û��ʱ�������ȡ
		local _,nCount = DEGetCount(sceneId, selfId)
		if(nCount <= 0)   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th�i gian g�p ��i kinh nghi�m trong tu�n c�a c�c h� h�nh nh� �� d�ng h�t r�i.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		if nCount < nPoint   then
			BeginEvent(sceneId)
				AddText(sceneId,"  C�c h� kh�ng c� nhi�u th�i gian c� th� nh�n")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		-- �������ǲ����Ѿ��бȽ϶��ʱ���ˣ�2Сʱ
		if nFreeTime >= 120*60   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th�i gian kinh nghi�m g�p ��i c�c h� c� ���c � ba th�nh ph� l�n v� th�nh ph� t� x�y �� ��t m�c gi�i h�n cao nh�t ���c nh�n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		-- �����Ҳ���ӵ�г���4��Сʱ��ʱ��
		if nFreeTime + nPoint*3600 > 3600*4   then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th�i gian kinh nghi�m g�p ��i c�c h� c� ���c � ba th�nh ph� l�n v� th�nh ph� t� x�y �� ��t m�c gi�i h�n cao nh�t ���c nh�n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		-- �������ǲ����ж����˵�ʱ��
		if DEIsLock(sceneId,selfId)  > 0    then
			BeginEvent(sceneId)
				AddText(sceneId,"  Th�i gian kinh nghi�m g�p ��i c�c h� c� ���c � ba th�nh ph� l�n v� th�nh ph� t� x�y �� ��t m�c gi�i h�n cao nh�t ���c nh�n.")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			if (nTrueTime/60) > 0 then
				AddText(sceneId,"  Tu�n n�y, c�c h� �� l�nh s� l�n d� c�a th�i gian g�p ��i kinh nghi�m #R" .. tostring(floor(nCount)) .. " gi�#W, �� c� th�i gian g�p ��i kinh nghi�m #Y" .. tostring(floor(nTrueTime/60)) .. " ph�t#W, c�c h� x�c nh�n mu�n l�nh #Y" .. tostring(floor(nPoint*60)) .. " ph�t #W th�i gian g�p ��i kinh nghi�m v� �ng th�i ti�u hao � c�ng hi�n bang ph�i" .. tostring(floor(nPoint*25)) .. "kh�ng ?#r N�u c�c h� ��m nhi�m Bang ch� tr�n 1 tu�n, c� th� kh�ng c�n hao t�n �i�m c�ng hi�n bang h�i, Ph� bang ch� c� th� gi�m 1 n�a.");
			else
				AddText(sceneId,"  Tu�n n�y, c�c h� �� l�nh s� l�n d� c�a th�i gian g�p ��i kinh nghi�m #R" .. tostring(floor(nCount)) .. " gi�#W, c�c h� x�c nh�n mu�n l�nh #Y" .. tostring(floor(nPoint*60)) .. " ph�t #W th�i gian g�p ��i kinh nghi�m v� �ng th�i ti�u hao � c�ng hi�n bang ph�i" .. tostring(floor(nPoint*25)) .. "kh�ng ?#r N�u c�c h� ��m nhi�m Bang ch� tr�n 1 tu�n, c� th� kh�ng c�n hao t�n �i�m c�ng hi�n bang h�i, Ph� bang ch� c� th� gi�m 1 n�a.");
			end
			-- ������ʱ�����������˫������ҩˮЧ������Ҫ�������ʾ
			if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x805028_g_BuffPalyer_25) == 1   
					or  LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x805028_g_BuffAll_15) == 1
					then
				AddText(sceneId,"  #r#RXin ch� �: Tr�n ng߶i c�c h� �� c� t�n t�i th�i gian nh�n ��i kinh nghi�m, c� mu�n x�c nh�n nh�n l�nh kh�ng?");
			end
			AddNumText(sceneId, x805028_g_scriptId, "��ng v�y, ta mu�n l�nh gi� g�p ��i kinh nghi�m", -1,200+nPoint )
			AddNumText(sceneId, x805028_g_scriptId, "Kh�ng, ta nh�n sai r�i", -1,300 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

end


--**********************************
--���ܴ�NPC������
--**********************************
function x805028_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805028_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805028_NotifyFailTips( sceneId, selfId, "Ng߽i hi�n kh�ng th� nh�n nhi�m v� n�y" )
		elseif ret == -2 then
			x805028_NotifyFailTips( sceneId, selfId, "Kh�ng th� ti�p nh�n nhi�u nhi�m v�" )
		end

		return
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x805028_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805028_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805028_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x805028_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805028_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�ύ�����������
--**********************************
function x805028_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805028_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--�����¼�
--**********************************
function x805028_OnDie( sceneId, selfId, killerId )
end

function x805028_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
