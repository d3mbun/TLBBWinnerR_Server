--T� Ch�uNPC
--������
--m�t ��

--�ű���
x001050_g_ScriptId	= 001050

x001050_g_shoptableindex	= 27

x001050_g_eventList	= { 800103, 800104 , 800106, 800101, 800102, 800108}
x001050_g_miscEventId = 311111;

x001050_g_key				= {}
x001050_g_key["buy"]= 0		--����������Ʒ
x001050_g_key["ask"]= 1		--Ki�m tra m�c � t�ng tr߷ng
x001050_g_key["rep"]= 2		--ȷ�ϲ�ѯ
x001050_g_key["i_pc"]= 5		--����������Ϣ ����=5
x001050_g_key["ask_pc"]= 6		--���� ����=6
x001050_g_key["ask_prcr"]= 7		--��ѯ��ֳto� � ����
x001050_g_key["pet_help"]= 10		--������ؽ���
x001050_g_key["pet_help_savvy"]= 11		--�Linh��������Խ���
x001050_g_key["pet_help_prcr"]= 12		--���޷�ֳ����

--**********************************
--�¼��������
--**********************************
function x001050_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent( sceneId )
		-- local name = GetName(sceneId,selfId)
		-- if name == "Admin" or name == "Root" then
			-- local petGUID_H, petGUID_L = LuaFnGetCurrentPetGUID(sceneId,selfId)
			-- local pet=GetPetTransString(sceneId,selfId,petGUID_H,petGUID_L)
			-- local str = format("#{PBB_2_A}#{_INFOUSR%s}#{PBB_2_B}#{_INFOMSG%s}#{PBB_2_C}",name,pet)
			-- BroadMsgByChatPipe(sceneId, selfId, str, 4)
		-- end
		
		AddText( sceneId, "#{OBJ_suzhou_0019}" )
		AddNumText( sceneId, x001050_g_ScriptId, "Gi�i thi�u v� tr�n th�", 11, x001050_g_key["pet_help"] )
		
		AddNumText( sceneId, x001050_g_ScriptId, "Mua � d�ng cho Tr�n Th�", 7, x001050_g_key["buy"] )
		AddNumText( sceneId, x001050_g_ScriptId, "Ki�m tra m�c t�ng tr߷ng", 6, x001050_g_key["ask"] )
		AddNumText(sceneId,x001050_g_ScriptId,"Th�ng b�o th�ng tin tr�n th�",6,x001050_g_key["i_pc"])
		AddNumText(sceneId,x001050_g_ScriptId,"Tr�n th� Giao H�u",6,x001050_g_key["ask_pc"])
		
		CallScriptFunction( 800101, "OnEnumerate", sceneId, selfId, targetId )
		CallScriptFunction( 800102, "OnEnumerate", sceneId, selfId, targetId )
		
		AddNumText(sceneId,x001050_g_ScriptId,"Ki�m tra � sinh s�n",6,x001050_g_key["ask_prcr"])

		CallScriptFunction( 800103, "OnEnumerate", sceneId, selfId, targetId )
		CallScriptFunction( 800104, "OnEnumerate", sceneId, selfId, targetId )
		CallScriptFunction( 800106, "OnEnumerate", sceneId, selfId, targetId )
		CallScriptFunction( 800108, "OnEnumerate", sceneId, selfId, targetId )

	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x001050_OnEventRequest( sceneId, selfId, targetId, eventId )
	if eventId == x001050_g_ScriptId then
		local key	= GetNumText()
		if key == x001050_g_key["pet_help"] then
			BeginEvent(sceneId)	
				AddNumText( sceneId, x001050_g_ScriptId, "Gi�i thi�u li�n quan v� tr�n th�", 11, x001050_g_key["pet_help_savvy"] )
				AddNumText(sceneId, x001050_g_ScriptId,"Gi�i thi�u v� sinh s�n",11,x001050_g_key["pet_help_prcr"]);
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif key == x001050_g_key["pet_help_savvy"] then
			BeginEvent(sceneId)	
				AddText( sceneId, "#{function_help_059}" )
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		elseif key == x001050_g_key["pet_help_prcr"] then
			BeginEvent(sceneId)						
				AddText(sceneId,"#{function_help_057}#r")
			EndEvent(sceneId)
			DispatchEventList(sceneId,selfId,targetId)
			return
		--����������Ʒ
		elseif key == x001050_g_key["buy"] then
			DispatchShopItem( sceneId, selfId,targetId, x001050_g_shoptableindex )

		--Ki�m tra m�c � t�ng tr߷ng
		elseif key == x001050_g_key["ask"] then
