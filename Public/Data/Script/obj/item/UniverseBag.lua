--���������� Created by Dengxx
--�ű���
x300083_g_scriptId = 300083

x300083_ItemList = {
	{1,30008059},  --1
	{10,30008060}, --2
	{20,30008061}, --3
	{30,30008062}, --4
	{35,30008063}, --5
	{40,30008064}, --6
	{45,30008065}, --7
	{50,30504113}, --8
	{55,30504114}, --9
	{60,30504115}, --10
	{65,30504116}, --11
	{100,30504117}, --12
	{100,30504118}, --13 C�i n�y ��ng����to� � 70c�p��
}
--modify by qds. item :��ƷID,num:��to� � ��Ʒ����,����to� � ����ng���ó�����а�to� � .
x300083_GiftList = {}
x300083_GiftList[1]={{item=30008060,num=1},{item=30308021,num=1}}
x300083_GiftList[2]={{item=30008061,num=1},{item=10160152,num=1},{item=30008066,num=1}}
x300083_GiftList[3]={{item=30008062,num=1},{item=30607002,num=1},{item=31000006,num=1},{item=20309010,num=24}}
x300083_GiftList[4]={{item=30008063,num=1},{item=30008027,num=1},{item=20309018,num=32}}
x300083_GiftList[5]={{item=30008064,num=1},{item=31000005,num=1},{item=30008027,num=1}}
x300083_GiftList[6]={{item=30008065,num=1},{item=30008027,num=1},{item=20309012,num=50}}
x300083_GiftList[7]={{item=30008027,num=1},{item=30008027,num=1},{item=30504038,num=10},{item=20309012,num=8},{item=20310000,num=15}}
x300083_GiftList[8]={{item=30504114,num=1},{item=20309013,num=24},{item=20310000,num=15}}
x300083_GiftList[9]={{item=30504115,num=1}}
x300083_GiftList[10]={{item=30504116,num=1},{item=20310000,num=60}}
x300083_GiftList[11]={{item=30504117,num=1},{item=20310000,num=60}}
x300083_GiftList[12]={{item=30505192,num=1},{item=20310000,num=60}}
x300083_GiftList[13]={{item=30505192,num=1},{item=20310000,num=60}}

--����to� � ��ngҪ������а�to� � ��Ʒ,����m�t c�im�t c�i�ظ�,������Ʒ��������ng1,�ж�c�ito� � ��д��c�iID��.
x300083_BindGiftList = {}
x300083_BindGiftList[1]={31001228,10158133}
x300083_BindGiftList[2]={}
x300083_BindGiftList[3]={}
x300083_BindGiftList[4]={}
x300083_BindGiftList[5]={}
x300083_BindGiftList[6]={}
x300083_BindGiftList[7]={30309056}
x300083_BindGiftList[8]={30505076,50313004}
x300083_BindGiftList[9]={30505076,20500001,20501001,20502001}
x300083_BindGiftList[10]={30505076,30505076,10141108}
x300083_BindGiftList[11]={30505076,30505076}
x300083_BindGiftList[12]={50313004,50313004}
x300083_BindGiftList[13]={30505076,30505076,20500001,20501001,20502001,50313004}

x300083_FreeSpaceList = {
	{4,0},  --1
	{3,0},  --2
	{3,2},  --3
	{2,2},  --4
	{3,0},  --5
	{2,3},  --6
	{5,2},  --7
	{2,4},  --8
	{2,3},  --9
	{4,2},  --10
	{4,2},  --11
	{1,4},  --12
	{3,6},  --13
	}
x300083_SheliziID = 30900058
x300083_SheliziExp = 300000
x300083_SheliziExp65 = 6558342 --65c�p��������to� � ������Kinh nghi�m

--������to� � ����
x300083_MaxBagID = 13
--**********************************
--�¼��������
--**********************************
function x300083_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end


function x300083_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x300083_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--**********************************
--����������
--**********************************
function x300083_OnConditionCheck( sceneId, selfId )

	--У��Item��ng����Ч
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
	
--	--�����Ʒ��ng�����
--	local	bagId	= LuaFnGetBagIndexOfUsedItem( sceneId, selfId )	--������to� � λ��
--	if LuaFnLockCheck( sceneId, selfId, bagId, 0 ) < 0 then
--		x300083_MsgBox( sceneId, selfId, "#{Item_Locked}" )	--��Ʒ�Ѽ���
--		return 0
--	end

	--�����б�
	local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	local i = 1
	while x300083_ItemList[i][2] ~= itemIndex do
		i = i + 1
		if i > x300083_MaxBagID then break end
	end
	if i > x300083_MaxBagID then 
		return 0
	end 

	--Kh�ng �� ��ng c�p
	local CurLevel = LuaFnGetLevel( sceneId, selfId )
	if CurLevel < x300083_ItemList[i][1] then
		x300083_MsgBox(sceneId, selfId, "#{GMTripperObj_Resource_Info_Level_Not_Enough}")
		return 0
	end
  --������Ʒ������λ�ò���
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < x300083_FreeSpaceList[i][1]-1 ) then
	   local msg = format("#{XRLB_90226_1} %d #{XRLB_90226_2}",x300083_FreeSpaceList[i][1]-1)
	   --
     if x300083_FreeSpaceList[i][2]>0 then
	   	 msg = format("#{XRLB_90226_4} %d #{XRLB_90226_6} %d #{XRLB_90226_7}",x300083_FreeSpaceList[i][1]-1,x300083_FreeSpaceList[i][2])
	   end
	   
		 x300083_MsgBox( sceneId, selfId, msg)
	   return 0
	end
	
	--������û��λ��
