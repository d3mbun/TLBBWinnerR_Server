--�����
--ʥ����Ԫ���-�ռ����ɵ��߻�����

--�ű���
x808071_g_ScriptId = 808071

x808071_g_UICommand = 1999986

x808071_g_BufferId = 8057

--2009.08.12~2009.09.16�ڼ�,�μ����˿����� ��t ���cto� � Kinh nghi�m��ߵ���T�i to� � 300%
--czf, 2009.07.30

x808071_g_BeginTime	= 20090812
x808071_g_EndTime	= 20090916

x808071_g_GetXingYunDataParameter = {
	                 1,              --��ng�����ʸ�μӳ齱
	                 2,              --��ng�����ʸ�μӷ����齱 
	                 3,              --��������
	                 4,              --����1
	                 5,              --����2
	                 6,              --����3
}

x808071_g_DragonItem = {
	                 20310103,              --���צ
	                 20310104,              --����� 
	                 20310105,              --�����
}

--����Kinh nghi�m��
x808071_g_Exp = {

	[20]=1274,[21]=1354,[22]=1434,[23]=1514,[24]=1594,
	[25]=1674,[26]=1754,[27]=1834,[28]=1914,[29]=1994,
	[30]=2074,[31]=2154,[32]=2234,[33]=2314,[34]=2394,
	[35]=2474,[36]=2554,[37]=2634,[38]=2714,[39]=2794,
	[40]=2874,[41]=2954,[42]=3034,[43]=3114,[44]=3194,
	[45]=3274,[46]=3354,[47]=3434,[48]=3514,[49]=3594,
	[50]=3674,[51]=3754,[52]=3834,[53]=3914,[54]=3994,
	[55]=4074,[56]=4154,[57]=4234,[58]=4314,[59]=4394,
	[60]=4474,[61]=4554,[62]=4634,[63]=4714,[64]=4794,
	[65]=4874,[66]=4954,[67]=5034,[68]=5114,[69]=5194,
	[70]=5274,[71]=5354,[72]=5434,[73]=5514,[74]=5594,
	[75]=5674,[76]=5754,[77]=5834,[78]=5914,[79]=5994,
	[80]=6074,[81]=6154,[82]=6234,[83]=6314,[84]=6394,
	[85]=6474,[86]=6554,[87]=6634,[88]=6714,[89]=6794,
	[90]=6874,[91]=6954,[92]=7034,[93]=7114,[94]=7194,
	[95]=7274,[96]=7354,[97]=7434,[98]=7514,[99]=7594,
	[100]=7674,[101]=7754,[102]=7834,[103]=7914,[104]=7994,
	[105]=8074,[106]=8154,[107]=8234,[108]=8314,[109]=8394,
	[110]=8474,[111]=8554,[112]=8634,[113]=8714,[114]=8794,
	[115]=8874,[116]=8954,[117]=9034,[118]=9114,[119]=9194,
	[120]=9274,[121]=9354,[122]=9434,[123]=9514,[124]=9594,
	[125]=9674,[126]=9754,[127]=9834,[128]=9914,[129]=9994,
	[130]=10074,[131]=10154,[132]=10234,[133]=10314,[134]=10394,
	[135]=10474,[136]=10554,[137]=10634,[138]=10714,[139]=10794,
	[140]=10874,[141]=10954,[142]=11034,[143]=11114,[144]=11194,
	[145]=11274,[146]=11354,[147]=11434,[148]=11514,[149]=11594,
	[150]=11674,

}
			

--**********************************
--������ں���
--**********************************
function x808071_OnDefaultEvent( sceneId, selfId, targetId )

	local NumText = GetNumText()

	if NumText == 111 then  --�μӳ齱
	   x808071_JoinCampaign( sceneId, selfId, targetId )
	elseif NumText == 112 then  --�콱
	   x808071_CheckTime( sceneId, selfId )

	   if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[1]) ~= 3
	      or (x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[4]) == 0
	      and x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[5]) == 0
	      and x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[6]) == 0)) then
	    
	    BeginEvent(sceneId)
			  AddText( sceneId, "#{XYLP_20071222_02}" )
		  EndEvent(sceneId)
		  DispatchEventList(sceneId,selfId,targetId)
	    return
	   end
	   x808071_GivePlayerPrize( sceneId, selfId, targetId)
