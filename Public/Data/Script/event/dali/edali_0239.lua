
--������������

--MisDescBegin
--�ű���
x210239_g_ScriptId = 210239

--Ti�p th�����NPC����
x210239_g_Position_X=160.0895
x210239_g_Position_Z=156.9309
x210239_g_SceneID=2
x210239_g_AccomplishNPC_Name="Tri�u Thi�n S�"

--�����
x210239_g_MissionId = 719
--ǰ������ID
x210239_g_MissionIdPer = 718

--Ŀ��NPC
x210239_g_Name	="Tri�u Thi�n S�"

--�������
x210239_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210239_g_MissionLevel = 10

--��ng����ngTinhӢ����
x210239_g_IfMissionElite = 0

--������
x210239_g_MissionName="Danh m�n ch�nh ph�i"
--��������
x210239_g_MissionInfo  = ""
x210239_g_MissionInfo1 = "    $N, cu�i c�ng c�c h� �� �n. #rTuy�t l�m tuy�t l�m, gi� ��y c�n c� c�a c�c h� �� luy�n t߽ng �i v�ng ch�c. V�y t�i c�u ��i m�n ph�i h�c v� c�ng cao th�m h�n c�ng l� chuy�n �߽ng nhi�n th�i."
x210239_g_MissionInfo2 = "    ��ng, c�c h� nghe kh�ng sai, trong truy�n thuy�t c�a c�u ��i m�n ph�i. Ph�i Tinh T�c l� t�y v�c ��i t�ng, ph�i Thi�n S�n l� t�y b�c k� ba, ph�i Thi�n Long l� thi�n nam chi tr�, ph�i Ti�u Dao l� xu�t th�n nh�p qu�, ph�i Nga My l� v�n ph�t tri�u t�ng, ph�i V� �ang l� ��o c�t ti�n phong, Minh Gi�o l� thi�n h� � nh�t gi�o, C�i Bang l� thi�n h� � nh�t bang, ph�i Thi�u L�m l� th�i s�n b�c �u c�a v� l�m thi�n h�."
x210239_g_MissionInfo3 = "    D� c�c h� b�i nh�p m�n ph�i n�o, �u l� b߾c tr�n con �߶ng ��i ��o quang minh, m�y l�o gi� ch�ng ta c�ng ���c th�m l�y."
x210239_g_MissionInfo4 = "    Th� n�y nh�, c�c h� �i t�m ng߶i thu nh�n c�a c�u ��i m�n ph�i, nghe h� k� �c tr�ng c�a c�c ��i m�n ph�i, sau �� ch�n l�y 1 m�n ph�i � gia nh�p. ��i �n khi c�c h� tr� th�nh � t� c�a c�u ��i m�n ph�i, h�y t�i t�m ta, ta s� m� ti�c m�ng th�nh c�ng."

--M�c ti�u nhi�m v�
x210239_g_MissionTarget="#{MIS_dali_ZTS_001}"
--δHo�n t�t nhi�m v�to� � npc�Ի�
x210239_g_ContinueInfo="    �� th�nh � t� c�a m�t trong c�u ��i m�n ph�i ch�a?"
--�ύʱnpcto� � ��
x210239_g_MissionComplete="    Xem ra c�c h� �� ch�n con �߶ng ��ng, h�y h߾ng th�ng t�i t߽ng lai!"


x210239_g_ItemBonus={}


x210239_g_IsMissionOkFail = 0		--����to� � ��0λ
x210239_g_Custom	= { {id="�� gia nh�p m�n ph�i",num=1} }--����to� � ��1λ

--x210239_g_MenpaiArray = {}


--MisDescEnd


--ȡ �i�m����������Ӧ �i�mto� � Kinh nghi�mֵ.
function x210239_GetExpByMenpaiIndex( MenPaiIndex )
    --��������to� � ����, ��t ���cӦ �i�mto� � Kinh nghi�mֵ.

    local ReturnVal = 0

    if( 0 == MenPaiIndex ) then
        ReturnVal = 3000
    end
    if( 1 == MenPaiIndex ) then
        ReturnVal = 2900
    end
    if( 2 == MenPaiIndex ) then
        ReturnVal = 2600
    end
    if( 3 == MenPaiIndex ) then
        ReturnVal = 2500
    end
    if( 4 == MenPaiIndex ) then
        ReturnVal = 2200
    end
    if( 5 == MenPaiIndex ) then
        ReturnVal = 2000
    end
    if( 6 == MenPaiIndex ) then
        ReturnVal = 1200
    end
    if( 7 == MenPaiIndex ) then
        ReturnVal = 1000
    end
    if( 8 == MenPaiIndex ) then
        ReturnVal = 900
    end

    return ReturnVal

