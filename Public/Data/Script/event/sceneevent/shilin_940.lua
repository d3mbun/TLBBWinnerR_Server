--ʯ�� �����ң��
--212124
-- ע��ʹ�ó�����ʱ������ɡ�
-- ��������

--MisDescBegin
--�ű���
x212124_g_ScriptId = 212124

--��������NPC����
x212124_g_Position_X=183
x212124_g_Position_Z=168
x212124_g_SceneID=26
x212124_g_AccomplishNPC_Name="Tr�nh Vi�n"

--�����
x212124_g_MissionId = 940

--ǰ������
x212124_g_MissionIdPre = 605

--Ŀ��NPC
x212124_g_Name	="Tr�nh Vi�n"

--�������
x212124_g_MissionKind = 42

--����ȼ�
x212124_g_MissionLevel = 56

--�Ƿ��Ǿ�Ӣ����
x212124_g_IfMissionElite = 0

--������
x212124_g_MissionName="Dao v�ng t�nh th�m"
x212124_g_MissionInfo="#{Mis_30_60_desc_015}"
x212124_g_MissionTarget="    H� t�ng D߽ng Thi�t T�n �n Vi�n Nguy�t Th�n, sau �� �n Th�ch L�m Vi�n Nguy�t Th�n t�m Tr�nh Vi�n #{_INFOAIM183,167,26,Tr�nh Vi�n}."
x212124_g_MissionContinue="  T߾ng c�ng c�a ta nh�t �nh s� tr� v�, nh�t �nh nh� th�, ta tin l� v�y!"
x212124_g_MissionComplete="  Ta h�nh nh� c�m nh�n ���c �nh m�t �m �p c�a t߾ng c�ng, ch�ng nh�t �nh c�ch ta kh�ng xa. Thi�t T�n! Ch�ng �ang � ��u ? Ta s� ��i ch�ng quay v�."

x212124_g_MoneyBonus=16000
x212124_g_exp=20000

x212124_g_Custom	= { {id="�� h� t�ng D߽ng Thi�t T�n",num=1} }
x212124_g_IsMissionOkFail = 0
--MisDescEnd

-- ����·��Id
x212124_g_PatrolPathIndex = 0

-- ������ʱ��Index
x212124_g_SceneTimerIndex = -1
x212124_g_Step = 0
x212124_g_StartTime = 0
x212124_g_PlayerNum = 0
x212124_g_PlayerId= {-1,-1,-1,-1,-1,-1}


--**********************************
--������ں���
--**********************************
function x212124_OnDefaultEvent( sceneId, selfId, targetId )
	--��������ɹ��������
	if (IsMissionHaveDone(sceneId,selfId,x212124_g_MissionId) > 0 ) then
		return
	elseif( IsHaveMission(sceneId,selfId,x212124_g_MissionId) > 0)  then
		if GetName(sceneId,targetId) == x212124_g_Name then
			--x212124_OnContinue( sceneId, selfId, targetId )
			local bDone = x212124_CheckSubmit( sceneId, selfId )
			BeginEvent(sceneId)
				AddText(sceneId,x212124_g_MissionName)
				AddText(sceneId,x212124_g_MissionContinue)
			EndEvent( )
			DispatchMissionDemandInfo(sceneId,selfId,targetId,x212124_g_ScriptId,x212124_g_MissionId,bDone)		
			
			
		end
	
	--���������������
	elseif x212124_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212124_g_Name then
			--�����������ʱ��ʾ����Ϣ
			local  PlayerName=GetName(sceneId,selfId)	
			BeginEvent(sceneId)
				AddText(sceneId,x212124_g_MissionName)
				AddText(sceneId,x212124_g_MissionInfo)
				AddText(sceneId,"#{M_MUBIAO}#r")
				AddText(sceneId,x212124_g_MissionTarget)
				AddText(sceneId,"#{M_SHOUHUO}#r")
				AddMoneyBonus( sceneId, x212124_g_MoneyBonus )
			EndEvent( )
			DispatchMissionInfo(sceneId,selfId,targetId,x212124_g_ScriptId,x212124_g_MissionId)
		end
	end
end

--**********************************
--�о��¼�
--**********************************
function x212124_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ��������
	if IsMissionHaveDone(sceneId,selfId,x212124_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x212124_g_MissionId) > 0 then
		if GetName(sceneId,targetId) == x212124_g_Name then
			AddNumText(sceneId, x212124_g_ScriptId,x212124_g_MissionName,2,-1);
		end
	elseif x212124_CheckAccept(sceneId,selfId) > 0 then
		if GetName(sceneId,targetId) ~= x212124_g_Name then
			AddNumText(sceneId,x212124_g_ScriptId,x212124_g_MissionName,1,-1);
		end
	end

