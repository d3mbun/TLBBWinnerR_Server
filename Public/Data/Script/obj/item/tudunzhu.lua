-- ������
-- 300056
-- ��Ʒ����ʹ��10��
-- ��m�t ��ʹ�á���λTr� v� �i�m��
-- �Ժ�ÿ��ʹ�ÿ�m�t ��,�����ɾ����Ʒ,˲�Ƶ�Tr� v� �i�m

x300056_g_scriptId = 300056
x300056_g_ItemId = 30008030


--��Ʊ
x300056_g_Yinpiao = 40002000

-- ����ʹ�ô��͹���to� � ����
x300056_g_NoChuangsongScn=
{
	151		-- ����
}

-- ����ʹ�������鶨λto� � ����
x300056_g_UselessScn=
{
	125,	-- ��ɽ
	414	  -- ������	
}


--��ֹ���͵�ĳЩ����to� � ��c�p����....
x300056_g_LimitTransScene =
{
	{423,90},	--����ɽ
	{519,90},	--�����
	{424,90},	--�߲�
	{520,90},	--�߲��Թ�
	{425,90},	--����ľ
	{427,90},	--���������
	{186,75},	--L�u Lan
	{431,90}, --����
	{432,90}  --��Ѫ��
}

x300056_g_Impact_NotTransportList = { 5929 } -- ��ֹ����to� � Impact
x300056_g_TalkInfo_NotTransportList = { "#{GodFire_Info_062}" } -- ��ֹ����to� � Impact��ʾ��Ϣ

--**********************************
-- �¼��������
--**********************************
function x300056_OnDefaultEvent( sceneId, selfId, nItemIndex )
	
end

function x300056_IsSkillLikeScript( sceneId, selfId )
	return 1	 --C�i n�y �ű�C�n ����֧��
end

function x300056_CancelImpacts( sceneId, selfId )
	return 0	 --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

function x300056_OnDeplete( sceneId, selfId )
	return 1
end

--**********************************
-- 
--**********************************
function x300056_OnConditionCheck( sceneId, selfId , idid)

	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	
	-- �ж�C�i n�y ��Ʒ��ng����ng�Ѿ���λ
	if GetItemTableIndexByIndex(sceneId, selfId, bagId) ~= x300056_g_ItemId  then
		return 0
	end
	
	--�����Ʒ��ng�����
	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
		return 0
	end

	--���Impact״̬פ��Ч��
	for i, ImpactId in x300056_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x300056_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end

	-- 1,���C�i n�y ��Ʒ��ng����ng�м�¼to� � ������,
	-- C�n ��¼to� � ������ng,ʹ�ô���,��λ����Id,�Ѿ�����
	local nUseCount	= GetBagItemParam(sceneId, selfId, bagId, 0, 2)
	local x	= GetBagItemParam(sceneId, selfId, bagId, 4, 2)
	local z	= GetBagItemParam(sceneId, selfId, bagId, 8, 2)

	local nTarSceneId = floor(nUseCount/100)
	local nCount = nUseCount - nTarSceneId*100
	
	if nUseCount==0 and x==0 and z==0  then
		x300056_MsgBox( sceneId, selfId, "еn Th� Ch�u c�a c�c h� ch�a h� �nh v�!" )
		return 0
	end

	--���Ŀ�곡����ng�����Ƶ�c�p....
	for _, tmp in x300056_g_LimitTransScene do
		if ( (tmp[1] == nTarSceneId) and (GetLevel(sceneId, selfId) < tmp[2]) ) then
			local szMsg = format("B�n � c�n c�p %d tr� l�n m�i c� th� ti�n v�o", tmp[2])
			x300056_MsgBox( sceneId, selfId, szMsg)
			return 0
		end
	end

	return 1
end

