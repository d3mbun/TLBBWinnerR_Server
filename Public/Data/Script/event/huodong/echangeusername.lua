--��ɫ����

--�ű���
x808008_g_ScriptId	= 808008
x808008_g_ChangeUsernameItem = 30008105
--������
x808008_g_Key				=
{
	["ChgU"]					= 100,	--��Ҫ��T�n
	["ChgU_Y"]				= 101,	--��Ҫ��T�n,ȷ��
	["TitP"]					= 110,	--��Ҫ����ʦͽ�ƺ�
	["TitP_Y"]				= 111,	--��Ҫ����ʦͽ�ƺ�,ȷ��
	["TitS"]					= 120,	--��Ҫ���·��޳ƺ�
	["TitS_Y"]				= 121,	--��Ҫ���·��޳ƺ�,ȷ��
	["TitG"]					= 130,	--��Ҫ���°��ƺ�
	["TitG_Y"]				= 131,	--��Ҫ���°��ƺ�,ȷ��
}

--**********************************
--�¼��������
--**********************************
function x808008_OnDefaultEvent( sceneId, selfId, targetId )

	--��ng�����޷�ִ���߼�to� � ״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
	
	local	key	= GetNumText()
	if key == x808008_g_Key["ChgU"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_ChgU}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy�t", 6, x808008_g_Key["ChgU_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitP"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_TitP}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy�t", 6, x808008_g_Key["TitP_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitS"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{ChangeName_TitS}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy�t", 6, x808008_g_Key["TitS_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	--dengxx
	elseif key == x808008_g_Key["TitG"] then
		BeginEvent( sceneId )
			AddText( sceneId, "#{BHJW_090217_1}" )
			AddNumText( sceneId, x808008_g_ScriptId, "Duy�t", 6, x808008_g_Key["TitG_Y"] )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
	------	
	elseif key == x808008_g_Key["ChgU_Y"] then
		if x808008_IsCanChangeUserName( sceneId, selfId ) == 1 then
			BeginUICommand( sceneId )
				UICommand_AddInt( sceneId, targetId )
			EndUICommand( sceneId )
			DispatchUICommand( sceneId, selfId, 5423 )
		end
	elseif key == x808008_g_Key["TitP_Y"] then
		x808008_OnRefreshPrenticeTitle( sceneId, selfId, targetId )
	elseif key == x808008_g_Key["TitS_Y"] then
		x808008_OnRefreshSpouseTitle( sceneId, selfId, targetId )
 --dengxx
  elseif key == x808008_g_Key["TitG_Y"] then
		x808008_OnRefreshGuildContriTitle( sceneId, selfId, targetId )	
	------
	end
	
end

--**********************************
--�¼��б�
--**********************************
function x808008_OnEnumerate( sceneId, selfId, targetId )
	
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu�n t�n", 6, x808008_g_Key["ChgU"] )
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu�n thay danh hi�u s� �", 6, x808008_g_Key["TitP"] )
	AddNumText( sceneId, x808008_g_ScriptId, "Ta mu�n thay danh hi�u phu th�", 6, x808008_g_Key["TitS"] )
  AddNumText( sceneId, x808008_g_ScriptId, "#{CHANGENAME_JW}", 6, x808008_g_Key["TitG"] )
end

--**********************************
--������ż�ƺ�
--**********************************
function x808008_OnRefreshSpouseTitle( sceneId, selfId, targetId )

	if LuaFnIsMarried( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "C�c h� v�n ch�a k�t h�n" )
		return
	end
	
--local	UserTitle	= LuaFnGetSpouseTitle( sceneId, selfId )
--local	i, _			= strfind( UserTitle, "*" )
--if i == nil then
--	x808008_MsgBox( sceneId, selfId, "�������ϳƺŸ�������" )
--	return
--end
	
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "C�c h� c�n c�ng t�nh nh�n t� �i tr߾c h�y �n" )
		return
	end
	
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "еi ng� n�n do phu th� c�c h� l�p n�n" )
		return
	end
	
	if GetNearTeamCount( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "T�nh nh�n c�a c�c h� kh�ng � ph� c�n" )
		return
	end

	local	ObjID0		= GetNearTeamMember( sceneId, selfId, 0 )
	local	ObjID1		= GetNearTeamMember( sceneId, selfId, 1 )
	local	SelfGUID	= LuaFnObjId2Guid( sceneId, ObjID0 )
	local	SpouGUID	= LuaFnGetSpouseGUID( sceneId, ObjID1 )
	if LuaFnIsMarried( sceneId, ObjID0 ) == 0 or
		LuaFnIsMarried( sceneId, ObjID1 ) == 0 or
		SelfGUID ~= SpouGUID then
		x808008_MsgBox( sceneId, selfId, "T�nh nh�n c�a c�c h� kh�ng c� trong �i ng�" )
		return
	end

	local	Name0			= GetName( sceneId, ObjID0 )
	local	Name1			= GetName( sceneId, ObjID1 )
	if LuaFnGetSex( sceneId, ObjID0 ) == 0 then
		LuaFnAwardSpouseTitle( sceneId, ObjID1, Name0 .. " Phu qu�n" )
	else
		LuaFnAwardSpouseTitle( sceneId, ObjID1, Name0 .. " N߽ng t�" )
	end
	DispatchAllTitle( sceneId, ObjID1 )

	if LuaFnGetSex( sceneId, ObjID1 ) == 0 then
		LuaFnAwardSpouseTitle( sceneId, ObjID0, Name1 .. " Phu qu�n" )
	else
		LuaFnAwardSpouseTitle( sceneId, ObjID0, Name1 .. " N߽ng t�" )
	end
	DispatchAllTitle( sceneId, ObjID0 )
	
	BeginEvent( sceneId )
		AddText( sceneId, "  Xin ch�c m�ng c�c h�, danh hi�u phu th� c�a c�c h� �� thay m�i!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--**********************************
--����ͽ�ܳƺ�
--**********************************
function x808008_OnRefreshPrenticeTitle( sceneId, selfId, targetId )

	if LuaFnHaveMaster( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "C�c h� kh�ng c� s� ph�" )
		return
	end
	
--local	UserTitle	= LuaFnGetShiTuTitle( sceneId, selfId )
--local	i, _			= strfind( UserTitle, "*" )
--if i == nil then
--	x808008_MsgBox( sceneId, selfId, "�������ϳƺŸ�������" )
--	return
--end
	
	if LuaFnHasTeam( sceneId, selfId ) == 0 then
		x808008_MsgBox( sceneId, selfId, "C�c h� c�n c�ng s� ph� t� �i tr߾c h�y �n" )
		return
	end
	
	if LuaFnGetTeamSize( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "еi ng� n�n do s� � c�c h� l�p n�n" )
		return
	end
	
	if GetNearTeamCount( sceneId, selfId ) ~= 2 then
		x808008_MsgBox( sceneId, selfId, "S� ph� c�a c�c h� kh�ng � ph� c�n" )
		return
	end

	local	ObjID0		= GetNearTeamMember( sceneId, selfId, 0 )
	local	ObjID1		= GetNearTeamMember( sceneId, selfId, 1 )
	local	ObjIDM
	if LuaFnIsMaster( sceneId, selfId, ObjID0 ) == 1 then
		ObjIDM				= ObjID0
	elseif LuaFnIsMaster( sceneId, selfId, ObjID1 ) == 1 then
		ObjIDM				= ObjID1
	else
		x808008_MsgBox( sceneId, selfId, "S� ph� c�a c�c h� kh�ng c� trong �i ng�" )
		return
	end
	
	local	NameM			= GetName( sceneId, ObjIDM )
	AwardShiTuTitle( sceneId, selfId, NameM .. " � t�" )
	DispatchAllTitle( sceneId, selfId )
	
	BeginEvent( sceneId )
		AddText( sceneId, "  Xin ch�c m�ng c�c h�, danh hi�u s� � c�a c�c h� �� thay m�i!" )
	EndEvent( sceneId )
	DispatchEventList( sceneId, selfId, targetId )

end

--*********************************
--���°���λ�ƺ� dengxx
--*********************************
function x808008_OnRefreshGuildContriTitle( sceneId, selfId, targetId )
  
  --��ng�����޷�ִ���߼�to� � ״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end
  
  --��ng������˰��
  if GetGuildLevel( sceneId, selfId ) < 0 then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_2}" )
		return 0
	end
	
	--������û����,���ܸ��¾�λ�ƺ�
	local	GuildName	= LuaFnGetGuildName( sceneId, selfId )
	local	i, _ = strfind( GuildName, "*" )
	if i ~= nil then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_3}" )
		return 0
	end
	
	--��ng���а���λ�ƺ�
	local currGuildContriTitle = GetGuildContriTitle(sceneId, selfId);
	if currGuildContriTitle == "" then
		x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_4}" )
		return 0
	end
	
	local i,_ = strfind(currGuildContriTitle,GuildName)
	
	--��λ�ƺ���ng����ȷ: ���øĻ����Ѿ��Ĺ���
	if i ~= nil then 
	  x808008_MsgBox( sceneId, selfId, "#{BHJW_090217_5}" )
		return 0
	else
	--���°���λ�ƺ�
	  local i,_ = strfind(currGuildContriTitle,"*")
	  local str = strsub(currGuildContriTitle,i)
	  local newGuildContriTitle = GuildName..str
	  AwardGuildContriTitle( sceneId, selfId, newGuildContriTitle)
		DispatchAllTitle( sceneId, selfId )
		
		BeginEvent( sceneId )
		  AddText( sceneId, "#{BHJW_090217_6}" )
	  EndEvent( sceneId )
	  DispatchEventList( sceneId, selfId, targetId )		
	end
	