end


--0Thi�u L�m 1Minh Gi�o 2C�i Bang 3V� �ang 4Nga My 5Tinh T�c 6Thi�n Long 7Thi�n S�n 8��ң
--��������IDȡ �i�m��������(����)
function x210239_GetMenpaiName( Menpai)
    local Name = "Kh�ng c�"

    if( 0 == Menpai ) then
         Name = "Ph�i Thi�u L�m"
    elseif( 1 == Menpai ) then
         Name = "Minh Gi�o"
    elseif( 2 == Menpai ) then
         Name = "C�i Bang"
    elseif( 3 == Menpai ) then
         Name = "Ph�i V� �ang"
    elseif( 4 == Menpai ) then
         Name = " Nga My"
    elseif( 5 == Menpai ) then
         Name = " Tinh T�c"
    elseif( 6 == Menpai ) then
         Name = " Thi�n Long"
    elseif( 7 == Menpai ) then
         Name = " Thi�n S�n"
    elseif( 8 == Menpai ) then
         Name = "Ph�i Ti�u Dao"
    end

    return Name

end

function x210239_MenpaiSort()
    local MenpaiArray = {}
    local Max0 = 3
    local ZeroCount =0

    for i=1, 9 do
        MenpaiArray[ i ] = LuaFnGetWorldGlobalData( Max0 - 1 + i )
        if( 0 == MenpaiArray[ i ] ) then
            ZeroCount = ZeroCount + 1
        end
    end

    if( 9 == ZeroCount ) then
        MenpaiArray[ 1 ] = 6
        MenpaiArray[ 2 ] = 2
        MenpaiArray[ 3 ] = 7
        MenpaiArray[ 4 ] = 5
        MenpaiArray[ 5 ] = 8
        MenpaiArray[ 6 ] = 0
        MenpaiArray[ 7 ] = 3
        MenpaiArray[ 8 ] = 4
        MenpaiArray[ 9 ] = 1
    end

    return MenpaiArray

end

--������������,ʹ���������ݵ�3,4,5,6,7
function x210239_SaveMenpaiArray( sceneId, selfId, MenpaiArray )
    --0Thi�u L�m 1Minh Gi�o 2C�i Bang 3V� �ang 4Nga My 5Tinh T�c 6Thi�n Long 7Thi�n S�n 8Ti�u Dao
		--ʹ����������3,4,5,6,7���������������.

    local MixDWORD = 0
    local CurMenpai
    local misIndex = GetMissionIndexByID(sceneId,selfId,x210239_g_MissionId)

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 1 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 2 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 3, MixDWORD)   --�����������,��T�i �������ݵ�3c�i����to� � ��16λ,�ڶ���T�i ��3c�i����to� � ��16λ

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 3 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 4 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 4, MixDWORD)   --������������,��T�i �������ݵ�4c�i����to� � ��16λ,���ķ�T�i ��4c�i����to� � ��16λ

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 5 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 6 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 5, MixDWORD)   --������������,��T�i �������ݵ�5c�i����to� � ��16λ,������T�i ��5c�i����to� � ��16λ

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 7 ] )
    MixDWORD = SetLowWord ( MixDWORD, MenpaiArray[ 8 ] )
    SetMissionByIndex( sceneId, selfId, misIndex, 6, MixDWORD)   --������������,��T�i �������ݵ�6c�i����to� � ��16λ,�ڰ˷�T�i ��6c�i����to� � ��16λ

    MixDWORD = SetHighWord( MixDWORD, MenpaiArray[ 9 ] )
    MixDWORD = SetLowWord ( MixDWORD, 0 )
    SetMissionByIndex( sceneId, selfId, misIndex, 7, MixDWORD)   --�����ھ�����,��T�i �������ݵ�7c�i����to� � ��16λ,��16λ��0

end