--	  BeginEvent(sceneId)
--	    local getgiftcount = x808071_GetGiftCount(sceneId, selfId) + 1
--	    local str
--	    if getgiftcount > 6 then
--	       str = "������to� � �m�t ������Ѿ�ȫ��ʹ������,������������.(�����ڼ�ÿ����6�ζm�t �����)"
--	    else
--	       str = format("��X�c nh�nʹ��9������to� � ���պ������н��յ�%d�ζm�t ���?(�����ڼ�ÿ����6�ζm�t �����.)", getgiftcount);
--			end
--			AddText(sceneId, str);
--			AddNumText(sceneId, x808071_g_ScriptId,"X�c nh�n", 8, 113);
--			AddNumText(sceneId, x808071_g_ScriptId,"Hu� b�", 8, 114);
--		EndEvent(sceneId)
--		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 113 then
	  BeginEvent(sceneId)
		  AddText(sceneId,"#{XYLP_20071222_20}")
		  --x808071_SetXingYunData(sceneId,selfId,0,0,0,0,0,0)
	  EndEvent(sceneId)
	  DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 114 then
		if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[2]) == 0) then
			return
		end
	  --�����ng������
	  if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[2]) == 2) then
	    return
	  end
	  local DragonOdds = random(1,150)
  
	  BeginEvent( sceneId )
	  if(DragonOdds == 150) then  --���з���
	     local PlayerName = GetName(sceneId,selfId)
	     AddText( sceneId, "#{XYLP_20071222_16}" )
	     --��������
	     local msg = format("@*;SrvMsg;SCA:#{XYLP_20071222_17}#{_INFOUSR%s}#{XYLP_20071222_18}",PlayerName)
		   AddGlobalCountNews( sceneId, msg )
		   --��������������޷��ٴγ�ȡ
		   x808071_SetXingYunData(sceneId,selfId,-1,2,1,-1,-1,-1)
		   --��ȡ����ͳ����־
		   LuaFnAuditLuckyTurnTableDragon(sceneId, selfId, 6, 0);
	  else
	     AddText( sceneId, "#{XYLP_20071222_15}" )
	     --�رշ�����ť
		   x808071_SetXingYunData(sceneId,selfId,-1,0,-1,-1,-1,-1)
	  end
		EndEvent( sceneId )
		DispatchEventList(sceneId,selfId,targetId)
	elseif NumText == 115 then  --L�nh ����
	  --û�н�������L�nh 
	  if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[3]) ~= 1) then
	    BeginEvent(sceneId)
			  AddText( sceneId, "#{XYLP_20071222_19}" )
		  EndEvent(sceneId)
		  DispatchEventList(sceneId,selfId,targetId)
	    return
	  end
	  --��ⱳ����ng���еط�....
	  if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		  BeginEvent(sceneId)
			  AddText( sceneId, "Lieu Nguyet Hong 1" )
		  EndEvent(sceneId)
		  DispatchMissionTips(sceneId,selfId)
		  return
	  end
	  x808071_GetItem(sceneId,selfId,7,targetId)  --����
		--�رճ����ѡ��,����շ���
	  x808071_SetXingYunData(sceneId,selfId,-1,0,0,-1,-1,-1)
  elseif NumText == 116 then  --бi phi long
    x808071_SwitchDragon( sceneId, selfId,targetId)  
	end
	
end

--**********************************
--�о��¼�
--**********************************
function x808071_OnEnumerate( sceneId, selfId, targetId )
	AddNumText(sceneId, x808071_g_ScriptId, "Th� t�i v�n may", 6, 111 )
	AddNumText(sceneId, x808071_g_ScriptId, "Nh�n l�nh ph�n th߷ng Kho�i ho�t tam", 6, 112 )
	AddNumText(sceneId, x808071_g_ScriptId, "Gi�i thi�u ph�n th߷ng r�t th�m Kho�i ho�t tam", 11, 113 )

	if(x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[2]) ~= 0) then
	    AddNumText(sceneId, x808071_g_ScriptId,"Lieu Nguyet Hong 2", 6, 114);
  		AddNumText(sceneId, x808071_g_ScriptId,"Lieu Nguyet Hong 3", 6, 115);
	end
	
	AddNumText(sceneId, x808071_g_ScriptId, "бi phi long", 6, 116 )
