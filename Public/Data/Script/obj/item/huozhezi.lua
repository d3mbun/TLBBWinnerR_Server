-- ������,C�n ʹ��to� � �������
-- Li�u T�y������(165,197) �u�i theo H�c Phong

--�ű���
x300025_g_scriptId = 300025

x300025_g_MissionId = 552

--��ӵ��to� � �¼�ID�б�
x300025_g_eventList={212107}

--**********************************
--�¼��������
--**********************************
function x300025_OnDefaultEvent( sceneId, selfId, BagIndex )
	BeginEvent(sceneId)
		AddText(sceneId, "�u�i theo H�c Phong")
		-- ��������ng����ng �i�m����C�n to� � ��c�i����,
		if GetItemCount( sceneId, selfId, 40002070 ) >= 1   then
			if GetItemCount( sceneId, selfId, 40002069 ) >= 1   then
				AddText(sceneId, "C�c h� �� �u�i h�c phong th�nh c�ng")
				local misIndex = GetMissionIndexByID(sceneId,selfId,x300025_g_MissionId)
				SetMissionByIndex(sceneId,selfId,misIndex,0,1)
				SetMissionByIndex(sceneId,selfId,misIndex,1,1)
				-- ɾ���������
				DelItem( sceneId, selfId, 40002070, 1 )
				DelItem( sceneId, selfId, 40002069, 1 )
				
				-- ����m�t c�iЧ��
				LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 139, 0)
				
			else
				AddText(sceneId, "C�c h� c�n ph�n s�i kh�")
			end
		end
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--ˢ���¼�
--**********************************
function x300025_OnEventRequest( sceneId, selfId, targetId, eventId )
	--PrintStr("x300025_OnEventRequest")
end

--**********************************
--Ti�p th���NPCto� � ����
--**********************************
function x300025_OnMissionAccept( sceneId, selfId, targetId )

end

--**********************************
--�ܾ���NPCto� � ����
--**********************************
function x300025_OnMissionRefuse( sceneId, selfId, targetId, missionScriptId )
	--�ܾ�֮��,ҪTr� v�NPCto� � �¼��б�
	--for i, findId in x300025_g_eventList do
	--	if missionScriptId == findId then
	--		UpdateEventList( sceneId, selfId, targetId )
	--		return
	--	end
	--end
end

function x300025_IsSkillLikeScript( sceneId, selfId)
	return 0
end


