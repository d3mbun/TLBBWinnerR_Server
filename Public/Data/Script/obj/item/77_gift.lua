--===============================================
--	��Ϧ��� zhangqiang
--===============================================

x300103_g_scriptId = 300103

x300103_g_GiftInfo = {
			[30504119] = {	GiftList = {						--�ʷ�˫�ɺ�
							{ItemId = 10141132, Count = 1},		--����
							{ItemId = 10124127, Count = 2},		--ʱװ
							{ItemId = 30309189, Count = 2}		--��c�p��ͯ��
							},
					NeedLevel	=	10,
					OKStr		=	"#{QXLH_090806_2}",
					FailStr		=	"#{QXLH_090806_1}"
					},
			
			[30504120] = {	GiftList = {						--LinhϬm�t  �i�m��
							{ItemId = 10141115, Count = 1},		--��ˮ����
							{ItemId = 10124127, Count = 1},		--ʱװ
							{ItemId = 30309189, Count = 1}		--��c�p��ͯ��
							},
					NeedLevel	=	10,
					OKStr		=	"#{QXLH_090806_4}",
					FailStr		=	"#{QXLH_090806_3}"
					}
			}
			
x300103_g_ImpactId = 49

--==================================
--�¼��������
--==================================
function x300103_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end



function x300103_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end

--==================================
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--==================================
function x300103_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end

--==================================
--���������������: 
--Tr� v�: 1�����´�������0: �ж�����.
--==================================
function x300103_OnActivateEachTick( sceneId, selfId)
	return 1; 
end

--==================================
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--==================================
function x300103_OnActivateOnce( sceneId, selfId )
	
	local ItemIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local GiftTable = x300103_g_GiftInfo[ItemIndex]
	if GiftTable == nil then
		return 0
	end

	BeginAddItem( sceneId )
	for i = 1, getn( GiftTable.GiftList ) do
		AddItem( sceneId, GiftTable.GiftList[i].ItemId, GiftTable.GiftList[i].Count )
	end
	local ret = EndAddItem( sceneId, selfId )
	
	if ret > 0 then
		AddItemListToHuman( sceneId, selfId )
	else
		return 0
	end
	x300103_NotifyTips( sceneId, selfId, GiftTable.OKStr )
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x300103_g_ImpactId, 0 )

	local guid = LuaFnObjId2Guid( sceneId, selfId )
	if guid ~= nil then
		local szLog = format( "%d,%d", sceneId, ItemIndex )
		ScriptGlobal_AuditGeneralLog( LUAAUDIT_77_GIFTBAG, guid, szLog )
	end

	return 1
end

--==================================
--����������
--==================================
function x300103_OnConditionCheck( sceneId, selfId )
	
	--У��Item��ng����Ч
	if( 1 ~= LuaFnVerifyUsedItem( sceneId, selfId ) ) then
		return 0
	end

	--�����б�
	local ItemIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	local GiftTable = x300103_g_GiftInfo[ItemIndex]
	if GiftTable == nil then
		return 0
	end
	
	--��c�p���
	local CurLevel = LuaFnGetLevel( sceneId, selfId )
	if CurLevel < GiftTable.NeedLevel then
		x300103_NotifyTips( sceneId, selfId, "#{GMTripperObj_Resource_Info_Level_Not_Enough}" )
		return 0
	end

	--��鱳���ռ�
	local nFreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	local nNeedSpace = 0
	for i = 1, getn( GiftTable.GiftList ) do
		nNeedSpace = nNeedSpace + GiftTable.GiftList[i].Count
	end
	nNeedSpace = nNeedSpace - 1		--���ɾȥ���ճ�m�t ��,���������1
	if nFreeSpace < nNeedSpace then
		x300103_NotifyTips( sceneId, selfId, GiftTable.FailStr )
		return 0
	end

	return 1
end

--==================================
--���ļ�⼰�������: 
--==================================
function x300103_OnDeplete( sceneId, selfId )
	
	if( 0 < LuaFnDepletingUsedItem( sceneId, selfId ) ) then
		
		local ItemIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
		local GiftTable = x300103_g_GiftInfo[ItemIndex]
		if GiftTable == nil then
			return 0
		end
	
		return 1
	end
	return 0;
end

--**********************************
--��Ŀ��Ϣ��ʾ
--**********************************
function x300103_NotifyTips( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
