--�����
--����-��Բ�����±��

--�ű���
x808064_g_ScriptId = 808064
--�ʱ��--C�n ÿ��ά��
--x808064_g_StartDayTime = 7267   --�����ʱ�� 2007-9-25
--x808064_g_EndDayTime = 7283   --�����ʱ�� 2007-10-11
x808064_g_StartDayTime = 8257   --�����ʱ�� 2008-9-14,��������
x808064_g_EndDayTime = 8282   --�����ʱ�� 2008-10-09,��������

x808064_g_TuanYuanPieSn = 30505130	--��Բ�����±�ID
x808064_g_GuiHuaPieSn = 38000000		--���±�ID

--x808064_g_strPieInfo1 = "������Բ,ʮm�t ����,#c00ff00��Thi�n Long�˲���#W�ر�ΪThi�n Long���׼������Բ����,����T�i ��10��11��Ϊֹ,10c�p����to� � ���ÿ�춼����������L�nh m�t ��#c00ff00��Բ�����±�#W��#c00ff00���±�#W.ͬʱ���޹�ϵ,��ݹ�ϵ��ʦͽ��ϵ�����Զ�����L�nh m�t ��.#r"
--x808064_g_strPieInfo2 = "C�i n�y ����̫���˲������to� � ��ɣ....�"
--x808064_g_strPlayerLvErr = "�װ�to� � ���,��ﵽ10c�p������L�nh ."
--x808064_g_strNotSpace = "��to� � ����û���㹻�ռ�,�����������L�nh ."
--x808064_g_strTeamError2 = "��������µ������,��ȷ�϶Է�T�i ��Ч��Χ�ڲ���L�nh ."
--x808064_g_strTeamError3 = "������to� � ��ݹ�ϵ�����,��ȷ�϶Է���T�i ��Ч��Χ�ڲ���L�nh ."
--x808064_g_strTeamError4 = "��ȷ�϶ӳ���ngʦ��,���Ҷ�����to� � ͽ��ȫ����ng�ӳ�to� � ͽ��,ʦ����ͽ��T�i ��Ч��Χ�ڲ���L�nh ."
--x808064_g_strGetPieInfo = "������Բ,ʮm�t ����,ף����������,�����³�.�������±��� ��a cho ����."
--x808064_g_strCannotToday1 = "������˼,������Ѿ�L�nh ��#c00ff00��Բ�����±�#W��#c00ff00���±�#W��."
--x808064_g_strCannotToday2 = "������˼,������Ѿ�L�nh ������#c00ff00��Բ�����±�#W��#c00ff00���±�#W��."
--x808064_g_strCannotToday3 = "������˼,������Ѿ�L�nh �����#c00ff00��Բ�����±�#W��#c00ff00���±�#W��."
--x808064_g_strCannotToday4a = "������˼,��Ϊʦ��,�������Ѿ�L�nh ��ʦͽ#c00ff00��Բ�����±�#W��#c00ff00���±�#W��."
--x808064_g_strCannotToday4b = "������˼,��Ϊͽ��,�������Ѿ�L�nh ��ʦͽ#c00ff00��Բ�����±�#W��#c00ff00���±�#W��."


x808064_g_strPieInfo1 = "#{ZHONGQIUHUANQING_001}"
x808064_g_strPieInfo2 = "#{ZHONGQIUHUANQING_002}"
x808064_g_strPlayerLvErr = "#{ZHONGQIUHUANQING_003}"
x808064_g_strNotSpace = "#{ZHONGQIUHUANQING_004}"
x808064_g_strTeamError2 = "#{ZHONGQIUHUANQING_005}"
x808064_g_strTeamError3 = "#{ZHONGQIUHUANQING_006}"
x808064_g_strTeamError4 = "#{ZHONGQIUHUANQING_007}"
x808064_g_strGetPieInfo = "#{ZHONGQIUHUANQING_008}"
x808064_g_strCannotToday1 = "#{ZHONGQIUHUANQING_009}"
x808064_g_strCannotToday2 = "#{ZHONGQIUHUANQING_010}"
x808064_g_strCannotToday3 = "#{ZHONGQIUHUANQING_011}"
x808064_g_strCannotToday4a = "#{ZHONGQIUHUANQING_012}"
x808064_g_strCannotToday4b = "#{ZHONGQIUHUANQING_013}"


