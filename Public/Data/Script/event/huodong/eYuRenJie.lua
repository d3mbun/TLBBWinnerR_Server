--------------------------------------------
--���˽ڻ�ű�
--Created By �ŵ·�
--̨���/��۰� 50 �޸� by л�p 2009-02-17
--------------------------------------------

--�ű���
x808079_g_ScriptId = 808079

x808079_g_StartDayTime	= 20090325				--���ʼʱ�� 2009-03-25
x808079_g_EndDayTime	= 20090405				--�����ʱ�� 2009-04-05

--Th�ng B�m B�o Ch�uID
x808079_g_YuRenBaoZhuID = 30501161
--ÿ��L�nh Th�ng B�m B�o Ch�uc�i��
x808079_g_YuRenBaoZhuCount = 1

--���˱�����
x808079_g_YuRenBianShenWanID = {38000006, 38000007, 38000008}
--ÿ��L�nh ���˱�����c�i��
x808079_g_YuRenBianShenWanCount = 1

--������͸��
x808079_g_YuRenLeTouKaID = 30504052
--ÿ��L�nh ������͸��c�i��
x808079_g_YuRenLeTouKaCount = 1

--BUFF ID
x808079_g_ImpactID = 20002		--����BUFF: 8040

--�͵�c�p����
x808079_g_LowLevel = 10

--Kinh nghi�m����
x808079_g_AwardExp = {
					5458,		--10
					6082,
					6737,
					7688,
					8701,
					10074,
					11540,
					13426,
					15781,
					18650,
					22081,
					26120,
					30814,
					36209,
					42353,
					49745,
					58478,
					68162,
					78844,
					90570,
					107100,
					110250,
					113400,
					116550,
					119700,
					122850,
					126000,
					129150,
					132300,
					135450,
					138600,
					141750,
					144900,
					148050,
					151200,
					154350,
					157500,
					160650,
					163800,
					166950,
					170100,
					173250,
					176400,
					179550,
					182700,
					185850,
					189000,
					192150,
					195300,
					198450,
					201600,
					204750,
					207900,
					211050,
					214200,
					217350,
					220500,
					223650,
					226800,
					229950,
					233100,
					236250,
					239400,
					242550,
					245700,
					248850,
					252000,
					255150,
					258300,
					261450,
					264600,
					267750,
					270900,
					274050,
					277200,
					280350,
					283500,
					286650,
					289800,
					292950,
					296100,
					299250,
					302400,
					305550,
					308700,
					311850,
					315000,
					318150,
					321300,
					324450,
					327600,
					330750,
					333900,
					337050,
					340200,
					343350,
					346500,
					349650,
					352800,
					355950,
					359100,
					362250,
					365400,
					368550,
					371700,
					374850,
					378000,
					381150,
					384300,
					387450					
						}
--**********************************
--������ں���
--**********************************
function x808079_OnDefaultEvent( sceneId, selfId, targetId )

	local ItemID = GetNumText()
	
	if(ItemID == 0) then		-- �i�m�����μ����˽ڻ��
		BeginEvent(sceneId)
			AddText(sceneId,"#{TWYRJ_090217_8}")
			AddNumText( sceneId, x808079_g_ScriptId, "#{TWYRJ_090217_2}",  6, 1 )
			AddNumText( sceneId, x808079_g_ScriptId, "#{TWYRJ_090217_3}",  6, 2 )
			AddNumText( sceneId, x808079_g_ScriptId, "#{TWYRJ_090217_4}", 13, 3 )	
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		
	elseif(ItemID == 1) then	-- �i�m��"L�nh ���˽ڵ���"
		x808079_GiveItems( sceneId, selfId, targetId )
		
	elseif(ItemID == 2) then	-- �i�m��"�μ����˽ڳ齱"
		x808079_GiveExp( sceneId, selfId, targetId )
		
	elseif(ItemID == 3) then	-- �i�m�������˽ڻ������
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_9}" )
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x808079_OnEnumerate( sceneId, selfId, targetId )
	
	--T�i ָ��ʱ����,��ʾ���μ����˽ڻ����ť
	if x808079_CheckRightTime( ) ~= 0 then
		AddNumText(sceneId, x808079_g_ScriptId, "#{TWYRJ_090217_5}", 1, 0 )
	end
	
