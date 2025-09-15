
--������������

--MisDescBegin
--�ű���
x210238_g_ScriptId = 210238

--Ti�p th�����NPC����
x210238_g_Position_X=160.0895
x210238_g_Position_Z=156.9309
x210238_g_SceneID=2
x210238_g_AccomplishNPC_Name="Tri�u Thi�n S�"

--�����
x210238_g_MissionId = 718

--Ŀ��NPC
x210238_g_Name	="Tri�u Thi�n S�"

--�������
x210238_g_MissionKind = 13

--��ng c�p nhi�m v� 
x210238_g_MissionLevel = 1

--��ng����ngTinhӢ����
x210238_g_IfMissionElite = 0
x210238_g_IsMissionOkFail = 0		--����to� � ��0λ
--������
x210238_g_MissionName="10 n�m"
--��������
x210238_g_MissionInfo  = "    M�y l�o gi� T� ��i Thi�n Nh�n ch�ng ta v�a g�p c�c h�, Li�n c�m th�y c�c h� ��ng l� 1 v� h�c k� t�i ng�n n�m m�i g�p. N�u ���c danh s� truy�n th�, ti�n � t�t kh�ng th� l߶ng"
x210238_g_MissionInfo1 = "    Nh�ng gi� ��y vi�c quan tr�ng nh�t c�a c�c h�, l� ph�i n�m v�ng c�n c� v� h�c. Sau khi n�m v�ng c�n c�, c� th� t�m m�t v� danh s�, h�c v� c�ng uy�n th�m h�n. Sau n�y tr� th�nh m�t ��i anh h�ng, ��i hi�p s�!"
x210238_g_MissionInfo2 = "    Nh� th� n�y, ��i c�c h� ��t t�i c�p 10, h�y t�i t�m Tri�u Thi�n S� ta. M�y l�o gi� ch�ng ta s� chu�n b� m�t ph�n qu� �c bi�t cho c�c h�"
--M�c ti�u nhi�m v�
x210238_g_MissionTarget="#{MIS_dali_ZTS_002}"		
--δHo�n t�t nhi�m v�to� � npc�Ի�
x210238_g_ContinueInfo="  C�c h� �� ��t t�i c�p 10 ch�a?"
--�ύʱnpcto� � ��
x210238_g_MissionComplete="  T�t qu�, c�c h� c� th� gia nh�p m�n ph�i r�i"		


x210238_g_exp=0
x210238_g_ItemBonus={}

x210238_g_Custom	= { {id="�� ��t ��ng c�p",num=10} }--����to� � ��1λ

--MisDescEnd
--**********************************
--������ں���
--**********************************
function x210238_OnDefaultEvent( sceneId, selfId, targetId )

  --��������ɹ�C�i n�y ����
  if (IsMissionHaveDone(sceneId,selfId,x210238_g_MissionId) > 0 ) then
    return

	elseif( IsHaveMission(sceneId,selfId,x210238_g_MissionId) > 0)  then
		--������������to� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId, x210238_g_MissionName)
			AddText(sceneId, x210238_g_ContinueInfo)
		EndEvent( )
		local bDone = x210238_CheckSubmit( sceneId, selfId )
		DispatchMissionDemandInfo(sceneId,selfId,targetId,x210238_g_ScriptId,x210238_g_MissionId,bDone)
				
	--Th�a m�n�����������
  elseif x210238_CheckAccept(sceneId,selfId) > 0 then
		--��������Ti�p th�ʱ��ʾto� � ��Ϣ
		BeginEvent(sceneId)
			AddText(sceneId,x210238_g_MissionName)
			AddText(sceneId,x210238_g_MissionInfo)
			AddText(sceneId,x210238_g_MissionInfo1)			
			AddText(sceneId,x210238_g_MissionInfo2)
			
			--AddText(sceneId,"#{M_MUBIAO}")
			--AddText(sceneId,x210238_g_MissionTarget)
			--AddText(sceneId,"#{M_SHOUHUO}")
			--AddMoneyBonus( sceneId, x210238_g_MoneyBonus )
			--for i, item in x210238_g_ItemBonus do
			--	AddItemBonus( sceneId, item.id, item.num )
			--end
		EndEvent( )
		DispatchMissionInfo(sceneId,selfId,targetId,x210238_g_ScriptId,x210238_g_MissionId)
	end
end

