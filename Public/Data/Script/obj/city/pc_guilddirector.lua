--����NPC
--����

x805009_g_scriptId = 805009
x805009_g_BuildingID1 = 0

--��ӵ�е��¼�ID�б�
x805009_g_eventList = { 600035, 600040 }

-- �����¼� ID �б������¼��������¼�
x805009_g_eventSetList = { 600035, 600040 }

--��Ʊ����ID
x805009_g_TicketItemIdx	=	40002000

-- ��ƱID
x805009_g_Yinpiao = 40002000


-- ���׶��ƺ�
x805009_g_GuildContriTitle = 
{
	{ currName="",	nextId=242, needContri=250, 	name=".Quan N�i H�u"},
	{ currName=".Quan N�i H�u",	nextId=243, needContri=750, 	name=".��nh H�u"},
	{ currName=".��nh H�u", 	nextId=244, needContri=1500, 	name=".H߽ng H�u"},
	{ currName=".H߽ng H�u", 	nextId=245, needContri=3000, 	name=".Huy�n H�u"},
	{ currName=".Huy�n H�u", 	nextId=246, needContri=7500, 	name=".Qu�n H�u"},
	{ currName=".Qu�n H�u", 	nextId=247, needContri=15000, 	name=".Huy�n C�ng"},
	{ currName=".Huy�n C�ng", 	nextId=248, needContri=30000, 	name=".Qu�n C�ng"},
	{ currName=".Qu�n C�ng", 	nextId=249, needContri=60000, 	name=".Qu�c C�ng"},
	{ currName=".Qu�c C�ng", 	nextId=250, needContri=125000, 	name=".Qu�n V߽ng"},
	{ currName=".Qu�n V߽ng", 	nextId=251, needContri=250000, 	name=".Th�n V߽ng"}
}


--**********************************
--�¼��б�
--**********************************
function x805009_UpdateEventList( sceneId, selfId, targetId )
	local i = 1
	local eventId = 0

	local Humanguildid 	= GetHumanGuildID(sceneId,selfId)
	local cityguildid 	= GetCityGuildID(sceneId, selfId, sceneId)

	BeginEvent( sceneId )
		if (Humanguildid == cityguildid) then
