-- ����ս�� add by hukai
--************************************************************************
--MisDescBegin

-- �ű� s�
x402047_g_ScriptId = 402047

-- M�c ti�u nhi�m v� NPC
x402047_g_Name = "Ch�u Nhi�n"

-- �����ı�����
x402047_g_MissionName = "�i chi�n tr߶ng Tr�c L�c C�"
x402047_g_SubmitInfo = "#{BHXZ_081103_115}"									-- �ύʱto� � �Ի�

--MisDescEnd
--************************************************************************

x402047_g_NumText_EnterCopyScene = 1		-- Ҫ����븱��to� � ѡ��
x402047_g_GetPrizeTitle = 2							-- L�nh �� s�to� � ѡ��
x402047_g_GetPrizeTitle_Kill = 3				-- L�nh �� s�(ɱ�˴������,Li�n Tr�m Cu�ng Kh�ch)to� � ѡ��
x402047_g_GetPrizeTitle_Flag = 4				-- L�nh �� s�(ռ���������,Si�u c�p k� th�)to� � ѡ��
x402047_g_GetPrizeTitle_Source = 5			-- L�nh �� s�(�ɼ���Դ���,Chuy�n gia t�m b�o)to� � ѡ��

x402047_g_CopySceneMap = "zhuluKVK.nav"
x402047_g_CopySceneArea = "zhuluKVK_area.ini"
x402047_g_CopySceneMonsterIni = "zhuluKVK_monster.ini"

x402047_g_CopySceneType = FUBEN_BANGZHAN		-- ��������,����T�i ScriptGlobal.lua����
x402047_g_MaxMembers = 50					-- ������Խ�����to� � �������  --tt50777 ����������80���޸�Ϊ25��
x402047_g_TickTime = 1						-- �ص��ű�to� � ʱ��ʱ��(��λ:  gi�y/��)
x402047_g_StartPoint = 60*5+5						-- b�t �u�Ƿ�ʱ��(��λ: ����)Ϊ����ʾ����ʣ5�����Լ���5s
x402047_g_LimitTotalHoldTime = 60*40 + x402047_g_StartPoint	-- �������Դ��to� � ʱ��(��λ: ����),�����ʱ�䵽��,���ս����
x402047_g_CloseTick = 30+1						-- �����ر�ǰ����ʱ(��λ: ����)
x402047_g_NoUserTime = 10					-- ������û���˺���Լ�������to� � ʱ��(��λ:  gi�y)
x402047_g_PvpRuler = 3						--������������
x402047_g_BackTick = 10						-- ����ʱ(��λ: ����)

x402047_g_TankMaxEnemyNum = 15			--��Ч��Χ��ս����Ч��to� � ���з���Ŀ
x402047_g_TankMaxFriendNum = 20			--��Ч��Χ��ս����Ч��to� � ��󱾷���Ŀ

x402047_g_Fuben_A_X = 47--A��(Khi�u chi�n��)���
x402047_g_Fuben_A_Z = 39
x402047_g_Fuben_B_X = 203 --B��(Ӧս��)���
x402047_g_Fuben_B_Z = 215

x402047_g_ALive_A_X = 51--A��(Khi�u chi�n��)���� �i�m
x402047_g_ALive_A_Z = 26
x402047_g_ALive_B_X = 205 --B��(Ӧս��)���� �i�m
x402047_g_ALive_B_Z = 227

x402047_g_Back_X = 262 --��ͨ����
x402047_g_Back_Z = 51

x402047_g_Exit_SceneID = 409 --��������ID
x402047_g_Win_X = 32 --��ʤ������
x402047_g_Win_Z = 16
x402047_g_Fail_X = 32 --th�t b�i������
x402047_g_Fail_Z = 41

x402047_g_Win_PerHonour = 100 --��ʤ��ÿc�i�� ��t ���cto� � ����ֵ
x402047_g_Fail_TotalHonour = 2000 --th�t b�i���ܹ� ��t ���cto� � ����ֵ���ޣ.�ע����ng�ܹ�to� � �.�
x402047_g_Fail_PerMaxHonour = 100 --th�t b�i��ÿc�i�� ��t ���cto� � ����ֵ����

x402047_g_PrizeMsg = {"#{BHXZ_081103_120}",
											"#{BHXZ_081103_121}",
											"#{BHXZ_081103_122}"}

x402047_g_FailMsg = "#{BHXZ_081103_123}"

x402047_g_PrizeFlag = {MF_BangZhan_Kill_Flag, MF_BangZhan_Flag_Flag, MF_BangZhan_Source_Flag}
x402047_g_PrizeBuff = {31549, 31548, 31547} --����buff

--�� s�����
x402047_g_PrizeTitle = {{AwardPos = 15, SetPos = 39, Index = 252}, --����to� � ����,����λ��to� � ����,�� s�����
												{AwardPos = 16, SetPos = 40, Index = 253},
												{AwardPos = 17, SetPos = 41, Index = 254}}

x402047_g_GuildPoint_KillOtherPlayer = 0						--ɱ�˻��ֹ�������,��GuildWarPoint.txtto� � ID
x402047_g_GuildPoint_KillTower = 2									--�����ֹ�������,��GuildWarPoint.txtto� � ID
x402047_g_GuildPoint_KillTankPlayer = 3							--ɱս����m�t ��ֹ�������,��GuildWarPoint.txtto� � ID
x402047_g_GuildPoint_KillPlatform = 5								--ս̨���ֹ�������,��GuildWarPoint.txtto� � ID

x402047_g_IsSetOverFlag = 9										--��ng�����˽�������(����tickT�i ����������û�����Ͻ���,ҪT�i ����to� � tick�в��߽����콱����)T�i 32c�i����������to� � ����
x402047_g_OpenFlagSelfIDIndex = 10						--��ǰ��T�i ������̨to� � selfidT�i 32c�i����������to� � ����
x402047_g_OpenFlagStartTime = 11							--��ǰ��T�i ������̨to� � ��ʼʱ��T�i 32c�i����������to� � ����
x402047_g_FlagRemainedTime = 12								--���������Ժ�to� � ʣ��ʱ��T�i 32c�i����������to� � ����
x402047_g_A_FirstTankManSelfID = 13						--A��仯��ս��to� � ���to� � selfidT�i 32c�i����������to� � ����
x402047_g_A_SecondTankManSelfID = 14					--A��仯��ս��to� � ���to� � selfidT�i 32c�i����������to� � ����
x402047_g_B_FirstTankManSelfID = 15						--B��仯��ս��to� � ���to� � selfidT�i 32c�i����������to� � ����
x402047_g_B_SecondTankManSelfID = 16					--B��仯��ս��to� � ���to� � selfidT�i 32c�i����������to� � ����
x402047_g_A_FirstTankBuff = 17								--A��仯��ս��to� � BuffIDT�i 32c�i����������to� � ����
x402047_g_A_SecondTankBuff = 18								--A��仯��ս��to� � BuffIDT�i 32c�i����������to� � ����
x402047_g_B_FirstTankBuff = 19								--B��仯��ս��to� � BuffIDT�i 32c�i����������to� � ����
x402047_g_B_SecondTankBuff = 20								--B��仯��ս��to� � BuffIDT�i 32c�i����������to� � ����
x402047_g_A_FirstTankPos = 21									--A��仯��ս��to� � PosT�i 32c�i����������to� � ����
x402047_g_A_SecondTankPos = 22								--A��仯��ս��to� � PosT�i 32c�i����������to� � ����
x402047_g_B_FirstTankPos = 23									--B��仯��ս��to� � PosT�i 32c�i����������to� � ����
x402047_g_B_SecondTankPos = 24								--B��仯��ս��to� � PosT�i 32c�i����������to� � ����
x402047_g_A_TankColdTime = 25									--A��ս����ȴʱ��T�i 32c�i����������to� � ����
x402047_g_B_TankColdTime = 26									--B��ս����ȴʱ��T�i 32c�i����������to� � ����
x402047_g_A_BroadcastTick = 27								--A�ﱤ��Ѫ�����ż���T�i 32c�i����������to� � ����
x402047_g_B_BroadcastTick = 28								--B�ﱤ��Ѫ�����ż���T�i 32c�i����������to� � ����

--��ս��������,��Ӧ������to� �  enum GUILDWAR_INT_ARRAY
x402047_g_A_numIndex = 0
x402047_g_B_numIndex = 1
x402047_g_A_KillManNumIndex = 12							--A��ɱ����T�i ��ս������to� � ����
x402047_g_B_KillManNumIndex = 13							--B��ɱ����T�i ��ս������to� � ����
x402047_g_A_KillBuildingNumIndex = 14					--A���ٽ�������T�i ��ս������to� � ����
x402047_g_B_KillBuildingNumIndex = 15					--B���ٽ�������T�i ��ս������to� � ����
--x402047_g_A_FlagNumIndex = 16									--A��ռ��������T�i ��ս������to� � ����
--x402047_g_B_FlagNumIndex = 17									--B��ռ��������T�i ��ս������to� � ����
x402047_g_A_TotalPointIndex = 18							--A���ܻ���T�i ��ս������to� � ����
x402047_g_B_TotalPointIndex = 19							--B���ܻ���T�i ��ս������to� � ����

--c�i�˻�����������,��Ӧ����enum GUILDWAR_INT_INDEX
x402047_g_Human_TotalPointIndex = 0						--c�i���ܻ�������
x402047_g_Human_KillManIndex = 1							--c�i��ɱ��������
x402047_g_Human_KillBuildingIndex = 2					--c�i�˲�ٽ�����������
x402047_g_Human_FlagIndex = 3									--c�i��ռ������������
x402047_g_Human_ResourceNumIndex = 4					--c�i�˽�����Դc�i������

x402047_g_TankBuff = {31577, 31578, 31579, 31580, 31581,	--��ȼ�ʻbuff
											31582, 31583, 31584, 31585, 31586}	--�׻Ƽ�ʻbuff

x402047_g_AttrBuff = {31567, 31568, 31569, 31570, 31571,	--���ս��buff
											31572, 31573, 31574, 31575, 31576}	--�׻�ս��buff

--x402047_g_TankAttackBuff = {31587, 31594, 31601, 31608}		--ս������buff
x402047_g_PanGuTankAttackBuff = 31551											--B�n C� Chi�n Xa����buff

x402047_g_LightBuff = {79, 80, 81, 82}	--ս������buff

x402047_g_TankFriendBuff = {{31553,31554}, {31556,31557}, {31559,31560}, {31562,31563}}		--ս���Ӹ�����Ŀ��to� � buff
x402047_g_TankEnemyBuff = {31552, 31555, 31558, 31561}		--ս���Ӹ��ж�Ŀ��to� � buff

x402047_g_ImmuneControlBuff = 10474							--NPC���߿���buff
x402047_g_SheepBuff = 31550											--����buff

--x402047_g_TankSkillID = {1116, 1123, 1130, 1137, 0,	--���ս������ID
--												1116, 1123, 1130, 1137, 0}	--�׻�ս������ID

x402047_g_TankID = {13334, 13335, 13336, 13337, 13338,	--�� �i�m�����ս��NPCto� � ID
										13339, 13340, 13341, 13342, 13343}	--�� �i�m���׻�ս��NPCto� � ID

