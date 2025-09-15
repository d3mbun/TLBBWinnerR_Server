-- 005116
-- K�nh K�BOSS

x005116_g_PreTimeHour_1 = 0
x005116_g_PreTimeHour_2 = 0
x005116_g_PreTimeHour_3 = 0

x005116_g_Boss ={
								{x=141,z=96,	b1=884,b2=888,b3=886,n1="B�c H�i H�n Giang Ti�u Long",n2="B�c H�i xu�t �ng Ti�u Giao",n3="B�c H�i phi�n giang Ti�u Th�n"},
								{x=250,z=98,	b1=884,b2=888,b3=886,n1="��ng H�i H�n Giang Ti�u Long",n2="��ng H�i xu�t �ng Ti�u Giao",n3="��ng H�i phi�n giang Ti�u Th�n"},
								
								{x=206,z=253,	b1=884,b2=888,b3=886,n1="Nam H�i H�n Giang Ti�u Long",n2="Nam H�i xu�t �ng Ti�u Giao",n3="Nam H�i phi�n giang Ti�u Th�n"},
								{x=101,z=256,	b1=884,b2=888,b3=886,n1="T�y H�i H�n Giang Ti�u Long",n2="T�y H�i xu�t �ng Ti�u Giao",n3="T�y H�i phi�n giang Ti�u Th�n"},
								
								{x=139,z=133,	b1=885,b2=887,b3=889,n1="H�n Giang Long",n2="Xu�t �ng giao",n3="Phi�n giang th�n"}}

-- ʹ��m�t Щ������Ψm�t to� � ȫ�ֱ�������������

