--���NPC   --Ы��20160724�޸�  QQ-718805400
--Ľ�ݽ�
--��ͨ

x009038_g_scriptId =009038
x009038_g_eventList={808004}
--**********************************
--�¼��������
--**********************************
function x009038_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_32}")
		local mp = GetMenPai(sceneId, selfId)
		if mp == 9 then 
			AddNumText(sceneId, x009038_g_scriptId, "Gia nh�p m�n ph�i",6,0)
		end
		AddNumText(sceneId, x009038_g_scriptId, "Gi�i thi�u m�n ph�i",8,1)
		AddNumText(sceneId, x009038_g_scriptId, "H�c K� n�ng c�a m�n ph�i?",8,6)		--ָ·������ѧϰ��
		for i, eventId in x009038_g_eventList do
			CallScriptFunction( eventId, "OnEnumerate",sceneId, selfId, targetId )
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end


--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009038_OnEventRequest( sceneId, selfId, targetId, eventId )

	for i, findId in x009038_g_eventList do
		if eventId == findId then
			CallScriptFunction( eventId, "OnDefaultEvent",sceneId, selfId, targetId, MP_GUSU )
			return
		end
	end

	if GetNumText()==0	then

		x009038_g_MenPai = GetMenPai(sceneId, selfId)
		if x009038_g_MenPai == 10 then
			BeginEvent(sceneId)
				AddText(sceneId, "Ng߽i l�i t�i qu�y r�y s� ph�, ng߽i �� l� � t� ph�i M� Dung, c�n b�i s� g� n�a")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end
		
		if x009038_g_MenPai ~= 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i �� l� cao � c�a m�n ph�i kh�c, ch�ng ta kh�ng thu nh�n ng߽i")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		end

		BeginEvent(sceneId)
			AddText(sceneId, "#{GUSU_MENPAI_25}")
			AddNumText(sceneId, x009038_g_scriptId, "Ta mu�n gia nh�p ph�i M� Dung",6,3)
			AddNumText(sceneId, x009038_g_scriptId, "T�i h� ch�a mu�n b�i s�",8,4)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		 
		return
	end
	
	if GetNumText()==4	then
		BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
		return
	end
	
	if GetNumText()==3	then
		if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
			BeginEvent(sceneId)
				AddText(sceneId,"H�y s�p x�p l�i tay n�i, c�n 2 v� tr� tr�ng, ta s� th߷ng cho ng߽i!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		elseif GetLevel( sceneId, selfId ) < 10 then
			BeginEvent(sceneId)
				AddText(sceneId,"C�c h� h�y ��i t�i sau c�p 10 l�i t�i b�i s� h�c ngh�!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			x009038_g_MenPai = GetMenPai(sceneId, selfId)
			if x009038_g_MenPai == 10 then
				BeginEvent(sceneId)
					AddText(sceneId, "Ng߽i l�i t�i qu�y r�y s� ph�, ng߽i �� l� � t� ph�i M� Dung, c�n b�i s� g� n�a")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			--����ֵΪ9��ʾ������
			elseif x009038_g_MenPai==9	then
				LuaFnJoinMenpai(sceneId, selfId, targetId, 10)

				-- ���ó�ʼ��Npc��ϵֵ
				CallScriptFunction( 200099, "InitRelation", sceneId, selfId )

				-- ����ص��ķ�����Ϊ10����  64,67,68
				LuaFnSetXinFaLevel(sceneId,selfId,64,10)
				LuaFnSetXinFaLevel(sceneId,selfId,67,10)
				LuaFnSetXinFaLevel(sceneId,selfId,68,10)

				BeginEvent(sceneId)
					AddText(sceneId,"C�c h� �� gia nh�p ph�i M� Dung!");
	  			EndEvent(sceneId)
	  			DispatchMissionTips(sceneId,selfId)
					--����ҷ���,��������������,����׬Ǯ
				LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{LevelMail_menpai_10}" )
				--LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{OBJ_mingjiao_0001}" )
				
				--���ɽ����ټ���
				for i=1, 20 do
					TryRecieveItem( sceneId, selfId, 30501001, 1 )
				end
				x009038_MsgBox( sceneId, selfId, "Nh�n ���c 20 c�i M�n Ph�i Tri�u T�p L�nh!" )


				if TryRecieveItem( sceneId, selfId, 10124198, 1 ) >= 0 then
					str		= "C�c h� �� nh�n ���c "..GetItemName( sceneId, 10124198 ).."."
					x009038_MsgBox( sceneId, selfId, str )
				end

				if	LuaFnGetSex( sceneId, selfId)==0	then
					LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p ph�i M� Dung!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
					CallScriptFunction( 228905, "OnDefaultEvent",sceneId, selfId, targetId )
				else
					LuaFnMsg2Player( sceneId, selfId,"C�c h� �� gia nh�p ph�i M� Dung!",MSG2PLAYER_PARA)
					LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 163, 0)
					CallScriptFunction( 228905, "OnDefaultEvent",sceneId, selfId, targetId )
				end
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ng߽i �� l� cao � c�a m�n ph�i kh�c, ch�ng ta kh�ng thu nh�n ng߽i.")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		end
	elseif	GetNumText()==1	then
		BeginEvent(sceneId)
			AddText(sceneId, "#{OBJ_gusu_0001}")
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	end
	--ָ·
	if GetNumText()==6 then
		BeginEvent(sceneId)
			AddText(sceneId, "M� Dung Th�ng [68,125] c� th� d�y ng߽i k� n�ng chi�n �u c�a ph�i ta, c� ta � ngay b�n c�nh.")
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, 98, 51, "M� Dung Th�ng" )
		return
	end
end

--**********************************
--���ܴ�NPC������
--**********************************
function x009038_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009038_g_eventList do
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
--�ܾ���NPC������
--**********************************
function x009038_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
	for i, findId in x009038_g_eventList do
		if missionScriptId == findId then
			x009038_OnDefaultEvent( sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�������Ѿ���������
--**********************************
function x009038_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
	for i, findId in x009038_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnContinue", sceneId, selfId, targetId )
			return
		end
	end
end

--**********************************
--�ύ�����������
--**********************************
function x009038_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
	for i, findId in x009038_g_eventList do
		if missionScriptId == findId then
			CallScriptFunction( missionScriptId, "OnSubmit", sceneId, selfId, targetId, selectRadioId )
			return
		end
	end
end

--**********************************
--�����¼�
--**********************************
function x009038_OnDie( sceneId, selfId, killerId )
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x009038_MsgBox( sceneId, selfId, str )
	Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

