
x400995_g_ScriptId = 400995


x400995_left 	=20.0000
x400995_right	=23.0000

x400995_top  	=228.0000
x400995_bottom	=232.0000

--��ҽ���m�t c�i area ʱ����
function x400995_OnEnterArea( sceneId, selfId )

	-- BeginUICommand(sceneId)
		-- UICommand_AddInt(sceneId, x400995_g_ScriptId);
		-- UICommand_AddString(sceneId, "GotoKLFD");
		-- UICommand_AddString(sceneId, "#cfff263C�n L�n Ph�c иa cho ph�p tuy�n chi�n, #Gkh�ng s�t kh�#cfff263, c� th� x�y ra #GPK#cfff263. Ch� � b�o tr�ng.#r    #cfff263 Trong khu v�c n�y #Gch� �ng t�n c�ng#cfff263 ng߶i ch�i kh�c#G kh�ng b� tr�ng ph�t#cfff263.#r    #cfff263C� mu�n v�o kh�ng?");
	-- EndUICommand(sceneId)
	-- DispatchUICommand(sceneId,selfId, 24)

	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 434,95,35)
end

--���T�i m�t c�i area ����m�t ��ʱ��û����ʱ����
function x400995_OnTimer( sceneId, selfId )
	-- �� gi�y,��T�i C�i n�y  area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5 gi�y����δ����
	if StandingTime >= 5000 then
		x400995_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--����뿪m�t c�i area ʱ����
function x400995_OnLeaveArea( sceneId, selfId )
end

--**********************************
--������ں���
--**********************************
function x400995_GotoHanXueLing( sceneId, selfId, targetId )	-- �i�m���������ִ�д˽ű�
	
	-- ��������ng����ng��T�i C�i n�y ��Χ��
	if sceneId ~= 433 then
		--Ng߽i �� kh�ng � khu v�c v�n chuy�n.
		BeginEvent(sceneId)
			AddText(sceneId,"Ng߽i �� kh�ng � khu v�c v�n chuy�n.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	local targetX, targetZ = GetWorldPos(sceneId, selfId)
	
	if 	targetX < x400995_left or
			targetX > x400995_right or
			targetZ < x400995_top  or
			targetZ > x400995_bottom   then
		
		BeginEvent(sceneId)
			AddText(sceneId,"Ng߽i �� kh�ng � khu v�c v�n chuy�n.")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
			
	end
	
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, 434,95,35)
end