end

--**********************************
--�μӻ
--**********************************
function x808071_JoinCampaign( sceneId, selfId, targetId )

  --�����ҵ�c�pС��20���ܲμӳ齱
	if	GetLevel( sceneId, selfId) < 20 then
		BeginEvent(sceneId)
			AddText( sceneId, "Lieu Nguyet Hong 4" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--�����ҽ���μӹ��齱
	x808071_CheckTime(sceneId, selfId)
	local join = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[1] )
	if(join ~= 0) then
	  BeginEvent(sceneId)
			AddText( sceneId, "H�m nay c�c h� �� tham gia s� ki�n r�t th�m Th� T�i V�n May r�i! Xin ��i �n ng�y mai h�y �n ��y tham gia nh�!" )
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)
		return
	end
	
	--�������С����˿������to� � BUFF
	if LuaFnHaveImpactOfSpecificDataIndex( sceneId, selfId, x808071_g_BufferId ) == 1 then
	   BeginEvent(sceneId)
			 AddText( sceneId, "#{XYLP_20071222_08}" )
		 EndEvent(sceneId)
		 DispatchEventList(sceneId,selfId,targetId)
		 return
	end
	--��������������Ϣ�ͻ��˴��������̳齱����
	BeginUICommand( sceneId )
		UICommand_AddInt( sceneId, targetId )
	EndUICommand( sceneId )
	DispatchUICommand( sceneId, selfId, 19999 )

end

--**********************************
-- ��t ���cC�i n�y ��ҹ������˳齱to� � ����
--**********************************
function x808071_GetXingYunData( sceneId, selfId,index )
	local temp = 0
	local XingYunData = GetMissionData(sceneId,selfId,MD_XINGYUN_DATA)

	local IsJoin = floor(XingYunData/100000)    --0 û�μӹ� 1�μӹ�

	temp = mod(XingYunData,100000)
	local JoinDragon = floor(temp/10000)        --0 �����Բμ� 1 ���Բμ�

	temp = mod(XingYunData,10000)
	local DragonPrize = floor(temp/1000)        --0 û�з������� 1 �з�������

	temp = mod(XingYunData,1000)

	local Prize1 = floor(temp/100)        -- ����1to� � ��������

	temp = mod(XingYunData,100)
	local Prize2 = floor(temp/10)        -- ����2to� � ��������

	local Prize3 = mod(XingYunData,10)       -- ����3to� � ��������

	if(x808071_g_GetXingYunDataParameter[1] == index) then
	  return IsJoin
	elseif(x808071_g_GetXingYunDataParameter[2] == index) then
	  return JoinDragon
	elseif(x808071_g_GetXingYunDataParameter[3] == index) then
	  return DragonPrize
	elseif(x808071_g_GetXingYunDataParameter[4] == index) then
	  return Prize1
	elseif(x808071_g_GetXingYunDataParameter[5] == index) then
	  return Prize2
	elseif(x808071_g_GetXingYunDataParameter[6] == index) then
	  return Prize3
	else 
	  return -1
	end

end
--**********************************
--�洢C�i n�y ��ҹ������˳齱to� � ����
--**********************************
function x808071_SetXingYunData(sceneId,selfId,IJoin,JDragon,DPrize,P1,P2,P3)

	local IsJoin,JoinDragon,DragonPrize,Prize1,Prize1,Prize1 = -1
	if(IJoin == -1) then
	  IsJoin = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[1] )*100000
	else
	  IsJoin = IJoin*100000    --0 û�μӹ� 1�μӹ�
	end

	if(JDragon == -1) then
	  JoinDragon = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[2] )*10000
	else
	  JoinDragon = JDragon*10000        --0 �����Բμ� 1 ���Բμ�
	end

  if(DPrize == -1) then
	  DragonPrize = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[3] )*1000
	else
	  DragonPrize = DPrize*1000        --0 û�з������� 1 �з�������
	end

	if(P1 == -1) then
	  Prize1 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[4] )*100
	else
	  Prize1 = P1*100        -- ����1to� � ��������
	end

	if(P2 == -1) then
	  Prize2 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[5] )*10
	else
	  Prize2 = P2*10        -- ����2to� � ��������
	end

	if(P3 == -1) then
	  Prize3 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[6] )
	else
	  Prize3 = P3       -- ����3to� � ��������
	end

	local val = IsJoin+JoinDragon+DragonPrize+Prize1+Prize2+Prize3
	SetMissionData( sceneId, selfId, MD_XINGYUN_DATA, val )

