-- ����NPC
-- ����

x050002_g_scriptId = 050002

--��ӵ�е��¼�ID�б�
x050002_g_eventList = { }

x050002_g_ItemList = { 40004303, 40004304, 40004305 }
x050002_g_MoonCakes = { 30103026, 30103027, 30103028, 30103029, 30103030, 30103031, 30103032, 30103033, 30103034, 30103035, 30103036, 30103037, }
x050002_g_MoonCakeName = { "B�nh Trung Thu Nh�n Чu Sa", "B�nh Trung Thu Nh�n Mai Qu�", "B�nh Trung Thu Nh�n T�o N�", "B�nh Trung Thu Nh�n Ng� Nh�n", "B�nh Trung Thu Nh�n B�ch Qu�", "B�nh Trung Thu Nh�n Th��ng T�", "B�nh Trung Thu Nh�n H�a Tho�i", "B�nh Trung Thu Nh�n Tinh M� T�ng T�", "B�nh Trung Thu Nh�n Tinh M� Ph�c Linh", "B�nh Trung Thu Nh�n Tinh M� Ho�ng Tinh", "B�nh Trung Thu Nh�n Tinh M� Tuy�t Li�n", "B�nh Trung Thu Nh�n Tinh M� Phong M�t", }
--**********************************
--�¼��б�
--**********************************
function x050002_UpdateEventList( sceneId, selfId, targetId )
	local i, eventId
	for i, eventId in x050002_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate", sceneId, selfId, targetId )
	end

	AddNumText( sceneId, x050002_g_scriptId, "бi l�y nh�ng m�n ngon c�a Trung thu", -1, 1 )
end

--**********************************
--�¼��������
--**********************************
function x050002_OnDefaultEvent( sceneId, selfId, targetId )
	BeginEvent( sceneId )
		local strText = "    Tr�ng thanh n�o m�y �, n�ng r��u h�i tr�i xanh. #rCh�ng bi�t cung khuy�t tr�n kia, ��m nay l� n�m n�o. #rTa mu�n c��i gi� bay v�, l�i s� qu�nh l�u ng�c v� n�i cao qu� l�nh. #rM�a l�n cho b�ng t�, c� nh� ch�n nh�n gian. #rQua g�c son, ngh� l�u t�a, soi kh�ng ng�. #rKh�ng n�n c� h�n. #rNg߶i c� bu�n vui tan h�p, tr�ng c� m� t� khuy�t �y, chuy�n t� x�a �� v�y. #rCh� mong ng߶i b�n l�u, ng�n d�m c�ng quy�n luy�n"
		AddText( sceneId, "Th�y �i�u ca �u" )
		AddText( sceneId, strText )
		x050002_UpdateEventList( sceneId, selfId, targetId )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x050002_OnEventRequest( sceneId, selfId, targetId, eventId )
	local i, findId
	for i, findId in x050002_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
			return
		end
	end

	if GetNumText() == 1 then
		local idx, itemId
		for idx, itemId in x050002_g_ItemList do
			if LuaFnGetAvailableItemCount( sceneId, selfId, itemId ) < 1 then
				x050002_NotifyFailBox( sceneId, selfId, targetId, "    �ang �i" ..
					"M�n �n m�a thu, c�n b�t tinh ch�, h߽ng li�u lo�i t�t, �߶ng th��ng h�ng m�i th� m�t c�i," ..
					"C� th� �n L�c D߽ng Giang L� [127,154], T� Ch�u Bao Th� Vinh [190,168]," ..
					"L�y � ch� в T� Тng [109,170] � ��i L�" )
				return
			end
		end

		local moonCakeId = random( getn(x050002_g_MoonCakes) )
		if LuaFnTryRecieveItem( sceneId, selfId, x050002_g_MoonCakes[moonCakeId], QUALITY_MUST_BE_CHANGE ) < 0 then
			return
		end

		for idx, itemId in x050002_g_ItemList do
			LuaFnDelAvailableItem( sceneId, selfId, itemId, 1 )
		end

		x050002_NotifyFailBox( sceneId, selfId, targetId, "    T�t qu� t�t qu�, Trung thu �p" ..
			"Th�n, d�ng vua m�n b�nh n�y, b�nh c� h�nh tr�ng s�ng Trung thu, tr�m ngh� hay g�i t�n l� b�nh trung thu" )

		local strText = "C�c h� ��t ���c" .. x050002_g_MoonCakeName[moonCakeId]

		Msg2Player( sceneId, selfId, strText, MSG2PLAYER_PARA )
		x050002_NotifyFailTips( sceneId, selfId, strText )

		-- ����һ�þ������±����������緢ϵͳ��Ϣ��
		strText = GetName( sceneId, selfId ) .. "Khi �i l�y b�nh trung thu, may m�n ��t ���c" ..
					x050002_g_MoonCakeName[moonCakeId] .. "."
		BroadMsgByChatPipe( sceneId, selfId, strText, 4 )
		return
	end
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x050002_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x050002_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end