-- ����to� � ��ʱ��T�i ��m�t ��ҽ��뱾�������Լ�����,�����ر�.
function x005116_OnSceneTimer(sceneId)

	--  ��t ���c��ǰʱ��
	--begin modified by zhangguoxin 090207
	--local nHour = GetHourTime()
	local nHour = GetQuarterTime()
	--local temp = floor(nHour/100)*100
	
	-- ֻ��T�i  10:00 4:00 ֱ��to� � ���ʱ���ڲŶ�
	--if nHour-temp>16 and nHour-temp<40    then
	--	return
	--end
	
	local nQuarter = mod(nHour,100);
	-- ֻ��T�i  10:00 4:00 ֱ��to� � ���ʱ���ڲŶ�
	if nQuarter > 16 and nQuarter < 40    then
		return
	end
	--end modified by zhangguoxin 090207
	
	--����ֲ�: ˢ��ʱ��ˢ��5��BOSS,
	--	��45 ph�t,����BOSS,55c�p��53С�ܳ���.()
	--	50 ph�t,����BOSS,55c�p��53С�ܳ���.	()
	--	55 ph�t,m�t ��BOSS,60c�p��58С�ܳ���.	()
	--	���m�t ��BOSS����ʱH� th�ng����.	
	
	-- ��45 ph�t,ˢ��m�t ��BOSS
	if GetMinute() >= 45 and GetMinute() < 50  then 
		-- ��Сʱto� � ������Ѿ�ˢ��
		if nHour == x005116_g_PreTimeHour_1  then
			return
		end
		
		-- ��¼C�i n�y ʱ�� �i�m
		x005116_g_PreTimeHour_1 = nHour
		
		-- �����ng����ngTh�a m�n������to� � ����
		-- ��ⳡ���� x005116_g_Boss[1].b1 ��ng����ng����T�i ,
		-- ��T�i �Ͳ�������,�������С��Ȼ��ˢ����to� � ��
		if x005116_IsHaveMonster( sceneId, "B�c H�i H�n Giang Ti�u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 1, 10 )
		end
		if x005116_IsHaveMonster( sceneId, "��ng H�i H�n Giang Ti�u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 2, 11 )
		end

		
	end
	
	-- 55 ph�t,ˢ�ڶ���BOSS
	if GetMinute() >= 50 and GetMinute() < 55  then
		-- ��Сʱto� � ������Ѿ�ˢ��
		if nHour == x005116_g_PreTimeHour_2  then
			return
		end
		
		-- ��¼C�i n�y ʱ�� �i�m
		x005116_g_PreTimeHour_2 = nHour
		
		-- �����ng����ngTh�a m�n������to� � ����
		if x005116_IsHaveMonster( sceneId, "Nam H�i H�n Giang Ti�u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 3, 12 )
		end
		if x005116_IsHaveMonster( sceneId, "T�y H�i H�n Giang Ti�u Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 4, 13 )
		end
		
	end
	
	-- 60 ph�t,ˢ������BOSS
	if GetMinute() >= 55 	then
		-- ��Сʱto� � ������Ѿ�ˢ��
		if nHour == x005116_g_PreTimeHour_3  then
			return
		end
		
		-- ��¼C�i n�y ʱ�� �i�m
		x005116_g_PreTimeHour_3 = nHour
		
		-- �����ng����ngTh�a m�n������to� � ����
		if x005116_IsHaveMonster( sceneId, "H�n Giang Long" ) == 0  then
			x005116_UpDateMonster( sceneId, 5, 14 )
		end
	end
	
		
end

function x005116_IsHaveMonster( sceneId, MonsterName )
	local FlowerName = ""
	if MonsterName == "B�c H�i H�n Giang Ti�u Long" then
		FlowerName = "Nimda1";
	elseif MonsterName == "��ng H�i H�n Giang Ti�u Long" then
		FlowerName = "Nimda2";
	elseif MonsterName == "Nam H�i H�n Giang Ti�u Long" then
		FlowerName = "Nimda3";
	elseif MonsterName == "T�y H�i H�n Giang Ti�u Long" then
		FlowerName = "Nimda4";
	elseif MonsterName == "H�n Giang Long" then
		FlowerName = "Nimda5";
	end

	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		local nMonsterName = GetName(sceneId, nMonsterId)
		if nMonsterName == MonsterName or nMonsterName == FlowerName then
			bHaveMonster = 1
		end
	end
	return bHaveMonster
end

function x005116_UpDateMonster( sceneId, nIndex, nGroupId )
	
	if nIndex == 1 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,280,165,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda1")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	elseif nIndex == 2 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,280,165,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda2")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	elseif nIndex == 3 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,205,106,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda3")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	elseif nIndex == 4 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,155,250,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda4")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	elseif nIndex == 5 then
		local Tree_Index = LuaFnCreateMonster(sceneId,93,140,207,3,0,-1)
		SetCharacterName(sceneId, Tree_Index, "Nimda5")
		SetCharacterDieTime(sceneId,Tree_Index,900000)
	end

	-- �����C�i n�y ����ͷto� � ����С��
	local nMonsterNum = GetMonsterCount(sceneId)
	local bHaveMonster = 0
	for i=0, nMonsterNum-1 do
		local nMonsterId = GetMonsterObjID(sceneId,i)
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n1  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n2  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
		
		if GetName(sceneId, nMonsterId) == x005116_g_Boss[nIndex].n3  then
			LuaFnDeleteMonster(sceneId, nMonsterId)
		end
	end
	
	-- �ѹ�ȫ��������
	local nMonId
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b1, x005116_g_Boss[nIndex].x, x005116_g_Boss[nIndex].z, 19, 197, 005117)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n1)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b2, x005116_g_Boss[nIndex].x+2, x005116_g_Boss[nIndex].z, 19, 198, 005118)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n2)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "")
	
	nMonId = LuaFnCreateMonster(sceneId, x005116_g_Boss[nIndex].b3, x005116_g_Boss[nIndex].x-2, x005116_g_Boss[nIndex].z, 19, 199, 005119)
	SetCharacterName(sceneId, nMonId, x005116_g_Boss[nIndex].n3)
	SetMonsterGroupID(sceneId, nMonId, nGroupId)
	SetCharacterTitle(sceneId, nMonId, "")
	
	if nIndex == 5   then
		--������������to� � ˮ�����콭�����Ѿ����첿�³���T�i K�nh K���������Ӣ����ȥ����
		-- ˢ��BOSSto� � ʱ��,��m�t c�i���繫��
		
		local str = "H�n Giang Long th�y t�c T�m D߽ng Giang �ang tung ho�nh th�ng l�nh thu�c h� xu�t hi�n � K�nh H�! Xin c�c v� anh h�ng h�y nhanh ch�ng �i ti�u di�t!"
		BroadMsgByChatPipe(sceneId, -1, str, 4)
	end
	
	
end