--**********************************
-- 
--**********************************
function x300056_CallMe( sceneId, selfId, nItemIndex, PlayerGuid)	
	
	-- ���C�i n�y �����ng����ng�ܹ�ʹ�������鶨λ
	--�жϵ�ǰ״̬��ng���ʹ�ö�λ��
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x300056_MsgBox( sceneId, selfId, "Khu v�c c�c h� kh�ng cho ph�p di chuy�n, kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!" )
		return 0
	end

	--�����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, x300056_g_Yinpiao) >= 1  then
		x300056_MsgBox(sceneId, selfId, "Khu v�c c�c h� kh�ng cho ph�p di chuy�n, kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!")
		return 0
	end
	
	--�������ǲ��Ǵ��ڲ������͵ĳ������������
	for _, tmp in x300056_g_NoChuangsongScn do
		if tmp == sceneId then
			x300056_MsgBox( sceneId, selfId, "Trong khu v�c n�y kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!" )
			return 0
		end
	end
	
	-- �������ǲ��Ǵ��ڰ�̯״̬��
	if LuaFnIsStalling(sceneId, selfId) == 1  then
		x300056_MsgBox( sceneId, selfId, "Trong tr�ng th�i bu�n b�n, kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!" )
		return 0
	end
	
	-- ������Ӹ���״̬�£����ܴ���
	if IsTeamFollow(sceneId, selfId) == 1  then
		x300056_MsgBox( sceneId, selfId, "C�c h� �ang trong trang th�i t� �i theo sau, kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!" )
		return 0
	end
	
	-- [ QUFEI 2007-08-23 20:50 UPDATE BugID 23699 ]
	-- ����ʹ�ý�ͨ����״̬�£����ܴ���
	local	inbus = LuaFnGetBusPassengerIDIsInBus(sceneId, selfId)
	-- PrintNum(inbus)
	if inbus == 1 then
		x300056_MsgBox( sceneId, selfId, "Khu v�c c�c h� kh�ng n�m trong t�nh tr�ng s� d�ng d�ch chuy�n, kh�ng th� s� d�ng ��o c� d�ch chuy�n!" )
		return 0
	end
	
	--���Impact״̬פ��Ч��
	for i, ImpactId in x300056_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x300056_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	-- ��PlayerGuid ��ng����ng������to� � ��,Ȼ���ٿ�ʱ����ng����ng����,��to� � Ҳû��ʲô�ܼ��to� � ��
	local Time = GetMissionData(sceneId,selfId,MD_TDZ_TIME)
	local nTarSceneId = GetMissionData(sceneId,selfId,MD_TDZ_SCENE)
	local x = GetMissionData(sceneId,selfId,MD_TDZ_X)
	local z = GetMissionData(sceneId,selfId,MD_TDZ_Y)
	
	--���Ŀ�곡����ng�����Ƶ�c�p....
	for _, tmp in x300056_g_LimitTransScene do
		if ( (tmp[1] == nTarSceneId) and (GetLevel(sceneId, selfId) < tmp[2]) ) then
			local szMsg = format("B�n � c�n c�p %d tr� l�n m�i c� th� ti�n v�o", tmp[2])
			x300056_MsgBox( sceneId, selfId, szMsg)
			return 0
		end
	end
	
	if LuaFnGetCurrentTime() - Time < 30  then
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, nTarSceneId, x, z)
	end

	SetMissionData(sceneId,selfId,MD_TDZ_TIME,	0)
	SetMissionData(sceneId,selfId,MD_TDZ_SCENE,0)
	SetMissionData(sceneId,selfId,MD_TDZ_X,	0)
	SetMissionData(sceneId,selfId,MD_TDZ_Y,	0)
	
end

--**********************************
-- ����Լ�S� d�ng v�t ph�m 
--**********************************
function x300056_UseItem( sceneId, selfId, nType, nItemIndex )
	
	if GetLevel(sceneId, selfId)<10  then
		x300056_MsgBox( sceneId, selfId, "Kh�ng �� ��ng c�p" )
		return
	end
	
	-- Tr� v�����,��λ0,����1
	if nType == 0  then
		x300056_SetPosition( sceneId, selfId, nItemIndex )
		
	elseif nType == 1  then
		--x300056_PlayerGoto( sceneId, selfId, nItemIndex )
	end
	
end

--**********************************
-- 
--**********************************
function x300056_OnActivateOnce( sceneId, selfId )
	
	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	
	if bagId<0  then
		return
	end
	
	x300056_PlayerGoto( sceneId, selfId, bagId )

	--	-- ��to� � �޸�,T�i ���ﵯ���Ի������������ng�����ͻ���ng��λ.=======
	--	local	nItemIndex	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )
	--
	--	BeginUICommand(sceneId)
	--		UICommand_AddInt(sceneId,x300056_g_scriptId);
	--		UICommand_AddString(sceneId,"UseItem");
	--		UICommand_AddInt(sceneId,nItemIndex);
	--	EndUICommand(sceneId)
	--	DispatchUICommand(sceneId,selfId, 1008)
	
end

--**********************************
-- 
--**********************************
function x300056_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