end

--**********************************
--��⵱ǰ��ng����ng�ʱ��
--**********************************
function x808079_CheckRightTime()

	local curDayTime = GetTime2Day()
	if curDayTime >= x808079_g_StartDayTime and curDayTime <= x808079_g_EndDayTime then
		return curDayTime
	else
		return 0
	end
	
end

function x808079_GiveItemsPrecheck( sceneId, selfId, targetId )
	
	--��ng��ﵽ10c�p
	if GetLevel( sceneId, selfId ) < x808079_g_LowLevel then
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_10}" )
		return 0
	end
	
	--��⵱����ng��L�nh ����Ʒ,ÿ��m�t ��
	local lastDate = GetMissionData( sceneId, selfId, MD_YURENJIE_LASTTIME )
	local curDate = GetTime2Day( )
	if curDate <= lastDate then	--���m�t ����
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_11}" )
		return 0
	end
	
	--�����ng����BUFF
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x808079_g_ImpactID ) == 1 then
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_12}" );
		return 0
	end
	
	--���� ��o c� �� �y���ng���п�λ
	local needBagSpace = x808079_g_YuRenBaoZhuCount + x808079_g_YuRenBianShenWanCount + x808079_g_YuRenLeTouKaCount
	if ( LuaFnGetPropertyBagSpace( sceneId, selfId ) < needBagSpace ) then
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_15}" )
		x808079_ShowMsg( sceneId, selfId, "#{TWYRJ_090217_16}" )
		return 0
	end
	
	return 1
end

--**********************************
--����Th�ng B�m B�o Ch�u
--**********************************
function x808079_GiveItems(sceneId, selfId, targetId)
	
	--�����ж�
	if x808079_GiveItemsPrecheck( sceneId, selfId, targetId ) ~= 1 then
		return
	end
	
	--�����ж�ͨ��
	
	
	--��¼L�nh to� � ʱ��,��֤m�t ��m�t ��
	local curDate = GetTime2Day( )
	SetMissionData( sceneId, selfId, MD_YURENJIE_LASTTIME, curDate )
	
	--������Ʒ	
	--��Th�ng B�m B�o Ch�u	
	TryRecieveItem( sceneId, selfId, x808079_g_YuRenBaoZhuID, QUALITY_MUST_BE_CHANGE )
	
	--��������͸��
	TryRecieveItem( sceneId, selfId, x808079_g_YuRenLeTouKaID, QUALITY_MUST_BE_CHANGE )
	
	--�����˱�����(��� ��t ���cm�t c�i)
	local roll = random( 1, getn( x808079_g_YuRenBianShenWanID ) )
	local yuRenBianShenWanID = x808079_g_YuRenBianShenWanID[roll]
	if yuRenBianShenWanID ~= nil then
		bagIndex = TryRecieveItem( sceneId, selfId, yuRenBianShenWanID, QUALITY_MUST_BE_CHANGE )
		if bagIndex ~= -1 then
			--������Ʒ������
			local guid = LuaFnGetGUID( sceneId, selfId )
			SetBagItemParam( sceneId, selfId, bagIndex, 4, 2, guid - 2147483648 )
			--������Ʒ������: ������Ʒ����ƷT�i tooltips����ʾ"xxxto� � ��Ʒ"
			LuaFnSetItemCreator( sceneId, selfId, bagIndex, GetName( sceneId, selfId ) )
			LuaFnRefreshItemInfo( sceneId, selfId, bagIndex )
		end
	end
	
	--��BUFF
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, x808079_g_ImpactID, 0 )
	
	--��ʾ	
	x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_17}" )
	
	--ͳ����ƷL�nh �˴�
	AuditYuRenJie(sceneId, selfId)