x402047_g_PhysicsAttack_Buff = {{value = 16000, buff = 31587},{value = 18000, buff = 31588},{value = 20000, buff = 31589},{value = 22500, buff = 31590},
																{value = 26000, buff = 31591},{value = 30000, buff = 31592},{value = 300000, buff = 31593}}

x402047_g_MagicAttack_Buff = {{value = 16000, buff = 31594},{value = 18000, buff = 31595},{value = 20000, buff = 31596},{value = 22500, buff = 31597},
															{value = 26000, buff = 31598},{value = 30000, buff = 31599},{value = 300000, buff = 31600}}

x402047_g_ColdFire_Buff = {{value = 100, buff = 31601},{value = 230, buff = 31602},{value = 420, buff = 31603},{value = 840, buff = 31604},
													{value = 1680, buff = 31605},{value = 2380, buff = 31606},{value = 200000, buff = 31607}}

x402047_g_LightPoison_Buff = {{value = 100, buff = 31608},{value = 230, buff = 31609},{value = 420, buff = 31610},{value = 840, buff = 31611},
															{value = 1680, buff = 31612},{value = 2380, buff = 31613},{value = 200000, buff = 31614}}

x402047_g_LingShiID = {30900051,30900052,30900053,30900054,30900055}	--LinhʯID

x402047_g_TankName = {"Thanh Long Chi�n Xa","B�ch H� Chi�n Xa","Chu T߾c Chi�n Xa","Huy�n V� Chi�n Xa","B�n C� Chi�n Xa","Thanh Long Chi�n Xa","B�ch H� Chi�n Xa","Chu T߾c Chi�n Xa","Huy�n V� Chi�n Xa","B�n C� Chi�n Xa"}

x402047_g_ColdTime = 60									--ս����ȴʱ��

--��ӪNPC
x402047_g_A_Platform = "Vi�m Ho�ng Thai"
x402047_g_A_FenXiang_Tower = "Vi�m Ho�ng Ph�n H߽ng Th�p"
x402047_g_A_LuoXing_Tower = "Vi�m Ho�ng L�c Tinh Th�p"
x402047_g_A_Flag = "Vi�m Ho�ng Chi�n K�"

x402047_g_B_Platform = "Xi V�u Thai"
x402047_g_B_FenXiang_Tower = "Xi V�u Ph�n H߽ng Th�p"
x402047_g_B_LuoXing_Tower = "Xi V�u L�c Tinh Th�p"
x402047_g_B_Flag = "Xi V�u Chi�n K�"

--**********************************
-- ������ں���
--**********************************
function x402047_OnDefaultEvent( sceneId, selfId, targetId )	--  �i�m���������ִ�д˽ű�
	if GetName( sceneId, targetId ) ~= x402047_g_Name then		-- �жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end
	
	local numText = GetNumText()
	
	if numText == x402047_g_NumText_EnterCopyScene then
			x402047_AcceptEnterCopyScene( sceneId, selfId, targetId )
	elseif numText == x402047_g_GetPrizeTitle then
		BeginEvent(sceneId)
			AddText(sceneId,"#{BHXZ_081103_116}")
			AddNumText(sceneId, x402047_g_ScriptId, "Li�n Tr�m Cu�ng Kh�ch", 4, x402047_g_GetPrizeTitle_Kill)
			AddNumText(sceneId, x402047_g_ScriptId, "Si�u c�p k� th�", 4, x402047_g_GetPrizeTitle_Flag)
			AddNumText(sceneId, x402047_g_ScriptId, "Chuy�n gia t�m b�o", 4, x402047_g_GetPrizeTitle_Source)
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
	elseif numText == x402047_g_GetPrizeTitle_Kill then
		local bHave = GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[1])
		
		if bHave == 1 then
			SetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[1], 0)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402047_g_PrizeBuff[1], 0 )
			
			LuaFnAwardTitle( sceneId, selfId, x402047_g_PrizeTitle[1].AwardPos, x402047_g_PrizeTitle[1].Index, 7*24) --��Ч��m�t ��
			SetCurTitle(sceneId, selfId, x402047_g_PrizeTitle[1].SetPos, x402047_g_PrizeTitle[1].Index)
			LuaFnDispatchAllTitle(sceneId, selfId)
			
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_145}".."Li�n Tr�m Cu�ng Kh�ch".."#{BHXZ_081103_146}" )
			if GetHumanGuildID(sceneId, selfId) ~= -1 then --û�а���to� � ʱ�򲻷����ɹ���
				local message = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#{BHXZ_090116_01}",LuaFnGetName(sceneId, selfId))
				BroadMsgByChatPipe(sceneId, selfId, message, 6);
			end
			local guid = LuaFnObjId2Guid(sceneId, selfId)
			local log = format("type=%d", 1)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_TITLE_BUFF, guid, log)
		else
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_117}" )
		end
	elseif numText == x402047_g_GetPrizeTitle_Flag then
		local bHave = GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[2])
		
		if bHave == 1 then
			SetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[2], 0)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402047_g_PrizeBuff[2], 0 )
			
			LuaFnAwardTitle( sceneId, selfId, x402047_g_PrizeTitle[2].AwardPos, x402047_g_PrizeTitle[2].Index, 7*24) --��Ч��m�t ��
			SetCurTitle(sceneId, selfId, x402047_g_PrizeTitle[2].SetPos, x402047_g_PrizeTitle[2].Index)
			LuaFnDispatchAllTitle(sceneId, selfId)
			
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_145}".."Si�u c�p k� th�".."#{BHXZ_081103_146}" )
			if GetHumanGuildID(sceneId, selfId) ~= -1 then --û�а���to� � ʱ�򲻷����ɹ���
				local message = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#{BHXZ_090116_02}",LuaFnGetName(sceneId, selfId))
				BroadMsgByChatPipe(sceneId, selfId, message, 6);
			end
			local guid = LuaFnObjId2Guid(sceneId, selfId)
			local log = format("type=%d", 2)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_TITLE_BUFF, guid, log)
		else
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_117}" )
		end
	elseif numText == x402047_g_GetPrizeTitle_Source then
		local bHave = GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[3])
		
		if bHave == 1 then
			SetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[3], 0)
			LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x402047_g_PrizeBuff[3], 0 )
			
			LuaFnAwardTitle( sceneId, selfId, x402047_g_PrizeTitle[3].AwardPos, x402047_g_PrizeTitle[3].Index, 7*24) --��Ч��m�t ��
			SetCurTitle(sceneId, selfId, x402047_g_PrizeTitle[3].SetPos, x402047_g_PrizeTitle[3].Index)
			LuaFnDispatchAllTitle(sceneId, selfId)
			
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_145}".."Chuy�n gia t�m b�o".."#{BHXZ_081103_146}" )
			if GetHumanGuildID(sceneId, selfId) ~= -1 then --û�а���to� � ʱ�򲻷����ɹ���
				local message = format("@*;SrvMsg;GLD:#{_INFOUSR%s}#{BHXZ_090116_03}",LuaFnGetName(sceneId, selfId))
				BroadMsgByChatPipe(sceneId, selfId, message, 6);
			end
			local guid = LuaFnObjId2Guid(sceneId, selfId)
			local log = format("type=%d", 3)
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_TITLE_BUFF, guid, log)
		else
			x402047_NotifyFailBox( sceneId, selfId, targetId, "#{BHXZ_081103_117}" )
		end
	end
	
end

--**********************************
-- �о��¼�
--**********************************
function x402047_OnEnumerate( sceneId, selfId, targetId )
	if GetName( sceneId, targetId ) ~= x402047_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end

	AddNumText( sceneId, x402047_g_ScriptId, x402047_g_MissionName, 4, x402047_g_NumText_EnterCopyScene )
	AddNumText( sceneId, x402047_g_ScriptId, "L�nh danh hi�u", 4, x402047_g_GetPrizeTitle )
end

--**********************************
-- ������븱������
--**********************************
function x402047_AcceptEnterCopyScene( sceneId, selfId, targetId )
	
	--����״̬�޷���ս,��ֹ��m�t c�i��ս�����ng����,�����޷����ͽ�����,��ʱ����û�����Ͻ�ȥ,����û�˾�over�˹���
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x402047_g_SheepBuff) == 1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_105}" )
		return
	end
	
	--��ng���а�ս�� s�û��L�nh 
	for i = 1, getn(x402047_g_PrizeFlag) do
		if GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[i]) == 1 then
			x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_106}" )
			return
		end
	end
	
	--��û�м�����
	local guildid = GetHumanGuildID(sceneId, selfId)
	if guildid == -1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_19}" )
		return
	end
	
	--û�к��������ɴ�����ֹ�ϵ
	local guildIDApply,guildIDApplied,CopySceneId = GetGuildWarApply(sceneId, guildid)
	if not guildIDApply or not guildIDApplied or not CopySceneId or guildIDApply == -1 or guildIDApplied == -1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_18}" )
		return
	end

	if CopySceneId >= 0 then --������ʼ�����֮��ֱ�ӿ��Խ�ȥ
		if guildid == guildIDApply then
			local GuildInt = GetGuildIntNum( CopySceneId, guildid, x402047_g_A_numIndex )
			if GuildInt >= x402047_g_MaxMembers or GuildInt == -1 then --���︱����������,����ȡ��to� � ������m�t ��׼ȷ
				x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
				return
			end
			
			BeginEvent(sceneId)
			AddText( sceneId, x402047_g_SubmitInfo )
			EndEvent()
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x402047_g_ScriptId, 0 ) --���� s�д0
		else
			local GuildInt = GetGuildIntNum( CopySceneId, guildid, x402047_g_B_numIndex )
			if GuildInt >= x402047_g_MaxMembers or GuildInt == -1 then --���︱����������,����ȡ��to� � ������m�t ��׼ȷ
				x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
				return
			end
			
			BeginEvent(sceneId)
			AddText( sceneId, x402047_g_SubmitInfo )
			EndEvent()
			DispatchMissionContinueInfo( sceneId, selfId, targetId, x402047_g_ScriptId, 0 ) --���� s�д0
		end
		
		return
	end
	
	BeginEvent(sceneId)
	AddText( sceneId, x402047_g_SubmitInfo )
	EndEvent()
	DispatchMissionContinueInfo( sceneId, selfId, targetId, x402047_g_ScriptId, 0 ) --���� s�д0
end

