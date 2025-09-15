--�����Ϣ�Ҳ����ɲɼ�to� � buff Tr�n lung chi quang; �to� � �ű�   2008-11-4 by cuiyinjie
--����Ҫ�ж���ng�����Ϣ�Ҳ������˻
--���λ�ò���buff��ng��λ�ñ������ȡto� � 
--�����ܲ����˻to� � 6c�i���ɲ���,1,2,�ֱ��¼��ng�񴴽��˵�m�t �͵ڶ���to� � �ɼ� �i�m,��ֹ��δ���. 3,��¼��ng��ɾ�����ɼ� �i�m
-- 4,5,6Ϊ��� �i�m��to� � ��¼

--�ű���
x808123_g_ScriptId	= 808123

x808123_g_RestRooms = {193, 418, 419, 518};      -- �����Ϣ��to� � ����id

x808123_g_iMonsterTypeID = 12150; --52000; -- Ҫ�ɼ�to� � ��to� � id  MonsterAttrExtable.txt

x808123_g_iZhenglongZhiguangBuffId = 76;    -- Tr�n lung chi quangbuffid,�� StandardImpact.txt


--**********************************
--�ű���ں���
--**********************************
function x808123_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )
	local i = 1;
	--���ж���ng�������Ϣ��
	local bIsRestRoom = 0
	for i = 1, 4 do
	   if ( sceneId == x808123_g_RestRooms[i] ) then
          bIsRestRoom = 1
          break
	   end
	end
	if ( 1 ~= bIsRestRoom ) then
	    return
	end

	--����� �i�m�: ����ID,�ID,ʱ����,��������(���Բ���,Ĭ����ͨ��������)
	StartOneActivity( sceneId, actId, floor(10*1000), iNoticeType );
	--�������ȳ�ʼ���Զ������
	for i = 1, 6 do
        SetActivityParam( sceneId, actId, i, 0 );
	end
end

--**********************************
--��������
--**********************************
function x808123_OnTimer( sceneId, actId, uTime )
	--PrintStr("hhii");
	--�����ng�����
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

	-- �����ɲ�����¼��ng���Ѿ�������ɾ������to� � �ɼ� �i�m
	local iHour = GetHour();
	local iMinute = GetMinute();
	local schedule =
	{
	    [1] =  { StartTime1 = {11, 25}, StartTime2 = {11, 27}, EndTime = {14, 30}, },
		[2] =  { StartTime1 = {20, 25}, StartTime2 = {20, 27}, EndTime = {22, 00}, },
	}
	local i = 1;
	local iParam = 0;
	for i = 1, 2 do
	    local iOffSet = (i - 1) * 3;
	    if ( iHour == schedule[i].EndTime[1] and iMinute == schedule[i].EndTime[2] ) then -- ɾ��δ�ɼ�to� � �ɼ� �i�m
	         iParam = GetActivityParam(sceneId, actId, iOffSet + 3);
	         if ( 1 == iParam ) then
	              x808123_RemoveGatherPoints(sceneId, actId);
	              SetActivityParam( sceneId, actId, iOffSet + 3, 0 );    --����Ѿ�ɾ���ɼ� �i�m
	         end
	    elseif(iHour == schedule[i].StartTime2[1] and iMinute == schedule[i].StartTime2[2]) then
	         iParam = GetActivityParam(sceneId, actId, iOffSet + 2);
	         if ( 0 == iParam ) then
                 x808123_AddGatherPoints(sceneId, actId, 2);
			     SetActivityParam( sceneId, actId, iOffSet + 2, 1 );
			     SetActivityParam( sceneId, actId, iOffSet + 3, 1 );   --����Ѵ����ɼ� �i�m
		     end
	    elseif(iHour == schedule[i].StartTime1[1] and iMinute == schedule[i].StartTime1[2]) then  --��m�t ��Ӧ�ò����ɼ� �i�mto� � ʱ��
	         iParam = GetActivityParam(sceneId, actId, iOffSet + 1);
	         if ( 0 == iParam ) then
                 x808123_AddGatherPoints(sceneId, actId, 1);
			     SetActivityParam( sceneId, actId, iOffSet + 1, 1 );
			     SetActivityParam( sceneId, actId, iOffSet + 3, 1 );   --����Ѵ����ɼ� �i�m
		     end
	    end
	end
end