--**********************************
--������ں���
--**********************************
function x210239_OnDefaultEvent( sceneId, selfId, targetId )

   --x210239_GetMenpaiIndex( 9 )
  --��������ɹ�C�i n�y ����
  if (IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0)  then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId, x210239_g_MissionName)
			AddText(sceneId, x210239_g_ContinueInfo)
		EndEvent( )
		local bDone = x210239_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId,bDone)

	--Th�a m�n�����������
  elseif x210239_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		local MenpaiArray = x210239_MenpaiSort()

		BeginEvent(sceneId)
			AddText(sceneId,x210239_g_MissionName)
			AddText(sceneId,x210239_g_MissionInfo1)
			AddText(sceneId,x210239_g_MissionInfo2)
			AddText(sceneId,x210239_g_MissionInfo3)
			AddText(sceneId,x210239_g_MissionInfo4)


			local MixStr1 = ""
			local MixStr2 = ""
			for i=1, 9 do
			    if( i <= 5 ) then
			        local MenpaiName = x210239_GetMenpaiName( MenpaiArray[ i ] )
			        local MenpaiExp  = x210239_GetExpByMenpaiIndex( i - 1 )
			        local Str = "    N�u c�c h� gia nh�p " ..MenpaiName.. ", c�c h� s� ��t ���c "..MenpaiExp.." �i�m th߷ng kinh nghi�m"
			        MixStr1 = MixStr1..Str.."#r"
			    end

			    if( i>5 and i<=9 ) then
			        local MenpaiName = x210239_GetMenpaiName( MenpaiArray[ i ] )
			        local MenpaiExp  = x210239_GetExpByMenpaiIndex( i - 1 )
			        local Str = "    N�u c�c h� gia nh�p " ..MenpaiName.. ", c�c h� s� ��t ���c "..MenpaiExp.." �i�m th߷ng kinh nghi�m"
			        MixStr2 = MixStr2..Str.."#r"
			    end

			end
			AddText( sceneId, MixStr1 )
      AddText( sceneId, MixStr2 )

			--AddText(sceneId,"#{M_MUBIAO}")
			AddText(sceneId,"#{M_MUBIAO}#r"..x210239_g_MissionTarget)

			--AddText(sceneId,"#{M_SHOUHUO}")
			--AddMoneyBonus( sceneId, x210239_g_MoneyBonus )
			--for i, item in x210239_g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		--    DispatchMissionInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId)
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId, 0 )

		--x210239_OnAccept( sceneId, selfId )
		x210239_DirectAccept( sceneId, selfId, MenpaiArray )

	end
end


--ֱ��Ti�p th�����,û�о������� �i�m��
function x210239_DirectAccept( sceneId, selfId, MenpaiArray )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	end

	-- ������������б�
	local ret = AddMission( sceneId,selfId, x210239_g_MissionId, x210239_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	Msg2Player(  sceneId, selfId,"Nh�n nhi�m v�: #Y" .. x210239_g_MissionName, MSG2PLAYER_PARA )


	local misIndex = GetMissionIndexByID(sceneId,selfId,719)
	local Menpai = LuaFnGetMenPai( sceneId, selfId )

  if( Menpai >= 0 and Menpai < 9 ) then
		  SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)    --����׷�������־ 1/1
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)    --����������
  end

  x210239_SaveMenpaiArray( sceneId, selfId, MenpaiArray )

end



--**********************************
--�о��¼�
--**********************************
function x210239_OnEnumerate( sceneId, selfId, targetId )

	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0 then

	    local bDone = x210239_CheckSubmit( sceneId, selfId )
	    if( 1 == bDone ) then
	        AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 2, -1);
	    else
	        AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 1, -1);
	    end

	--Th�a m�n�����������
	elseif x210239_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x210239_g_ScriptId, x210239_g_MissionName, 1, -1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210239_CheckAccept( sceneId, selfId )

	--Ҫ�����to� � ǰ������
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionIdPer) <= 0 then
		return 0
	end

    return 1
end