--**********************************
--�ύ,C�n �����ж�ÿc�i����
--**********************************
function x402047_OnSubmit( sceneId, selfId, targetId, selectRadioId )
	if GetName( sceneId, targetId ) ~= x402047_g_Name then		--�жϸ�npc��ng����ng��Ӧ����to� � npc
		return
	end
	
	--����״̬�޷���ս,��ֹ��m�t c�i��ս�����ng����,�����޷����ͽ�����,��ʱ����û�����Ͻ�ȥ,����û�˾�over�˹���
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x402047_g_SheepBuff) == 1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_105}" )
		return
	end
	
	--��ng���а�ս�� s�û��L�nh 
	for i = 1, getn(x402047_g_PrizeFlag) do
		if GetMissionFlag(sceneId, selfId, x402047_g_PrizeFlag[i]) == 1 then
			x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_106}" )
			return
		end
	end
	
	--��û�м�����
	local guildid = GetHumanGuildID(sceneId, selfId)
	if guildid == -1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_19}" )
		return
	end
	
	--û�к��������ɴ�����ֹ�ϵ
	local guildIDApply,guildIDApplied,CopySceneId = GetGuildWarApply(sceneId, guildid)
	if not guildIDApply or not guildIDApplied or not CopySceneId or guildIDApply == -1 or guildIDApplied == -1 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_18}" )
		return
	end

	if CopySceneId >= 0 then --������ʼ�����֮��ֱ�ӿ��Խ�ȥ
		if guildid == guildIDApply then
			local GuildInt = GetGuildIntNum( CopySceneId, guildid, x402047_g_A_numIndex )
			if GuildInt >= x402047_g_MaxMembers or GuildInt == -1 then --���︱����������,����ȡ��to� � ������m�t ��׼ȷ
				x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
				return
			end
			
			NewWorld( sceneId, selfId, CopySceneId, x402047_g_Fuben_A_X, x402047_g_Fuben_A_Z )
		else
			local GuildInt = GetGuildIntNum( CopySceneId, guildid, x402047_g_B_numIndex )
			if GuildInt >= x402047_g_MaxMembers or GuildInt == -1 then --���︱����������,����ȡ��to� � ������m�t ��׼ȷ
				x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
				return
			end
			
			NewWorld( sceneId, selfId, CopySceneId, x402047_g_Fuben_B_X, x402047_g_Fuben_B_Z )
		end
		
		return
	end

	local firstmenguid = LuaFnObjId2Guid( sceneId, selfId ) --��ս�����е�m�t c�i����to� � �˲�m�t ����ng�������߸�������ӳ�
	LuaFnSetSceneLoad_Map( sceneId, x402047_g_CopySceneMap )						-- ��ͼ��ng����ѡȡto� � ,���ұ���T�i Config/SceneInfo.ini�����ú�
	LuaFnSetCopySceneData_TeamLeader( sceneId, firstmenguid )
	LuaFnSetCopySceneData_NoUserCloseTime( sceneId, x402047_g_NoUserTime * 1000 )
	LuaFnSetCopySceneData_PvpRuler( sceneId, x402047_g_PvpRuler )
	LuaFnSetCopySceneData_Timer( sceneId, x402047_g_TickTime * 1000 )
	LuaFnSetCopySceneData_Param( sceneId, 0, x402047_g_CopySceneType )			-- ���ø�����������,���ｫ0 s�����to� � ��������Ϊ999,���ڱ�ʾ���� s�999(�����Զ���)
	LuaFnSetCopySceneData_Param( sceneId, 1, x402047_g_ScriptId )					-- ��1 s���������Ϊ���������¼��ű� s�
	LuaFnSetCopySceneData_Param( sceneId, 2, 0 )							-- ���ö�ʱ�����ô���
	LuaFnSetCopySceneData_Param( sceneId, 3, -1 )							-- ���ø�����ڳ��� s�, ��ʼ��
	LuaFnSetCopySceneData_Param( sceneId, 4, 0 )							-- ���ø����رձ�־, 0����,1�ر�
	LuaFnSetCopySceneData_Param( sceneId, 5, 0 )							-- �����뿪����ʱ����
	LuaFnSetCopySceneData_Param( sceneId, 6, guildIDApply*10000+guildIDApplied )-- ����IDȡֵ��Χ��ng0~1024,����10000����A��ID,10000����B��ID
	LuaFnSetCopySceneData_Param( sceneId, 7, 0 )							-- ��ng��ʼ�Ƿ�
	LuaFnSetCopySceneData_Param( sceneId, 8, 0 )							-- ��ʱδ��
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_IsSetOverFlag, 0 )				-- ��ng�����˽�������
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_OpenFlagSelfIDIndex, 0 )	-- ��ǰ��T�i ������̨to� � selfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_OpenFlagStartTime, 0 )	-- ��ǰ��T�i ������̨to� � ��ʼʱ��
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_FlagRemainedTime, 0 )	-- ���������Ժ�to� � ʣ��ʱ��
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID, 0 )	--A��仯��ս��to� � ���to� � selfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID, 0 )--A��仯��ս��to� � ���to� � selfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID, 0 )	--B��仯��ս��to� � ���to� � selfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID, 0 )--B��仯��ս��to� � ���to� � selfid
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff, 0 )	--A��仯��ս��to� � BuffID
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankBuff, 0 )	--A��仯��ս��to� � BuffID
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankBuff, 0 )	--B��仯��ս��to� � BuffID
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankBuff, 0 )	--B��仯��ս��to� � BuffID
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos, 0 )	  --A��仯��ս��to� � Pos
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankPos, 0 )	--A��仯��ս��to� � Pos
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankPos, 0 ) 	--B��仯��ս��to� � Pos
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankPos, 0 )	--B��仯��ս��to� � Pos
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime, 0 )	  --A��ս����ȴʱ��
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime, 0 )	  --B��ս����ȴʱ��
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_BroadcastTick, 0 )	--A�ﱤ��Ѫ�����ż���
	LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_BroadcastTick, 0 )	--B�ﱤ��Ѫ�����ż���
	
	LuaFnSetSceneLoad_Area( sceneId, x402047_g_CopySceneArea )

	LuaFnSetSceneLoad_Monster( sceneId, x402047_g_CopySceneMonsterIni )

	local bRetSceneID = LuaFnCreateCopyScene( sceneId )						-- ��ʼ����ɺ���ô�����������
	if bRetSceneID > 0 then
		x402047_NotifyFailTips( sceneId, selfId, "D�ch chuy�n th�nh c�ng." )
		SetGuildWarApplySceneID(sceneId, guildid, bRetSceneID)
		NotifyGuildBattle(sceneId,selfId,0,guildIDApply,guildIDApplied);
		local log = format("HumanGuildID=%d,Apply_GuildID=%d,Applied_GuildID=%d", guildid, guildIDApply, guildIDApplied)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_CREATEFUBEN, firstmenguid, log)
	else
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_17}" ) --���������Ѵ�����
	end
end

--**********************************
--�����¼�
--**********************************
function x402047_OnCopySceneReady( sceneId, destsceneId )
	LuaFnSetCopySceneData_Param( destsceneId, 3, sceneId )				-- ���ø�����ڳ��� s�

	local firstmanguid = LuaFnGetCopySceneData_TeamLeader( destsceneId )
	local firstmanObjId = LuaFnGuid2ObjId( sceneId, firstmanguid )

	if firstmanObjId == -1 then											-- �Ҳ��������
		return
	end

	if LuaFnIsCanDoScriptLogic( sceneId, firstmanObjId ) ~= 1 then		-- �����޷�ִ���߼�to� � ״̬
		return
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	local Aguildid = floor(totalguildid / 10000)
	--local Bguildid = mod(totalguildid, 10000)
	local guildid = GetHumanGuildID(sceneId, firstmanObjId)
	
	--SetGuildWarApplySceneID(sceneId, Aguildid, destsceneId)
	
	--C�i n�y ��ҽ��볡��
	if guildid == Aguildid then
		NewWorld( sceneId, firstmanObjId, destsceneId, x402047_g_Fuben_A_X, x402047_g_Fuben_A_Z )
	else
		NewWorld( sceneId, firstmanObjId, destsceneId, x402047_g_Fuben_B_X, x402047_g_Fuben_B_Z )
	end
	
end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x402047_OnPlayerEnter( sceneId, selfId )
	--ս�������������to� � ʱ����ng��������,Ȼ�����Hu� b�ս��buff.���C�i n�y �ط����to� � ս��buf����ng��T�i to� � ,C�n �ֶ�Hu� b�.
	local buf = x402047_HaveTankBuff( sceneId, selfId )
	if buf ~= 0 then
		LuaFnCancelSpecificImpact(sceneId,selfId,buf)
	end
	
	local guildid = GetHumanGuildID(sceneId, selfId)
	if x402047_IsGuildFull( sceneId, guildid ) == 1 then --���︱����������
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081103_107}" )
		SetCanChangeScene(sceneId, selfId, 1)--�ֶ�����ע��C�i n�y �ӿ�to� � �÷�,�����ط���Ҫ��ʹ��
		x402047_Exit(sceneId, selfId)
		return
	end
	
	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	if leaveFlag == 1 and LuaFnGetCopySceneData_Param( sceneId, 5 ) >= x402047_g_CloseTick then
		x402047_NotifyFailTips( sceneId, selfId, "Chinh ph�t bang h�i k�t th�c." )
		SetCanChangeScene(sceneId, selfId, 1)--�ֶ�����ע��C�i n�y �ӿ�to� � �÷�,�����ط���Ҫ��ʹ��
		x402047_Exit(sceneId, selfId)
		return
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	
	if guildid == Aguildid then
		if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 1 then --�����ս�Ѿ���ʼ��ֱ��������Ӫ
			SetUnitCampID(sceneId, selfId, selfId, 10+Aguildid)
		end
		SetPlayerDefaultReliveInfoEx( sceneId, selfId, "%10", -1, "0", sceneId, x402047_g_ALive_A_X, x402047_g_ALive_A_Z, x402047_g_ScriptId )
	elseif guildid == Bguildid then
		if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 1 then --�����ս�Ѿ���ʼ��ֱ��������Ӫ
			SetUnitCampID(sceneId, selfId, selfId, 11+Aguildid)
		end
		SetPlayerDefaultReliveInfoEx( sceneId, selfId, "%10", -1, "0", sceneId, x402047_g_ALive_B_X, x402047_g_ALive_B_Z, x402047_g_ScriptId )
	else  --���ж�д�ϸ�m�t Щ.����: ��Ұ�ս��������,Ȼ������߳�C�i n�y ���,��ΰ�սû�н���to� � ʱ�������������to� � ʱ��Ӧ�ò��ܽ��븱������
		x402047_NotifyFailTips( sceneId, selfId, "Ng߽i kh�ng c� Bang h�i, kh�ng th� ti�n v�o." )
		SetCanChangeScene(sceneId, selfId, 1)--�ֶ�����ע��C�i n�y �ӿ�to� � �÷�,�����ط���Ҫ��ʹ��
		x402047_Exit(sceneId, selfId)
		return
	end
	
	--ǿ�ƶ������ɳ� s�,�����ʾ
	if GetCurTitle(sceneId, selfId) ~= 23 then
		x402047_NotifyFailTips( sceneId, selfId, "#{BHXZ_081205_1}" )
		Msg2Player(sceneId, selfId, "#{BHXZ_081205_1}" , MSG2PLAYER_PARA)
	end
	SetCurTitle(sceneId, selfId, 23, 0)
end

--**********************************
--obj����
--**********************************
function x402047_OnDie( sceneId, objId, selfId )--C�i n�y selfId������ng����
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --�����ng����to� � ��,��C�i n�y ID���ó�����ID
		selfId = GetPetCreator( sceneId, selfId )
	end
	
	if selfId == -1 then
		return
	end
	
	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x402047_g_CopySceneType then
		return
	end

	--��ng��ʼ�Ƿ�
	local isStartPoint = LuaFnGetCopySceneData_Param( sceneId, 7 )
	if isStartPoint == 0 then
		return
	end