--***********************************
--�����ɼ� �i�mto� � ����
--iIndex = 1ʱ��ʾ��ngT�i ����ǰ10c�i�ɼ� �i�m,=2ʱΪ������10c�i�ɼ� �i�m
--***********************************
function x808123_AddGatherPoints(sceneId, actId, iIndex)

    --�ɼ� �i�mto� � ����:
	local AllPos = {
		{ {18,18},{46,18},{18,24},{46,24},{18,30},{46,30},{18,36},{46,36},{18,42},{46,42} },  --T�i 11: 25��20: 25����to� � BUFF���� �i�m����
		{ {24,22},{40,22},{24,27},{40,27},{24,32},{40,32},{24,37},{40,37},{24,42},{40,42} },  --T�i 11: 27��20: 27����to� � BUFF���� �i�m����
	}

	local iAIType = 7;
	local iAIScriptID = 0;
	local iScriptID = x808123_g_ScriptId;  -- ��C�i n�y �ű�to� � id,�����ص�����дT�i �˽ű���
	
	-- ����10c�i
	local i = 1;
	local iObjId = -1;
	for i = 1, 10 do     -- ��101-120 ,20c�i �i�mto� � objid��¼���Զ������,����ɾ��
		iObjId = LuaFnCreateMonster(sceneId, x808123_g_iMonsterTypeID, AllPos[iIndex][i][1], AllPos[iIndex][i][2], iAIType, iAIScriptID, iScriptID);
	end
end

--***********************************
--ɾ���ɼ� �i�mto� � ����
--***********************************
function x808123_RemoveGatherPoints(sceneId, actId)
	--�������д˲ɼ� �i�m����to� � obj��ɾ��
	local monsterobjid = -1
	local monstercount = GetMonsterCount(sceneId)
	for i=0, monstercount-1 do
		monsterobjid = GetMonsterObjID(sceneId,i)
		monstertype = GetMonsterDataID(sceneId, monsterobjid) --��������
		if monstertype==x808123_g_iMonsterTypeID then
			LuaFnDeleteMonster(sceneId, monsterobjid)
		end
	end
	
	-- ����to� � ����Ϊ����ʱ��,����Ӧ����ÿ����ʼʱ�͵�����,ɾ�ɼ� �i�mʱ�Ͳ�����
	for i = 1, 6 do
        SetActivityParam( sceneId, actId, i, 0 );
	end
end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808123_NotifyTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end


--**********************************
--���⽻��:�����ж�
--**********************************
function x808123_OnActivateConditionCheck( sceneId, selfId, activatorId )
	-- 1 ��������ng����ng������
	if GetTeamSize(sceneId,activatorId) < 2  then
		--"Ng߽i c�n t� �i 2 ng߶i."
		x808123_NotifyTip( sceneId, activatorId, "Ng߽i c�n t� �i 2 ng߶i." )
		return 0
	end
	-- 2 ��������ng����ng�ӳ�
	if GetTeamLeader(sceneId,activatorId) ~= activatorId then
        --Ch� c� �i tr߷ng m�i ti�n h�nh thu th�p.
        x808123_NotifyTip( sceneId, activatorId, "Ch� c� �i tr߷ng m�i ti�n h�nh thu th�p." )
		return 0
	end
	
	-- ��������to� � buff
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, activatorId, x808123_g_iZhenglongZhiguangBuffId) == 1 then
	   x808123_NotifyTip( sceneId, activatorId, "Tr�n lung chi quang �� v�n quanh � tr�n ng߶i ng߽i, kh�ng c�n thu th�p n�a." )
	   return 0
	end

	return 1
end

--**********************************
--���⽻��:���ĺͿ۳�����
--**********************************
function x808123_OnActivateDeplete( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ɹ���Ч����
--**********************************
function x808123_OnActivateEffectOnce( sceneId, selfId, activatorId )

	local SmallBoxBuff = {
				{name="Tr�n lung chi quang",buff=x808123_g_iZhenglongZhiguangBuffId},  -- buff����T�i   StandardImpact.txt

    }
	-- ����C�i n�y Npcto� � ���������+buff,
	local szName = GetName(sceneId, selfId)

	if szName == SmallBoxBuff[1].name  then
		LuaFnDeleteMonster(sceneId, selfId)
		--LuaFnSendSpecificImpactToUnit(sceneId, activatorId, activatorId, activatorId, SmallBoxBuff[1].buff, 100 )
		-- ������������Ҽ���buff
  		local	nearteammembercount = GetNearTeamCount( sceneId, activatorId)
		local mems = {}
		for	i=0,nearteammembercount-1 do
			mems[i] = GetNearTeamMember(sceneId, activatorId, i)
			LuaFnSendSpecificImpactToUnit(sceneId, mems[i], mems[i], mems[i], SmallBoxBuff[1].buff, 100 )
		end
	end

	return 1
end

--**********************************
--���⽻��:������ÿʱ������Ч����
--**********************************
function x808123_OnActivateEffectEachTick( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:������ʼʱto� � ���⴦��
--**********************************
function x808123_OnActivateActionStart( sceneId, selfId, activatorId )
	return 1
end

--**********************************
--���⽻��:��������ʱto� � ���⴦��
--**********************************
function x808123_OnActivateCancel( sceneId, selfId, activatorId )
	return 0
end

--**********************************
--���⽻��:�����ж�ʱto� � ���⴦��
--**********************************
function x808123_OnActivateInterrupt( sceneId, selfId, activatorId )
	return 0
end