end

function x808079_GiveExpPrechek(sceneId, selfId, targetId)

	--�����ng������Ʒ
	if GetItemCount( sceneId, selfId, x808079_g_YuRenLeTouKaID ) == 0 then
		x808079_ReturnMsg(sceneId, selfId, targetId, "#{TWYRJ_090217_18}");
		return 0
	end
	
	--�����ng���п�����Ʒ
	if LuaFnGetAvailableItemCount(sceneId, selfId, x808079_g_YuRenLeTouKaID) < x808079_g_YuRenLeTouKaCount then
		x808079_ReturnMsg(sceneId, selfId, targetId, "#{ResultText_158}");
		return 0
	end
	
	--�жϽ�����ng�����Kinh nghi�m
	local lastDate = GetMissionData( sceneId, selfId, MD_TW_YURENJIE_LAST_GET_EXP_DATE )
	local curDate = GetTime2Day( )
	
	if curDate <= lastDate then	--���m�t ����
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_19}" )
		return 0
	end
	
	--�����ng����BUFF
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x808079_g_ImpactID ) == 1 then
		x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_20}" );
		return 0
	end
	
	return 1

end

function x808079_GiveExp(sceneId, selfId, targetId)
	
	--�������
	if x808079_GiveExpPrechek( sceneId, selfId, targetId ) ~= 1 then
		return
	end
	
	--�������ͨ��
	
	--��¼Kinh nghi�mL�nh to� � ʱ��,��֤m�t ��m�t ��
	local curDate = GetTime2Day( )
	SetMissionData( sceneId, selfId, MD_TW_YURENJIE_LAST_GET_EXP_DATE, curDate )
	
	--����Ʒ
	if LuaFnDelAvailableItem( sceneId, selfId, x808079_g_YuRenLeTouKaID, x808079_g_YuRenLeTouKaCount ) == 0 then
		x808079_ShowMsg( sceneId, selfId, "del fail")
		return
	end
	
	--��Kinh nghi�m
	local level = GetLevel( sceneId, selfId )
	local index = level - 9
	local AddExp = 0
	if ( index > 0 ) and ( index <= getn( x808079_g_AwardExp ) ) then
		AddExp = x808079_g_AwardExp[index]
		LuaFnAddExp( sceneId, selfId, AddExp )
	end
	
	x808079_ReturnMsg( sceneId, selfId, targetId, "#{TWYRJ_090217_21}#G"..AddExp )
	
	--ͳ����ƷL�nh �˴�
	AuditYuRenJieExp( sceneId, selfId, AddExp )
end

--**********************************
--����ҷ��ʼ�
--**********************************
function x808079_OnPlayerLogin( sceneId, selfId )
	
	local curDate = x808079_CheckRightTime( )
	if curDate ~= 0 then
		local lastDate = GetMissionData(sceneId, selfId, MD_TW_YURENJIE_LAST_LOGIN_DATE)
		if lastDate < curDate then
			LuaFnSendSystemMail( sceneId, GetName(sceneId,selfId), "#{TWYRJ_090217_6}" )
			SetMissionData(sceneId, selfId, MD_TW_YURENJIE_LAST_LOGIN_DATE, curDate)
		end
	end
	
end

--**********************************
--�رնԻ���
--**********************************
function x808079_CloseDlg(sceneId, selfId, targetId)

	BeginUICommand( sceneId )
	UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 1000 )
	
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x808079_ShowMsg( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent()
	DispatchMissionTips( sceneId, selfId )
	
end

--**********************************
--NPCTr� v���Ϣ
--**********************************
function x808079_ReturnMsg( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent()
	DispatchEventList( sceneId, selfId, targetId )
	
end