end
--**********************************
--�յ��ͻ��˷��͹���to� � ѡ����д���(ռ��)
--**********************************
function x808071_OnAugury( sceneId, selfId, pos_ui )

   local IsJoin = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[1] )
   local JoinDragon,DragonPrize = 0,0

   local prizetype_1,prizetype_2,prizetype_3 = 0,0,0

   if(IsJoin == 0) then       --���û�����,��ô��m�t �γ齱

     prizetype_1 = x808071_OnPrize();
   
     prizetype_2 = x808071_OnPrize();
     while(prizetype_2 == 5) do --��c�p��to� � ���ʱ��뱣֤T�i 10%
        prizetype_2 = x808071_OnPrize();
     end
     
     prizetype_3 = x808071_OnPrize();
     while(prizetype_3 == 5) do --��c�p��to� � ���ʱ��뱣֤T�i 10%
        prizetype_3 = x808071_OnPrize();
     end
     --������ʲô������û��,��Ҫ��m�t c�iСKinh nghi�m����
     if(prizetype_1 == 4 and prizetype_2 == 4 and prizetype_3 == 4) then
        local index = random(1,3)
        if(index == 1) then
          prizetype_1 = 2
        elseif(index == 2) then
          prizetype_2 = 2
        elseif(index == 3) then
          prizetype_3 = 2
        end
     end
     
--     if(prizetype_1 == 5) then--���г�c�p��
--       JoinDragon = 0-- ��ʹ���г�c�p����ʱҲ��C�n ��ʾ,����ng���Լ��������
--       local DragonOdds= random(1,150)
--       if(DragonOdds == 150) then --���з���
--         DragonPrize = 1
--       else
--         DragonPrize = 0
--       end
--     else
--       JoinDragon = 0
--       DragonPrize = 0       
--     end
     --�洢�齱���
     x808071_SetXingYunData(sceneId,selfId,1,JoinDragon,DragonPrize,prizetype_1,prizetype_2,prizetype_3)
     --x808071_SetXingYunData(sceneId,selfId,1,0,0,5,3,3)
     --���������н�ͳ����־
     LuaFnAuditLuckyTurnTable(sceneId, selfId, prizetype_1, prizetype_2, prizetype_3);
     --������ҡ����˿������to� � BUFF
     LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, x808071_g_BufferId, 0)
     --����m�t c�i������ͻ���
     BeginUICommand(sceneId)
       UICommand_AddInt(sceneId,1)--��m�t ����
		   UICommand_AddInt(sceneId,prizetype_1)
	   EndUICommand(sceneId)
	   DispatchUICommand(sceneId,selfId, x808071_g_UICommand)

   elseif(IsJoin == 1) then       --��������m�t �ν�,��ô���ٳ齱,ֻ���µ�2�ν�����͹�ȥ

     prizetype_2 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[5] )
     --���͵ڶ�c�i������ͻ���
     BeginUICommand(sceneId)
       UICommand_AddInt(sceneId,2)--�ڶ�����
		   UICommand_AddInt(sceneId,prizetype_2)
	   EndUICommand(sceneId)
	   DispatchUICommand(sceneId,selfId, x808071_g_UICommand)
	   --��¼�ڶ����Ѿ�����
	   x808071_SetXingYunData(sceneId,selfId,2,-1,-1,-1,-1,-1)

   elseif(IsJoin == 2) then       --�������ڶ��ν�,��ô���ٳ齱,ֻ���µ�3�ν�����͹�ȥ

     prizetype_3 = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[6] )
     --���͵���c�i������ͻ���
     BeginUICommand(sceneId)
       UICommand_AddInt(sceneId,3)--��������
		   UICommand_AddInt(sceneId,prizetype_3)
	   EndUICommand(sceneId)
	   DispatchUICommand(sceneId,selfId, x808071_g_UICommand)
	   --��¼�������Ѿ�����
	   x808071_SetXingYunData(sceneId,selfId,3,-1,-1,-1,-1,-1)
   end   
   
end