--**********************************
--������ں���
--**********************************
function x808064_OnDefaultEvent( sceneId, selfId, targetId )

	local isTime = x808064_CheckRightTime()
	if 1 ~= isTime then
		return
	end
	
	local NumText = GetNumText()

	if NumText == 101 then

		BeginEvent(sceneId)
			AddText(sceneId, x808064_g_strPieInfo1)
			AddNumText(sceneId, x808064_g_ScriptId, "T�i h� mu�n nh�n th߷ng", 6, 701 )
			AddNumText(sceneId, x808064_g_ScriptId, "Quan h� Phu Th� nh�n th߷ng", 6, 702 )
			AddNumText(sceneId, x808064_g_ScriptId, "Quan h� K�t B�i nh�n th߷ng", 6, 703 )
			AddNumText(sceneId, x808064_g_ScriptId, "Quan h� S� а nh�n th߷ng", 6, 704 )
			--AddNumText(sceneId, x808064_g_ScriptId, "ʲô��ng��Բ����?", 11, 705 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 701 then

		--��c�i���±�....
		x808064_GiveSelfPie( sceneId, selfId, targetId )

	elseif NumText == 702 then

		--������±�....
		x808064_GiveFuqiPie( sceneId, selfId, targetId )

	elseif NumText == 703 then

		--�����±�....
		x808064_GiveJiebaiPie( sceneId, selfId, targetId )

	elseif NumText == 704 then

		--��ʦͽ�±�....
		x808064_GiveShituPie( sceneId, selfId, targetId )

	elseif NumText == 705 then

		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strPieInfo2 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	end

end

--**********************************
--�о��¼�
--**********************************
function x808064_OnEnumerate( sceneId, selfId, targetId )

    local isTime = x808064_CheckRightTime()
    if 1 == isTime then
			AddNumText(sceneId, x808064_g_ScriptId, "L�nh B�nh trung thu ch�o m�ng �o�n Vi�n", 6, 101 )													
    end

end

--**********************************
--�����ng���ѽ���
--**********************************
function x808064_CheckRightTime()

	local curDayTime = GetDayTime()
	if curDayTime >= x808064_g_StartDayTime and curDayTime <= x808064_g_EndDayTime then
		return 1
	else
		return 0
	end

end

--**********************************
--��c�i���±�
--**********************************
function x808064_GiveSelfPie( sceneId, selfId, targetId )

	--�����ҵ�c�p....
	if x808064_CheckPlayerLv( sceneId, selfId, targetId ) == 0 then
		return
	end

	--������ng���Ѿ������....
	local lastDayTime = GetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE1_DAYTIME )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strCannotToday1 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--��ⱳ����ng���еط�....
	if x808064_CheckPacketSpace( sceneId, selfId, targetId ) == 0 then
		return
	end

	--������±�....
	BeginEvent(sceneId)
		AddText( sceneId, x808064_g_strGetPieInfo )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x808064_GivePlayerPie( sceneId, selfId )
	SetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE1_DAYTIME, CurDayTime )

end

--**********************************
--������±�
--**********************************
function x808064_GiveFuqiPie( sceneId, selfId, targetId )

	--�����ҵ�c�p....
	if x808064_CheckPlayerLv( sceneId, selfId, targetId ) == 0 then
		return
	end

	--��ng��2�˶���....����еi vi�n ȫ��T�i ����....
	local TeamSize = LuaFnGetTeamSize( sceneId, selfId )
	local NearTeamSize = GetNearTeamCount( sceneId, selfId )
	if TeamSize ~= 2 or TeamSize ~= NearTeamSize then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strTeamError2 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--��ng�����....
	local	ObjID0		= GetNearTeamMember( sceneId, selfId, 0 )
	local	ObjID1		= GetNearTeamMember( sceneId, selfId, 1 )
	local	SelfGUID	= LuaFnObjId2Guid( sceneId, ObjID0 )
	local	SpouGUID	= LuaFnGetSpouseGUID( sceneId, ObjID1 )
	if LuaFnIsMarried( sceneId, ObjID0 ) == 0 or LuaFnIsMarried( sceneId, ObjID1 ) == 0 or SelfGUID ~= SpouGUID then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strTeamError2 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������ng���Ѿ������....
	local lastDayTime = GetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE2_DAYTIME )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strCannotToday2 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--��ⱳ����ng���еط�....
	if x808064_CheckPacketSpace( sceneId, selfId, targetId ) == 0 then
		return
	end

	--������±�....
	BeginEvent(sceneId)
		AddText( sceneId, x808064_g_strGetPieInfo )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x808064_GivePlayerPie( sceneId, selfId )
	SetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE2_DAYTIME, CurDayTime )

end

--**********************************
--�����±�
--**********************************
function x808064_GiveJiebaiPie( sceneId, selfId, targetId )

	--�����ҵ�c�p....
	if x808064_CheckPlayerLv( sceneId, selfId, targetId ) == 0 then
		return
	end

	--��ng��2��(��)���϶���....����еi vi�n ȫ��T�i ����....
	local TeamSize = LuaFnGetTeamSize( sceneId, selfId )
	local NearTeamSize = GetNearTeamCount( sceneId, selfId )
	if TeamSize < 2 or TeamSize ~= NearTeamSize then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strTeamError3 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--��ng��ȫ�����....
	local allJieBai = 1
	local firstPlayer = GetNearTeamMember( sceneId, selfId, 0 )
	local otherPlayer
	for i=1, NearTeamSize-1 do
		otherPlayer = GetNearTeamMember( sceneId, selfId, i )
		if LuaFnIsBrother(sceneId, firstPlayer, otherPlayer) ~= 1 then
			allJieBai = 0
		end
	end
	if allJieBai == 0 then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strTeamError3 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������ng���Ѿ������....
	local lastDayTime = GetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE3_DAYTIME )
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strCannotToday3 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--��ⱳ����ng���еط�....
	if x808064_CheckPacketSpace( sceneId, selfId, targetId ) == 0 then
		return
	end

	--������±�....
	BeginEvent(sceneId)
		AddText( sceneId, x808064_g_strGetPieInfo )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x808064_GivePlayerPie( sceneId, selfId )
	SetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE3_DAYTIME, CurDayTime )