end

--**********************************
--��ng�����ʸ����ng��ɫ����
--**********************************
function x808008_IsCanChangeUserName( sceneId, selfId )

	--��ng�����޷�ִ���߼�to� � ״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	local	UserName	= GetName( sceneId, selfId )
	local	i, _			= strfind( UserName, "*" )
	if i == nil then
		if (LuaFnGetAvailableItemCount(sceneId,selfId,x808008_g_ChangeUsernameItem) < 1) then
			x808008_MsgBox( sceneId, selfId, format("#{SQXY_09061_26}#{_ITEM%s}", x808008_g_ChangeUsernameItem) )
			return 0
		end
		-- x808008_MsgBox( sceneId, selfId, "C�c h� kh�ng ph�i l� ng߶i di d�n, ho�c c�c h� �� t�ng s�a �i t�n" )
		-- return 0
	end

	return 1

end

--**********************************
--��ɫ���ng����ǰ�������
--**********************************
function x808008_CallBackChangeUserNameBefore( sceneId, selfId )

	if x808008_IsCanChangeUserName( sceneId, selfId ) == 0 then
		return 0
	end
	
	return 1

end

--**********************************
--��ɫ���ng��������Tr� v�
--**********************************
function x808008_CallBackChangeUserNameAfter( sceneId, selfId, nRetType )

	--��ng�����޷�ִ���߼�to� � ״̬
	if LuaFnIsCanDoScriptLogic( sceneId, selfId ) ~= 1 then
		return 0
	end

	--������ϢTr� v�����
	--enum	CHANGE_NAME_RESULT
	--{
	--	CHGNAME_RE_OK					= 0 ,	// �����ɹ�
	--	CHGNAME_RE_ERROR ,					// ����th�t b�i
	--	CHGNAME_RE_DBBUSY ,					// DBѹ������,�����³���
	--	CHGNAME_RE_NAMEERROR ,			// ����Ti�p th�to� � ������
	--	CHGNAME_RE_REPEATED ,				// �����ظ�
	--};
	if nRetType == 1 then
		x808008_MsgBox( sceneId, selfId, "S�a �i th�t b�i" )
	elseif nRetType == 2 then
		x808008_MsgBox( sceneId, selfId, "DB �p l�c qu� cao, xin h�y th� l�i t� �u" )
	elseif nRetType == 3 then
		x808008_MsgBox( sceneId, selfId, "Kh�ng ch�p nh�n t�n m�i" )
	elseif nRetType == 4 then
		x808008_MsgBox( sceneId, selfId, "Tr� v� t�n c�" )
	else
		x808008_MsgBox( sceneId, selfId, "Xin ch�c m�ng c�c h�, c�c h� �� thay �i t�n th�nh c�ng!" )
		LuaFnDelAvailableItem(sceneId,selfId,30008105,1)
	end
	
	return 1

end

--**********************************
--��Ŀ��ʾ
--**********************************
function x808008_MsgBox( sceneId, selfId, str )

	if str == nil then
		return
	end

	BeginEvent( sceneId )
		AddText( sceneId, str )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )

end