--**********************************
--����齱
--**********************************
function x808071_OnPrize()
   local odds = random(1,100000)
   local prizetype = 0
   if( odds >= 1 and odds <= 1000 ) then       --1000 ��Kinh nghi�m
	    prizetype = 1
	 elseif( odds >= 1001 and odds <= 66540 ) then          --65540  СKinh nghi�m
	    prizetype = 2
	 elseif( odds >= 66541 and odds <= 66990 ) then          --450    ����
	    prizetype = 3
	 elseif( odds >= 66991 and odds <= 99990 ) then          --33000   ����
	    prizetype = 4
	 elseif( odds >= 99991 and odds <= 100000 ) then          --10   �����
	    prizetype = 5
	 end
	 return prizetype
end

--**********************************
--���ʱ��
--**********************************
function x808071_CheckTime( sceneId, selfId )
	  
	local td = GetDayTime()
	local LastXingYunTime = GetMissionData(sceneId,selfId,MD_XINGYUN_TIME_INFO)

	if td > LastXingYunTime then
	    --��ճ齱���
      x808071_SetXingYunData(sceneId,selfId,0,0,0,0,0,0)
	    --SetMissionData( sceneId, selfId, MD_XINGYUN_TIME_INFO, td )
	end

end

--**********************************
--��ȥ��ͨ����
--**********************************
function x808071_GivePlayerPrize( sceneId, selfId, targetId)

	  local PrizeType = {}	

	  PrizeType[1] = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[4] )
	  PrizeType[2] = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[5] )
	  PrizeType[3] = x808071_GetXingYunData( sceneId, selfId,x808071_g_GetXingYunDataParameter[6] )
	  
	  --��� gi�y���to� � �ռ�
	  local needspace = 0
	  for i = 1,3 do
	    if(PrizeType[i] == 3 or PrizeType[i] ==5) then
	      needspace = needspace + 1
	    end
	  end
	  
	  --��ⱳ����ng���еط�....
	  if LuaFnGetPropertyBagSpace( sceneId, selfId ) < needspace then
		  BeginEvent(sceneId)
			  AddText( sceneId, "Lieu Nguyet Hong 6" )
		  EndEvent(sceneId)
		  DispatchMissionTips(sceneId,selfId)
		  return
	  end
	 
	  --���Ի�������ʾ
	  BeginEvent(sceneId)
			 AddText( sceneId, "#{XYLP_20071222_03}" )

	  --������ҽ���
	  for i = 1,3 do
	    if(PrizeType[i] == 1) then
	      AddText( sceneId, x808071_GetExp(sceneId,selfId,1))  --��Kinh nghi�m	     
	    elseif(PrizeType[i] == 2) then
	      AddText( sceneId, x808071_GetExp(sceneId,selfId,2))--СKinh nghi�m
	    elseif(PrizeType[i] == 3) then
	      AddText( sceneId, x808071_GetItem(sceneId,selfId,3,targetId))--��ͨ����
	      --elseif(PrizeType[i] == 4) then  --���� û�н���
	    elseif(PrizeType[i] == 5) then
	      x808071_GetItem(sceneId,selfId,5,targetId)
	      AddText( sceneId, "#GLieu Nguyet Hong 7")--����� ��c�p���� ���Ӽ���
	    end	  
	  end

	  EndEvent(sceneId)
	  DispatchEventList(sceneId,selfId,targetId)
	  	  
	  --�����c�i��������
	  x808071_SetXingYunData(sceneId,selfId,-1,-1,-1,0,0,0)
end

--**********************************
-- �i�m��Kinh nghi�m type����Kinh nghi�m����
--**********************************
-- 2009.08.12~2009.09.16�ڼ�,�μ����˿����� ��t ���cto� � Kinh nghi�m��ߵ���T�i to� � 300%
-- czf, 2009.07.30

--��ng��涨to� � ʱ��(2009.08.12~2009.09.16)
function x808071_IsInSpecialTime( )	

	local curDate = GetTime2Day( )
	--�����ng�ʱ����Tr� v���������
	if curDate >= x808071_g_BeginTime and curDate <= x808071_g_EndTime then
		return curDate
	end
	--����Tr� v�0
	return 0
	
end