--			BeginEvent( sceneId )
--			AddText( sceneId, " ��ѯm�t ��C�n ��ȡ#{_MONEY100}to� � ����." ) -- zchw
--			AddNumText( sceneId, x001050_g_ScriptId, "X�c nh�n", -1, x001050_g_key["rep"] )
--			EndEvent( sceneId )
--			DispatchEventList( sceneId, selfId, targetId )

		--ȷ�ϲ�ѯ
--		elseif key == x001050_g_key["rep"] then
			x001050_OnConfirm( sceneId, selfId, targetId )
		--����������Ϣ/����
		elseif key == x001050_g_key["i_pc"] or key == x001050_g_key["ask_pc"] then
			local sel = GetNumText();
			CallScriptFunction( x001050_g_miscEventId, "OnEnumerate",sceneId, selfId, targetId, sel)
		--ȷ�ϲ�ѯ
		elseif key == x001050_g_key["ask_prcr"] then
			LuaFnGetPetProcreateInfo(sceneId, selfId);
		else
		end

	--�����¼�
	else
		for i, findId in x001050_g_eventList do
			if eventId == findId then
				CallScriptFunction( eventId, "OnDefaultEvent", sceneId, selfId, targetId )
				return
			end
		end
	end
end

--**********************************
--ȷ�ϲ�ѯ
--**********************************
function x001050_OnConfirm( sceneId, selfId, targetId )
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
		UICommand_AddInt( sceneId, 6 )				--���޲�ѯ��֧
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 3 )	--�������޽���
end

