--created by WTT 2009.3.2

--�¼������͵�ʥ��ɽ

--�ű���
x400963_g_ScriptId = 400963

--�����ı�����
x400963_g_MissionName="#{QSSS_090302_1}"		-- ȥʥ��ɽ
x400963_g_MissionInfo="Chuy�n �n Th�nh Th� S�n"  		-- ��������
x400963_g_MissionTarget="Chuy�n �n Th�nh Th� S�n"		-- ����Ŀ��
x400963_g_ContinueInfo="Chuy�n �n Th�nh Th� S�n"			-- δ��������npc�Ի�
x400963_g_MissionComplete="Chuy�n �n Th�nh Th� S�n"	-- �������npc˵���Ļ�

--**********************************
--��ں���
--**********************************
function x400963_OnDefaultEvent( sceneId, selfId, targetId )	--����������ִ�д˽ű�
	
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
	
	-- ���ϼ���ͨ��	
	BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x400963_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShengShouShan");
			UICommand_AddString(sceneId, "#{QSSS_090302_2}");		-- ��ʥ��ɽΪ����ɱ����������ע�ⰲȫ����ȷ��Ҫ�����𣿡�
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
end

--**********************************
--�о��¼�
--**********************************
function x400963_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId,x400963_g_ScriptId,x400963_g_MissionName, 9, 1)	
	
end

--**********************************
--������ʥ��ɽ
--**********************************
function x400963_GotoShengShouShan( sceneId, selfId, targetId )

	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 158, 233, 225, 21 );
	return
	
end