end

--**********************************
--����������
--**********************************
function x212124_CheckAccept( sceneId, selfId )
	-- 1���������ǲ����Ѿ�����
	if (IsMissionHaveDone(sceneId,selfId,x212124_g_MissionId) > 0 ) then
		return 0
	end
		
	-- �ȼ����
	if GetLevel(sceneId, selfId) < x212124_g_MissionLevel then
		return 0
	end
	
	if (IsMissionHaveDone(sceneId,selfId,x212124_g_MissionIdPre) < 1 ) then
		return 0
	end
	
	return 1
end

--**********************************
--����
--**********************************
function x212124_OnAccept( sceneId, selfId, targetId )
	if x212124_CheckAccept(sceneId, selfId) < 1   then
		return 0
	end

	-- �����ҵ��ķ��ǲ��Ǵﵽ��Ҫ��ǰ�����ķ��ȼ����ڵ���55����
	--if CallScriptFunction( 212120, "CheckAllXinfaLevel", sceneId, selfId, 55 ) == 0  then
   	--BeginEvent(sceneId)
	--		local strText = format("All of 6 class skill book need be reached to 55 !!.")
	--		AddText(sceneId, strText)
	--  EndEvent(sceneId)
  	--DispatchMissionTips(sceneId,selfId)
	--	return
	--end
	
	-- ʹ��һ��������ʱ�������С�����
	if x212124_g_Step ~= 0  and x212124_g_Step ~= 2   then
		BeginEvent(sceneId)
			AddText(sceneId, "M�c ti�u �ang b�n, xin ��i gi�y l�t!")
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
		return
	end
	
	-- ����Ļ�����Ҫ���������ļ�ʱ��������ʹ�������ʱ��
	if x212124_g_Step == 0   then
		local ret = AddMission( sceneId,selfId, x212124_g_MissionId, x212124_g_ScriptId, 0, 0, 0 )
		if ret <= 0 then
			Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
			return
		end
		
		local misIndex = GetMissionIndexByID(sceneId,selfId,x212124_g_MissionId)
		-- ���������ʱ����Ӧ����һֱ������ռ�õģ����ԣ�ֻҪ���ֵ������-1���Ͳ�Ҫ������
		if x212124_g_SceneTimerIndex == -1  then
			x212124_g_SceneTimerIndex = SetTimer(sceneId, selfId, x212124_g_ScriptId, "OnSceneTimer", 1)
			SetMissionByIndex(sceneId,selfId,misIndex,3,x212124_g_SceneTimerIndex)
		end

		Msg2Player(  sceneId, selfId,"#YNh�n nhi�m v�: Dao v�ng t�nh th�m!",MSG2PLAYER_PARA )

		-- �������
		SetMissionByIndex( sceneId, selfId, misIndex, 0, 0)
		SetMissionByIndex( sceneId, selfId, misIndex, 1, 0)
		SetMissionByIndex(sceneId,selfId,misIndex,2,0)
	end
	
	if x212124_g_Step == 2   then
		
	end
	
	
end

