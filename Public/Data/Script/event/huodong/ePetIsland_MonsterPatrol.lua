--Huy�n V� ��o����Ѳ��
--�ˢ�ֽű�
--��ͨ

--�ű���
x808068_g_ScriptId = 808068;

--�������� �� ˽�����ݱ��
x808068_g_MonsterNumber = 5; --ÿ�������Ŀ
x808068_g_MonsterLifeTime = 3000000; --������ʱ��50 ph�t
x808068_g_ActivitySceneId = 39; --Huy�n V� ��o
x808068_g_ActivityScendName = "Huy�n V� ��o";

x808068_g_BookThiefID = {13400, 13401} --B�o th� thi�t t�c����ID ���m�t c�i
x808068_g_BookThiefExtAI = {286, 287} --B�o th� thi�t t�c��չAI
x808068_g_BookThiefNPCID = 807003 --B�o th� thi�t t�cNPCID
x808068_g_BookThiefLifeTime = 40*60000; --B�o th� thi�t t�c���ʱ��
x808068_g_ExistBookThief = 5 --�������5c�iB�o th� thi�t t�c����

--˽�к�������
function x808068_BroadcastLocation(sceneId, level, x, z)
	local noticeMsg = format("#PTh� l�nh chi�n �i n�y #{_BOSS3}#P��ng c�p cao �n #G%d, #Pnghe n�i c� ng߶i � g�n #GHuy�n V� ��o (%d,%d)#P �� th�y qua h�.", level, x, z)
	--PrintStr(format("%d:%d:%d:%s",level, x, z, noticeMsg));
	if nil~=noticeMsg then
		AddGlobalCountNews(sceneId, noticeMsg);
	end
end

function x808068_BroadcastNotice(sceneId)
	local index = random(3);
	local Notices = {
		"#GHuy�n V� ��o#P l� n�i c� nhi�u tr�n th� cao c�p, anh h�ng �n ��y ph�i c� b�n l�nh cao. V� trong c�c cao th� ai b�n l�nh nh�t, � nh�t #{_BOSS3}#P khi�n Tr�n Th� n�i ��y c�ng ph�i ho�ng s�, s�c m�nh v� song. Anh H�ng h�o h�n n�o c� th� �n khi�u chi�n.",
		"#GHuy�n V� ��o#P b�o �ng c�p 1, b�o �ng c�p 1, #{_BOSS3}#P �� xu�t hi�n � Huy�n V� ��o, mong c�c anh h�ng �n ��y ch� � an to�n, ch� � an to�n!",
		"#{_BOSS3}#P c�ng ti�u �i �� c� m�t t�i #GHuy�n V� ��o#P Ti�u �i n�y ���c trang b� t� m�, hu�n luy�n nghi�m t�c, chi�n �u ki�n c߶ng. mong c�c v� anh h�ng nh�m ��nh ���c th� ��nh, kh�ng ���c th� ch�y."
	};
	local noticeMsg = Notices[index];
	--PrintStr(format("%d:%s",index,noticeMsg));
	if nil~=noticeMsg then
		AddGlobalCountNews(sceneId, noticeMsg);
	end
end