--	--�����رձ�־
--	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
--	if leaveFlag == 1 then														-- ��������Ѿ����óɹر�״̬,��ɱ����Ч
--		return
--	end

	--ȡ �i�m��ǰ������to� � ����
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end

	--ȡ �i�mɱ��NPCto� � name
	local szName = GetName( sceneId, objId )
	if szName == x402047_g_A_FenXiang_Tower or szName == x402047_g_A_LuoXing_Tower then			--A��
		if x402047_IsCommonBGuild( sceneId, selfId ) == 0 then
			return
		end
		local humanguildid = GetHumanGuildID(sceneId, selfId)
		local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTower)
		x402047_AddBGuildPoint(sceneId, selfId, humanguildid, point)
		local alreadynum = GetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillBuildingNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillBuildingNumIndex, alreadynum+1 )
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_KillBuildingIndex, 1 )
	elseif szName == x402047_g_B_FenXiang_Tower or szName == x402047_g_B_LuoXing_Tower then	--B��
		if x402047_IsCommonAGuild( sceneId, selfId ) == 0 then
			return
		end
		local humanguildid = GetHumanGuildID(sceneId, selfId)
		local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTower)
		x402047_AddAGuildPoint(sceneId, selfId, humanguildid, point)
		local alreadynum = GetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillBuildingNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillBuildingNumIndex, alreadynum+1 )
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_KillBuildingIndex, 1 )
	elseif szName == x402047_g_A_Platform then		--Ą
		if x402047_IsCommonBGuild( sceneId, selfId ) == 0 then
			return
		end
		local humanguildid = GetHumanGuildID(sceneId, selfId)
		local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillPlatform)
		x402047_AddBGuildPoint(sceneId, selfId, humanguildid, point)
		local alreadynum = GetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillBuildingNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillBuildingNumIndex, alreadynum+1 )
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_KillBuildingIndex, 1 )
	elseif szName == x402047_g_B_Platform then		--B̨
		if x402047_IsCommonAGuild( sceneId, selfId ) == 0 then
			return
		end
		local humanguildid = GetHumanGuildID(sceneId, selfId)
		local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillPlatform)
		x402047_AddAGuildPoint(sceneId, selfId, humanguildid, point)
		local alreadynum = GetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillBuildingNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillBuildingNumIndex, alreadynum+1 )
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_KillBuildingIndex, 1 )
	end
	
	local msg = LuaFnGetGuildName(sceneId, selfId).."#{BHXZ_081103_125}"..GetName(sceneId, selfId).."#{BHXZ_081103_126}"..szName.."."
	for i = 0, num - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
			x402047_NotifyFailTips(sceneId, mems[i], msg)
			Msg2Player(sceneId, mems[i], msg, MSG2PLAYER_PARA)
		end
	end
end

----**********************************
----ɱ����������
----**********************************
--function x402047_OnKillObject( sceneId, selfId, objdataId, objId )						-- ������˼: ���� s������objId�������λ�� s�������objId
--end

--**********************************
-- ��Ҹ���
--**********************************
function x402047_OnRelive(sceneId, selfId)
	LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 78, 100 )
end

--**********************************
--�����T�i �����������¼�
--**********************************
function x402047_OnHumanDie( sceneId, selfId, killerId ) --C�i n�y killerId�п�����ng�Է�NPC������,����m�t ����ng���selfId
	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end

	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= x402047_g_CopySceneType then
		return
	end
	
	--��ng��ʼ�Ƿ�
	local isStartPoint = LuaFnGetCopySceneData_Param( sceneId, 7 )
	if isStartPoint == 0 then
		return
	end
	
--	--�����رձ�־,C�i n�y ֵ �i�m����m�t ��
--	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
--	if leaveFlag == 1 then														-- ��������Ѿ����óɹر�״̬,��ɱ����Ч
--		return
--	end
	
	--ȡ �i�m��ǰ������to� � ����
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	local humanguildid = GetHumanGuildID(sceneId, selfId) --������Ұ���
	
	if humanguildid == Aguildid then --���������ngA��to� � 
		local objType = GetCharacterType( sceneId, killerId )
		local otherselfId = 0
		
		if objType == 1 then --���ɱ����to� � ��ng���
			otherselfId = killerId
		elseif objType == 3 then --���ɱ����to� � ��ng�������to� � ����
			otherselfId = GetPetCreator( sceneId, killerId )
			if otherselfId == -1 then
				otherselfId = 0
			end
		else --���ɱ����to� � ��ng�Է�NPC������
			otherselfId = 0
		end
		
		--���ð���ɱ����Ŀ
		local alreadykillnum = GetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillManNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_B_KillManNumIndex, alreadykillnum+1 )
		
		local Tankbuf = x402047_HaveTankBuff( sceneId, selfId )
		
		--����c�i��ɱ����Ŀ,���Ӱﹱ
		if otherselfId > 0 then
			x402047_AddHumanGuildArrayInt( sceneId, otherselfId, x402047_g_Human_KillManIndex, 1 )
			--CityChangeAttr(sceneId, otherselfId, GUILD_CONTRIB_POINT, 1)
			if Tankbuf == 0 then --��ս����Ҳŷ���C�i n�y H� th�ng��Ϣ
				Msg2Player(sceneId, otherselfId, "#{BHXZ_081103_127}"..GetName(sceneId, selfId).."." , MSG2PLAYER_PARA)
			end
		end
		
		if Tankbuf and Tankbuf ~= 0 then --ս���������
			if selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID ) then
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos, 0 )
				--PrintStr(" A first ")
			elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID ) then
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankBuff, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankPos, 0 )
				--PrintStr(" A Second ")
			end
			LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime, x402047_g_ColdTime )
			local tankpoint = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTankPlayer)
			x402047_AddBGuildPoint(sceneId, otherselfId, Bguildid, tankpoint)
			
			local msg = ""
			if otherselfId > 0 then
				msg = LuaFnGetGuildName(sceneId, otherselfId).."#{BHXZ_081103_125}"..GetName(sceneId, otherselfId).."#{BHXZ_081103_126}"..x402047_g_TankName[Tankbuf-x402047_g_AttrBuff[1]+1].."."
			else
				msg = LuaFnGetGuildName(sceneId, selfId).."#{BHXZ_081103_125}"..x402047_g_TankName[Tankbuf-x402047_g_AttrBuff[1]+1].."�� b� �i ph߽ng ph� hu�."
			end
			for i = 0, num - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x402047_NotifyFailTips(sceneId, mems[i], msg)
					Msg2Player(sceneId, mems[i], msg, MSG2PLAYER_PARA)
				end
			end
		else --��ս���������
			local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillOtherPlayer)
			x402047_AddBGuildPoint(sceneId, otherselfId, Bguildid, point)
		end
	elseif humanguildid == Bguildid then --���������ngB��to� � 
		local objType = GetCharacterType( sceneId, killerId )
		local otherselfId = 0
		
		if objType == 1 then --���ɱ����to� � ��ng���
			otherselfId = killerId
		elseif objType == 3 then --���ɱ����to� � ��ng�������to� � ����
			otherselfId = GetPetCreator( sceneId, killerId )
			if otherselfId == -1 then
				otherselfId = 0
			end
		else --���ɱ����to� � ��ng�Է�NPC������
			otherselfId = 0
		end
		
		--���ð���ɱ����Ŀ
		local alreadykillnum = GetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillManNumIndex )
		SetGuildIntNum( sceneId, humanguildid, x402047_g_A_KillManNumIndex, alreadykillnum+1 )
		
		local Tankbuf = x402047_HaveTankBuff( sceneId, selfId )
		
		--����c�i��ɱ����Ŀ,���Ӱﹱ
		if otherselfId > 0 then
			x402047_AddHumanGuildArrayInt( sceneId, otherselfId, x402047_g_Human_KillManIndex, 1 )
			--CityChangeAttr(sceneId, otherselfId, GUILD_CONTRIB_POINT, 1)
			if Tankbuf == 0 then --��ս����Ҳŷ���C�i n�y H� th�ng��Ϣ
				Msg2Player(sceneId, otherselfId, "#{BHXZ_081103_127}"..GetName(sceneId, selfId).."." , MSG2PLAYER_PARA)
			end
		end
		
		if Tankbuf and Tankbuf ~= 0 then --ս���������
			if selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID ) then
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankBuff, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankPos, 0 )
				--PrintStr(" B first ")
			elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID ) then
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankBuff, 0 )
				LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankPos, 0 )
				--PrintStr(" B Second ")
			end
			LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime, x402047_g_ColdTime )
			local tankpoint = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTankPlayer)
			x402047_AddAGuildPoint(sceneId, otherselfId, Aguildid, tankpoint)
			
			local msg = ""
			if otherselfId > 0 then
				msg = LuaFnGetGuildName(sceneId, otherselfId).."#{BHXZ_081103_125}"..GetName(sceneId, otherselfId).."#{BHXZ_081103_126}"..x402047_g_TankName[Tankbuf-x402047_g_AttrBuff[1]+1].."."
			else
				msg = LuaFnGetGuildName(sceneId, selfId).."#{BHXZ_081103_125}"..x402047_g_TankName[Tankbuf-x402047_g_AttrBuff[1]+1].."�� b� �i ph߽ng ph� hu�."
			end
			for i = 0, num - 1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x402047_NotifyFailTips(sceneId, mems[i], msg)
					Msg2Player(sceneId, mems[i], msg, MSG2PLAYER_PARA)
				end
			end
		else --��ս���������
			local point = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillOtherPlayer)
			x402047_AddAGuildPoint(sceneId, otherselfId, Aguildid, point)
		end
	end
	
end

--**********************************
-- ֪ͨ������Ұ�ս����
--**********************************
function x402047_NotifyPoint( sceneId, humanguildid, point )
	--ȡ �i�m��ǰ������to� � ����
	local num = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	
	for i = 0, num - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	for i = 0, num - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 and GetHumanGuildID(sceneId, mems[i]) == humanguildid then		-- ��T�i ����to� � �����˲���,���߼�to� � ������
			x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_66}"..point )
		end
	end
end

--**********************************
--�뿪����
--**********************************
function x402047_Exit( sceneId, selfId )
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- ȡ �i�m������ڳ��� s�
	NewWorld( sceneId, selfId, oldsceneId, x402047_g_Back_X, x402047_g_Back_Z )
end

--**********************************
--����뿪to� � ʱ����������to� � Linhʯ��Ʒ
--**********************************
function x402047_ClearLingShi( sceneId, selfId )
	for i = 1, getn( x402047_g_LingShiID ) do
		local num = LuaFnGetAvailableItemCount( sceneId, selfId, x402047_g_LingShiID[i] )
		if num > 0 then
			LuaFnDelAvailableItem( sceneId, selfId, x402047_g_LingShiID[i], num )
		end
	end
end