end

--**********************************
--��ʦͽ�±�
--**********************************
function x808064_GiveShituPie( sceneId, selfId, targetId )

	--�����ҵ�c�p....
	if x808064_CheckPlayerLv( sceneId, selfId, targetId ) == 0 then
		return
	end

	--��ng��2��(��)���϶���....����еi vi�n ȫ��T�i ����....
	local TeamSize = LuaFnGetTeamSize( sceneId, selfId )
	local NearTeamSize = GetNearTeamCount( sceneId, selfId )
	if TeamSize < 2 or TeamSize ~= NearTeamSize then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strTeamError4 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������ng��еi vi�n ȫ��ng�ӳ�ͽ��....
	local OkTeam = 1
	local leaderID = GetTeamLeader( sceneId, selfId )
	local otherPlayer
	for i=0, NearTeamSize-1 do
		otherPlayer = GetNearTeamMember( sceneId, selfId, i )
		if leaderID ~= otherPlayer and LuaFnIsMaster(sceneId, otherPlayer, leaderID) ~= 1 then
			OkTeam = 0
		end
	end
	if OkTeam == 0 then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strTeamError4 )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--������ng���Ѿ������....
	local lastDayTime
	if leaderID == selfId then
		lastDayTime = GetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE4A_DAYTIME )
	else
		lastDayTime = GetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE4B_DAYTIME )
	end
	local CurDayTime = GetDayTime()
	if CurDayTime <= lastDayTime then
		BeginEvent(sceneId)
			if leaderID == selfId then
				AddText( sceneId, x808064_g_strCannotToday4a )
			else
				AddText( sceneId, x808064_g_strCannotToday4b )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end

	--��ⱳ����ng���еط�....
	if x808064_CheckPacketSpace( sceneId, selfId, targetId ) == 0 then
		return
	end

	--������±�....
	BeginEvent(sceneId)
		AddText( sceneId, x808064_g_strGetPieInfo )
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

	x808064_GivePlayerPie( sceneId, selfId )
	if leaderID == selfId then
		SetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE4A_DAYTIME, CurDayTime )
	else
		SetMissionData( sceneId, selfId, MD_ZHONGQIU_TUANYUANPIE4B_DAYTIME, CurDayTime )
	end

end

--**********************************
--�����ҵ�c�p��ng�����Ҫ��
--**********************************
function x808064_CheckPlayerLv( sceneId, selfId, targetId )

	if GetLevel( sceneId, selfId ) < 10 then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strPlayerLvErr )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	else
		return 1
	end

end

--**********************************
--�����ұ����ռ���ng���㹻
--**********************************
function x808064_CheckPacketSpace( sceneId, selfId, targetId )

	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 2 then
		BeginEvent(sceneId)
			AddText( sceneId, x808064_g_strNotSpace )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return 0
	else
		return 1
	end

end

--**********************************
--�������Բ�����±��͹��±�
--**********************************
function x808064_GivePlayerPie( sceneId, selfId )

	--����Բ�����±�....
	TryRecieveItem( sceneId, selfId, x808064_g_TuanYuanPieSn, QUALITY_MUST_BE_CHANGE )

	--�����±�....
	local BagIndex = TryRecieveItem( sceneId, selfId, x808064_g_GuiHuaPieSn, QUALITY_MUST_BE_CHANGE )
	if BagIndex ~= -1 then
		--������Ʒ������....���±��Լ�������....ֻ�� ��a cho ������....����Ҫ��¼������to� � GUID....
		local guid = LuaFnGetGUID( sceneId, selfId )
		SetBagItemParam( sceneId, selfId, BagIndex, 4, 2, guid-2147483648 )
		--������Ʒ������....������Ʒ����ƷT�i tooltips����ʾ"xxxto� � ��Ʒ"....
		LuaFnSetItemCreator( sceneId, selfId, BagIndex, GetName( sceneId, selfId ) )
		LuaFnRefreshItemInfo( sceneId, selfId, BagIndex )
	end

end

--**********************************
--���Ti�p th�����
--**********************************
function x808064_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x808064_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x808064_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x808064_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x808064_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x808064_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x808064_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--���������¼�
--**********************************
function x808064_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x808064_OnItemChanged( sceneId, selfId, itemdataId )
end
