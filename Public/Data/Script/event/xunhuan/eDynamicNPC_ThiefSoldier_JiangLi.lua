
--************************************************************************
--MisDescBegin
--�ű���
x050015_g_ScriptId	= 050015

--MisDescEnd
--************************************************************************


x050015_ScoreMin = 100

x050015_TitleLevel1 = 131
x050015_TitleLevel2 = 132
x050015_TitleLevel3 = 133
x050015_TitleLevel4 = 134
x050015_TitleLevel5 = 135

--�̽�����ID	--add by xindefeng
x050015_g_TangJinMingTieID = 30505205
--m�t ��ɾ���̽���������	--add by xindefeng
x050015_g_DelMingTieCount = 1

--**********************************
--������ں���
--**********************************
function x050015_OnDefaultEvent( sceneId, selfId, targetId )
	local SelNum = GetNumText()		
	if SelNum == 1 then	
		x050015_DuiHuan( sceneId, selfId, targetId )
	elseif SelNum == 2 then
		x050015_ChaXun( sceneId, selfId, targetId )
	elseif SelNum == 3 then	--�m�t �����Զ���ƺ�--add by xindefeng
		x050015_ZiDingYi(sceneId, selfId, targetId)
	elseif SelNum == 22 then	--����L�nh ����Զ���ƺ�--add by xindefeng
		x050015_MsgBox(sceneId, selfId, targetId, "#{TangJinMingTie_Help}")
	elseif SelNum == 255 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end
end

--**********************************
--�о��¼�
--**********************************
function x050015_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId,x050015_g_ScriptId,"Ta ph�i �i danh x�ng c�a ta",6,1)
	AddNumText(sceneId,x050015_g_ScriptId,"Ta mu�n tra �i�m t�ch l�y c�a ta",6,2)	
	AddNumText(sceneId,x050015_g_ScriptId,"Nh�n l�nh danh hi�u bang h�i t� l�p",6,3)--add by  xindefeng
	AddNumText(sceneId,x050015_g_ScriptId,"Li�n quan nh�n l�nh danh hi�u bang h�i t� l�p", 11, 22 )--add by xindefeng
  AddNumText(sceneId,x050015_g_ScriptId,"R�i b�........",8, 255 )
end

function x050015_GetCurTitle( sceneId, selfId )    --���ݻ���ȡ �i�m�ƺ�(�ƺű��)
    local Score = GetMissionData( sceneId, selfId, MD_ThiefSoldierInvade )
    
    
    local Title = 0
    
    if Score >= 100 and Score < 500 then
        Title = x050015_TitleLevel1
        
    end
    
    if Score >= 500 and Score < 5000 then
        Title = x050015_TitleLevel2
    end
    
    if Score >= 5000 and Score < 30000 then
        Title = x050015_TitleLevel3
    end
    
    if Score >= 30000 and Score < 65000 then
        Title =  x050015_TitleLevel4
    end
    
    if Score >= 65000 then
        Title =  x050015_TitleLevel5
    end
  
    return Title
     
end

function x050015_GetTitleName( Title )    --���ݳƺű��ȡ �i�m�ƺ�����

    local TitleName = ""

    if Title == x050015_TitleLevel1 then
        TitleName = "B�nh T�c Binh S�"
    elseif Title == x050015_TitleLevel2 then
        TitleName = "B�nh T�c еi Tr߷ng"
    elseif Title == x050015_TitleLevel3 then
        TitleName = "B�nh T�c Th�ng L�nh"
    elseif Title == x050015_TitleLevel4 then
        TitleName = "��ng Kh�u T߾ng Qu�n"
    elseif Title == x050015_TitleLevel5 then
        TitleName = "��ng Kh�u Nguy�n So�i"
    elseif Title > x050015_TitleLevel5 then
        TitleName = "��ng Kh�u Nguy�n So�i"
    else
        TitleName = "B�nh T�c Binh S�"
    end

    return TitleName
end


--**********************************
--Ta ph�i �i danh x�ng c�a ta
--**********************************
function x050015_DuiHuan( sceneId, selfId, targetId )
	local score = GetMissionData( sceneId, selfId, MD_ThiefSoldierInvade )	--��ȡ�ﹱ����
  if score < 100 then
   x050015_MsgBox( sceneId, selfId, targetId,"  C�ng hi�n c�a c�c h� v�n kh�ng �� v�i danh x�ng ��t ���c. Xin ti�p t�c n� l�c" )
   return
  end  
  
  local OldTitle = GetTitle(sceneId, selfId, 6)
  local CurTitle = x050015_GetCurTitle( sceneId, selfId )
  
  local strText = ""
  if OldTitle == x050015_TitleLevel5 then
      strText = format( "  Ng߽i �� c� danh hi�u cao nh�t r�i!" )
  elseif( CurTitle > OldTitle  ) then
      AwardTitle( sceneId, selfId,  6, CurTitle )  --��ԭ��to� � �ƺ��滻
      DispatchAllTitle( sceneId, selfId )          --ˢ�¿ͻ��˳ƺ�
      local TitleName = x050015_GetTitleName( CurTitle )
      strText = format( "  Kh� l�m, Tri�u ��nh c�ng ���c an �i v� c�ng hi�n c�a Vu ch� s�, �c bi�t �y th�c ta nh�n danh x�ng %s. Hy v�ng c�c h� c� th� ti�p t�c ra s�c c�ng hi�n d�p t�c",  TitleName )      
  else
      strText = format( "  C�ng hi�n c�a c�c h� v�n kh�ng �� v�i danh x�ng ��t ���c. Xin ti�p t�c n� l�c" )
  end
  
  x050015_MsgBox( sceneId, selfId, targetId, strText )	