--	if i >= 3 and i <= 7 then
		FreeSpace = LuaFnGetMaterialBagSpace( sceneId, selfId )
		if( FreeSpace < x300083_FreeSpaceList[i][2] ) then
		   local msg = format("#{XRLB_90226_4} %d #{XRLB_90226_6} %d #{XRLB_90226_7}",x300083_FreeSpaceList[i][1]-1,x300083_FreeSpaceList[i][2])
			 x300083_MsgBox( sceneId, selfId, msg)
		   return 0
		end
--  end
  
  return 1

end
		 
--**********************************
--���ļ�⼰�������: 
--**********************************
function x300083_OnDeplete( sceneId, selfId )

	if(0 < LuaFnDepletingUsedItem(sceneId, selfId)) then
		
		local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
		local i = 1
		while x300083_ItemList[i][2] ~= itemIndex do
			i = i + 1
			if i > x300083_MaxBagID then break end
		end
		if i > x300083_MaxBagID then 
			return 0
		end 
		--��¼��־
		local str = format("%d",x300083_ItemList[i][1]);
		local guid = LuaFnObjId2Guid(sceneId, selfId);
		
		if guid ~= nil then
			ScriptGlobal_AuditGeneralLog(LUAAUDIT_UNIVERSEBAG, guid,str);
		end	
		return 1;
	end
	return 0;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x300083_OnActivateOnce( sceneId, selfId )
	
	local itemIndex = LuaFnGetItemIndexOfUsedItem(sceneId, selfId);
	local i = 1
	while x300083_ItemList[i][2] ~= itemIndex do
		i = i + 1
		if i > x300083_MaxBagID then break end
	end
	if i > x300083_MaxBagID then 
		return 0
	end 
	
	BeginAddItem( sceneId )
	for j=1,getn(x300083_GiftList[i]) do
	  AddItem( sceneId, x300083_GiftList[i][j].item, x300083_GiftList[i][j].num )
	end
	local ret = EndAddItem( sceneId, selfId )
	if ret > 0 then
	  AddItemListToHuman(sceneId,selfId)
	else 
		return 0
	end
	
	--����to� � ��Ʒ
	local BindNum =getn(x300083_BindGiftList[i])
	if BindNum>0 then
	  for j, itemID in x300083_BindGiftList[i] do
			local BindBagIndex = TryRecieveItem( sceneId, selfId, itemID, QUALITY_CREATE_DEFAULT )
			if BindBagIndex == -1 then
			  x300083_MsgBox(sceneId, selfId,"#{QRJ_81009_05}")
			  return 0
		  end
		  LuaFnItemBind( sceneId, selfId, BindBagIndex )
		end
	end
	
  
  --45c�p��c�i300000Kinh nghi�mto� � ����������,65c�p��m�t c�i
	if i==7 or i==11 then 
		local BagIndex = TryRecieveItem( sceneId, selfId, x300083_SheliziID, QUALITY_CREATE_DEFAULT )
		if BagIndex == -1 then
			x300083_MsgBox(sceneId, selfId,"#{QRJ_81009_05}")
			return 0
		end
		--ǿ�ư�
		LuaFnItemBind( sceneId, selfId, BagIndex )
		--����������Kinh nghi�m
		if i==7 then
		  SetBagItemParam	(sceneId, selfId,BagIndex,4 ,2 , x300083_SheliziExp)
		elseif i==11 then
		  SetBagItemParam	(sceneId, selfId,BagIndex,4 ,2 , x300083_SheliziExp65)
		end
		LuaFnRefreshItemInfo( sceneId, selfId, BagIndex )
	end 	

	--��ʾ��Ϣ
	local msg = format("#{XRLB_81203_7}#{_ITEM%d}#{XRLB_81203_8}",x300083_ItemList[i][2])
	x300083_MsgBox( sceneId, selfId, msg)
	return 1;
end

--**********************************
--���������������: 
--Tr� v�: 1�����´�������0: �ж�����.
--**********************************
function x300083_OnActivateEachTick( sceneId, selfId)
	return 1; 
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x300083_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