--**********************************
--Ti�p th�
--**********************************
function x210239_OnAccept( sceneId, selfId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x210239_g_MissionId) > 0 then
		return
	end

	-- ������������б�
	local ret = AddMission( sceneId,selfId, x210239_g_MissionId, x210239_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end

	--���������������to� � ������ź�����λ��
	--local misIndex = GetMissionIndexByID(sceneId, selfId, x210239_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
	--SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���

	Msg2Player(  sceneId, selfId,"Nh�n nhi�m v�: #Y" .. x210239_g_MissionName, MSG2PLAYER_PARA )


	misIndex = GetMissionIndexByID(sceneId,selfId,719)
	local Menpai = LuaFnGetMenPai( sceneId, selfId )
  if( Menpai >= 0 and Menpai < 9 ) then
		  SetMissionByIndex( sceneId, selfId, misIndex, 1, 1)    --����׷�������־ 1/1
	    SetMissionByIndex( sceneId, selfId, misIndex, 0, 1)    --����������
  end

end

--**********************************
--����
--**********************************
function x210239_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x210239_g_MissionId )
end

--**********************************
--����
--**********************************
function x210239_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x210239_g_MissionName)
		AddText(sceneId,x210239_g_MissionComplete)

		for i, item in x210239_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x210239_g_ScriptId,x210239_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210239_CheckSubmit( sceneId, selfId )

    local MenPai = GetMenPai( sceneId, selfId )

    if( MenPai > 8 ) then
        return 0
    end

    if( MenPai < 0 ) then
        return 0
    end

	return 1

end


--***********************************************
--����������ɺʹ�T�i ����������to� � �����������Kinh nghi�m
--***********************************************
function x210239_CalculatePlayerExp( sceneId, selfId )
    local Exp = 0
    local MenpaiArray ={}
    for i=1, 9 do
        MenpaiArray[ i ] = 0
    end

    if IsHaveMission(sceneId,selfId,x210239_g_MissionId) > 0 then
        local misIndex = GetMissionIndexByID(sceneId, selfId, x210239_g_MissionId)

        local MixDWORD
        local High
        local Low
        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 3)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 1 ] = High
        MenpaiArray[ 2 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 4)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 3 ] = High
        MenpaiArray[ 4 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 5)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 5 ] = High
        MenpaiArray[ 6 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 6)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 7 ] = High
        MenpaiArray[ 8 ] = Low

        MixDWORD = GetMissionParam(sceneId, selfId, misIndex, 7)
        High = GetHighWord( MixDWORD )
        Low = GetLowWord( MixDWORD )
        MenpaiArray[ 9 ] = High

    end

    local MenpaiID = LuaFnGetMenPai( sceneId, selfId )

    for i=1, 9 do
        if( MenpaiArray[ i ] == MenpaiID ) then
            Exp = x210239_GetExpByMenpaiIndex( i - 1 )
        end
    end

    return Exp
end
--**********************************
--�ύ
--**********************************
function x210239_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		-- ��ȫ�Լ��
		-- 1����������ng����ng��C�i n�y ����
		if IsHaveMission(sceneId,selfId,x210239_g_MissionId) <= 0 then
			return
		end

		-- 2��Ho�n t�t nhi�m v�to� � ������
		if x210239_CheckSubmit(sceneId, selfId) <= 0    then
			return
		end

		local nPlayerExp = x210239_CalculatePlayerExp( sceneId, selfId )


		-- ��Ǯ��Kinh nghi�m
		LuaFnAddExp( sceneId, selfId, nPlayerExp)

		DelMission( sceneId,selfId, x210239_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId, x210239_g_MissionId )

		local MenpaiID = LuaFnGetMenPai( sceneId, selfId )
    local MenpaiName = x210239_GetMenpaiName( MenpaiID )

    local PlayerName = GetName( sceneId, selfId )
    local PlayerSex=GetSex(sceneId,selfId)

    local strSex = ""
    if PlayerSex == 0 then
        strSex = "mu�i �y "
    else
        strSex = "huynh �y "
    end

    local SysStr = "#YTri�u Thi�n S� h�t to#W: b� b�ng h�u c�a T� ��i Thi�n Nh�n #{_INFOUSR"..PlayerName .."} �� tr� th�nh"..MenpaiName.." � t�, m�y huynh �, h�y t�i ch�c m�ng"..strSex.."N�o! #W"

    --local SysStr = "#YTri�u Thi�n Sߴ�: �Ĵ�����to� � ����$N�Ѿ���Ϊ��"..MenpaiName.."to� � ����,�ϸ����c�i,m�t �����: ����ɣ�#W"
    
    if IsPermitAreetAddMenpai()==1 then --modi:lby20071107���ּ���������ng��֪ͨ���
    	BroadMsgByChatPipe( sceneId, selfId, SysStr, 4 )
		end


end

--**********************************
--ɱ����������
--**********************************
function x210239_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--���������¼�
--**********************************
function x210239_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210239_OnItemChanged( sceneId, selfId, itemdataId )
end







