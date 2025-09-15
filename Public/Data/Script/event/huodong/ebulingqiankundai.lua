 
--���������
----------------
--�ű���
x808129_g_ScriptId = 808129;
x808129_g_PlayerSlow_LVH = 70;   --���L�nh ��c�p
x808129_g_QianKunDaiBuLingLv1 = 30008059 --m�t c�p������
x808129_g_QianKunDaiBuLing = 30504118  --����to� � 70c�p������

 
--**********************************
--������ں���
--**********************************
function x808129_OnDefaultEvent( sceneId, selfId, targetId )
	local id = GetNumText();
	if id == 1 then 
		BeginEvent(sceneId)
			AddText(sceneId, "#{XRLB_090417_02}");	
			AddNumText(sceneId, x808129_g_ScriptId, "#{XRLB_090417_03}", 6, 2);		-- "L�nh "
			EndEvent()
		DispatchEventList(sceneId, selfId, targetId);

	elseif id == 2 then

		--��ֹ��Ҳ�ͨ�� �i�m���¼�����
		local bCanSee = x808129_canSeeGainMenu(sceneId, selfId)
		if ( bCanSee == 0  ) then
			BeginEvent(sceneId)
				AddText(sceneId, "#{XRLB_090417_04}");
			EndEvent()
			DispatchEventList(sceneId, selfId, targetId);
			return 
		end

		--��鱳���ռ�
		BeginAddItem(sceneId)
		AddItem(sceneId, x808129_g_QianKunDaiBuLing, 1)
		local bBagOk = EndAddItem(sceneId, selfId)
		if bBagOk < 1 then
		  x808129_NotifyTips( sceneId, selfId, "#{XRLB_090417_05}" )
			return
		end

		-- ����������,С��70c�pto� � ��m�t c�p��,���ڵ���70c�pto� � ��m�t c�i70c�p�����
		local nBagIndex = -1
		if LuaFnGetLevel( sceneId, selfId ) < x808129_g_PlayerSlow_LVH then
		  nBagIndex = TryRecieveItem( sceneId, selfId, x808129_g_QianKunDaiBuLingLv1, 1 );
		else
		  nBagIndex = TryRecieveItem( sceneId, selfId, x808129_g_QianKunDaiBuLing, 1 );
		end
		
		if nBagIndex == -1 then
		 return
		end

		--����L�nh ��־
		SetMissionFlag(sceneId, selfId, MF_GetQianKunDai, 1)

		local guid = LuaFnObjId2Guid(sceneId, selfId)
		ScriptGlobal_AuditGeneralLog(LUAAUDIT_QIANKUNDAI_BULING_LEVEL1, guid)--�����to� � ��ng70c�pto� � ������ngm�t c�pto� � , ֻ��ng��to� � ��½to� � ռλ.

--		BeginEvent(sceneId)
--			AddText(sceneId,"#{XRLB_090417_07}");
--		EndEvent(sceneId)
--		DispatchMissionTips(sceneId,selfId)
    x808129_NotifyTips( sceneId, selfId, "#{XRLB_090417_07}" )
    x808129_NotifyMsg( sceneId, selfId,  targetId, "#{XRLB_090417_07}" )
		return

	end

end

--**********************************
--�о��¼�
--**********************************
function x808129_OnEnumerate( sceneId, selfId, targetId )

	if ( x808129_canSeeGainMenu(sceneId, selfId) == 0  ) then
		return 0
	end

	-- "����"
  AddNumText(sceneId, x808129_g_ScriptId, "#{XRLB_090417_01}", 6, 1 ) --���콭��������
end

function x808129_NotifyTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end

function x808129_NotifyMsg( sceneId, selfId,  targetId, Msg )
	BeginEvent( sceneId )
		AddText( sceneId, Msg )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )
end

--**********************************
--������ҷ��ʼ�
--**********************************
function x808129_OnPlayerLogin( sceneId, selfId )

	if x808129_canSeeGainMenu(sceneId, selfId) == 1 then
		LuaFnSendSystemMail( sceneId, GetName( sceneId, selfId ), "#{XRLB_090417_08}" )
	end

end

--**********************************
--�ж���Ҵ���ʱ����ng��T�i 2009-03-26 00: 00: 00 ǰ  ���ҵ�c�p������45c�p
--**********************************
function x808129_canSeeGainMenu( sceneId, selfId )

	--����c�p
--  if LuaFnGetLevel( sceneId, selfId ) < x808129_g_PlayerSlow_LVH then
--		return 0
--  end

  --�����ng�������
  if GetMissionFlag(sceneId, selfId, MF_GetQianKunDai)==1 then
    return 0
  end
    
	return 1;

end
