--[ ������ QUFEI 2007-12-15 16:40 UPDATE BugID 26242 ]
--����ͷ��
--�ű���
x805030_g_ScriptId = 805030

--����ͷ��UI 112730

--**********************************
--�о��¼�
--**********************************
function x805030_OnEnumerate( sceneId, selfId, targetId )
	-- ������Ϣ
	--BeginEvent(sceneId)
	--	AddText(sceneId, "�������ͷ��ű�");
	--EndEvent(sceneId)
	--DispatchMissionTips(sceneId,selfId)	
	
	-- ΪʲôҪ NPC T�n?
	local TransportNPCName=GetName(sceneId,targetId);

	BeginUICommand(sceneId)
		UICommand_AddInt(sceneId,targetId)
		UICommand_AddString(sceneId,TransportNPCName)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 112730)
	return
end

--**********************************
--����ͷ��
--**********************************
function x805030_FinishAdjust( sceneId, selfId, styleId )
	
	-- ͷ��δѡ�л�ѡ����Ч
	if styleId <= 0 then														
		x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_004}" )
		return		
	end
	
	--  �i�m������ͷ��������Ʒto� � id��������
	local ItemId, ItemCount = GetChangeHeadInfo(styleId)
		
	-- Tr� v�ֵ�Ƿ�
	if ItemId < 0 or ItemCount < 0 then
		return
	end
	
	local nItemNum = LuaFnGetAvailableItemCount( sceneId, selfId, ItemId )

	--������Ʒ��ng���û�����
	if ItemCount > nItemNum then
		x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_005}" )
		return
	end

	-- ��Ʒ���ͨ��,�ټ����ҽ�Ǯ
	local moneyJZ = GetMoneyJZ (sceneId, selfId);
	local money = GetMoney (sceneId, selfId);
	
	-- ��Ʒ�ͽ�Ǯ��ⶼͨ��
	if (moneyJZ + money >= 50000)	then
		-- ���������ͷ��(��T�i C�i n�y ������������Ʒ�ͽ�Ǯ)
		local ret = ChangePlayerHeadImage( sceneId, selfId, styleId )	
		if ret == 0  then																--�ɹ�
			x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_010}" )		
					
		-- ����Ϊ����th�t b�iʱto� � ���ִ�����Ϣ
		elseif ret == 1 then														--��ѡto� � ͷ������ҵ�ǰto� � ͷ��m�t ��
			x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_009}" )				
			return
		elseif ret == 3 then														--û��C�n ����to� � ��Ʒ�����Ʒ������
			x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_005}" )				
			return
		else
			return
		end
	
	-- Kh�ng �� ng�n l��ng.	
	else
		x805030_NotifyTip( sceneId, selfId, "#{INTERHEAD_XML_006}" )						
		return
	end
	
	-- ��������
	local message;
	if random(2) == 1 then
		message = format("#W#{_INFOUSR%s}#{INTERHEAD_XML_007}", LuaFnGetName(sceneId, selfId));
	else
		message = format("#W#{INTERHEAD_XML_011}#{_INFOUSR%s}#{INTERHEAD_XML_012}", LuaFnGetName(sceneId, selfId));
	end

	BroadMsgByChatPipe(sceneId, selfId, message, 4);
		
	-- ��¼�ɹ�Thay �i h�nh bi�u t��ng nh�n v�tto� � �����־
	AuditChangeHead( sceneId, selfId, styleId )
		
end

--**********************************
-- ��Ļ��to� � ��Ŀ��ʾ
--**********************************
function x805030_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