--**********************************
--����������ʱ���¼�
--**********************************
function x402047_OnCopySceneTimer( sceneId, nowTime )
	--����ʱ�Ӷ�ȡ������
	local TickCount = LuaFnGetCopySceneData_Param( sceneId, 2 )						-- ȡ �i�m�Ѿ�ִ��to� � ��ʱ����
	TickCount = TickCount + 1
	LuaFnSetCopySceneData_Param( sceneId, 2, TickCount )							-- ������to� � ��ʱ�����ô���

	--�����رձ�־
	local leaveFlag = LuaFnGetCopySceneData_Param( sceneId, 4 )
	
	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	--local i

	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	--����ʣ��ʱ��
	local FlagRemainTime = LuaFnGetCopySceneData_Param( sceneId, x402047_g_FlagRemainedTime )
	if FlagRemainTime > 0 then
		FlagRemainTime = FlagRemainTime - 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_FlagRemainedTime, FlagRemainTime )
		if FlagRemainTime <= 0 then --ʱ�䵽��������ʧ
			local nMonsterNum = GetMonsterCount(sceneId)
			for i=0, nMonsterNum-1 do
				local nMonsterId = GetMonsterObjID(sceneId,i)
				local MonsterName = GetName(sceneId, nMonsterId)
				if MonsterName == x402047_g_A_Flag or MonsterName == x402047_g_B_Flag then
					LuaFnDeleteMonster(sceneId, nMonsterId)
					
					local msg = MonsterName.."#{BHXZ_081103_128}"
					for j = 0, membercount - 1 do
						if LuaFnIsObjValid( sceneId, mems[j] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[j] ) == 1 then
							x402047_NotifyFailTips(sceneId, mems[j], msg)
							Msg2Player(sceneId, mems[j], msg, MSG2PLAYER_PARA)
						end
					end
				end
			end
		end
	end
	
	--ս����ȴʱ��
	local AColdTime = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime )
	if AColdTime > 0 then
		AColdTime = AColdTime - 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime, AColdTime )
	end
	local BColdTime = LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime )
	if BColdTime > 0 then
		BColdTime = BColdTime - 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime, BColdTime )
	end
	
	--NPC�����߿���
	if TickCount == 1 then
		local nNpcNum = GetMonsterCount(sceneId)
		for i=0, nNpcNum-1 do
			local nNpcId = GetMonsterObjID(sceneId,i)
			local name = GetName(sceneId, nNpcId)
			if name == x402047_g_A_Platform or name == x402047_g_A_FenXiang_Tower or name == x402047_g_A_LuoXing_Tower or
				name == x402047_g_B_Platform or name == x402047_g_B_FenXiang_Tower or name == x402047_g_B_LuoXing_Tower then
				LuaFnSendSpecificImpactToUnit( sceneId, nNpcId, nNpcId, nNpcId, x402047_g_ImmuneControlBuff, 0 )
			end
		end
	end
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	
	--����Ѫ������
	if 1 then
		local nNpcNum = GetMonsterCount(sceneId)
		for i=0, nNpcNum-1 do
			local nNpcId = GetMonsterObjID(sceneId,i)
			local name = GetName(sceneId, nNpcId)
			local broadcast = 0
			local setindex = 0
			local guild = 0
			local iscontinue = 1 --û��continue���??
			
			if name == x402047_g_A_Platform then
				broadcast = LuaFnGetCopySceneData_Param(sceneId, x402047_g_A_BroadcastTick)
				setindex = x402047_g_A_BroadcastTick
				guild = Aguildid
			elseif name == x402047_g_B_Platform then
				broadcast = LuaFnGetCopySceneData_Param(sceneId, x402047_g_B_BroadcastTick)
				setindex = x402047_g_B_BroadcastTick
				guild = Bguildid
			else
				iscontinue = 0
			end
			
			if iscontinue == 1 then
				local nMaxHp = GetMaxHp(sceneId, nNpcId)
				local nHp = GetHp(sceneId, nNpcId)
				local downpercent = ""
				
				if nHp <= nMaxHp*0.9 and broadcast == 0 then
					downpercent = "90��"
					LuaFnSetCopySceneData_Param( sceneId, setindex, 1 )
				elseif nHp <= nMaxHp*0.5 and broadcast == 1 then
					downpercent = "50��"
					LuaFnSetCopySceneData_Param( sceneId, setindex, 2 )
				elseif nHp <= nMaxHp*0.1 and broadcast == 2 then
					downpercent = "10��"
					LuaFnSetCopySceneData_Param( sceneId, setindex, 3 )
				end
				
				if downpercent ~= "" then
					local msg = "#{BHXZ_081103_148}"..name.."#{BHXZ_081103_149}"..downpercent.."#{BHXZ_081103_150}"
					for j = 0, membercount - 1 do
						if LuaFnIsObjValid( sceneId, mems[j] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[j] ) == 1 and GetHumanGuildID(sceneId, mems[j]) == guild then
							x402047_NotifyFailTips(sceneId, mems[j], msg)
							Msg2Player(sceneId, mems[j], msg, MSG2PLAYER_PARA)
						end
					end
				end
			end
		end
	end
	
	--TickCount = (x402047_g_LimitTotalHoldTime-x402047_g_CloseTick)
	if leaveFlag == 1 then															-- C�n �뿪
		--�뿪����ʱ��to� � ��ȡ������
		local leaveTickCount = LuaFnGetCopySceneData_Param( sceneId, 5 )
		leaveTickCount = leaveTickCount + 1
		LuaFnSetCopySceneData_Param( sceneId, 5, leaveTickCount )
		
		if leaveTickCount >= x402047_g_CloseTick then										-- ����ʱ�䵽,��Ҷ���ȥ��
			local IsSetOverFlag = LuaFnGetCopySceneData_Param(sceneId, x402047_g_IsSetOverFlag)
			
			if IsSetOverFlag == 0 then
				LuaFnSetCopySceneData_Param(sceneId, x402047_g_IsSetOverFlag, 1)
				
				local Apoint = GetGuildIntNum( sceneId, Aguildid, x402047_g_A_TotalPointIndex )
				local Bpoint = GetGuildIntNum( sceneId, Bguildid, x402047_g_B_TotalPointIndex )
				
				--���ɽ���to� � ѭ��,C�n ���ҵ�A�ﵽ�׶�����,B�ﵽ�׶�����.��Ҫ�ҵ�xx���to� � ����Լ�¼MissionData,�Ժ��������콱��buff.
				local AGuildcount = 0
				local BGuildcount = 0
				local KillMax = 0
				local FlagMax = 0
				local SourceMax = 0
				local PrizeSelfId = {0,0,0}
				for i=0, membercount-1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						NotifyBattleScore(sceneId, mems[i])
						local guildid = GetHumanGuildID(sceneId, mems[i])
						local KillNum = GetHumanGuildInt( sceneId, mems[i], x402047_g_Human_KillManIndex )
						local FlagNum = GetHumanGuildInt( sceneId, mems[i], x402047_g_Human_FlagIndex )
						local SourceNum = GetHumanGuildInt( sceneId, mems[i], x402047_g_Human_ResourceNumIndex )
						
						--ͳ��xx����
						if KillNum > KillMax then
							KillMax = KillNum
							PrizeSelfId[1] = mems[i]
						end
						if FlagNum > FlagMax then
							FlagMax = FlagNum
							PrizeSelfId[2] = mems[i]
						end
						if SourceNum > SourceMax then
							SourceMax = SourceNum
							PrizeSelfId[3] = mems[i]
						end
						
						--ͳ��ÿc�i����to� � ����
						if guildid == Aguildid then
							AGuildcount = AGuildcount + 1
						elseif guildid == Bguildid then
							BGuildcount = BGuildcount + 1
						end
					end
				end
				--������c�ito� � Ч�ʺͼ���m�t c�ito� � ���,��������ȫ���������
				local AFailHonour = 0
				if AGuildcount ~= 0 then --���ⷢ����0����
					AFailHonour = floor(x402047_g_Fail_TotalHonour/AGuildcount)
				end
				local BFailHonour = 0
				if BGuildcount ~= 0 then --���ⷢ����0����
					BFailHonour = floor(x402047_g_Fail_TotalHonour/BGuildcount)
				end
				if AFailHonour > x402047_g_Fail_PerMaxHonour then
					AFailHonour = x402047_g_Fail_PerMaxHonour
				end
				if BFailHonour > x402047_g_Fail_PerMaxHonour then
					BFailHonour = x402047_g_Fail_PerMaxHonour
				end
				
				local isAWin = 0
				if Apoint > Bpoint then --���ƽ��������ս��th�t b�i
					isAWin = 1
					
					local log = format("WinGuildID=%d,WinTotalHonour=%d,FailGuildID=%d,FailTotalHonour=%d", Aguildid, x402047_g_Win_PerHonour*AGuildcount, Bguildid, BFailHonour*BGuildcount)					
					ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_HONOUR, -1, log)
				else
					isAWin = 0
					local log = format("WinGuildID=%d,WinTotalHonour=%d,FailGuildID=%d,FailTotalHonour=%d", Bguildid, x402047_g_Win_PerHonour*BGuildcount, Aguildid, AFailHonour*AGuildcount)
					ScriptGlobal_AuditGeneralLog(LUAAUDIT_BANGZHAN_HONOUR, -1, log)
				end
				
				--c�i�˽���,�����ʼ�,��Ϊm�t �ΰ�սm�t c�i����п��� ��t ���c��c�i�� s�,�������˶�c�iflag
				for i = 1, getn(PrizeSelfId) do
					if PrizeSelfId[i] ~= 0 then
						SetMissionFlag(sceneId, PrizeSelfId[i], x402047_g_PrizeFlag[i], 1)
						LuaFnSendSystemMail(sceneId, GetName(sceneId, PrizeSelfId[i]), x402047_g_PrizeMsg[i])
					end
				end
				
				--����ǰ����������to� � �����˴��ͻ�ԭ������ʱ��to� � ����.���Ͳ���m�t ����ng���m�t ��,��Ϊ�����г���to� � ʱ���ܽ����߼�������
				for i=0, membercount-1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						local Tankbuf = x402047_HaveTankBuff( sceneId, mems[i] )
						if Tankbuf and Tankbuf ~= 0 then --ս�����Hu� b�buff
							LuaFnCancelSpecificImpact(sceneId,mems[i],Tankbuf)
						end
						x402047_ClearLingShi( sceneId, mems[i] )
						--����c�i����ʱ��ս����
						for j = x402047_g_Human_TotalPointIndex, x402047_g_Human_ResourceNumIndex do
							SetHumanGuildInt(sceneId, mems[i], j, 0)
						end
						
						local guildid = GetHumanGuildID(sceneId, mems[i])
						if guildid == Aguildid then --��ngA���Ա
							if isAWin == 1 then --A���ʤ
								x402047_AddHonour( sceneId, mems[i], x402047_g_Win_PerHonour )
								NewWorld( sceneId, mems[i], x402047_g_Exit_SceneID, x402047_g_Win_X, x402047_g_Win_Z )
							else
								x402047_AddHonour( sceneId, mems[i], AFailHonour )
								SetCurTitle(sceneId, mems[i], 23, 0) --th�t b�i��ǿ�ƶ������ɳ� s�
								LuaFnSendSystemMail(sceneId, GetName(sceneId, mems[i]), x402047_g_FailMsg) --�����ʼ�
								LuaFnSendSpecificImpactToUnit(sceneId, mems[i], mems[i], mems[i], x402047_g_SheepBuff, 0 )
								NewWorld( sceneId, mems[i], x402047_g_Exit_SceneID, x402047_g_Fail_X, x402047_g_Fail_Z )
							end
						elseif guildid == Bguildid then --��ngB���Ա
							if isAWin == 0 then --B���ʤ
								x402047_AddHonour( sceneId, mems[i], x402047_g_Win_PerHonour )
								NewWorld( sceneId, mems[i], x402047_g_Exit_SceneID, x402047_g_Win_X, x402047_g_Win_Z )
							else
								x402047_AddHonour( sceneId, mems[i], BFailHonour )
								SetCurTitle(sceneId, mems[i], 23, 0)  --th�t b�i��ǿ�ƶ������ɳ� s�
								LuaFnSendSystemMail(sceneId, GetName(sceneId, mems[i]), x402047_g_FailMsg) --�����ʼ�
								LuaFnSendSpecificImpactToUnit(sceneId, mems[i], mems[i], mems[i], x402047_g_SheepBuff, 0 )
								NewWorld( sceneId, mems[i], x402047_g_Exit_SceneID, x402047_g_Fail_X, x402047_g_Fail_Z )
							end
						else --��T�i ��ȷ����??
							x402047_Exit( sceneId, mems[i] )
						end
					end
				end
			else--������������½������콱����,�����������ID��Ϊ��Th�c H໹Ҫ�õ�����ID�.�playerenter��������Ѿ��ر������ϴ�������
				for i=0, membercount-1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						local Tankbuf = x402047_HaveTankBuff( sceneId, mems[i] )
						if Tankbuf and Tankbuf ~= 0 then --ս�����Hu� b�buff
							LuaFnCancelSpecificImpact(sceneId,mems[i],Tankbuf)
						end
						x402047_ClearLingShi( sceneId, mems[i] )
						--����c�i����ʱ��ս����
						for j = x402047_g_Human_TotalPointIndex, x402047_g_Human_ResourceNumIndex do
							SetHumanGuildInt(sceneId, mems[i], j, 0)
						end
						
						x402047_Exit( sceneId, mems[i] )
					end
				end
			end
			
			return
		else
			--֪ͨ��ǰ����������to� � ������,�����رյ���ʱ��
			local strText = format( "Sau %d gi�y sau s� r�i kh�i.", ( x402047_g_CloseTick - leaveTickCount ) * x402047_g_TickTime )

			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
					x402047_NotifyFailTips( sceneId, mems[i], strText )
				end
			end
			
			--C�i n�y �ط���C�n return
		end
	end
	
	if TickCount == (x402047_g_LimitTotalHoldTime-x402047_g_CloseTick) then		-- ���ø����رձ�־,��ʼ֪ͨ
		--���ø����رձ�־
		LuaFnSetCopySceneData_Param( sceneId, 4, 1 )
	elseif TickCount == x402047_g_StartPoint then --��ʼ�Ƿ�
		
		--���üǷֱ�־
		LuaFnSetCopySceneData_Param( sceneId, 7, 1 )
		
		--���������Ӫ,��֪ͨ��Ұ�ս��ʼ
		for i=0, membercount-1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_108}" )
				Msg2Player(sceneId, mems[i], "#{BHXZ_081103_108}", MSG2PLAYER_PARA)
				
				local guildid = GetHumanGuildID(sceneId, mems[i])
				if guildid == Aguildid then
					SetUnitCampID(sceneId, mems[i], mems[i], 10+Aguildid)
				elseif guildid == Bguildid then
					SetUnitCampID(sceneId, mems[i], mems[i], 11+Aguildid)
				else
					x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_147}" )
					x402047_ClearLingShi( sceneId, mems[i] )
					x402047_Exit( sceneId, mems[i] )
				end
			end
		end
		
		--����NPC��Ӫ
		local nNpcNum = GetMonsterCount(sceneId)
		for i=0, nNpcNum-1 do
			local nNpcId = GetMonsterObjID(sceneId,i)
			local name = GetName(sceneId, nNpcId)
			if name == x402047_g_A_Platform or name == x402047_g_A_FenXiang_Tower or name == x402047_g_A_LuoXing_Tower then
				SetUnitCampID(sceneId,nNpcId, nNpcId, Aguildid+10)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
			elseif name == x402047_g_B_Platform or name == x402047_g_B_FenXiang_Tower or name == x402047_g_B_LuoXing_Tower then
				SetUnitCampID(sceneId,nNpcId, nNpcId, Aguildid+11)
				SetMonsterFightWithNpcFlag(sceneId, nNpcId, 1)
			end
		end
	else
		
		--��ս��ʼto� � ��ʾ
		if TickCount < x402047_g_StartPoint then
			local RemainTick = x402047_g_StartPoint - TickCount
			if mod(RemainTick, 60) == 0 then --ÿ ph�t��ʾ
				for	i = 0, membercount - 1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_129}"..floor(RemainTick / 60).."#{BHXZ_081103_130}" )
					end
				end
			end
			if RemainTick <= x402047_g_BackTick then --����ʱ��ʾ
				for	i = 0, membercount - 1 do
					if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
						x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_129}"..RemainTick.."#{BHXZ_081103_131}" )
					end
				end
			end
		end
		
		--���ͷż���,ÿ5s��m�t ������,��� gi�y�����ͬʱ����c�i����,���Ժ�m�t  gi�yT�i ��m�t c�i����
		local modtick = mod( TickCount, 5 )
		if TickCount >= x402047_g_StartPoint and modtick == 0 then
			local nNpcNum = GetMonsterCount(sceneId)
			local PosX = 0
			local PosZ = 0
			
			for i=0, nNpcNum-1 do
				local nNpcId = GetMonsterObjID(sceneId,i)
				local name = GetName(sceneId, nNpcId)
				if name == x402047_g_A_LuoXing_Tower or name == x402047_g_B_LuoXing_Tower then
					if GetHp(sceneId, nNpcId) > 0 then
						PosX,PosZ = GetWorldPos(sceneId,nNpcId)
						LuaFnUnitUseSkill(sceneId,nNpcId,1067,nNpcId,PosX,PosZ,15,0)
					end
				elseif name == x402047_g_A_FenXiang_Tower or name == x402047_g_B_FenXiang_Tower then
					if GetHp(sceneId, nNpcId) > 0 then
						PosX,PosZ = GetWorldPos(sceneId,nNpcId)
						LuaFnUnitUseSkill(sceneId,nNpcId,1068,nNpcId,PosX,PosZ,15,0)
					end
				end
			end
		end
		if TickCount >= x402047_g_StartPoint and modtick == 1 then
			local nNpcNum = GetMonsterCount(sceneId)
			local PosX = 0
			local PosZ = 0
			
			for i=0, nNpcNum-1 do
				local nNpcId = GetMonsterObjID(sceneId,i)
				local name = GetName(sceneId, nNpcId)
				if name == x402047_g_A_FenXiang_Tower or name == x402047_g_B_FenXiang_Tower then
					if GetHp(sceneId, nNpcId) > 0 then
						PosX,PosZ = GetWorldPos(sceneId,nNpcId)
						LuaFnUnitUseSkill(sceneId,nNpcId,1069,nNpcId,PosX,PosZ,15,0)
					end
				end
			end
		end
		
		--ս�������ng�����,�Լ�ս���������,ÿs����m�t ��
		local TankInfo = {{},{},{},{}}
		local modtick10 = mod( TickCount, 10 )
		local modtick12 = mod( TickCount, 12 )
		for i=0, 3 do
			local tankman = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID+i )
			local PosX = 0
			local PosZ = 0
			TankInfo[i+1].selfId = tankman
			TankInfo[i+1].type = 0
			TankInfo[i+1].impactfriendnum = 0
			TankInfo[i+1].impactenemynum = 0
			TankInfo[i+1].x = 0
			TankInfo[i+1].z = 0
			
			if tankman ~= 0 then
				if LuaFnIsObjValid( sceneId, tankman ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, tankman ) == 1 then
					local buff = x402047_HaveTankBuff( sceneId, tankman )
					if buff == 0 then
						TankInfo[i+1].type = 0
					else
						TankInfo[i+1].type = buff - x402047_g_AttrBuff[1] + 1
						if TankInfo[i+1].type > 5 then
							TankInfo[i+1].type = TankInfo[i+1].type - 5
						end
					end
					
					if buff == 0 then --ս������쳣����
						local oldbuff = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff+i ) --ȡ�������ڼ�¼to� � buf
						local totalpos = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i ) --ȡ�������ڼ�¼to� � pos
						PosX = floor(totalpos / 10000)
						PosZ = mod(totalpos, 10000)
						
						if oldbuff > 0 then
							local selfIdindex = 0
							if i == 0 or i == 1 then --A��ս��
								selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, Aguildid, oldbuff-x402047_g_AttrBuff[1]+1 )
							else --B��ս��
								selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, Bguildid, oldbuff-x402047_g_AttrBuff[1]+1 )
							end
							if selfIdindex > 0 and PosX > 0 and PosZ > 0 then
								local monsterID = LuaFnCreateMonster( sceneId, x402047_g_TankID[oldbuff-x402047_g_AttrBuff[1]+1], PosX, PosZ, 3, -1, 402302 )
								LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x402047_g_ImmuneControlBuff, 0 )
							end
						end
						
						LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID+i, 0 )
						LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff+i, 0 )
						LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i, 0 )
					else --��������
						PosX,PosZ = GetWorldPos(sceneId,tankman)
						LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i, floor(PosX)*10000+floor(PosZ) )
						TankInfo[i+1].x = PosX
						TankInfo[i+1].z = PosZ
						
						--ս���Ź�Ч
						if i == 0 or i == 1 then--A��
							if modtick12 == 7 and TankInfo[i+1].type == 1 then
								LuaFnSendSpecificImpactToUnit( sceneId, tankman, tankman, tankman, x402047_g_LightBuff[TankInfo[i+1].type], 0 )
							elseif modtick10 == 8 and 2 <= TankInfo[i+1].type and TankInfo[i+1].type <= 4 then
								LuaFnSendSpecificImpactToUnit( sceneId, tankman, tankman, tankman, x402047_g_LightBuff[TankInfo[i+1].type], 0 )
							end
						else--B��
							if modtick12 == 1 and TankInfo[i+1].type == 1 then
								LuaFnSendSpecificImpactToUnit( sceneId, tankman, tankman, tankman, x402047_g_LightBuff[TankInfo[i+1].type], 0 )
							elseif modtick10 == 3 and 2 <= TankInfo[i+1].type and TankInfo[i+1].type <= 4 then
								LuaFnSendSpecificImpactToUnit( sceneId, tankman, tankman, tankman, x402047_g_LightBuff[TankInfo[i+1].type], 0 )
							end
						end
						
					end
				else --ID����ȷ���߲����߼�� �i�m�ս������Ѿ�����,C�n �����ߴ���
					local oldbuff = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff+i ) --ȡ�������ڼ�¼to� � buf
					local totalpos = LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i ) --ȡ�������ڼ�¼to� � pos
					PosX = floor(totalpos / 10000)
					PosZ = mod(totalpos, 10000)
					
					if oldbuff > 0 then
						local selfIdindex = 0
						if i == 0 or i == 1 then --A��ս��
							selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, Aguildid, oldbuff-x402047_g_AttrBuff[1]+1 )
						else --B��ս��
							selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, Bguildid, oldbuff-x402047_g_AttrBuff[1]+1 )
						end
						if selfIdindex > 0 and PosX > 0 and PosZ > 0 then
							local monsterID = LuaFnCreateMonster( sceneId, x402047_g_TankID[oldbuff-x402047_g_AttrBuff[1]+1], PosX, PosZ, 3, -1, 402302 )
							LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x402047_g_ImmuneControlBuff, 0 )
						end
					end
					
					LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID+i, 0 )
					LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff+i, 0 )
					LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos+i, 0 )
				end --end if-else
			end --end if
		end --end for
		
		--��ʱ�������Աto� � ����ID,���������,���߳�����
		--ս���ż���
		local Acount = 0
		local Bcount = 0
		local AGuildName = ""
		local BGuildName = ""
		
		for	i = 0, membercount - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				local guildid = GetHumanGuildID(sceneId, mems[i])
				local Tankbuf = x402047_HaveTankBuff( sceneId, mems[i] )
				local isalive = LuaFnIsCharacterLiving( sceneId, mems[i] )
				local xx,zz = GetWorldPos(sceneId,mems[i])
				if guildid == Aguildid then
					Acount = Acount + 1
					if AGuildName == "" then
						AGuildName = LuaFnGetGuildName(sceneId, mems[i])
					end
					
					if modtick10 == 3 and Tankbuf == 0 and isalive == 1 then --B�ch H� Chi�n Xa,Chu T߾c Chi�n Xa,Huy�n V� Chi�n Xa
						for	j = 1, 2 do --�Լ���to� � Ч��
							if TankInfo[j].impactfriendnum < x402047_g_TankMaxFriendNum and (TankInfo[j].type == 2 or TankInfo[j].type == 3 or TankInfo[j].type == 4)
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][1], 0 )
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][2], 0 )
								TankInfo[j].impactfriendnum = TankInfo[j].impactfriendnum + 1
							end
						end
						
						for	j = 3, 4 do --�Եз�to� � Ч��
							if (TankInfo[j].type == 2 or TankInfo[j].type == 3 or TankInfo[j].type == 4)
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								if TankInfo[j].impactenemynum < x402047_g_TankMaxEnemyNum then
									LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankEnemyBuff[TankInfo[j].type], 0 )
									TankInfo[j].impactenemynum = TankInfo[j].impactenemynum + 1
								end
								local Addbuff = x402047_AttackBuffByHuman( sceneId, TankInfo[j].selfId, TankInfo[j].type )
								LuaFnSendSpecificImpactBySkillToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], Addbuff, 0 )
							end
						end
					end
					if modtick12 == 1 and Tankbuf == 0 and isalive == 1 then --Thanh Long Chi�n Xa
						for	j = 1, 2 do --�Լ���to� � Ч��
							if TankInfo[j].impactfriendnum < x402047_g_TankMaxFriendNum and TankInfo[j].type == 1
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][1], 0 )
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][2], 0 )
								TankInfo[j].impactfriendnum = TankInfo[j].impactfriendnum + 1
							end
						end
						
						for	j = 3, 4 do --�Եз�to� � Ч��
							if TankInfo[j].type == 1 and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								if TankInfo[j].impactenemynum < x402047_g_TankMaxEnemyNum then
									LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankEnemyBuff[TankInfo[j].type], 0 )
									TankInfo[j].impactenemynum = TankInfo[j].impactenemynum + 1
								end
								local Addbuff = x402047_AttackBuffByHuman( sceneId, TankInfo[j].selfId, TankInfo[j].type )
								LuaFnSendSpecificImpactBySkillToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], Addbuff, 0 )
							end
						end
					end
				elseif guildid == Bguildid then
					Bcount = Bcount + 1
					if BGuildName == "" then
						BGuildName = LuaFnGetGuildName(sceneId, mems[i])
					end
					
					if modtick10 == 8 and Tankbuf == 0 and isalive == 1 then --B�ch H� Chi�n Xa,Chu T߾c Chi�n Xa,Huy�n V� Chi�n Xa
						for	j = 1, 2 do --�Եз�to� � Ч��
							if (TankInfo[j].type == 2 or TankInfo[j].type == 3 or TankInfo[j].type == 4)
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								if TankInfo[j].impactenemynum < x402047_g_TankMaxEnemyNum then
									LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankEnemyBuff[TankInfo[j].type], 0 )
									TankInfo[j].impactenemynum = TankInfo[j].impactenemynum + 1
								end
								local Addbuff = x402047_AttackBuffByHuman( sceneId, TankInfo[j].selfId, TankInfo[j].type )
								LuaFnSendSpecificImpactBySkillToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], Addbuff, 0 )
							end
						end
						
						for	j = 3, 4 do --�Լ���to� � Ч��
							if TankInfo[j].impactfriendnum < x402047_g_TankMaxFriendNum and (TankInfo[j].type == 2 or TankInfo[j].type == 3 or TankInfo[j].type == 4)
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][1], 0 )
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][2], 0 )
								TankInfo[j].impactfriendnum = TankInfo[j].impactfriendnum + 1
							end
						end
					end
					if modtick12 == 7 and Tankbuf == 0 and isalive == 1 then --Thanh Long Chi�n Xa
						for	j = 1, 2 do --�Եз�to� � Ч��
							if TankInfo[j].type == 1 and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								if TankInfo[j].impactenemynum < x402047_g_TankMaxEnemyNum then
									LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankEnemyBuff[TankInfo[j].type], 0 )
									TankInfo[j].impactenemynum = TankInfo[j].impactenemynum + 1
								end
								local Addbuff = x402047_AttackBuffByHuman( sceneId, TankInfo[j].selfId, TankInfo[j].type )
								LuaFnSendSpecificImpactBySkillToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], Addbuff, 0 )
							end
						end
						
						for	j = 3, 4 do --�Լ���to� � Ч��
							if TankInfo[j].impactfriendnum < x402047_g_TankMaxFriendNum and TankInfo[j].type == 1 
							and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][1], 0 )
								LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, mems[i], x402047_g_TankFriendBuff[TankInfo[j].type][2], 0 )
								TankInfo[j].impactfriendnum = TankInfo[j].impactfriendnum + 1
							end
						end
					end
				else
					if Tankbuf and Tankbuf ~= 0 then --ս����Ҳ�T�i ��ȷ����
						LuaFnCancelSpecificImpact(sceneId,mems[i],Tankbuf)
					end
					x402047_NotifyFailTips( sceneId, mems[i], "#{BHXZ_081103_147}" )
					x402047_ClearLingShi( sceneId, mems[i] )
					x402047_Exit( sceneId, mems[i] )
				end
			end
		end
		
		SetGuildIntNum( sceneId, Aguildid, x402047_g_A_numIndex, Acount )
		SetGuildIntNum( sceneId, Bguildid, x402047_g_B_numIndex, Bcount )
		
		--Cu�c chi�n ���̹��沥�Ź���10��,20��,30��
		if TickCount == (x402047_g_StartPoint+10*60) or TickCount == (x402047_g_StartPoint+20*60) or TickCount == (x402047_g_StartPoint+30*60) then
			local Apoint = GetGuildIntNum( sceneId, Aguildid, x402047_g_A_TotalPointIndex )
			local Bpoint = GetGuildIntNum( sceneId, Bguildid, x402047_g_B_TotalPointIndex )
			if AGuildName == "" then --���C�i n�y ����û�����޷�ȡ����������
				AGuildName = Aguildid.." s�"
			end
			if BGuildName == "" then --���C�i n�y ����û�����޷�ȡ����������
				BGuildName = Bguildid.." s�"
			end
			local leadmsg = ""
			if Apoint > Bpoint then
				leadmsg = AGuildName.."#{BHXZ_081103_132}"
			else
				leadmsg = BGuildName.."#{BHXZ_081103_132}"
			end
			local msg = "#{BHXZ_081103_133}"..floor((TickCount-x402047_g_StartPoint)/60).."#{BHXZ_081103_134}"..AGuildName.."#{BHXZ_081103_135}"..Acount.."#{BHXZ_081103_136}"..Apoint.."!"..BGuildName.."#{BHXZ_081103_135}"..Bcount.."#{BHXZ_081103_136}"..Bpoint.."!"..leadmsg
			for i=0, membercount-1 do
				if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then		-- ��T�i ����to� � �����˲���,���߼�to� � ������
					x402047_NotifyFailTips( sceneId, mems[i], msg )
					Msg2Player(sceneId, mems[i], msg , MSG2PLAYER_PARA)
				end
			end
		end
		
		--B�n C� Chi�n Xa�ż���
		for j=1, 4 do
			if TankInfo[j].type == 5 and modtick10 == 4 then
				local nNpcNum = GetMonsterCount(sceneId)
				local attckindex = 0
				if j == 1 or j == 2 then
					attckindex = 3
				else
					attckindex = 1
				end
				
				for i=0, nNpcNum-1 do --�����Է�����
					local nNpcId = GetMonsterObjID(sceneId,i)
					local name = GetName(sceneId, nNpcId)
					local xx,zz = GetWorldPos(sceneId,nNpcId)
					
					if (((j == 3 or j == 4) and (name == x402047_g_A_LuoXing_Tower or name == x402047_g_A_FenXiang_Tower or name == x402047_g_A_Platform)) or
							((j == 1 or j == 2) and (name == x402047_g_B_LuoXing_Tower or name == x402047_g_B_FenXiang_Tower or name == x402047_g_B_Platform))) and
							GetHp(sceneId, nNpcId) > 0 and (TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
						LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, nNpcId, x402047_g_PanGuTankAttackBuff, 0 )
					end
				end
				
				for i=attckindex, attckindex+1 do --�����Է�ս��
					local xx,zz = GetWorldPos(sceneId,TankInfo[i].selfId)
					
					if TankInfo[i].type ~= 0 and GetHp(sceneId, TankInfo[i].selfId) > 0 and
						(TankInfo[j].x-xx)*(TankInfo[j].x-xx) + (TankInfo[j].z-zz)*(TankInfo[j].z-zz) < 15*15 then
						LuaFnSendSpecificImpactToUnit( sceneId, TankInfo[j].selfId, TankInfo[j].selfId, TankInfo[i].selfId, x402047_g_PanGuTankAttackBuff, 0 )
					end
				end
			end
		end
		
	end