function x808068_CreateMonstersByGroup(sceneId, groupId)
	local Group25 = {
		{DataId=3830, x=212.517, z=181.2889, aiType=20, aiScript=211,aiLuaExtend=808068,patrolId=5},
		{DataId=3833, x=213.217, z=180.5889, aiType=20, aiScript=212,aiLuaExtend=-1,patrolId=6},
		{DataId=3836, x=213.917, z=179.8889, aiType=20, aiScript=213,aiLuaExtend=-1,patrolId=7},
		{DataId=3839, x=211.817, z=180.5889, aiType=20, aiScript=214,aiLuaExtend=-1,patrolId=8},
		{DataId=3842, x=211.117, z=179.8889, aiType=20, aiScript=215,aiLuaExtend=-1,patrolId=9}
	};
	local Group45 = {
		{DataId=3831, x=113.6972, z=219.7326, aiType=20, aiScript=211,aiLuaExtend=808068,patrolId=10},
		{DataId=3834, x=114.3972, z=219.0326, aiType=20, aiScript=212,aiLuaExtend=-1,patrolId=11},
		{DataId=3837, x=115.0972, z=218.3326, aiType=20, aiScript=213,aiLuaExtend=-1,patrolId=12},
		{DataId=3840, x=112.9972, z=219.0326, aiType=20, aiScript=214,aiLuaExtend=-1,patrolId=13},
		{DataId=3843, x=112.2972, z=218.3326, aiType=20, aiScript=215,aiLuaExtend=-1,patrolId=14}
	};
	local Group65 = {
		{DataId=3832, x=271.3059, z=63.2789, aiType=20, aiScript=211,aiLuaExtend=808068,patrolId=15},
		{DataId=3835, x=272.0059, z=62.5789, aiType=20, aiScript=212,aiLuaExtend=-1,patrolId=16},
		{DataId=3838, x=272.7059, z=61.8789, aiType=20, aiScript=213,aiLuaExtend=-1,patrolId=17},
		{DataId=3841, x=270.6059, z=62.5789, aiType=20, aiScript=214,aiLuaExtend=-1,patrolId=18},
		{DataId=3844, x=269.9059, z=61.8789, aiType=20, aiScript=215,aiLuaExtend=-1,patrolId=19}
	};

	local MonsterGroup = {
		Group25,
		Group45,
		Group65
	};
	local LocationInfo = {
		{level=25, x=212, z=181},
		{level=45, x=113, z=219},
		{level=65, x=271, z=63}
	};
	local group = MonsterGroup[groupId];
	if nil~=group then
		local locationInfo = LocationInfo[groupId];
		for index=1, x808068_g_MonsterNumber do
			monster = group[index];
			if nil~=monster then
				local monsterId = LuaFnCreateMonster(
										sceneId, 
										monster.DataId, 
										monster.x, 
										monster.z, 
										monster.aiType,
										monster.aiScript,
										monster.aiLuaExtend
										);
				SetMonsterGroupID(sceneId, monsterId, groupId);	--ÿ���������ͬm�t c�iGroupID,���������ǿ��Ի�����Ԯ
				SetPatrolId(sceneId, monsterId, monster.patrolId); --���ù���to� � Ѳ��ID
				SetCharacterDieTime(sceneId, monsterId, x808068_g_MonsterLifeTime); --����ֻ���ָ��ʱ��
				if (GetName(sceneId, monsterId) == "V� иch Phi Thi�n Mi�u") then
					SetCharacterTitle(sceneId, monsterId, "Huy�n v� ��o trinh t�p �i tr߶ng")
				end
				--PrintStr(format("%d:monsterDataID=%d",groupId,monster.DataId));
			else
				break;
			end
		end
		--PrintNum(sceneId)
		-- Broadcast the notice of this monster group
		x808068_BroadcastNotice(sceneId);
		-- Broadcast the level and location of this monster group
		if nil~=locationInfo then
			x808068_BroadcastLocation(sceneId, locationInfo.level, locationInfo.x, locationInfo.z);
		end 
	end
end


--**********************************
--�¼��������
--**********************************
function x808068_OnDefaultEvent( sceneId, actId, param1, param2, param3, param4, param5 )
	if x808068_g_ActivitySceneId == sceneId then
		StartOneActivity( sceneId, actId, floor(300000));--Timer ����: 5 ph�t
	end
end