--**********************************
-- ���S� d�ng v�t ph�m  ��λ
--**********************************
function x300056_SetPosition( sceneId, selfId, nItemIndex )

	if LuaFnGetSceneType( sceneId ) == 1 or LuaFnGetSceneType( sceneId ) == 4 then
		x300056_MsgBox( sceneId, selfId, "Trong th�nh th� bang h�i ho�c ph� b�n kh�ng th� s� d�ng Th� еn Ch�u �nh v�!" )
		return 0
	end
	for _, tmp in x300056_g_UselessScn do
		if tmp == sceneId then
			x300056_MsgBox( sceneId, selfId, "Trong khu v�c n�y kh�ng th� s� d�ng Th� еn Ch�u �nh v�!" )
			return 0
		end
	end

	-- 0,��Ʒ��ȫ�Լ��
	-- �ȼ��C�i n�y  nItemIndex to� � ��Ʒ��ng����ng�͵�ǰto� � ��Ӧ,
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300056_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Sai s�t trong tay n�i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end
	
	--�����Ʒ��ng�����
	if LuaFnLockCheck( sceneId, selfId, nItemIndex, 0 ) < 0 then
		x300056_MsgBox( sceneId, selfId, "V�t ph�m n�y �� b� kh�a!" )
		return 0
	end

	-- 1,���C�i n�y ��Ʒ��ng����ng�м�¼to� � ������,
	-- C�n ��¼to� � ������ng,ʹ�ô���,��λ����Id,�Ѿ�����
	local nUseCount	= GetBagItemParam(sceneId, selfId, nItemIndex, 0, 2)
	local x	= GetBagItemParam(sceneId, selfId, nItemIndex, 4, 2)
	local z	= GetBagItemParam(sceneId, selfId, nItemIndex, 8, 2)

	local nTarSceneId = floor(nUseCount/100)
	local nCount = nUseCount - nTarSceneId*100
	
	if nUseCount==0 and x==0 and z==0  then
		nCount = 10
	end 
	
	-- m�t c�i��to� � û�ж�λ��to� � ��Ʒ
	-- ��¼�µ�ǰ������λ��,����ʹ�ô���Ϊ10
	local x
	local z
	x,z = GetWorldPos(sceneId, selfId)
	
	SetBagItemParam(sceneId, selfId, nItemIndex, 0, 2, sceneId*100+nCount)
	SetBagItemParam(sceneId, selfId, nItemIndex, 4, 2, floor(x))
	SetBagItemParam(sceneId, selfId, nItemIndex, 8, 2, floor(z))
	LuaFnRefreshItemInfo( sceneId, selfId, nItemIndex )
	
	BeginEvent(sceneId)
		AddText(sceneId,"еn Th� Ch�u c�a c�c h� �� �nh v� th�nh c�ng.")
	EndEvent(sceneId)
	DispatchMissionTips(sceneId,selfId)
	
end