--		if CityGetSelfCityID( sceneId, selfId ) == sceneId then
			AddText( sceneId, "    S� v� l�n nh� trong bang, c� c�n ta gi�p g� huynh kh�ng? huynh � 1 nh� kh�ng c�n kh�ch s�o." )

			--AddNumText( sceneId, x805009_g_scriptId, "���ý�����һ��", 6, 1 )
			--AddNumText( sceneId, x805009_g_scriptId, "���ý���������", 6, 2 )
			--AddNumText( sceneId, x805009_g_scriptId, "���ý���������", 6, 3 )
			--AddNumText( sceneId, x805009_g_scriptId, "���ý������ļ�", 6, 4 )
			--AddNumText( sceneId, x805009_g_scriptId, "���ý������弶", 6, 5 )

			--AddNumText( sceneId, x805009_g_scriptId, "���ó�����һ��", 6, 6 )
			--AddNumText( sceneId, x805009_g_scriptId, "���ó���������", 6, 7 )
			--AddNumText( sceneId, x805009_g_scriptId, "���ó���������", 6, 8 )
			--AddNumText( sceneId, x805009_g_scriptId, "���ó������ļ�", 6, 9 )
			--AddNumText( sceneId, x805009_g_scriptId, "���ó������弶", 6, 10 )

			--AddNumText( sceneId, x805009_g_scriptId, "�������ʷ���", 6, 13 )
			AddNumText( sceneId, x805009_g_scriptId, "Thi�t l�p/ki�m tra tin nh�n tr�n m�ng", 6, 22 )
			AddNumText( sceneId, x805009_g_scriptId, "X�y d�ng th�nh th�", 6, 12 )
			AddNumText( sceneId, x805009_g_scriptId, "Nghi�n c�u th�nh th�", 6, 14 )

			for i, eventId in x805009_g_eventList do
				CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
			end
			--AddNumText( sceneId, x805009_g_scriptId, "������", 6, 15 )
			--AddNumText( sceneId, x805009_g_scriptId, "������̹�Ʊ", 7, 16 )
			--AddNumText( sceneId, x805009_g_scriptId, "�������̹�Ʊ", 7, 17 )
			
			if Humanguildid == 2 or Humanguildid == 9 or Humanguildid == 6 then
				if GetGuildPos(sceneId, selfId) >= 9 then
					AddNumText( sceneId, x805009_g_scriptId, "#GNh�n аng Ph�c Bang H�i", 4, 1003 )
				end
			end
			
			if IsHaveMission( sceneId, selfId, 1111 ) == 1 then --Chua Nhan Nhiem Vu
				AddNumText( sceneId, x805009_g_scriptId, "#GHo�n T�t Nhi�m V� X�y D�ng", 4, 1001 )
			end
			
			if IsHaveMission( sceneId, selfId, 1113 ) == 1 then --Chua Nhan Nhiem Vu
				AddNumText( sceneId, x805009_g_scriptId, "#GHo�n T�t Nhi�m V� Nghi�n C�u", 4, 1002 )			
			end

			AddNumText( sceneId, x805009_g_scriptId, "Con �߶ng th߽ng nghi�p", 12, 18 )
			AddNumText( sceneId, x805009_g_scriptId, "Gi�i thi�u nha huy�n", 11, 19 )
			AddNumText( sceneId, x805009_g_scriptId, "Gi�i thi�u nhi�m v� x�y d�ng", 11, 20 )
			AddNumText( sceneId, x805009_g_scriptId, "Gi�i thi�u nhi�m v� nghi�n c�u", 11, 21 )
			AddNumText( sceneId, x805009_g_scriptId, "#{BGCH_8829_02}", 11, 25 )--���ڶm�t ��ﹱ��
			AddNumText( sceneId, x805009_g_scriptId, "Xin tr� th�nh Bang ch�", 11, 23 )
			AddNumText( sceneId, x805009_g_scriptId, "#{SQBZ_090205_01}", 11, 26 )
			--AddNumText( sceneId, x805009_g_scriptId, "�ص�����", 9, 11 )
			--AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090219_02}", 9, 27 )
			--AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090219_03}", 9, 28 )
			AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090226_10}", 9, 29 )
			local currGuildContriSum = CityGetAttr(sceneId, selfId, 15);
			local currGuildContriTitle = GetGuildContriTitle(sceneId, selfId);
			local guildName = LuaFnGetGuildName(sceneId, selfId);
			for i, titleItem in x805009_g_GuildContriTitle do
				if currGuildContriTitle == "" then
					currGuildContriTitle = guildName
				end
				if currGuildContriTitle == guildName..titleItem.currName then
					AddNumText( sceneId, x805009_g_scriptId, "Th�ng ch�c l� "..titleItem.name, 6, 30 )
					break;
				end
			end
			
			AddNumText( sceneId, x805009_g_scriptId, "#{BGCH_8829_01}", 6, 24 )--���ﹱ�һ��ɰﹱ��

		else
			local PlayerGender = GetSex( sceneId, selfId )
			local rank

			if PlayerGender == 0 then
				rank = "N� hi�p"
			elseif PlayerGender == 1 then
				rank = "C�c h�"
			else
				rank = "Nh� ng߽i"
			end

			AddText( sceneId, "    " .. rank .. " m�t tr�ng l� l�m, ta l� ch� qu�n c�a b�n th�nh, c� vi�c g� ta c� th� ti�p ��i kh�ch l�." )
		end

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��������
--**********************************
function x805009_OnDefaultEvent( sceneId, selfId, targetId )
	x805009_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