end
--**********************************
--Ta mu�n tra �i�m t�ch l�y c�a ta
--**********************************
function x050015_ChaXun( sceneId, selfId, targetId )
	score = GetMissionData( sceneId, selfId, MD_ThiefSoldierInvade )
	local strText = format( " �i�m t�ch l�y c�a c�c h� hi�n l� %d, Xin ti�p t�c n� l�c", score )
	x050015_MsgBox( sceneId, selfId, targetId, strText )
end

--**************************************************
--�m�t ���to� � �Զ�����ƺ�	--add by xindefeng
--**************************************************
function x050015_ZiDingYi( sceneId, selfId, targetId )
  --��������ng��������
  local guildid	= GetHumanGuildID(sceneId, selfId)  
  if(guildid == -1)then
  	x050015_MsgBox(sceneId, selfId, targetId, "    Trao �i th�t b�i, c�c h� v�n ch�a gia nh�p b�t k� bang ph�i n�o.#W")
  	return
  end
	
	--��������ng����"�̽�����"
  local count = GetItemCount(sceneId, selfId, x050015_g_TangJinMingTieID)
  if(count < 1)then
  	x050015_MsgBox(sceneId, selfId, targetId, "    бi th�t b�i, c�n #YN�ng kim danh thi�p#W")
  	return
  end
  count = LuaFnGetAvailableItemCount(sceneId, selfId, x050015_g_TangJinMingTieID)
  if(count < 1)then
  	x050015_MsgBox(sceneId, selfId, targetId, "    бi th�t b�i, ki�m tra #YN�ng kim danh thi�p #Wc� b� kho� hay kh�ng!")
  	return
  end
  
  --֪ͨServer����L�nh �ƺ���
  LuaFnDrawGuildPositionName(sceneId, selfId, targetId)
end

--**************************************************
--��Serverֱ�ӵ���	--add by xindefeng
--**************************************************
function x050015_OnDrawPositonName_Succ( sceneId, selfId )  
  --ɾ��"�̽�����"
  local ret = LuaFnDelAvailableItem(sceneId, selfId, x050015_g_TangJinMingTieID, x050015_g_DelMingTieCount)
	if ret < 1  then
		x050015_MsgBox(sceneId, selfId, -1, "    бi th�t b�i, ki�m tra #YN�ng kim danh thi�p #Wc� b� kho� hay kh�ng!")
		return 0
	end
	
	return 1
end
--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x050015_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == 1 then
		x050015_DuiHuan( sceneId, selfId, targetId )
	elseif GetNumText() == 2 then
		x050015_ChaXun( sceneId, selfId, targetId )
	elseif GetNumText() == 3 then	--�m�t �����Զ���ƺ�--add by xindefeng
		x050015_ZiDingYi(sceneId, selfId, targetId)
	elseif GetNumText() == 22 then	--����L�nh ����Զ���ƺ�--add by xindefeng
		x050015_MsgBox(sceneId, selfId, targetId, "#{TangJinMingTie_Help}")	
	elseif GetNumText() == 255 then
		BeginUICommand( sceneId )
			UICommand_AddInt( sceneId, targetId )
		EndUICommand( sceneId )
		DispatchUICommand( sceneId, selfId, 1000 )
	end	
end

--**********************************
--���Ti�p th�����
--**********************************
function x050015_CheckAccept( sceneId, selfId )

	return
end

--**********************************
--Ti�p th�
--**********************************
function x050015_OnAccept( sceneId, selfId )


end

--**********************************
--����
--**********************************
function x050015_OnAbandon( sceneId, selfId )


end

--**********************************
--��������
--**********************************
function x050015_MakeCopyScene( sceneId, selfId, nearmembercount )


end

--**********************************
--����
--**********************************
function x050015_OnContinue( sceneId, selfId, targetId )

end

--**********************************
--�����ng������ύ
--**********************************
function x050015_CheckSubmit( sceneId, selfId, selectRadioId )


end

--**********************************
--�ύ
--**********************************
function x050015_OnSubmit( sceneId, selfId, targetId, selectRadioId )

end

--**********************************
--ɱ����������
--**********************************
function x050015_OnKillObject( sceneId, selfId, objdataId, objId )


end

--**********************************
--���������¼�
--**********************************
function x050015_OnEnterZone( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x050015_OnItemChanged( sceneId, selfId, itemdataId )
end

--**********************************
--�����¼�
--**********************************
function x050015_OnCopySceneReady( sceneId, destsceneId )


end

--**********************************
--����ҽ��븱���¼�
--**********************************
function x050015_OnPlayerEnter( sceneId, selfId )

end

--**********************************
--�����T�i �����������¼�
--**********************************
function x050015_OnHumanDie( sceneId, selfId, killerId )
--	x = LuaFnGetCopySceneData_Param( sceneId, x050015_g_keySD["x"] )
--	z = LuaFnGetCopySceneData_Param( sceneId, x050015_g_keySD["z"] )
--	NewWorld( sceneId, selfId, oldsceneId, x, z )
end

--**********************************
--����������ʱ���¼�
--**********************************
function x050015_OnCopySceneTimer( sceneId, nowTime )

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x050015_NotifyTip( sceneId, selfId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end

--**********************************
--�Ի�������Ϣ��ʾ
--**********************************
function x050015_MsgBox( sceneId, selfId, targetId, msg )

	BeginEvent( sceneId )
		AddText( sceneId, msg )
		AddNumText(sceneId,x050015_g_ScriptId,"R�i b�........",8, 255 )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end