--**********************************
--��������
--**********************************
function x808068_OnTimer( sceneId, actId, uTime )
	if x808068_g_ActivitySceneId == sceneId then
		local RegenesisTime ={
				{groupId = 3},--0 �i�m
				{groupId = 1},--1 �i�m
				{groupId = 2},--2 �i�m
				{groupId = 3},--3 �i�m
				{groupId = 1},--4 �i�m
				{groupId = 2},--5 �i�m
				{groupId = 3},--6 �i�m
				{groupId = nil},--7 �i�m
				{groupId = nil},--8 �i�m
				{groupId = nil},--9 �i�m
				{groupId = 1},--10 �i�m
				{groupId = 2},--11 �i�m
				{groupId = 3},--12 �i�m
				{groupId = 1},--13 �i�m
				{groupId = 2},--14 �i�m
				{groupId = 3},--15 �i�m
				{groupId = 1},--16 �i�m
				{groupId = 2},--17 �i�m
				{groupId = 3},--18 �i�m
				{groupId = 1},--19 �i�m
				{groupId = 2},--20 �i�m
				{groupId = 3},--21 �i�m
				{groupId = 1},--22 �i�m
				{groupId = 2},--23 �i�m
			};
		if 5>floor(GetMinute()) then --ֻ��T�i ÿc�iСʱto� � ͷ5 ph�t�ڻ�ˢ�¹���
			local index = floor(GetHour()+1);
			local groupId = nil;
			local regenesisTime = RegenesisTime[index];
			if nil~=regenesisTime then
				groupId = regenesisTime.groupId;
			end
			if nil~=groupId then
				x808068_CreateMonstersByGroup(sceneId, groupId);
			end
		end
	end
end

--**********************************
--obj����
--**********************************
function x808068_OnDie( sceneId, objId, selfId )--C�i n�y selfId������ng����
	local killerID = selfId
	local objType = GetCharacterType( sceneId, selfId )
	if objType == 3 then --�����ng����to� � ��,��C�i n�y ID���ó�����ID
		killerID = GetPetCreator( sceneId, selfId )
	end
	
	local postable = {{87,	108},{173,	58},{234,	53},{259,	80},{243,	150},{152,	145},{75,	191},{136,	206},{184,	209},{256,	215},
										{219,	252},{176,	231},{129,	274},{74,	275},{127,	199},{44,	90},{46,	126},{45,	167},{39,	219},{75,	279},
										{103,	74},{110,	126},{112,	170},{116,	216},{145,	235},{182,	278},{180,	238},{159,	136},{222,	98},{283,	176}}
	local size = getn(postable)
	for i=1, x808068_g_ExistBookThief do
		--PrintStr(size)
		local ram = random(size)
		local ThisPos = postable[ram]
		
		for j=ram, size do
			if j+1 <= size then
				postable[j] = postable[j+1]
			end
		end
		
		size = size -1
		
		--PrintStr("after size "..size.." this create pos "..ThisPos[1].." "..ThisPos[2].." ran "..ram)
		
		local monsterType = random(getn(x808068_g_BookThiefID))
		local MonsterId = LuaFnCreateMonster(sceneId, x808068_g_BookThiefID[monsterType], ThisPos[1], ThisPos[2], 0, x808068_g_BookThiefExtAI[monsterType], x808068_g_BookThiefNPCID)
		SetCharacterDieTime(sceneId, MonsterId, x808068_g_BookThiefLifeTime)
		SetCharacterTitle(sceneId, MonsterId, "B�o th� thi�t t�c")
		--���öԹ�Ϊ�Ѻ�to� �  Ŀǰ��ng0����ng�Ѻ�to� � ,������˸ı�����Ӧto� � �����������ҾͲ��ˣ.�:-(((
		SetUnitReputationID(sceneId, killerID, MonsterId, 0)
		
	end
	
	-- #P����T�i #{_BOSS3}#P�������֮ǰ,͸¶�˾���to� � ��Ϣ: m�t Щ̰��to� � #GB�o th� thi�t t�c: #{_BOSS113}��#{_BOSS114}#PT�i #GHuy�n V� ��o#P��ʼ������to� � ���ܻ����·Ӣ�ۿ��ȥ��c�i������.
	local strText = "#{ZSSFC_090211_05}"
	BroadMsgByChatPipe(sceneId, killerID, strText, 4)
	
end
