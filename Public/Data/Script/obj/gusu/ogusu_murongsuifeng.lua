--Ľ��NPC
--Ľ�����
--��ͨ

x009046_g_ScriptId = 009046

--**********************************
--�¼��������
--**********************************
function x009046_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)
		AddText(sceneId,"#{GUSU_MENPAI_30}")
		AddNumText(sceneId, x009046_g_ScriptId, "H�c khinh c�ng M� Dung",12,0)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
--�¼��б�ѡ��һ��
--**********************************
function x009046_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText()==0	then
		
		if GetMenPai(sceneId, selfId) == 10 then
			if	HaveSkill( sceneId, selfId, 788)<0	then
				-- ��Ǯ
				if GetMoney(sceneId, selfId)+GetMoneyJZ(sceneId, selfId) < STUDY_MENPAI_QINGGONG_SPEND  then
					BeginEvent(sceneId)
						AddText(sceneId,"  Ng�n l��ng tr�n ng߶i c�c h� kh�ng �� 1#-15, v� v�y kh�ng th� h�c khinh c�ng b�n m�n")
					EndEvent(sceneId)
					DispatchEventList(sceneId,selfId,targetId)
					return
				end
				-- ��Ǯ
				LuaFnCostMoneyWithPriority(sceneId,selfId,STUDY_MENPAI_QINGGONG_SPEND)
				
				AddSkill( sceneId, selfId, 788 )
				DelSkill( sceneId, selfId, 34 )
				BeginEvent(sceneId)
					AddText(sceneId,"Ch�c m�ng ng߽i �� h�c ���c khinh c�ng c�a b�n m�n, hy v�ng ng߽i ti�p t�c n� l�c � ph�t huy danh ti�ng b�n m�n")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			else
				BeginEvent(sceneId)
					AddText(sceneId,"Ch�ng ph�i ng߽i �� h�c r�i sao?")
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
			end
		elseif GetMenPai(sceneId, selfId) == 9 then
			BeginEvent(sceneId)
				AddText(sceneId,"H�c khinh c�ng M� Dung tr߾c ti�n c�n gia nh�p ph�i M� Dung!")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		else
			BeginEvent(sceneId)
				AddText(sceneId,"Ng߽i kh�ng ph�i l� � t� c�a b�n bang, ta kh�ng th� d�y ng߽i khinh c�ng c�a M� Dung")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
		end
	end	
end

--**********************************
--���ܴ�NPC������
--**********************************
function x009046_OnMissionAccept( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ܾ���NPC������
--**********************************
function x009046_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��Ҫ����NPC���¼��б�
end

--**********************************
--�������Ѿ���������
--**********************************
function x009046_OnMissionContinue( sceneId, selfId, targetId, missionScriptId )
end

--**********************************
--�ύ�����������
--**********************************
function x009046_OnMissionSubmit( sceneId, selfId, targetId, missionScriptId, selectRadioId )
end

--**********************************
--�����¼�
--**********************************
function x009046_OnDie( sceneId, selfId, killerId )
end