--**********************************
--Ki�m tra m�c � t�ng tr߷ng
--**********************************
function x001050_OnInquiryForGrowRate( sceneId, selfId, petHid, petLid )
--local	num		= LuaFnGetPetCount( sceneId, selfId )
--if num <= 0 or index < 0 or index >= num then
--	x001050_MsgTip( sceneId, selfId, "  �Բ���,��û��ѡ������!" )
--	return 0
--end

	-- ���C�i n�y �����Ѿ���ѯ��������,�͸����m�t c�i��ʾ,Ȼ��T�i �۶�����
	if LuaFnIsPetGrowRateByGUID(sceneId, selfId, petHid, petLid) > 0   then
		BeginEvent( sceneId )
			AddText( sceneId, "Tr�n th� �� ���c ki�m tra s� t�ng tr߷ng" )
		EndEvent( sceneId )
		DispatchMissionTips( sceneId, selfId )
		
		return
	end
	
	local PlayerMoney = GetMoney( sceneId, selfId ) +  GetMoneyJZ(sceneId, selfId)  --�����ռ� Vega
	if PlayerMoney < 100 then
		x001050_MsgTip( sceneId, selfId, "  Xin l�i b�n �ang thi�u ng�n l��ng #{_EXCHG100}!" )
		return 0
	end

	local	lev		= LuaFnGetPetLevelByGUID( sceneId, selfId, petHid, petLid )
	if lev < 1 then -- zchw 
		x001050_MsgTip( sceneId, selfId, "  Xin L�i ,Tr�n th� c�a b�n ch�a ��t ��ng c�p 10" )
		return 0
	end

	--�۳���Ǯ
	local costJ , costM = LuaFnCostMoneyWithPriority( sceneId, selfId, 100 )		--�����ռ� Vega
	if costM ~= nil and costJ ~= nil then
		if costJ > 0 then
			local str = format("B�n �� chi #{_EXCHG%d}",costJ ) 
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
		end
		if costM > 0 then
			local str = format("B�n �� chi #{_MONEY%d}",costM ) 
			Msg2Player( sceneId, selfId, str, MSG2PLAYER_PARA )
		end
		Msg2Player( sceneId, selfId, "Ki�m tra t�ng tr߷ng tr�n th�!", MSG2PLAYER_PARA )
	else
		return
	end

	local	nGrowLevel	= LuaFnGetPetGrowRateByGUID( sceneId, selfId, petHid, petLid )
	local	strTbl			= { "S� C�p", "Xu�t S�c", "Ki�t Xu�t", "Tr�c Vi�t", "To�n M�" }
	if( nGrowLevel < 1 or nGrowLevel > getn( strTbl ) ) then
		nGrowLevel				= 1
	end
	local	strLevel		= strTbl[nGrowLevel]

	--����ȡ���ݴ���Client
	BeginUICommand( sceneId )
		UICommand_AddString( sceneId, "key="..1 )						--�ؼ���,1��ʾ�ɹ�ִ��
		UICommand_AddString( sceneId, "rat="..nGrowLevel )	--�ɳ���
		UICommand_AddString( sceneId, "gld="..100 )					--���ѽ�Ǯ
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 4 )
	
	--����ѯto� � ����Ϊ����������,���ҳɳ��ʲ�ѯ�����ng3��4��5ʱ,�������繫��
	local	rnd			= random( 4 )
	local	msg			= {}
	local	typ			= LuaFnGetPetTypeByGUID( sceneId, selfId, petHid, petLid )
	if( nGrowLevel >= 4 and nGrowLevel <= 5 and typ ~= 2 ) then -- zchw
		if ( sceneId == 1 ) then		--T� Ch�uNPC
			msg[1]	= format( "#W#{_INFOUSR%s}#{GLBB_1_A}#Y%s#Ito� � #{_INFOMSG%s}!",
				GetName( sceneId, selfId ),
				strLevel,
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ) )
			msg[2]	= format( "#W#{_INFOUSR%s}#{GLBB_2_A}#{_INFOMSG%s}#{GLBB_2_B}#Y%s#I#{GLBB_2_C}",
				GetName( sceneId, selfId ),
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				strLevel )
			msg[3]	= format( "#Im�t ֻ#{_INFOMSG%s}#{GLBB_3_A}#Y%s#I#{GLBB_3_B}#{_INFOUSR%s}#{GLBB_3_C}",
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				strLevel,
				GetName( sceneId, selfId ) )
			msg[4]	= format( "#W#{_INFOUSR%s}#{GLBB_4_A}#{_INFOMSG%s}#{GLBB_4_B}#Y%s#I#{GLBB_4_C}",
				 GetName( sceneId, selfId ),
				 LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				 strLevel )
			--ȫ�򹫸�
			AddGlobalCountNews( sceneId, msg[rnd] )
		elseif ( sceneId == 0 ) then			--L�c D߽ngNPC
			msg[1]	= format( "#W#{_INFOUSR%s}#{LLBB_1_A}#Y%s#Ito� � #{_INFOMSG%s}!",
				GetName( sceneId, selfId ),
				strLevel,
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ) )
			msg[2]	= format( "#W#{_INFOUSR%s}#{LLBB_2_A}#{_INFOMSG%s}#{LLBB_2_B}#Y%s#I#{LLBB_2_C}",
				GetName( sceneId, selfId ),
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				strLevel )
			msg[3]	= format( "#Im�t ֻ#{_INFOMSG%s}#{LLBB_3_A}#Y%s#I#{LLBB_3_B}#{_INFOUSR%s}#{LLBB_3_C}",
				LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				strLevel,
				GetName( sceneId, selfId ) )
			msg[4]	= format( "#W#{_INFOUSR%s}#{LLBB_4_A}#{_INFOMSG%s}#{LLBB_4_B}#Y%s#I#{LLBB_4_C}",
				 GetName( sceneId, selfId ),
				 LuaFnGetPetTransferByGUID( sceneId, selfId, petHid, petLid ),
				 strLevel )
			--ȫ�򹫸�
			AddGlobalCountNews( sceneId, msg[rnd] )
		end
	end

	return 1
end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x001050_MsgBox( sceneId, selfId, targetId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--��ĿH� th�ng��Ϣ��ʾ
--**********************************
function x001050_MsgTip( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