function x808071_GetExp( sceneId, selfId, type, targetId )

   local str = ""
   local playerLevel = GetLevel(sceneId, selfId)
   local exp = x808071_g_Exp[playerLevel]
   if(type == 1) then--��Kinh nghi�m
     exp = exp * 5
   end
   -- �����ng��T�i 2009.08.12~2009.09.16�ڼ�, czf, 2009.07.30
   local curDate = x808071_IsInSpecialTime()
   if curDate ~= 0 then 
   		exp = exp * 3
   end
   AddExp( sceneId,selfId,exp)
   
   str = format( "#GKinh nghi�m: %d", exp )
   
   return str
--   BeginEvent( sceneId )
--	 AddText( sceneId, str )
--	 EndEvent( sceneId )
--	 DispatchEventList(sceneId,selfId,targetId)
end

--**********************************
-- �i�m����Ʒ
--**********************************
function x808071_GetItem( sceneId, selfId, type, targetId )
  local ItemId = 0
  local str = ""
  
  if(type == 3) then
    ItemId = x808071_RandomItem()
    str = format( "#G��o c�: #{_ITEM%d}", ItemId )
  elseif(type == 5) then
    ItemId = 10124048  -- ���Ӽ���
    --str = format( "����: #{_ITEM%d}", ItemId )
  elseif(type == 7) then
    ItemId = 10141084  -- ����
    str = format( "Lieu Nguyet Hong 9 #G#{_ITEM%d}", ItemId )
  end
  
  local BagIndex = TryRecieveItem( sceneId, selfId, ItemId, QUALITY_MUST_BE_CHANGE )
  
  --���ϵ����Ʒ��m�t c�p��������
  if(ItemId ~= x808071_g_DragonItem[1] and ItemId ~= x808071_g_DragonItem[2] 
  and ItemId ~= x808071_g_DragonItem[3] and ItemId ~=30509500) then
  --����Ʒ����
  	local	bindidx	=	LuaFnItemBind(sceneId, selfId,BagIndex)
		if bindidx ~= 1 then
		  	local bindmsg = "Lieu Nguyet Hong 10"													
		  	BeginEvent( sceneId )
		    	AddText( sceneId, bindmsg )
		  	EndEvent( sceneId )
		  	DispatchMissionTips( sceneId, selfId )
		end
	end
	
	-- ��t ���c��Ʒ��Ϣ
	local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
	  
	if BagIndex ~= -1 then

	  if(type == 5) then
	    --����H� th�ng����
      local PlayerName = GetName(sceneId,selfId)
	    str = format( "#{XYLP_20071222_11}#{_INFOUSR%s}#{XYLP_20071222_12}#{_INFOMSG%s}#{XYLP_20071222_13}��������#{XYLP_20071222_14}", PlayerName,ItemInfo )
	    BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	    --M� ra �����ѡ��
	    x808071_SetXingYunData(sceneId,selfId,-1,1,-1,-1,-1,-1)
	    --���ϼ��ϰ�ť,����ng����Ϊ����,����ע����
--	    BeginEvent(sceneId)
--	    AddText(sceneId,"  ����T�i b�t �u,��ֻ������m�t c�i,Ҫ����,����ƭ��,��Ӧ��to� � ÿm�t �����鶼Ҫ����.")
--	    AddNumText(sceneId, x808071_g_ScriptId, "���˿����", 6, 111 )
--	    AddNumText(sceneId, x808071_g_ScriptId, "L�nh ���˿��������", 6, 112 )
--	    AddNumText(sceneId, x808071_g_ScriptId, "���˿�����齱� �i�m�", 6, 113 )
--	    AddNumText(sceneId, x808071_g_ScriptId,"�����: ����!", 6, 114);
--  		AddNumText(sceneId, x808071_g_ScriptId,"L�nh ����", 6, 115);
--	    EndEvent(sceneId)
--	    DispatchEventList(sceneId,selfId,targetId)      
	  elseif (type == 3) then-- ���Ի�
	    local PlayerName = GetName(sceneId,selfId)
	    local info = format( "#{XYLP_20080104_01}#{_INFOUSR%s}#{XYLP_20080104_02}#{_INFOMSG%s}#{XYLP_20080104_03}", PlayerName,ItemInfo )
	    BroadMsgByChatPipe( sceneId, selfId, info, 4 )
	    return str
		elseif (type == 7) then
		  BeginEvent( sceneId )
			  AddText( sceneId, str )
		    EndEvent( sceneId )
		  DispatchEventList(sceneId,selfId,targetId)
		  --����H� th�ng����
		  local PlayerName = GetName(sceneId,selfId)
	    str = format( "#{XYLP_20071222_21}#{_INFOUSR%s}#{XYLP_20071222_22}#{_INFOMSG%s}#{XYLP_20071222_23}", PlayerName,ItemInfo )
	    BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	  end
		
	end
