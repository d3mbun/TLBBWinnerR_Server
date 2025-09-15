--created by WTT 2009.3.2

--�¼�: ���͵�Th�nh Th� S�n

--�ű���
x400964_g_ScriptId = 400964

--�����ı�����
x400964_g_MissionName="�i Thanh Hoa S�n"		-- ȥTh�nh Th� S�n
x400964_g_MissionInfo="�i Thanh Hoa S�n"  		-- ��������
x400964_g_MissionTarget="�i Thanh Hoa S�n"		-- M�c ti�u nhi�m v�
x400964_g_ContinueInfo="�i Thanh Hoa S�n"			-- δHo�n t�t nhi�m v�to� � npc�Ի�
x400964_g_MissionComplete="�i Thanh Hoa S�n"	-- Ho�n t�t nhi�m v�npc˵��to� � ��

--**********************************
--��ں���
--**********************************
function x400964_OnDefaultEvent( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	
	if GetItemCount(sceneId, selfId, 40002000) >= 1 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Xin th� l�i tr�n ng߶i c�c h� �ang gi� ng�n phi�u ta kh�ng th� gi�p ���c." )
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
					AddText( sceneId, "  Trong �i ng� c�a c�c h� c� ng߶i �ang l�m nhi�m v� v�n chuy�n, th߽ng nh�n ta kh�ng th� cung c�p d�ch v� cho c�c h� ���c." )
				EndEvent( sceneId )
				DispatchEventList( sceneId, selfId, targetId )
				return
			end
		end
	end
  
	if IsHaveMission(sceneId,selfId,4021) > 0 then
		BeginEvent( sceneId )
			AddText( sceneId, "  Ng߽i �ang � trong tr�ng th�i T�o v�n, kh�ng th� ti�n v� c�nh tr߾c." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end
	
	-- ���ϼ���ͨ��	
	BeginUICommand(sceneId)
			UICommand_AddInt(sceneId, x400964_g_ScriptId);			
			UICommand_AddInt(sceneId, targetId);
			UICommand_AddString(sceneId, "GotoShengShouShan");
			UICommand_AddString(sceneId, "Thanh Hoa S�n l� khu v�c kh�ng t�ng s�t kh�, ch� � an to�n. B�ng h�u x�c nh�n ti�n v�o hay kh�ng?");	
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 24)
	
end

--**********************************
--�о��¼�
--**********************************
function x400964_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText(sceneId,x400964_g_ScriptId,x400964_g_MissionName, 9, 1)	
	
end

--**********************************
--������Th�nh Th� S�n
--**********************************
function x400964_GotoShengShouShan( sceneId, selfId, targetId )

	CallScriptFunction((400900), "TransferFuncFromNpc", sceneId, selfId, 340, 30, 30, 21 );
	return
	
end
