--���c�p�

--�ű���
x001083_g_scriptId = 001083

--�̵���
x001083_g_shoptableindex=102

--��ӵ��to� � �¼�ID�б�
x001083_g_eventList={400918, 400963, 400964}	--	ȥ���䵺��ȥTh�nh Th� S�n}	

--**********************************
--�¼��б�
--**********************************
function x001083_UpdateEventList( sceneId, selfId,targetId )
	BeginEvent(sceneId)
	local  PlayerName=GetName(sceneId,selfId)
	AddText(sceneId,"#{YXZ_80917_01}")
	
	--AddNumText( sceneId, x001083_g_scriptId, "����޵�", 6, 10 )	--ȥ������޵й���--del by Heanqi
	
	for i, eventId in x001083_g_eventList do
		CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		
	end
	AddNumText(sceneId,x001083_g_scriptId,"Mua s�ch k� n�ng Tr�n Th�",7,2)
--	AddNumText(sceneId,x001083_g_scriptId,"Ki�m tra m�c � t�ng tr߷ng",6,3)
--	AddNumText(sceneId,x001083_g_scriptId,"Linh Th����ϳ�",6,4)
	AddNumText(sceneId,x001083_g_scriptId,"#{XXWD_8916_07}",11,5)
--	AddNumText(sceneId,x001083_g_scriptId,"Linh Th����ϳɽ���",11,6)
--	AddNumText(sceneId,x001083_g_scriptId,"��θ����޿�����c�p",11,7)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��������
--**********************************
function x001083_OnDefaultEvent( sceneId, selfId,targetId )
	x001083_UpdateEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001083_OnEventRequest( sceneId, selfId, targetId, eventId )
	for i, findId in x001083_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId )
			return
		end
	end
	
	if GetNumText() == 2 then
		DispatchShopItem( sceneId, selfId,targetId, x001083_g_shoptableindex )
--	elseif GetNumText() == 3 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "  ��ѯ����to� � �ɳ���,��ѯm�t ��C�n ��ȡ#{_MONEY100}to� � ����." )
--		AddNumText( sceneId, x001083_g_scriptId, "X�c nh�n", -1, 4 )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
--	elseif GetNumText() == 4 then
--		BeginUICommand( sceneId )
--			UICommand_AddInt( sceneId, targetId )
--			UICommand_AddInt( sceneId, 6 )				--���޲�ѯ��֧
--		EndUICommand( sceneId )
--		DispatchUICommand( sceneId, selfId, 3 )	--�������޽���
	elseif GetNumText() == 4 then --Linh Th����ϳ�
--		BeginUICommand( sceneId )
--			UICommand_AddInt( sceneId, targetId )
--		EndUICommand( sceneId )
--		DispatchUICommand( sceneId, selfId, 19824 )	--����Linh Th����ϳɽ���
	elseif GetNumText() == 5 then
		BeginEvent( sceneId )
		AddText( sceneId, "#{XXWD_8916_08}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 6 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "#{JNHC_81015_12}" )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
	elseif GetNumText() == 7 then
--		BeginEvent( sceneId )
--		AddText( sceneId, "#{ZSKSSJ_081126_5}" )
--		EndEvent( sceneId )
--		DispatchEventList( sceneId, selfId, targetId )
	end
	if GetNumText() == 10 then
	    if eventId == x001083_g_scriptId then	
			--LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 50, 0 )	--ȥ������޵й���--del by Heanqi
			return
		end
	end
	
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x001083_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001083_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId )
			end
			return
		end
	end
end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x001083_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	for i, findId in x001083_g_eventList do
		if missionScriptId == findId then
			x001083_UpdateEventList( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--����(�Ѿ���������)
--**********************************
function x001083_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x001083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ������to� � ����
--**********************************
function x001083_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x001083_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x001083_OnDie( sceneId, selfId, killerId )
end

--**********************************
--�ύ����
--**********************************
function x001083_OnMissionCheck( sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
--ע��,��������дʡ����T�i eventlist������scriptId��m�t ����,���ܻ�������
			CallScriptFunction( scriptId, "OnMissionCheck", sceneId, selfId, npcid, scriptId, index1, index2, index3, indexpet )
end