end

--**********************************
-- ս��buffHu� b�ʱ�m�t ص�to� � �ű�����
--**********************************
function x402047_OnImpactFadeOut( sceneId, selfId, impactId )
	
	local tanktype = impactId-x402047_g_AttrBuff[1]+1
	
	--C�i n�y Ҫ��д,�����������������Ҳ����Hu� b�C�i n�y buf
	LuaFnCancelSpecificImpact(sceneId,selfId,x402047_g_TankBuff[tanktype])
	LuaFnCancelSpecificImpact(sceneId,selfId,x402047_g_ImmuneControlBuff)
	--LuaFnCancelSpecificImpact(sceneId,selfId,impactId) --ע�͵�C�i n�y 
	
	--��ng����ng����
	local sceneType = LuaFnGetSceneType( sceneId )
	if sceneType ~= 1 then
		return
	end
	
	--��ng����ng��C�n to� � ����
	local fubentype = LuaFnGetCopySceneData_Param( sceneId, 0 )
	if fubentype ~= FUBEN_BANGZHAN then
		return
	end
	
	--��ng��ʼ��ս����
	if LuaFnGetCopySceneData_Param( sceneId, 7 ) == 0 then
		return
	end
	
	--����������¼to� � ս�����selfId
	local isAguild = 0
	if selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID ) then
		isAguild = 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankManSelfID, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankBuff, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_FirstTankPos, 0 )
	elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID ) then
		isAguild = 1
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankManSelfID, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankBuff, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_SecondTankPos, 0 )
	elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID ) then
		isAguild = 0
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankManSelfID, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankBuff, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_FirstTankPos, 0 )
	elseif selfId == LuaFnGetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID ) then
		isAguild = 0
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankManSelfID, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankBuff, 0 )
		LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_SecondTankPos, 0 )
	else --����to� � ���T�i ǰ��x402047_OnHumanDie�Ѿ�����˸�����to� � selfid,��˲���������´���ս��
		return
	end
	
	Msg2Player(sceneId, selfId, "#{BHXZ_081103_137}"..x402047_g_TankName[tanktype].."." , MSG2PLAYER_PARA)
	
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )	-- ȡ �i�m����to� � ����ID����
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	
	--Ѫ������20%ֱ���㱬����,������ս��,ս��������߹��m�t �����ԭ�ش���ս�� #43231
	if GetHp(sceneId,selfId) >= floor(GetMaxHp(sceneId,selfId)*0.2) then
		--m�t ��Ҫ�ҵ�m�t c�i���Է����selfIdto� � �ط��Ŵ���ս�to� � ���,��ֹ����������2��to� � ս��,����ս�����Ͳ����ظ�
		local selfIdindex = CallScriptFunction( 600051, "FindTankManIndex", sceneId, isAguild, tanktype )
		if selfIdindex > 0 then
			local PosX,PosZ = GetWorldPos(sceneId,selfId)
			local monsterID = LuaFnCreateMonster( sceneId, x402047_g_TankID[tanktype], PosX, PosZ, 3, -1, 402302 )
			LuaFnSendSpecificImpactToUnit( sceneId, monsterID, monsterID, monsterID, x402047_g_ImmuneControlBuff, 0 )
		end
	else --������ȴʱ��,��ʾ��Ϣ,���ӻ���,���ð���ɱ����Ŀ
		--ȡ �i�m��ǰ������to� � ����
		local num = LuaFnGetCopyScene_HumanCount( sceneId )
		local mems = {}
		
		for i = 0, num - 1 do
			mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
		end
		
		local msg = GetName(sceneId, selfId).."#{BHXZ_090112_38}"
		for i = 0, num - 1 do
			if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
				x402047_NotifyFailTips(sceneId, mems[i], msg)
			end
		end
		BroadMsgByChatPipe(sceneId, selfId, "@*;SrvMsg;GLD:#{BHXZ_090112_39}", 6); --����Ƶ��
		
		if isAguild == 1 then
			LuaFnSetCopySceneData_Param( sceneId, x402047_g_A_TankColdTime, x402047_g_ColdTime )
			local tankpoint = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTankPlayer)
			x402047_AddBGuildPoint(sceneId, 0, Bguildid, tankpoint)
			--���ð���ɱ����Ŀ
			local alreadykillnum = GetGuildIntNum( sceneId, Bguildid, x402047_g_B_KillManNumIndex )
			SetGuildIntNum( sceneId, Bguildid, x402047_g_B_KillManNumIndex, alreadykillnum+1 )
		else
			LuaFnSetCopySceneData_Param( sceneId, x402047_g_B_TankColdTime, x402047_g_ColdTime )
			local tankpoint = GetGuildWarPoint(sceneId, x402047_g_GuildPoint_KillTankPlayer)
			x402047_AddAGuildPoint(sceneId, 0, Aguildid, tankpoint)
			--���ð���ɱ����Ŀ
			local alreadykillnum = GetGuildIntNum( sceneId, Aguildid, x402047_g_A_KillManNumIndex )
			SetGuildIntNum( sceneId, Aguildid, x402047_g_A_KillManNumIndex, alreadykillnum+1 )
		end
	end
	
