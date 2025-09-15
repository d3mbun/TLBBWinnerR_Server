--��i L�
--��ֲ��21

--�ű���
x714077_g_ScriptId = 714077

event_xuanzezhiwu = 713550

--ֲ���Ʒ����б�
x714077_g_eventList={20104001,20104002,20104005,20104007,20104009,20104012,
			20105001,20105004,20105007,20105012} --ֲ��to� � ���,����ngeventId
--**********************************
--�¼��������
--**********************************
function x714077_OnDefaultEvent( sceneId, selfId,targetId )
	--PLANTFLAG[1] =0
	--PLANTFLAG[2] =0
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI)
	--�����Ҳ�����ֲ����
	if AbilityLevel == 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "C�c h� n�n h�c k� n�ng tr�ng tr�t tr߾c")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		return
	end
	--�����m�t ���ֲ����
	if AbilityLevel ~= 0	then
		BeginEvent(sceneId)
			AddText(sceneId, "Xin ch�n lo�i v�t tr�ng")
			--ͨ��x714077_g_eventList��scriptglobal��to� � ֲ���б�Ա�,�����������ֲ���ܵ�c�p����ʾ��Ӧֲ��
			for i, eventId in x714077_g_eventList do	--����C�i n�y �����˿�����ֲto� � ֲ���б�
				for j,g_ZhiWuId in V_ZHONGZHI_ID do		--����scriptglobal��to� � ����ֲ���б�
					if eventId == g_ZhiWuId then
						if AbilityLevel >= V_ZHONGZHI_NEEDLEVEL[j] then --��������ֲ���ܵ�c�p>=��ֲ��Ҫ���ܵ�c�p]
							AddNumText(sceneId, x714077_g_eventList[i], V_ZHONGZHI_NAME[j],6,-1)
							break
						end
					end
				end
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x714077_OnEventRequest( sceneId, selfId, targetId, eventId )
	zhiwuId = eventId
	for i, findId in x714077_g_eventList do
		if zhiwuId == findId then
			CallScriptFunction( 713550, "OnDefaultEvent",sceneId, selfId, targetId, zhiwuId )
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����(��ʱ��������ӿ�)
--**********************************
function x714077_OnMissionSubmit( sceneId, selfId, targetId, scriptId )
	for i, findId in x714077_g_eventList do
		if scriptId == findId then
			ret = CallScriptFunction( scriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( scriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )
				CallScriptFunction( scriptId, "OnDefaultEvent",sceneId, selfId, targetId, ABILITY_ZHONGZHI )
			end
			return
		end
	end
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x714077_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x714077_g_eventList do
		if missionScriptId == findId then
			ret = CallScriptFunction( missionScriptId, "CheckAccept", sceneId, selfId )
			if ret > 0 then
				CallScriptFunction( missionScriptId, "OnAccept", sceneId, selfId, ABILITY_ZHONGZHI )	
			end
			return
		end
	end
end

