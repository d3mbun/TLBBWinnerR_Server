--������:[ QUFEI 2008-03-10 10:41 UPDATE BugID 32708 ]
--Nhi�m v� R�a-Th� thi ch�y���������� �i�m

--�ű���
x808085_g_ScriptId	= 808085

x808085_g_Impact_Light_Complete 	= 47	--  �i�m��������ʱto� � ��Ч
x808085_g_Impact_GodOfFire_Mission = 5929 -- R�a-Th� thi ch�y״̬��Ч

--Nhi�m v� R�a-Th� thi ch�y��
x808085_g_MissionId			= 1000
x808085_g_MissItemId = 40004444					-- ������Ʒ
--������ng�����
x808085_g_Mission_IsComplete 			= 0		--�������to� � ��0λ
--Nhi�m v� R�a-Th� thi ch�yÿ���������
x808085_g_RoundIndex 				 			= 7		--�������to� � ��7λ

-- ������Ʒ�������
x808085_g_LuoYangLighten_Cnt 			= 5	--������L�c D߽ngM� ra ��������
x808085_g_SuZhouLighten_Cnt				= 7	--������T� Ch�uM� ra ��������
x808085_g_DaLiLighten_Cnt					= 9		--��������i L�M� ra ��������

--����������������
x808085_g_KongMing_Lighten				= 4		--�������to� � ��4λ

x808085_g_KongMingLighten_Count		=	8		-- ÿ��·��C�n  �i�mȼto� � ����������
x808085_g_KongMingLighten_MaxCnt	=	24	-- R�a-Th� thi ch�y�C�n  �i�mȼto� � ����������

-- ÿ��R�a-Th� thi ch�y�M� ra ʱ��
x808085_g_ActivityTime						= { {tstart=1230, tend=1330},
																		  {tstart=1930, tend=2030},
																		  {tstart=2130, tend=2230} }

function x808085_OnRecycle(sceneId,selfId,targetId)

	if selfId <= 0 then
		return 1
	end
	
	-- ֪ͨ������ˢ�½ű�����ˢ�¿�����
	local nTargetX = GetItemBoxWorldPosX( sceneId, targetId )
	local nTargetZ = GetItemBoxWorldPosZ( sceneId, targetId )
	CallScriptFunction( 808083, "RecordKongMingLightInfo", sceneId, selfId, targetId, nTargetX, nTargetZ )	

	return 1;
end

function x808085_OnCreate(sceneId,growPointType,x,y)

end

function x808085_OnOpen(sceneId,selfId,targetId)

	-- ��� �i�mȼ����������
	if x808085_CheckActivityEvent( sceneId, selfId ) == 0 then
		return OR_INVALID_TARGET
	end

	return OR_OK;
end

function x808085_OnProcOver(sceneId,selfId,targetId)

	-- ��� �i�mȼ����������
	if x808085_CheckActivityEvent( sceneId, selfId ) == 0 then
		return OR_INVALID_TARGET
	end
		
	-- ��M� ra �߼���Ч
	-- LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x808085_g_Impact_Light_Complete, 0)
end

--**********************************
--��⵱ǰ��ng����ng�ʱ��
--**********************************
function x808085_CheckActivityTime()

	local nHour	 = GetHour()
	local nMinute = GetMinute()
  local curHourTime = nHour*100+nMinute

	for i=1, getn(x808085_g_ActivityTime) do
	  if curHourTime >= x808085_g_ActivityTime[i].tstart and curHourTime <= x808085_g_ActivityTime[i].tend then
	  	return i
	  end
	end

	return 0

end

--**********************************
--��⼤������
--**********************************
function x808085_CheckActivityEvent( sceneId, selfId )
	
	-- �����ng����Nhi�m v� R�a-Th� thi ch�y
	if IsHaveMission( sceneId, selfId, x808085_g_MissionId ) <= 0 then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_011}" )		
		return 0
	end

	local	nDayTime = GetMissionData( sceneId, selfId, MD_GODOFFIRE_DAYTIME )
	
	local misIndex = GetMissionIndexByID(sceneId,selfId,x808085_g_MissionId)
	
	-- ���������ng�����	
	if GetMissionParam(sceneId, selfId, misIndex, x808085_g_Mission_IsComplete) > 0 then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_028}" )
		return 0
	end

	-- ��Ȿ�ֻʱ����ng����Ч
	local nDay = LuaFnGetDayOfThisMonth()
	if nDayTime ~= nDay then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_017}" )
		return 0
	end
	
	local nTimePoint = x808085_CheckActivityTime()
	if nTimePoint ~= GetMissionParam(sceneId, selfId, misIndex, x808085_g_RoundIndex) then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_036}" )
		return 0
	end

	-- �����ng����������Ʒ
	if HaveItem(sceneId, selfId, x808085_g_MissItemId) <= 0 then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_039}" )
		return 0
	end
	
	-- �������������ng���� �i�m��
	local BagPos = GetItemBagPos( sceneId, selfId, x808085_g_MissItemId, 0 )
	local LuoYangCnt = GetBagItemParam(sceneId, selfId, BagPos, x808085_g_LuoYangLighten_Cnt, 1)
	local SuZhouCnt = GetBagItemParam(sceneId, selfId, BagPos, x808085_g_SuZhouLighten_Cnt, 1)
	local DaLiCnt = GetBagItemParam(sceneId, selfId, BagPos, x808085_g_DaLiLighten_Cnt, 1)
	local	nAllCount = GetMissionParam(sceneId, selfId, misIndex, x808085_g_KongMing_Lighten)
	
	if sceneId == 6 and DaLiCnt >= x808085_g_KongMingLighten_Count then					-- ����ɽ
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_060}" )		
		return 0
	elseif sceneId == 5 and DaLiCnt >= x808085_g_KongMingLighten_Count then			-- K�nh K�
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_060}" )		
		return 0
	elseif sceneId == 4 and SuZhouCnt >= x808085_g_KongMingLighten_Count then		-- Th�i H�
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_059}" )		
		return 0
	elseif sceneId == 3 and SuZhouCnt >= x808085_g_KongMingLighten_Count then		-- Tung S�n
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_059}" )		
		return 0
	elseif sceneId == 7 and LuoYangCnt >= x808085_g_KongMingLighten_Count then	-- Ki�m C�c
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_058}" )		
		return 0
	elseif sceneId == 8 and LuoYangCnt >= x808085_g_KongMingLighten_Count then	-- ��n Ho�ng
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_058}" )		
		return 0
	end

	if nAllCount >= x808085_g_KongMingLighten_MaxCnt then
		x808085_MsgBox( sceneId, selfId, "#{GodFire_Info_035}" )		
		return 0
	end

	return 1
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x808085_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