--**********************************
--�о��¼�
--**********************************
function x210238_OnEnumerate( sceneId, selfId, targetId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x210238_g_MissionId) > 0 then
		return 
	--����ѽӴ�����
	elseif IsHaveMission(sceneId,selfId,x210238_g_MissionId) > 0 then
	    
	    local bDone = x210238_CheckSubmit( sceneId, selfId ) 
	    if( 1 == bDone ) then
	        AddNumText(sceneId, x210238_g_ScriptId, x210238_g_MissionName, 2, -1);
	    else
	        AddNumText(sceneId, x210238_g_ScriptId, x210238_g_MissionName, 1, -1);
	    end	
	    			
	--Th�a m�n�����������
	elseif x210238_CheckAccept(sceneId,selfId) > 0 then
		AddNumText(sceneId, x210238_g_ScriptId, x210238_g_MissionName, 1, -1);
	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x210238_CheckAccept( sceneId, selfId )

	--Ҫ�����to� � ǰ������
	--if IsMissionHaveDone(sceneId,selfId,645) <= 0 then
	--	return 0

	--C�n 1c�p���ܽ�
	if GetLevel( sceneId, selfId ) >= x210238_g_MissionLevel then
		return 1
	else
		return 0
	end
end

--**********************************
--Ti�p th�
--**********************************
function x210238_OnAccept( sceneId, selfId )
	--��������ɹ�C�i n�y ����
	if IsMissionHaveDone(sceneId,selfId,x210238_g_MissionId) > 0 then
		return 
	end
		
	-- ������������б�
	local ret = AddMission( sceneId,selfId, x210238_g_MissionId, x210238_g_ScriptId, 1, 0, 0 )
	if ret <= 0 then
		Msg2Player(  sceneId, selfId,"#YNh�t k� nhi�m v� c�a c�c h� �� �y" , MSG2PLAYER_PARA )
		return
	end
	
	--���������������to� � ������ź�����λ��
	--local misIndex = GetMissionIndexByID(sceneId, selfId, x210238_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
	--SetMissionByIndex(sceneId,selfId,misIndex,0,0)					--�������кŰ��������to� � ��m�t λ��0	��m�t λ��ng���/th�t b�i���

	--Msg2Player(  sceneId, selfId,"#YTi�p th�����" .. x210238_g_MissionName, MSG2PLAYER_PARA )
	Msg2Player(  sceneId, selfId,"Nh�n nhi�m v�: #Y" .. x210238_g_MissionName, MSG2PLAYER_PARA )
	local misIndex = GetMissionIndexByID(sceneId, selfId, x210238_g_MissionId)-- �i�m������T�i 20c�i������to� � ���к�
	SetMissionByIndex(sceneId,selfId,misIndex,1,1)
	
end

--**********************************
--����
--**********************************
function x210238_OnAbandon( sceneId, selfId )
	--ɾ����������б��ж�Ӧto� � ����
	DelMission( sceneId, selfId, x210238_g_MissionId )
end

--**********************************
--����
--**********************************
function x210238_OnContinue( sceneId, selfId, targetId )
	--�ύ����ʱto� � � �i�m���Ϣ
	BeginEvent(sceneId)
		AddText(sceneId,x210238_g_MissionName)
		AddText(sceneId,x210238_g_MissionComplete)

		for i, item in x210238_g_ItemBonus do
			AddItemBonus( sceneId, item.id, item.num )
		end
	EndEvent( )
	DispatchMissionContinueInfo(sceneId,selfId,targetId,x210238_g_ScriptId,x210238_g_MissionId)
end

--**********************************
--�����ng������ύ
--**********************************
function x210238_CheckSubmit( sceneId, selfId )

    local Level = GetLevel( sceneId, selfId )
    
    if( Level < 10 ) then
        return 0
    end

	return 1

end

--**********************************
--�ύ
--**********************************
function x210238_OnSubmit( sceneId, selfId, targetId, selectRadioId )
		-- ��ȫ�Լ��
		-- 1����������ng����ng��C�i n�y ����
		if IsHaveMission(sceneId,selfId,x210238_g_MissionId) <= 0 then
			return
		end
		
		-- 2��Ho�n t�t nhi�m v�to� � ������
		if x210238_CheckSubmit(sceneId, selfId) <= 0    then
			return
		end
		
		-- ��Ǯ��Kinh nghi�m
		

		
		if( x210238_g_exp > 0 ) then
		    LuaFnAddExp( sceneId, selfId, x210238_g_exp)
		end
								
		DelMission( sceneId,selfId, x210238_g_MissionId )
		--���������Ѿ�����ɹ�
		MissionCom( sceneId,selfId, x210238_g_MissionId )
		
		
end

--**********************************
--ɱ����������
--**********************************
function x210238_OnKillObject( sceneId, selfId, objdataId ,objId )

end

--**********************************
--���������¼�
--**********************************
function x210238_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x210238_OnItemChanged( sceneId, selfId, itemdataId )
end