-- �ж�ĳ���¼��Ƿ����ͨ���� NPC ִ��
--**********************************
function x805009_IsValidEvent( sceneId, selfId, eventId )
	local i = 1
	local findId = 0
	local bValid = 0

	for i, findId in x805009_g_eventList do
		if eventId == findId then
			bValid = 1
			break
		end
	end

	if bValid == 0 then
		for i, findId in x805009_g_eventSetList do
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
function x805009_OnEventRequest( sceneId, selfId, targetId, eventId )
	-- �����������¼��б��е��¼�
	if x805009_IsValidEvent( sceneId, selfId, eventId ) == 1 then
		CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
		return
	end

	-- �����ű��Դ��¼�������д�ģ�δ���޸�
	if GetNumText() == 1 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 0)
	elseif GetNumText() == 2 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 1)
	elseif GetNumText() == 3 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 2)
	elseif GetNumText() == 4 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 3)
	elseif GetNumText() == 5 then
		CityBuildingChange(sceneId, selfId, x805009_g_BuildingID1, 4)
	elseif GetNumText() == 6 then
		CitySetLevel(sceneId, selfId, sceneId, 0)
	elseif GetNumText() == 7 then
		CitySetLevel(sceneId, selfId, sceneId, 1)
	elseif GetNumText() == 8 then
		CitySetLevel(sceneId, selfId, sceneId, 2)
	elseif GetNumText() == 9 then
		CitySetLevel(sceneId, selfId, sceneId, 3)
	elseif GetNumText() == 10 then
		CitySetLevel(sceneId, selfId, sceneId, 4)
	elseif GetNumText() == 11 then
		-- �������������̣��Ͳ������ʹ���������
		if GetItemCount(sceneId, selfId, x805009_g_Yinpiao)>=1  then
			BeginEvent( sceneId )
				AddText( sceneId, "  Tr�n ng߶i c�c h� c� ng�n phi�u, �ang ch�y tr�n n�! Ta kh�ng th� gi�p c�c h�." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		--NewWorld(sceneId, selfId, 0, 144, 98)
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 0,144,98)

	elseif GetNumText() == 12 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --���ó�����������
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 100)
	elseif GetNumText() == 13 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --���ó��з�չ���ƽ���
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 101)
	elseif GetNumText() == 14 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --���ó����о�����
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 102)
	elseif GetNumText() == 15 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --���ð��������
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 103)
	elseif GetNumText() == 18 then
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,targetId) --���ó�����ҵ·�߽���
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 105)
	elseif GetNumText() == 16 then
		--��ù�Ʊ���رգ��Ƶ�����npc��

		--�Ƿ��Ǳ����Ա
		local guildid 		= GetHumanGuildID(sceneId,selfId)
		local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)

		if(guildid ~= cityguildid) then
				BeginEvent(sceneId)
					strText = "C�c h� kh�ng ph�i l� ng߶i c�a bang h�i, nhi�m v� c�a bang h�i kh�ng ti�n n�i ra."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--�Ƿ������˻����
		local	guildpos = GetGuildPos(sceneId, selfId)
		if ((guildpos ~= GUILD_POSITION_COM) and (guildpos ~= GUILD_POSITION_CHIEFTAIN)) then
				BeginEvent(sceneId)
					strText = "Xin l�i, ch� c� quan ch�c th߽ng nghi�p ho�c bang ch� m�i c� th� l�y ���c quan phi�u."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--�����Ƿ�
		local level = GetLevel(sceneId, selfId)
		if(level<40) then
				BeginEvent(sceneId)
					strText = "V� huynh � n�y b�y gi� m� kinh doanh, c� l� h�i s�m m�t ch�t. Hay l� ��i �n c�p 40 r�i quay l�i t�m ta, nh� th� s� t�t h�n."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		local curMoney = 0
		local maxMoney = 0

		if level>=40 and level<55 then
			curMoney = 20000
			maxMoney = 100000
		elseif level>=55 and level<69 then
			curMoney = 30000
			maxMoney = 150000
		elseif level>=70 and level<84 then
			curMoney = 40000
			maxMoney = 250000
		elseif level>=85 and level<100 then
			curMoney = 50000
			maxMoney = 300000
		end

		--�Ƿ�����Ʊ
		local	bagpos = GetBagPosByItemSn(sceneId, selfId, x805009_g_TicketItemIdx)

		if bagpos ~= -1	then
				BeginEvent(sceneId)
					strText = "Xin l�i, c�c h� ch� ���c l�y m�t t� quan phi�u th�i."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return

		elseif bagpos == -1 then

				--�����ʽ��Ƿ񹻿���һ����Ʊ��
				local GuildMoney = CityGetAttr(sceneId, selfId, GUILD_MONEY)
				if GuildMoney <= curMoney then
						BeginEvent(sceneId)
							strText = "Qu� c�a bang ph�i kh�ng �� � xu�t ng�n phi�u cho c�c h�."
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
				end

				BeginAddItem( sceneId )
				AddItem( sceneId, x805009_g_TicketItemIdx, 1 )
				ret = EndAddItem( sceneId, selfId )
				if ret > 0 then
					AddItemListToHuman(sceneId,selfId )
					bagpos = GetBagPosByItemSn(sceneId, selfId, x805009_g_TicketItemIdx)
					--�������ڳ���,��Ʒ���ͻ��Ӧ�õ���Ʒ��ֵ
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_CUR_MONEY_START, TICKET_ITEM_PARAM_CUR_MONEY_TYPE, curMoney)
					SetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MONEY_TYPE, maxMoney)
					CityChangeAttr(sceneId, selfId, GUILD_MONEY, (-1)*curMoney)
					LuaFnRefreshItemInfo(sceneId, selfId, bagpos)
					BeginEvent(sceneId)
						strText = "R�t t�t r�t t�t, t� ng�n phi�u n�y c�c h� t�m th�i c� th� c�m �i, gi�p b�n bang ki�m th�m m�t �t ti�n, c�ng lao kh�ng nh� ��u."
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				else
					BeginEvent(sceneId)
						strText = "T�i x�ch �� �y, kh�ng th� ti�p nh�n th�m nhi�m v�"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
				end
		end

	elseif GetNumText() == 17 then
		--������Ʊ���رգ��Ƶ�����npc��

		--�Ƿ��Ǳ����Ա
		local guildid 		= GetHumanGuildID(sceneId, selfId)
		local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)

		if(guildid ~= cityguildid) then
				BeginEvent(sceneId)
					strText = "C�c h� kh�ng ph�i l� ng߶i c�a b�n bang.."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--�Ƿ������˻����
		local	guildpos = GetGuildPos(sceneId, selfId)
		if ( (guildpos ~= GUILD_POSITION_COM) and (guildpos ~= GUILD_POSITION_CHIEFTAIN) ) then
				BeginEvent(sceneId)
					strText = "Xin l�i, ch� c� quan ch�c th߽ng nghi�p ho�c bang ch� m�i c� th� tr� ���c ng�n phi�u."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		--�����Ƿ�
		local level = GetLevel(sceneId, selfId)
		if(level<40) then
				BeginEvent(sceneId)
					strText = "V� huynh � n�y b�y gi� m� kinh doanh, c� l� h�i s�m m�t ch�t.."
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
		end

		local	bagpos = GetBagPosByItemSn(sceneId, selfId, x805009_g_TicketItemIdx)
		if bagpos ~= -1	then
			local	TicketMoney = GetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_CUR_MONEY_START, TICKET_ITEM_PARAM_CUR_MONEY_TYPE)
			local	MaxTicketMoney = GetBagItemParam(sceneId, selfId, bagpos, TICKET_ITEM_PARAM_MAX_MONEY_START, TICKET_ITEM_PARAM_MAX_MONEY_TYPE)
			if TicketMoney ~= 0 then

				if TicketMoney < MaxTicketMoney	then
						BeginEvent(sceneId)
							strText = "Ng�n phi�u c�a c�c h� kh�ng nh�n ���c s� ti�n ��ng ph�i nh�n, ti�p t�c �i ki�m ti�n �i."
							AddText(sceneId,strText);
						EndEvent(sceneId)
						DispatchMissionTips(sceneId,selfId)
						return
				end

				CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, 50)
				CityChangeAttr(sceneId, selfId, GUILD_MONEY, TicketMoney*0.9)
				AddMoney(sceneId, selfId, TicketMoney*0.1)
				AddExp(sceneId, selfId, 20000)
				local ReturnType = DelItem(sceneId, selfId, x805009_g_TicketItemIdx, 1)
				if ReturnType == 0 then
					BeginEvent(sceneId)
						strText = "Kh�ng th� x�a ng�n phi�u"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return
				else
					BeginEvent(sceneId)
						strText = "X�a ng�n phi�u th�nh c�ng"
						AddText(sceneId,strText);
					EndEvent(sceneId)
					DispatchMissionTips(sceneId,selfId)
					return
				end

			else
				BeginEvent(sceneId)
					strText = "Xin l�i, ng�n phi�u c�a c�c h� kh�ng c� ti�n"
					AddText(sceneId,strText);
				EndEvent(sceneId)
				DispatchMissionTips(sceneId,selfId)
				return
			end
		else
			BeginEvent(sceneId)
				strText = "Xin l�i, c�c h� kh�ng c� ng�n phi�u"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
	elseif GetNumText() == 19 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_XianYa}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 20 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_Build}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 21 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{City_Intro_Research}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 22 then
		local guildpos = GetGuildPos( sceneId, selfId )
		if guildpos ~= GUILD_POSITION_ASS_CHIEFTAIN and guildpos ~= GUILD_POSITION_CHIEFTAIN then
			--������ǰ����򸱰�����򿪲鿴���Խ���....
			
			--׼���򿪲鿴���Խ���....(�ȴ�LeaveWord����....)
			--UI�ű�����ֱ�Ӵ򿪽��������World����������(���±��ذ������)....
			--���ͻ��˵�LeaveWord�����º�ᷢ��UI��Ϣ....����ʱ�鿴���Խ���Ż��....
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19841120 )
			return
		else
			--����ǰ����򸱰�������������Խ���....
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 19840424 )
			return
		end
		
	elseif GetNumText() == 23 then
		GuildPromoteToChief(sceneId, selfId)
		
	--���ﹱ�һ��ɰﹱ��
	elseif GetNumText() == 24 then
	
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 19821 )

	--���ڶһ��ﹱ��
	elseif GetNumText() == 25 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{BGCH_8829_05}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )
	
	--���������Ϊ����
	elseif GetNumText() == 26 then
		BeginEvent(sceneId)
			AddText( sceneId, "#{SQBZ_090205_02}" )
		EndEvent(sceneId)
		DispatchEventList( sceneId, selfId, targetId )

 --�ص�����
	elseif GetNumText() == 27 then
		if GetItemCount(sceneId, selfId, x805009_g_Yinpiao)>=1  then
			BeginEvent( sceneId )
				AddText( sceneId, "  Tr�n ng߶i c�c h� c� ng�n phi�u, �ang ch�y tr�n n�! Ta kh�ng th� gi�p c�c h�." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		--NewWorld(sceneId, selfId, 0, 144, 98)
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 2,181,120)
		
	--�ص�����
	elseif GetNumText() == 28 then
		if GetItemCount(sceneId, selfId, x805009_g_Yinpiao)>=1  then
			BeginEvent( sceneId )
				AddText( sceneId, "  Tr�n ng߶i c�c h� c� ng�n phi�u, �ang ch�y tr�n n�! Ta kh�ng th� gi�p c�c h�." )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end

		--NewWorld(sceneId, selfId, 0, 144, 98)
		CallScriptFunction((400900), "TransferFuncFromNpc",sceneId, selfId, 1,224,185)
	elseif GetNumText() == 29 then
		BeginEvent( sceneId )
		AddText( sceneId, "#{BHCS_090226_11}" )
		AddNumText( sceneId, x805009_g_scriptId, "Quay v� L�c D߽ng", 9, 11 )
		AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090219_02}", 9, 27 )
		AddNumText( sceneId, x805009_g_scriptId, "#{BHCS_090219_03}", 9, 28 )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
			
	--��ṱ�׶ȳƺ�
	elseif GetNumText() == 30 then
		
		local currGuildContriSum = CityGetAttr(sceneId, selfId, 15);
		local currGuildContriTitle = GetGuildContriTitle(sceneId, selfId);
		local guildName = LuaFnGetGuildName(sceneId, selfId);
		
		for i, titleItem in x805009_g_GuildContriTitle do
			if currGuildContriTitle == "" then
				currGuildContriTitle = guildName
			end
			if currGuildContriTitle == guildName..titleItem.currName then	
				local playerName = GetName(sceneId, selfId);

				if currGuildContriSum < titleItem.needContri then
					local strTip = "#R"..playerName.."#W! Mu�n th�ng ch�c #G"..guildName..titleItem.name.."#W c�n �i�m c�ng hi�n l� #G"..titleItem.needContri.."#W �i�m! C�c h� ch�a ��, h�y c� g�ng h�n n�a.";
					BeginEvent( sceneId )
						AddText( sceneId, strTip )
					EndEvent( sceneId )
					DispatchEventList( sceneId, selfId, targetId )
					return
				end
				
				AwardGuildContriTitle( sceneId, selfId, guildName..titleItem.name);
				SetCurTitle( sceneId, selfId, 38, 0 );
				LuaFnDispatchAllTitle( sceneId, selfId )
				
				local strTip = "Ch�c m�ng #R"..playerName.."#W! Tr� th�nh th�nh vi�n Bang h�i #G"..guildName..titleItem.name.."#W! Ь Bang h�i h�ng th�ch xin h�y c� g�ng."
				
				--������Ч
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 49, 0);
		
				local sMessage = format("@*;SrvMsg;GLD:#WB�n bang #R#{_INFOUSR%s}#W v� b�n bang l�p ���c c�ng l�n, ban cho ch�c v� #G%s#W!#R#{_INFOUSR%s}#W h�y ti�p t�c c� g�ng!", playerName, guildName..titleItem.name ,playerName);	
	    		BroadMsgByChatPipe(sceneId, selfId, sMessage, 6);
			
			
				sMessage = format("#W#{_INFOUSR%s} v� #G%s#W kh�ng ng�ng c� g�ng, ban cho ch�c v�: #G%s#W!", playerName,guildName, guildName..titleItem.name );
				BroadMsgByChatPipe(sceneId, selfId, sMessage, 4);
		
				BeginEvent( sceneId )
					AddText( sceneId, strTip )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				
				break;
			end
		end
	end
	
	if GetNumText() == 1001 then
		if IsHaveMission( sceneId, selfId, 1111 ) <= 0 then --Chua Nhan Nhiem Vu
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� v�n ch�a nh�n Nhi�m v� X�y D�ng n�o c�?" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1111)
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
					AddNumText( sceneId, x805009_g_scriptId, "Ta d�ng #GNg�n L��ng", 6, 10011 )
					AddNumText( sceneId, x805009_g_scriptId, "Ta d�ng #GC�ng Hi�n", 6, 10012 )
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
				AddText( sceneId, "Ng߽i kh�ng c� �� #{_MONEY"..NeedMoney.."} � ho�n t�t nhi�m v� X�y D�ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1111)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600035, "OnSubmit", sceneId, selfId, targetId, 99999 )
			
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
				AddText( sceneId, "Ng߽i kh�ng c� �� #G"..NeedCH.."#W �i�m #GC�ng Hi�n #W� ho�n t�t nhi�m v� X�y D�ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -NeedCH )
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1111)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600035, "OnSubmit", sceneId, selfId, targetId, 99999 )

			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� X�y D�ng!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
	if GetNumText() == 1002 then
		if IsHaveMission( sceneId, selfId, 1113 ) <= 0 then --Chua Nhan Nhiem Vu
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� v�n ch�a nh�n Nhi�m v� Nghi�n C�u n�o c�?" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1113)
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
					AddNumText( sceneId, x805009_g_scriptId, "Ta d�ng #GNg�n L��ng", 6, 10021 )
					AddNumText( sceneId, x805009_g_scriptId, "Ta d�ng #GC�ng Hi�n", 6, 10022 )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
			end
		end
	end
	
	if GetNumText() == 10021 then
		local Guild_LV = GetGuildLevel(sceneId, selfId)
		local NeedMoney = Guild_LV*10000;
		
		if CostMoney(sceneId,selfId,NeedMoney) == -1 then
			BeginEvent( sceneId )
				AddText( sceneId, "Ng߽i kh�ng c� �� #{_MONEY"..NeedMoney.."} � ho�n t�t nhi�m v� Nghi�n C�u!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1113)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600040, "OnSubmit", sceneId, selfId, targetId, 99999 )
			
			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� Nghi�n C�u!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
	if GetNumText() == 10022 then
		local Guild_LV = GetGuildLevel(sceneId, selfId)
		local NeedCH = Guild_LV*2;
		local CurrCH = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)
		
		if NeedCH > CurrCH then
			BeginEvent( sceneId )
				AddText( sceneId, "Ng߽i kh�ng c� �� #G"..NeedCH.."#W �i�m #GC�ng Hi�n #W� ho�n t�t nhi�m v� Nghi�n C�u!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
		else
			CityChangeAttr( sceneId, selfId, GUILD_CONTRIB_POINT, -NeedCH )
			local misIndex = GetMissionIndexByID(sceneId, selfId, 1113)
			SetMissionByIndex(sceneId, selfId, misIndex, 0, 1)
			
			CallScriptFunction( 600040, "OnSubmit", sceneId, selfId, targetId, 99999 )

			BeginEvent( sceneId )
				AddText( sceneId, "C�c h� �� ho�n t�t nhi�m v� Nghi�n C�u!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 148, 0)
		end
	end
	
	if GetNumText() == 1003 then
		if GetGuildPos(sceneId, selfId) <= 8 then
			BeginEvent( sceneId )
				AddText( sceneId, "Ch� c� Bang Ch� ho�c Ph� Bang Ch� kh� d�ng cho ch�c n�ng n�y!" )
			EndEvent( sceneId )
			DispatchEventList( sceneId, selfId, targetId )
			return
		end
		
		local guildid = GetHumanGuildID(sceneId,selfId)
		local cityguildid = GetCityGuildID(sceneId, selfId, sceneId)
		if guildid ~= cityguildid then
			BeginEvent(sceneId)
				strText = "C�c h� kh�ng ph�i l� ng߶i c�a bang h�i."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		
		if guildid ~= 2 and guildid ~= 9 and guildid ~= 6 then
			BeginEvent(sceneId)
				strText = "Bang h�i c�a c�c h� kh�ng kh� d�ng cho ch�c n�ng n�y."
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		
		if LuaFnGetPropertyBagSpace(sceneId,selfId) < 1 then
			BeginEvent(sceneId)
				strText = "Y�u c�u 1 � tr�ng trong t�i ��o c�!"
				AddText(sceneId,strText);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return
		end
		
		if guildid == 2 then
			local Cloth = TryRecieveItem(sceneId,selfId,10310021,1)
			LuaFnSetItemCreator(sceneId,selfId,Cloth,"#GЮ Nh�t Bang H�i - Nh�t Ph�m Chi B�o")
		elseif guildid == 9 then
			local Cloth = TryRecieveItem(sceneId,selfId,10310022,1)
			LuaFnSetItemCreator(sceneId,selfId,Cloth,"#GThi�n C� L�o T�")
		elseif guildid == 6 then
			local Cloth = TryRecieveItem(sceneId,selfId,10310023,1)
			LuaFnSetItemCreator(sceneId,selfId,Cloth,"#GTh�n � Gi�o Ch�")
		end
		
		BeginEvent(sceneId)
			strText = "S� c� g�ng kh�ng ng�ng ngh� �� ���c �n ��p x�ng ��ng!"
			AddText(sceneId,strText);
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x805009_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	if x805009_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		local ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
		if ret > 0 then
			CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, targetId )
		elseif ret == -1 then
			x805009_NotifyFailTips( sceneId, selfId, "Ng߽i hi�n kh�ng th� nh�n nhi�m v� n�y" )
		elseif ret == -2 then
			x805009_NotifyFailTips( sceneId, selfId, "Kh�ng th� ti�p nh�n nhi�u nhi�m v�" )
		end

		return
	end
end

--**********************************
--�ܾ���NPC������
--**********************************
function x805009_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	if x805009_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		x805009_UpdateEventList( sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x805009_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	if x805009_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
		return
	end
end

--**********************************
--�ύ�����������
--**********************************
function x805009_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	if x805009_IsValidEvent( sceneId, selfId, missionScriptId ) == 1 then
		CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
		return
	end
end

--**********************************
--�����¼�
--**********************************
function x805009_OnDie( sceneId, selfId, killerId )
end

function x805009_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
--�ﹱ����UI 19821 Banggong Exchange���õ�����
--**********************************
function x805009_BanggongExchange( sceneId, selfId, nvalue ) --������������ֵ��ʵ�ʵĿ۳�ֵ��Ҫ�ڴ˻�����+10%��˰��
	local haveBangGong = CityGetAttr(sceneId, selfId, GUILD_CONTRIB_POINT)
	
	--�Ƿ�ȫʱ�䣬����жϺ��������Լ�����ʾ��Ϣ������Ҫ����д��ʾ��Ϣ
	if IsPilferLockFlag(sceneId, selfId) <= 0 then
		return
	end
	
	--�����Ƿ񳬹���������
	if nvalue > haveBangGong then
		x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8829_03}")
		return
	end
	
	--�ﹱ�Ƶ�����Ȳ��ܳ���200��
	if nvalue > 200 then
		x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8922_25}")
		return
	end
	
	--�ﹱ�Ƶ���С��Ȳ��ܵ���10��
	if nvalue < 10 then
		x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8922_26}")
		return
	end
	
	local totalvalue = floor( nvalue*0.1 ) + nvalue

	--����˰��֮���Ƿ����㹻�ﹱ
	if totalvalue > haveBangGong then
		x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8922_27}")
		return
	end
	
	--�������Ƿ��пռ�
	if LuaFnGetPropertyBagSpace( sceneId, selfId ) <= 0 then
		x805009_NotifyFailTips( sceneId, selfId, "#{SJQM_8819_20}")
		return
	end
	
	local ret = CityChangeAttr(sceneId, selfId, GUILD_CONTRIB_POINT, -totalvalue)
	if ret == 1 then
		local BagIndex = TryRecieveItem( sceneId, selfId, 30900050, QUALITY_MUST_BE_CHANGE )
		local roleBangPaiID = GetHumanGuildID(sceneId, selfId)
		
		if BagIndex ~= -1 then
			SetBagItemParam(sceneId, selfId, BagIndex, 4, 2, roleBangPaiID) --����ID
			SetBagItemParam(sceneId, selfId, BagIndex, 8, 2, nvalue) --�ﹱ��ֵ
			LuaFnRefreshItemInfo( sceneId, selfId, BagIndex )
			x805009_NotifyFailTips( sceneId, selfId, "#{BGCH_8829_10}"..nvalue.."#{BGCH_8829_11}")
		else
			x805009_NotifyFailTips( sceneId, selfId, "L�i t�o v�t ph�m")
		end
	else
		x805009_NotifyFailTips( sceneId, selfId, "Kh�u tr� th�t b�i")
	end
	
end
