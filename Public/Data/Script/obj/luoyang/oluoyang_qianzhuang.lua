--Ǯׯ�ű�

--�ű���
x000076_g_scriptId = 000076

--��ӵ��to� � �¼�ID�б�
--g_eventList={211105,211106,211108}	

--����4c�i�洢�仨��to� � Ǯ
--Ĭ����20c�i����,��ʱ������m�t c�iC�n ����50000(����+���)
x000076_g_Box	 = {{Capacity=20,Cost=50000},
			{Capacity=40,Cost=100000},
			--{Capacity=60,Cost=200000},
			--{Capacity=80,Cost=400000}
	    }

-- �������Ĭ��to� � ���Ӻͽ����Ŀ    
x000076_g_MoneyJZ = 0
x000076_g_Money = 0

--npc �i�m��Ĭ�Ϻ���,����������ʾ�Ի����ֺ͹��ܰ�ť
function x000076_OnDefaultEvent( sceneId, selfId,targetId )
	BeginEvent(sceneId)

		--���M� ng�n kh�����to� � ��ť
		AddNumText(sceneId, 7, "M� ng�n kh�",5,-1)
		-- �i�m����ǰ����to� � �洢����
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--���Ҵ洢�����
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId,targetId,CurrentRentIndex )
		if BoxNum ~= 0 then
			AddNumText(sceneId, x000076_g_Box[BoxNum].Capacity, "Mua r߽ng ��ng � m�i", 5, -1)
		end

		--M� B�o hi�m s߽ng
		AddNumText(sceneId, 101, "M� B�o hi�m s߽ng",5,-1)
		AddNumText(sceneId, 102, "Li�n quan B�o hi�m s߽ng",11,3)
		AddNumText( sceneId, x000076_g_scriptId, "#{JZBZ_081031_02}", 11, 4)
	EndEvent(sceneId)
	DispatchEventList(sceneId,selfId,targetId)

end

function x000076_OnEventRequest( sceneId, selfId, targetId, eventId )
	if GetNumText() == -1 then
			if LuaFnGetLevel( sceneId, selfId ) < 11 then
				x000076_MsgBox( sceneId, selfId, "��ng c�p s� d�ng kho c�n c�p 11, sau khi ��t ���c, ng߽i h�y t�i t�m ta" )
				return
			end
	elseif GetNumText() == 4 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{JZBZ_081031_01}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )
		return
	end

	--M� ng�n kh�
	if eventId == 7 then
		BankBegin(sceneId, selfId, targetId)	
	--Mua r߽ng ��ng � m�i
	elseif eventId == 8 then
		-- �i�m����ǰ����to� � �洢����
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--���Ҵ洢�����
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId, targetId, CurrentRentIndex )
         
    --  �i�m����Һͽ���to� � ��Ŀ
    x000076_g_MoneyJZ = GetMoneyJZ ( sceneId, selfId )
    x000076_g_Money = GetMoney ( sceneId, selfId )
		
		-- �����Ǯ��Ŀ����
		if (x000076_g_MoneyJZ + x000076_g_Money) >= x000076_g_Box[BoxNum].Cost then
			-- ʹ�ô�����c�pto� � ��Ǯ���ĺ���
			LuaFnCostMoneyWithPriority (sceneId,selfId,x000076_g_Box[BoxNum].Cost)
			
			-- ���Ӵ洢�䲢��ʾ
			x000076_EnableBankBox( sceneId, selfId, targetId, BoxNum )
			-- M� ng�n kh�����
  		BankBegin(sceneId, selfId, targetId)
  	
		else
			x000076_MsgBox( sceneId, selfId, "C�c h� kh�ng �� ng�n l��ng"  )
		end

	elseif eventId == 101 then
		BankOpt(sceneId, selfId, targetId, "opensafebox")

	elseif eventId == 102 then
		BeginEvent( sceneId )
			AddText( sceneId, "#{YHBXX_20071220_17}" )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, targetId )

	else
		-- �i�m����ǰ����to� � �洢����
		local CurrentRentIndex = GetBankRentIndex(sceneId, selfId)
		--���Ҵ洢�����
		local	BoxNum = x000076_FindBoxNum( sceneId, selfId,targetId,CurrentRentIndex )
		
		BeginUICommand(sceneId)
			UICommand_AddInt(sceneId,x000076_g_scriptId)
			UICommand_AddInt(sceneId,targetId)
			UICommand_AddInt(sceneId,8)
			UICommand_AddString(sceneId,"OnEventRequest")
			UICommand_AddString(sceneId,"N�u mu�n mua r߽ng ch�a � m�i, ph�i t�t #{_EXCHG"..x000076_g_Box[BoxNum].Cost.."} C�c h� c� �ng � mua kh�ng?")			
		EndUICommand(sceneId)
		DispatchUICommand(sceneId,selfId, 24)		--��������to� � ѯ�ʴ������������д24
	end