end

--**********************************
--��� ��t ���c��Ʒ
--**********************************
function x808071_RandomItem( )
  local ItemId = 0
  local randomval = random(1,50000)

  if( randomval >= 1 and randomval <= 900 ) then       --Chi�u b�i: �ao ki�m tranh phong 9
	    ItemId = 30008022
	 elseif( randomval >= 901 and randomval <= 1800 ) then          --Chi�u b�i: Thi�t gi�p �ng b�ch 9
	    ItemId = 30008023
	 elseif( randomval >= 1801 and randomval <= 2700 ) then          --Chi�u b�i: Tr�n c�m d� th�  9
	    ItemId = 30008024
	 elseif( randomval >= 2701 and randomval <= 4685 ) then          --��  19.85
	    ItemId = 30008006
	 elseif( randomval >= 4686 and randomval <= 6185 ) then          --���ĵ�	15
	    ItemId = 30008018
	 elseif( randomval >= 6186 and randomval <= 7185 ) then          --������	10
	    ItemId = 30008033
	 elseif( randomval >= 7186 and randomval <= 8185 ) then          --СLinh��	10
	    ItemId = 30008016
	 elseif( randomval >= 8186 and randomval <= 9685 ) then          --���ǿ��Tinh��	15
	    ItemId = 30900006
	 elseif( randomval >= 9686 and randomval <= 9985 ) then          --m�t c�p����	3
	    ItemId = 30509500
	 elseif( randomval >= 9986 and randomval <= 9990 ) then          --���צ	0.05
	    ItemId = x808071_g_DragonItem[1]
	 elseif( randomval >= 9991 and randomval <= 9995 ) then          --�����	0.05
	    ItemId = x808071_g_DragonItem[2]
	 elseif( randomval >= 9996 and randomval <= 10000 ) then          --�����	0.05
	    ItemId = x808071_g_DragonItem[3]
	 elseif( randomval >= 10001 and randomval <= 50000 ) then         --��c�p��ͯ���� dun.liu
	    ItemId = 30503019
	 end
	 return ItemId

end

--**********************************
--���������ʾ
--**********************************
function x808071_PlayerTip( sceneId, selfId, tip )
	
			if tip ~= 1 then
				local td = GetDayTime()
		    SetMissionData( sceneId, selfId, MD_XINGYUN_TIME_INFO, td )
	    end
      
      BeginEvent(sceneId)
      if(tip == 1) then
        AddText( sceneId, "Li�u Nguy�t H�ng: Ph�n th߷ng c�a c�c h� v�n ch�a r�t h�t." )
      else
        AddText( sceneId, "Li�u Nguy�t H�ng: Ch�c m�ng c�c h�! Ho�t �ng b�c th�m c�a c�c h� h�m nay �� ho�n th�nh, xin h�y t�m ta nh�n l�nh ph�n th߷ng." )
      end      
			  
		  EndEvent(sceneId)
		  DispatchEventList(sceneId,selfId,-1)
end