end

--**********************************
-- ��ng����ս��buff,��Tr� v�buffIDû��Tr� v�0
--**********************************
function x402047_HaveTankBuff( sceneId, selfId )
	for i = 1, getn( x402047_g_AttrBuff ) do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, x402047_g_AttrBuff[i]) == 1 then
			return x402047_g_AttrBuff[i]
		end
	end
	return 0
end

--**********************************
-- ��Ļ�м���Ϣ��ʾ
--**********************************
function x402047_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- �Ի�������Ϣ��ʾ
--**********************************
function x402047_NotifyFailBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
-- ��ng�񱾰���븱��to� � ������������ x402047_g_MaxMembers ��
--**********************************
function x402047_IsGuildFull( sceneId, guildid )
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	
	local membercount = LuaFnGetCopyScene_HumanCount( sceneId )
	local mems = {}
	--local i
	
	for i = 0, membercount - 1 do
		mems[i] = LuaFnGetCopyScene_HumanObjId( sceneId, i )
	end
	
	local Acount = 0
	local Bcount = 0
	for	i = 0, membercount - 1 do
		if LuaFnIsObjValid( sceneId, mems[i] ) == 1 and LuaFnIsCanDoScriptLogic( sceneId, mems[i] ) == 1 then
			local guildid = GetHumanGuildID(sceneId, mems[i])
			if guildid == Aguildid then
				Acount = Acount + 1
			end
		end
	end
	Bcount = membercount - Acount
	
	if guildid == Aguildid then
		if Acount > x402047_g_MaxMembers then
			return 1
		else
			return 0
		end
	elseif guildid == Bguildid then
		if Bcount > x402047_g_MaxMembers then
			return 1
		else
			return 0
		end
	else --Ӧ�ò����ߵ�������,C�i n�y �������ú���to� � �߼�������׼ȷto� � ��ng��T�i ������to� � �ж�,�������Tr� v�0��ʾͨ��
		return 0
	end
	