end

--�Զ��庯��,�������,�򿪵� Num+1 ���c�i�洢��
function x000076_EnableBankBox( sceneId, selfId, targetId, Num )
	
	-- C�n ���ѽ�Ǯto� � ��ʾ
	x000076_MoneyChange ( sceneId, selfId, targetId, x000076_g_Box[Num].Cost, x000076_g_Money, x000076_g_MoneyJZ )

	-- �������
	EnableBankRentIndex(sceneId, selfId, Num+1)

end

--�Զ��庯��,��������,Tr� v����
function x000076_FindBoxNum( sceneId, selfId,targetId,Capacity )
	-- �i�m����������
	for i, findBox in x000076_g_Box do
		if findBox.Capacity == Capacity then
			return i
		end
	end

	return 0
end

-- ��ӡ���������to� � ��Ļ��ʾ��Ϣ
-- ����to� � ǰ��������ng: Money + MoneyJZ >= Cost
-- ��ڲ���: 	Cost		--	��������to� � �۸�
--						Money		--	��������ǰ���ӵ��to� � ��Ǯ��Ŀ
--						MoneyJZ	--	��������ǰ���ӵ��to� � ������Ŀ
function x000076_MoneyChange ( sceneId, selfId, targetId, Cost, Money, MoneyJZ )

	-- ��������to� � ����   
  local nCost = Cost
  local nMoney = 0
  local nMoneyJZ = 0
  
	-- ������Ŀ����
	if (MoneyJZ >= Cost) then
		nMoneyJZ = Cost
		nMoney = 0
		
		x000076_MsgBox( sceneId, selfId, "C�c h� �� chi #{_EXCHG"..nMoneyJZ.."} v� nh�n ���c m�t r߽ng ��ng � m�i" )
		
	-- ���Ӳ���,����ng ����+��� ��Ŀ����
	elseif (MoneyJZ > 0) and (Money > 0) and (MoneyJZ + Money) >= Cost then
		nMoneyJZ = MoneyJZ
		nMoney = Cost - MoneyJZ
		
		x000076_MsgBox ( sceneId, selfId, "C�c h� �� chi #{_EXCHG"..nMoneyJZ.."}" )
		x000076_MsgBox ( sceneId, selfId, "C�c h� �� chi #{_MONEY"..nMoney.."}"  )
		x000076_MsgBox ( sceneId, selfId, "B�n nh�n ���c m�t r߽ng ��ng � m�i" )
		
	-- û�н���,ֻ�н��
	elseif (MoneyJZ == 0) and (Money >= Cost) then
		nMoneyJZ = 0
		nMoney = Cost
		
		x000076_MsgBox ( sceneId, selfId, "C�c h� �� chi #{_MONEY"..nMoney.."} v� nh�n ���c m�t r߽ng ��ng � m�i" )
		
	else
		nMoneyJZ = 0
		nMoney = 0
		
		-- ͼ��ת���: 
		-- ����: 	#-14
		-- ������: 	#-15
		-- ͭ����: 	#-16
		-- ���: 		#-02
		-- ����: 		#-03
		-- ͭ��: 		#-04
		x000076_MsgBox ( sceneId, selfId, nMoneyJZ.."#-16,"..nMoney.."#-04" )
 
	end
		
	return
end

--�Զ��庯��,��Ļ��Ϣ��ʾ(ֻ����ʾm�t ��,������#r����,������ʾ������ִε���.)
function x000076_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