--**********************************
--бi phi long
--**********************************
function x808071_SwitchDragon( sceneId, selfId,targetId)
      
      local ZhuaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x808071_g_DragonItem[1])   --���צ
      local YiCount = LuaFnGetAvailableItemCount(sceneId, selfId, x808071_g_DragonItem[2])  --�����
      local YaCount = LuaFnGetAvailableItemCount(sceneId, selfId, x808071_g_DragonItem[3])   --�����
      
      local result = 1
      if ZhuaCount < 2 then
    			result = 0
  		elseif YiCount < 2 then
    			result = 0
  		elseif YaCount < 2 then
    			result = 0
    	end
    	
    	if result == 0 then
				BeginEvent(sceneId)
					AddText( sceneId, "N�u thu th�p �� 2 ��i Phong Nha, 2 ��i Phong D�c v� 2 ��i Phong Tr�o, ta c� th� gi�p c�c h� chi�u g�i Phi Long: ��i Phong. Th�t ��ng ti�c, c�c h� hi�n gi� v�n ch�a thu th�p �� ��o c�, ta kh�ng th� gi�p g�." )
				EndEvent(sceneId)
				DispatchEventList(sceneId,selfId,targetId)
				return
			end
			
			--��ⱳ����ng���еط�....
	  	if LuaFnGetPropertyBagSpace( sceneId, selfId ) < 1 then
		  	BeginEvent(sceneId)
			  	AddText( sceneId, "Lieu Nguyet Hong 14" )
		  	EndEvent(sceneId)
		  	DispatchMissionTips(sceneId,selfId)
		 	 return
	  	end
	  	
	  	--��ng��ɾ��th�t b�i....
			for i, v in x808071_g_DragonItem do
	  		if LuaFnDelAvailableItem(sceneId, selfId, v, 2) == 0 then
			 		BeginEvent(sceneId)
			 			AddText( sceneId, "Lieu Nguyet Hong 15" )
		   		EndEvent(sceneId)
		   		DispatchMissionTips( sceneId, selfId )
		   		return
		 		end
	 		end
	 		
	 		--�������
	 		local BagIndex = TryRecieveItem( sceneId, selfId, 10141084, QUALITY_MUST_BE_CHANGE )
  		--����Ʒ����
  		local	bindidx	=	LuaFnItemBind(sceneId, selfId,BagIndex)
			if bindidx ~= 1 then
		  		local bindmsg = "Lieu Nguyet Hong 16"													
		  		BeginEvent( sceneId )
		    		AddText( sceneId, bindmsg )
		  		EndEvent( sceneId )
		  		DispatchMissionTips( sceneId, selfId )
			end
	
	    local PlayerName = GetName(sceneId,selfId)
			-- ��t ���c��Ʒ��Ϣ
			local ItemInfo = GetBagItemTransfer( sceneId, selfId, BagIndex )
			
			--���ֹ���
			if BagIndex ~= -1 then
      	BeginEvent( sceneId )
					AddText( sceneId, "#{XYLP_20071222_16}" )
		    
		    
		    --��������1
	      local msg = format("@*;SrvMsg;SCA:#{XYLP_20071222_17}#{_INFOUSR%s}#{XYLP_20071222_18}",PlayerName)
		    AddGlobalCountNews( sceneId, msg )
		   
		    
		 		--����H� th�ng����
		  	local PlayerName = GetName(sceneId,selfId)
	    	str = format( "#{XYLP_20071222_21}#{_INFOUSR%s}#{XYLP_20071222_22}#{_INFOMSG%s}#{XYLP_20071222_23}", PlayerName,ItemInfo )
	    	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	    	
	    	--��������2
	      local msg = format("@*;SrvMsg;SCL:#{XYLP_20071222_21}#{_INFOUSR%s}#{XYLP_20071222_22}Lieu Nguyet Hong 17#{XYLP_20071222_23}",PlayerName)
		    AddGlobalCountNews( sceneId, msg )
		    
		    EndEvent( sceneId )
		    DispatchEventList(sceneId,selfId,targetId)
	  	end
end

--**********************************
--���Ti�p th�����
--**********************************
function x808071_CheckAccept( sceneId, selfId )
end

--**********************************
--Ti�p th�
--**********************************
function x808071_OnAccept( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x808071_OnAbandon( sceneId, selfId )
end

--**********************************
--����
--**********************************
function x808071_OnContinue( sceneId, selfId, targetId )
end

--**********************************
--�����ng������ύ
--**********************************
function x808071_CheckSubmit( sceneId, selfId )
end

--**********************************
--�ύ
--**********************************
function x808071_OnSubmit( sceneId, selfId, targetId, selectRadioId )
end

--**********************************
--ɱ����������
--**********************************
function x808071_OnKillObject( sceneId, selfId, objdataId ,objId )
end

--**********************************
--���������¼�
--**********************************
function x808071_OnEnterArea( sceneId, selfId, zoneId )
end

--**********************************
--���߸ı�
--**********************************
function x808071_OnItemChanged( sceneId, selfId, itemdataId )
end