end

--**********************************
--��ng����ngA�����,NPC obj�ű����õ�����
--**********************************
function x402047_IsCommonAGuild( sceneId, selfId )
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	local humanguildid = GetHumanGuildID(sceneId, selfId)
	
	if Aguildid == humanguildid then
		return 1
	end
	
	return 0
end

--**********************************
--��ng����ngB�����,NPC obj�ű����õ�����
--**********************************
function x402047_IsCommonBGuild( sceneId, selfId )
	local totalguildid = LuaFnGetCopySceneData_Param( sceneId, 6 )					-- ȡ �i�m����to� � ����ID����
	local Aguildid = floor(totalguildid / 10000)
	local Bguildid = mod(totalguildid, 10000)
	local humanguildid = GetHumanGuildID(sceneId, selfId)

	if Bguildid == humanguildid then
		return 1
	end
	
	return 0
end

--**********************************
--����A����ֲ�֪ͨA�����,ɱ�ˡ����������졢LinhʯNPC�ű����õ�����
--**********************************
function x402047_AddAGuildPoint( sceneId, selfId, guildid, addpoint )
	local point = GetGuildIntNum( sceneId, guildid, x402047_g_A_TotalPointIndex )
	point = point + addpoint
	x402047_NotifyPoint( sceneId, guildid, point ) --֪ͨ��Ұ���
	SetGuildIntNum( sceneId, guildid, x402047_g_A_TotalPointIndex, point )--�������
	if selfId > 0 then --ɱ��to� � ��ng�Է�NPC��������ng0,�л�ս������to� � ʱ��Ҳ��ng0,Ѫ��20%�����뿪ս��Ҳ��ng0
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_TotalPointIndex, addpoint )
	end
end

--**********************************
--����B����ֲ�֪ͨB�����,ɱ�ˡ����������졢LinhʯNPC�ű����õ�����
--**********************************
function x402047_AddBGuildPoint( sceneId, selfId, guildid, addpoint )
	local point = GetGuildIntNum( sceneId, guildid, x402047_g_B_TotalPointIndex )
	point = point + addpoint
	x402047_NotifyPoint( sceneId, guildid, point ) --֪ͨ��Ұ���
	SetGuildIntNum( sceneId, guildid, x402047_g_B_TotalPointIndex, point )--�������
	if selfId > 0 then --ɱ��to� � ��ng�Է�NPC��������ng0,�л�ս������to� � ʱ��Ҳ��ng0,Ѫ��20%�����뿪ս��Ҳ��ng0
		x402047_AddHumanGuildArrayInt( sceneId, selfId, x402047_g_Human_TotalPointIndex, addpoint )
	end
end

--**********************************
--����c�i�˻�������
--**********************************
function x402047_AddHumanGuildArrayInt( sceneId, selfId, ArrayIntIndex, addvalue )
	local value = GetHumanGuildInt( sceneId, selfId, ArrayIntIndex )
	value = value + addvalue
	SetHumanGuildInt( sceneId, selfId, ArrayIntIndex, value )
end

--**********************************
--����c�i������ֵ
--**********************************
function x402047_AddHonour( sceneId, selfId, addHonour )
	if addHonour > 0 then
		local Honour = GetHonour( sceneId, selfId )
		Honour = Honour + addHonour
		SetHonour( sceneId, selfId, Honour )
	end
end

--**********************************
-- ���������to� � XX��
--**********************************
function x402047_ClearMonsterByName(sceneId, szName)
	local nMonsterNum = GetMonsterCount(sceneId)
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId)== szName  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
end

--**********************************
--����ս�������Լ�c�i������Tr� v�m�t c�iҪ�Ӹ��Է�to� � ����buff
--**********************************
function x402047_AttackBuffByHuman( sceneId, selfId, TankType )
	
	if TankType == 1 then --Thanh Long Chi�n Xa
		local PhysicsAttack = GetHumanAttr(sceneId, selfId, 1)
		local nMax = getn( x402047_g_PhysicsAttack_Buff )
		
		for i = 1, nMax do
			if PhysicsAttack <= x402047_g_PhysicsAttack_Buff[i].value then
				return x402047_g_PhysicsAttack_Buff[i].buff
			end
		end
		
		if PhysicsAttack >= x402047_g_PhysicsAttack_Buff[nMax].value then
			return x402047_g_PhysicsAttack_Buff[nMax].buff
		end
		
	elseif TankType == 2 then --B�ch H� Chi�n Xa
		local MagicAttack = GetHumanAttr(sceneId, selfId, 2)
		local nMax = getn( x402047_g_MagicAttack_Buff )
		
		for i = 1, nMax do
			if MagicAttack <= x402047_g_MagicAttack_Buff[i].value then
				return x402047_g_MagicAttack_Buff[i].buff
			end
		end
		
		if MagicAttack >= x402047_g_MagicAttack_Buff[nMax].value then
			return x402047_g_MagicAttack_Buff[nMax].buff
		end
		
	elseif TankType == 3 then --Chu T߾c Chi�n Xa
		local cold = GetHumanAttr(sceneId, selfId, 3)
		local fire = GetHumanAttr(sceneId, selfId, 4)
		local nMax = getn( x402047_g_ColdFire_Buff )
		
		for i = 1, nMax do
			if (cold+fire) <= x402047_g_ColdFire_Buff[i].value then
				return x402047_g_ColdFire_Buff[i].buff
			end
		end
		
		if (cold+fire) >= x402047_g_ColdFire_Buff[nMax].value then
			return x402047_g_ColdFire_Buff[nMax].buff
		end
		
	elseif TankType == 4 then --Huy�n V� Chi�n Xa
		local light = GetHumanAttr(sceneId, selfId, 5)
		local poison = GetHumanAttr(sceneId, selfId, 6)
		local nMax = getn( x402047_g_LightPoison_Buff )
		
		for i = 1, nMax do
			if (light+poison) <= x402047_g_LightPoison_Buff[i].value then
				return x402047_g_LightPoison_Buff[i].buff
			end
		end
		
		if (light+poison) >= x402047_g_LightPoison_Buff[nMax].value then
			return x402047_g_LightPoison_Buff[nMax].buff
		end
		
	end
	
	return 0
end
