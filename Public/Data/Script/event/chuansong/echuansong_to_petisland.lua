--�¼�
--���͵����޵�

--�ű���
x400918_g_ScriptId = 400918

--�����ı�����
x400918_g_MissionName="Ъn Huy�n V� ��o"
x400918_g_MissionInfo="Chuy�n �n Tr�n th� ��o"  --��������
x400918_g_MissionTarget="Chuy�n �n Tr�n th� ��o"		--����Ŀ��
x400918_g_ContinueInfo="Chuy�n �n Tr�n th� ��o"		--δ��������npc�Ի�
x400918_g_MissionComplete="Chuy�n �n Tr�n th� ��o"					--�������npc˵���Ļ�

--**********************************
--��ں���
--**********************************
function x400918_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�

	-- �����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  C�c h� �ang gi� ng�n phi�u, ch�y th߽ng nh�n! Ta kh�ng th� gi�p ���c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--�������
	if GetTeamId(sceneId,selfId)>=0 and 
		IsTeamFollow(sceneId, selfId)==1 and
		LuaFnIsTeamLeader(sceneId,selfId)==1 then
		num=LuaFnGetFollowedMembersCount( sceneId, selfId)
		local mems = {}
		for	i=0,num-1 do
			mems[i] = GetFollowedMember(sceneId, selfId, i)
			if mems[i] == -1 then
				return
			end
			if IsHaveMission(sceneId,mems[i],4021) > 0 then
				BeginEvent( sceneId )
					AddText( sceneId, "  Th�nh vi�n trong nh�m ng߽i c� ng߶i c� nhi�m v� ch� h�ng b�ng �߶ng thu�, d�ch tr�m ch�ng ta kh�ng th� cung c�p d�ch v� cho ng߽i" )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end

	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  C�c h� c� nhi�m v� ch� h�ng b�ng �߶ng thu�, d�ch tr�m ch�ng ta kh�ng th� cung c�p d�ch v� cho ng߽i" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 39, 109, 25)

end

--**********************************
--�о��¼�
--**********************************
function x400918_OnEnumerate( sceneId, selfId, targetId )
	--�ȼ��ﵽ10������ʾ����ѡ��
	if GetLevel( sceneId, selfId ) >= 10 then
		AddNumText(sceneId,x400918_g_ScriptId,x400918_g_MissionName, 9, -1)
	else
		return
	end
end