function x212124_OnSceneTimer(sceneId, selfId)

	if LuaFnIsObjValid(sceneId,selfId)~=1 then
		return
	end
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x212124_g_MissionId)
	if not misIndex or misIndex<0 or misIndex>5000 then
		return
	end
	
	local nStep=GetMissionParam(sceneId,selfId,misIndex,2)
	
	x212124_g_PlayerId[1] = selfId
	x212124_g_PlayerNum = 1
	
	if nStep==100 then
		x212124_g_SceneTimerIndex=GetMissionParam(sceneId,selfId,misIndex,3)
		StopTimer(sceneId, x212124_g_SceneTimerIndex)
		return
	end
	
	if nStep == 0 then
		x212124_g_StartTime = LuaFnGetCurrentTime()
		--nStep = 1
		SetMissionByIndex(sceneId,selfId,misIndex,2,1)
	end
	
	if nStep < 3  then
		local nSelfId = -1
		local bHavePlayer = 0
			for i=1, x212124_g_PlayerNum  do	
				if x212124_g_PlayerId[i] ~= -1  then
					if LuaFnIsObjValid(sceneId, x212124_g_PlayerId[i])==1  and LuaFnIsCanDoScriptLogic(sceneId, x212124_g_PlayerId[i]) == 1   then
						bHavePlayer = 1
						nSelfId = x212124_g_PlayerId[i]
						break
					end
				end
			end
		
		if bHavePlayer == 0   then
			-- ��ʱ��ֹͣ��������е�ȫ�ֱ���
			--nStep = 0
			SetMissionByIndex(sceneId,selfId,misIndex,2,0)
			x212124_g_StartTime = 0
			x212124_g_PlayerId[1] = -1
			x212124_g_PlayerId[2] = -1
			x212124_g_PlayerId[3] = -1
			x212124_g_PlayerId[4] = -1
			x212124_g_PlayerId[5] = -1
			x212124_g_PlayerId[6] = -1
			x212124_g_PlayerNum = 0
			x212124_g_StartTime = 0
			return
		end
	end
	
	-- ֻҪ����Ŀ���ߵ��յ㣬�ͻָ����еı���
	if nStep == 1   then
		-- ��С�ӵ�������ҷ���һ���͵�����
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nYangTX = 0
		local bHaveMonster = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "D߽ng Thi�t T�n"  then
				nYangTX = nMonsterId
				bHaveMonster = 1
			end
		end
		
		for i=1, x212124_g_PlayerNum  do	
			if x212124_g_PlayerId[i] ~= -1  then
				if LuaFnIsObjValid(sceneId, x212124_g_PlayerId[i])==1  and
					 LuaFnIsCanDoScriptLogic(sceneId, x212124_g_PlayerId[i]) == 1   then
					bHavePlayer = 1
					nSelfId = x212124_g_PlayerId[i]
					
					break
				end
			end
		end
		local nTeamCount = GetNearTeamCount(sceneId, nSelfId)
		for i=0, nTeamCount-1 do
			local PlayerId = GetNearTeamMember(sceneId, nSelfId, i)
			if PlayerId ~= nSelfId    then
				CallScriptFunction((212124), "OnDefaultEvent", sceneId, PlayerId, nYangTX )
			end
		end
		
		-- �������������������
		x212124_g_StartTime = LuaFnGetCurrentTime()
		--nStep = 2
		SetMissionByIndex(sceneId,selfId,misIndex,2,2)
		
	elseif nStep == 2   then
		-- �ȴ�5�룬���ʱ���ǵȴ�������һ�����������͵�ʱ��
		if LuaFnGetCurrentTime() - x212124_g_StartTime > 5   then
			--CallScriptFunction((200060), "Paopao",sceneId, "������", "ʯ��", "����������!!!")
			--nStep = 3
			SetMissionByIndex(sceneId,selfId,misIndex,2,3)
			return
		end
		
	elseif nStep == 3   then
		CallScriptFunction((200060), "Paopao",sceneId, "D߽ng Thi�t T�n", "Th�ch L�m", "Xu�t ph�t, xu�t ph�t!!!")
		
		-- ��ʼ����
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nHaveMonster = 0
		local nYangTX = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "D߽ng Thi�t T�n"  then
				nYangTX = nMonsterId
				nHaveMonster = 1
			end
		end
		
		if nHaveMonster == 0  then
			PrintStr("Can't find D߽ng Thi�t T�n")
			return 
		end
		--�õ�����Ѳ��·��
		--SetNPCAIType(sceneId, nYangTX, 0)
		SetPatrolId(sceneId, nYangTX, x212124_g_PatrolPathIndex)
		--nStep = 4
		SetMissionByIndex(sceneId,selfId,misIndex,2,4)


	elseif nStep == 4   then
		-- �������Ŀ�굽��·���յ㣬
		local Patrol_x
		local Patrol_z
		Patrol_x,Patrol_z = GetLastPatrolPoint(sceneId, x212124_g_PatrolPathIndex)
		
		local nMonsterNum = GetMonsterCount(sceneId)
		local jj = 0
		local nHaveMonster = 0
		local nYangTX = 0
		for jj=0, nMonsterNum-1 do
			local nMonsterId = GetMonsterObjID(sceneId,jj)
			if GetName(sceneId, nMonsterId)  == "D߽ng Thi�t T�n"  then
				nYangTX = nMonsterId
				nHaveMonster = 1
			end
		end
		
		-- ����Ҳ�������ˡ�����������ʱû�д���
		
		local targetX, targetZ = GetWorldPos(sceneId, nYangTX)
		local distance = floor(sqrt((Patrol_x-targetX)*(Patrol_x-targetX)+(Patrol_z-targetZ)*(Patrol_z-targetZ)))
		
		if distance <= 2 then
			CallScriptFunction((200060), "Paopao",sceneId, "D߽ng Thi�t T�n", "Th�ch L�m", "Ъn r�i, �n r�i!!!")
			--nStep = 0
			SetMissionByIndex(sceneId,selfId,misIndex,2,100)
			
			-- ������ҵ�������ɣ��������ʾ���ȵȵĲ�����������ִ��
			for i=1, x212124_g_PlayerNum   do
				if x212124_g_PlayerId[i]~=-1   then
					local misIndex = GetMissionIndexByID(sceneId, x212124_g_PlayerId[i], x212124_g_MissionId)--�õ�������20�������е����к�
					SetMissionByIndex(sceneId, x212124_g_PlayerId[i], misIndex, 0, 1)
					SetMissionByIndex(sceneId, x212124_g_PlayerId[i], misIndex, 1, 1)
					BeginEvent(sceneId)
						AddText(sceneId, "H� t�ng D߽ng Thi�t T�n th�nh c�ng.")
					EndEvent()
					DispatchMissionTips(sceneId, x212124_g_PlayerId[i])
				end
			end
			return
		end
		
		-- �������ǲ�������ʧ�ܣ�
			-- ʧ��ԭ��
				-- 1������Npc��Զ
				-- 2���뿪���������
				-- 3�����������뿪���������ʵ�֣�
		for i=1, x212124_g_PlayerNum  do	
			if x212124_g_PlayerId[i] ~= -1  then
				if LuaFnIsObjValid(sceneId, x212124_g_PlayerId[i])~=1  and
					 LuaFnIsCanDoScriptLogic(sceneId, x212124_g_PlayerId[i]) ~= 1   then
					
					x212124_g_PlayerId[i] = -1
				end
			end
			
			if x212124_g_PlayerId[i] ~= -1  then
				local x, z = GetWorldPos(sceneId, x212124_g_PlayerId[i])
				local distance = floor(sqrt((x-targetX)*(x-targetX)+(z-targetZ)*(z-targetZ)))
				
				if distance>15   then
					BeginEvent(sceneId)
						AddText(sceneId, "H� t�ng D߽ng Thi�t T�n th�t b�i.")
					EndEvent()
					DispatchMissionTips(sceneId, x212124_g_PlayerId[i])
					x212124_g_PlayerId[i] = -1
					SetMissionByIndex(sceneId,selfId,misIndex,2,100)
				end
			end
		end
	end
	