--**********************************
-- ����Լ�to� � ����
--**********************************
function x300056_PlayerGoto( sceneId, selfId, nItemIndex )
	
	-- 0,��Ʒ��ȫ�Լ��
	-- �ȼ��C�i n�y  nItemIndex to� � ��Ʒ��ng����ng�͵�ǰto� � ��Ӧ,
	if GetItemTableIndexByIndex(sceneId, selfId, nItemIndex) ~= x300056_g_ItemId  then
		BeginEvent(sceneId)
			AddText(sceneId,"  Sai s�t trong tay n�i")
		EndEvent(sceneId)
		DispatchMissionTips(sceneId,selfId)
		return
	end

	-- ������Ӹ���״̬��,���ܴ���
	if IsTeamFollow(sceneId, selfId) == 1  then
		x300056_MsgBox( sceneId, selfId, "C�c h� �ang trong trang th�i t� �i theo sau, kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!" )
		return 0
	end
	
	--�жϵ�ǰ״̬�Ƿ��ʹ�ö�λ��
	if IsHaveMission( sceneId, selfId, 4021 ) > 0 then
		x300056_MsgBox( sceneId, selfId, "Khu v�c c�c h� kh�ng cho ph�p di chuy�n, kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!" )
		return 0
	end

	--�����Ʒ�Ƿ����
	if LuaFnLockCheck( sceneId, selfId, nItemIndex, 0 ) < 0 then
		x300056_MsgBox( sceneId, selfId, "V�t ph�m n�y �� b� kh�a!" )
		return 0
	end

	--�����������ǲ����С���Ʊ������������оͲ���ʹ������Ĺ���
	if GetItemCount(sceneId, selfId, x300056_g_Yinpiao) >= 1  then
		x300056_MsgBox(sceneId, selfId, "Khu v�c c�c h� kh�ng cho ph�p di chuy�n, kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!")
		return 0
	end
	
	--�������ǲ��Ǵ��ڲ������͵ĳ������������
	for _, tmp in x300056_g_NoChuangsongScn do
		if tmp == sceneId then
			x300056_MsgBox( sceneId, selfId, "Trong khu v�c n�y kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!" )
			return 0
		end
	end
	
	-- �������ǲ��Ǵ��ڰ�̯״̬��
	if LuaFnIsStalling(sceneId, selfId) == 1  then
		x300056_MsgBox( sceneId, selfId, "Trong tr�ng th�i bu�n b�n, kh�ng th� s� d�ng Th� еn Ch�u d�ch chuy�n!" )
		return 0
	end
	
	--���Impact״̬פ��Ч��
	for i, ImpactId in x300056_g_Impact_NotTransportList do
		if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, ImpactId) ~= 0 then
			BeginEvent(sceneId)			
				AddText(sceneId, x300056_g_TalkInfo_NotTransportList[i]);
			EndEvent(sceneId)
			DispatchMissionTips(sceneId,selfId)
			return 0
		end
	end
	
	-- 1,���C�i n�y ��Ʒ��ng����ng�м�¼to� � ������,
	-- C�n ��¼to� � ������ng,ʹ�ô���,��λ����Id,�Լ�����
	local nUseCount	= GetBagItemParam(sceneId, selfId, nItemIndex, 0, 2)
	
	-- ִ�д���
	local nTarSceneId = floor(nUseCount/100)
	local nCount = nUseCount - nTarSceneId*100
	local nPointX		= GetBagItemParam(sceneId, selfId, nItemIndex, 4, 2)
	local nPointZ		= GetBagItemParam(sceneId, selfId, nItemIndex, 8, 2)
	
	if nCount==0 and nPointX==0 and nPointZ==0  then
		x300056_MsgBox( sceneId, selfId, "Th� еn Ch�u n�y ch�a h� �nh v� n�n kh�ng th� d�ch chuy�n." )
		return
	end
	
	-- ���Ŀ�곡����ng����ng�ܹ�����
	if sceneId ~= nTarSceneId then
		if IsCanNewWorld( sceneId, selfId, nTarSceneId, nPointX, nPointZ ) ~= 1 then
			x300056_MsgBox( sceneId, selfId, "Kh�ng th� d�ch chuy�n �n khu v�c m�c ti�u." )
			return 0
		end
	end
	
	local ret = 0
	if nCount > 1  then
		-- ��Ʒ���Լ�������
		SetBagItemParam( sceneId, selfId, nItemIndex, 0, 2, nTarSceneId*100+(nCount-1) )
		LuaFnRefreshItemInfo( sceneId, selfId, nItemIndex )
		ret = 1
		
	elseif nCount <= 1  then
		-- ɾ����Ʒ
		ret = EraseItem(sceneId, selfId, nItemIndex)
	end
	
	if ret == 1  then
		--  ��t ���c��Ҷ�����T�i ����to� � еi vi�n 
		local nTeamCount = GetNearTeamCount(sceneId,selfId)
		local selfGuid = LuaFnGetGUID(sceneId,selfId)
		
		local nTarSceneName = GetSceneName(nTarSceneId)

		if nTeamCount > 0  then
			for i=0, nTeamCount-1  do
				local nPlayerId = GetNearTeamMember(sceneId,selfId, i)
				if nPlayerId ~= selfId  then
					-- ��C�i n�y ��ҷ���m�t c�i��������
					local str = "еi h�u c�a c�c h� " .. GetName(sceneId, selfId) .. " �� s� d�ng Th� еn Ch�u, v� [" .. nTarSceneName .. "], c�c h� ph�i ch�ng mu�n c�ng d�ch chuy�n? Ch� �: qu� 20 gi�y m� kh�ng quy�t �nh s� h�y b� d�ch chuy�n."
					BeginUICommand(sceneId)
						UICommand_AddInt(sceneId,x300056_g_scriptId);
						UICommand_AddInt(sceneId,nItemIndex)
						UICommand_AddInt(sceneId,selfGuid)
						UICommand_AddString(sceneId,"CallMe");
						UICommand_AddString(sceneId,str);
					EndUICommand(sceneId)
					DispatchUICommand(sceneId,nPlayerId, 1009)
					
					-- ͬʱ����Щ��Ҫ���ݼ�¼��MissionData��
					SetMissionData(sceneId,nPlayerId,MD_TDZ_TIME,LuaFnGetCurrentTime())
					SetMissionData(sceneId,nPlayerId,MD_TDZ_SCENE,nTarSceneId)
					SetMissionData(sceneId,nPlayerId,MD_TDZ_X,nPointX)
					SetMissionData(sceneId,nPlayerId,MD_TDZ_Y,nPointZ)
				end
			end
		end
		
		-- �����Լ�
		CallScriptFunction((400900), "TransferFunc",sceneId, selfId, nTarSceneId, nPointX, nPointZ)
	end

end