end

--**********************************
--����
--**********************************
function x212124_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧ������
  DelMission( sceneId, selfId, x212124_g_MissionId )
end

--**********************************
--����
--**********************************
function x212124_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱ��˵����Ϣ
  BeginEvent(sceneId)
	AddText(sceneId,x212124_g_MissionName)
	AddText(sceneId,x212124_g_MissionComplete)
	AddMoneyBonus( sceneId, x212124_g_MoneyBonus )
  EndEvent( )
  DispatchMissionContinueInfo(sceneId,selfId,targetId,x212124_g_ScriptId,x212124_g_MissionId)
end

--**********************************
--����Ƿ�����ύ
--**********************************
function x212124_CheckSubmit( sceneId, selfId )
	local bRet = CallScriptFunction( SCENE_SCRIPT_ID, "CheckSubmit", sceneId, selfId, x212124_g_MissionId )
	if bRet ~= 1 then
		return 0
	end

	local misIndex = GetMissionIndexByID(sceneId, selfId, x212124_g_MissionId)--�õ�������20�������е����к�
	if GetMissionParam(sceneId, selfId, misIndex, 0) < 1  then
		return 0
	end
	
	return 1
end

--**********************************
--�ύ
--**********************************
function x212124_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if x212124_CheckSubmit( sceneId, selfId, selectRadioId ) == 1 then
		--���������
		AddMoney(sceneId,selfId, x212124_g_MoneyBonus );
		LuaFnAddExp( sceneId, selfId, x212124_g_exp)
		DelMission( sceneId, selfId, x212124_g_MissionId )
		MissionCom( sceneId, selfId, x212124_g_MissionId )
		Msg2Player( sceneId, selfId,"#YHo�n th�nh nhi�m v�: Dao v�ng t�nh th�m",MSG2PLAYER_PARA )
	end
end

--**********************************
--ɱ����������
--**********************************
function x212124_OnKillObject( sceneId, selfId, objdataId )
end

--**********************************
--���������¼�
--**********************************
function x212124_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x212124_OnItemChanged( sceneId, selfId, itemdataId )
end

