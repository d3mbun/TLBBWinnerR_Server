--����: ���۵�<ID:30504045>
--�ű��� 889026
--Author:xiehong 2009-02-05

x889026_g_scriptId = 889026
x889026_g_ColorSockPrize = {
													30501132,	--1
													30501133,	--2
													30501153,	--3
													30501151,	--4
													31000001,	--5
													31000003,	--6
													30607000,	--7
													30008011,	--8
													30900006,	--9
													30502002,	--10
													30008002,	--11
													30402096,	--12
													30402097,	--13
													30402098,	--14
													30402099,	--15
													30402026,	--16
													30402092,	--17
													30402046,	--18
													30402094,	--19
													30402072,	--20
													30402036,	--21
													30402076,	--22
													30402078,	--23
													30402025,	--24
													30402030,	--25
													30402034,	--26
													30402040,	--27
													30402042,	--28
													30402044,	--29
													30402048,	--30
													30402050,	--31
													30402012,	--32
													30402014,	--33
													30402016,	--34
													30402018,	--35
													30402020,	--36
													30402056,	--37
													30402060,	--38
													30402062,	--39
													30402064,	--40
													30402066,	--41
													30309612,	--42
													30402070,	--43
													30402074,	--44
													30402080,	--45
													10141091,	--46
													30402093,	--47
													30402051,	--48
													30402052,	--49
													30402053,	--50
													30402054,	--51
													30402045,	--52
													30402029,	--53
													30402035,	--54
													30402055,	--55
													30402059,	--56
													30402047,	--57
													30402049,	--58
													30402061,	--59
													30402063,	--60
													30402065,	--61
													30402067,	--62
													30402069,	--63
													30402073,	--64
													30402033,	--65
													30402039,	--66
													30402041,	--67
													30402043,	--68
													30402075,	--69
													30402077,	--70
													30402079,	--71
													30008034,	--72
													30008048,	--73
													30008009,	--74
													30309187,	--75
													10124101,	--76
													10141804,	--77
													30700203,	--78
													30501169,	--79
													30501231,	--80
													30501222,	--81
													30501231,	--82
													30501222,	--83
													30501213,	--84
													30501240,	--85
													30501232,	--86
													30501223,	--87
													30501232,	--88
													30501223,	--89
													30501214,	--90
													30501241,	--91
													30501233,	--92
													30501224,	--93
													30501233,	--94
													30501224,	--95
													30501215,	--96
													30501242	--97
													}
                 
x889026_g_strGongGaoInfo = {
	"#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504045}#c00FFFF k�ch li�t run run ��ng l�n, th�t s�c quang mang theo th� t� hi�n l�n, m�t c�i #{_INFOMSG%s}#c00FFFF xu�t hi�n � trong tay.",
	"#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504045}#c00FFFF k�ch li�t run run ��ng l�n, th�t s�c quang mang theo th� t� hi�n l�n, m�t c�i #{_INFOMSG%s}#c00FFFF xu�t hi�n � trong tay.",
	"#{_INFOUSR%s}#c00FFFFTrong tay #G#{_ITEM30504045}#c00FFFF k�ch li�t run run ��ng l�n, th�t s�c quang mang theo th� t� hi�n l�n, m�t c�i #{_INFOMSG%s}#c00FFFF xu�t hi�n � trong tay.",
}                
--**********************************
--�¼��������   
--**********************************
function x889026_OnDefaultEvent( sceneId, selfId, bagIndex )
-- ��C�n C�i n�y �ӿ�,��Ҫ�����պ���
end              
                 
--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x889026_IsSkillLikeScript( sceneId, selfId)
	return 1; --C�i n�y �ű�C�n ����֧��
end              
                 
--**********************************
--ֱ��Hu� b�Ч��:  
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x889026_CancelImpacts( sceneId, selfId )
	return 0; --��C�n C�i n�y �ӿ�,��Ҫ�����պ���,����ʼ��Tr� v�0.
end              
                 
--**********************************
--����������:  
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x889026_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��
	if(1~=LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end
--��Ϊת����������m�t c�i,����m�t c�i�ո�,�Ұ׽������ཱ��3c�i�����ж�ʣ��ռ�<2	
--��Ϊ�߲����ز�����Ʒ��to� � T�i � ��o c� �� �y�,��to� � T�i ������
	local FreeSpace = LuaFnGetPropertyBagSpace( sceneId, selfId )
	if( FreeSpace < 2 ) then 
	        local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��."
		      x889026_ShowNotice( sceneId, selfId, strNotice)
	        return 0
	end
			
	return 1; --��C�n �κ�����,����ʼ��Tr� v�1.
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x889026_OnDeplete( sceneId, selfId )
	if(0<LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1;
	end

	return 0;
end

--**********************************
--ֻ��ִ��m�t �����: 
--������˲�����ܻ�T�i ������ɺ����C�i n�y �ӿ�(�����������Ҹ���������Th�a m�nto� � ʱ��),������
--����Ҳ��T�i ������ɺ����C�i n�y �ӿ�(����to� � m�t ��ʼ,���ĳɹ�ִ��֮��).
--Tr� v�1: ����ɹ���Tr� v�0: ����th�t b�i.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889026_OnActivateOnce( sceneId, selfId )

    --����ͳ��: ת��to� � ʹ��
	  LuaFnAuditZhuanDanUsed(sceneId, selfId, 25, 0)
		
    local RandomBase = GetZhuanDanItemDropCount( sceneId, selfId, 22)
    if( RandomBase > 0 ) then    
        local RandomNum = random( 0, RandomBase - 1 )
        local RandomID, Notice = ZhuanDanItemDropRandom( sceneId, selfId, RandomNum, 22 )
        local PrizeNum = 1
				
				if (RandomID == x889026_g_ColorSockPrize[8])
				or (RandomID == x889026_g_ColorSockPrize[9])
				or (RandomID == x889026_g_ColorSockPrize[10])
				or (RandomID == x889026_g_ColorSockPrize[11])
				or (RandomID == x889026_g_ColorSockPrize[80])
				or (RandomID == x889026_g_ColorSockPrize[81])
				or (RandomID == x889026_g_ColorSockPrize[82])
				or (RandomID == x889026_g_ColorSockPrize[83])
				or (RandomID == x889026_g_ColorSockPrize[84])
				or (RandomID == x889026_g_ColorSockPrize[85]) then
					PrizeNum = 3
				elseif (RandomID == x889026_g_ColorSockPrize[78]) then
					PrizeNum = 4
				elseif (RandomID == x889026_g_ColorSockPrize[79]) then
					PrizeNum = 22
				elseif (RandomID == x889026_g_ColorSockPrize[72])
				or (RandomID == x889026_g_ColorSockPrize[74])	then
					PrizeNum = 2
				end
					
					
        if( RandomID > 0 ) then
           BeginAddItem(sceneId)
				   AddItem( sceneId, RandomID, PrizeNum )
			     local Ret = LuaFnEndAddItemIgnoreFatigueState( sceneId, selfId )
			     if Ret > 0 then
			       	LuaFnAddItemListToHumanIgnoreFatigueState(sceneId,selfId)
			       	if 1 == Notice then
			       	   local szItemTransfer = GetItemTransfer(sceneId,selfId,0)
					       x889026_ShowRandomSystemNotice( sceneId, selfId, szItemTransfer )
				      end
				      
				      local ItemName = GetItemName(sceneId, RandomID)
				      local strNotice = "��t ���c "..ItemName
				      x889026_ShowNotice( sceneId, selfId, strNotice)
				      LuaFnSendSpecificImpactToUnit(sceneId, selfId, selfId, selfId, 18, 0);
				   else
				      local strNotice = "Ch� tr�ng trong t�i x�ch kh�ng ��"
				      x889026_ShowNotice( sceneId, selfId, strNotice)
			     end
			
        end
        
    end
    
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x889026_OnActivateEachTick( sceneId, selfId)
	return 1; --����ng�����Խű�, ֻ�����պ���.
end

function x889026_ShowNotice( sceneId, selfId, strNotice)
	BeginEvent( sceneId )
		AddText( sceneId, strNotice )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )    
end

function x889026_ShowRandomSystemNotice( sceneId, selfId, strItemInfo )
	
	local PlayerName = GetName(sceneId,selfId)
	local nMsgIndex = random( 1, 3 )
	local str
	if nMsgIndex == 1 then
		str = format( x889026_g_strGongGaoInfo[1], PlayerName, strItemInfo)
	elseif nMsgIndex == 2 then
		str = format( x889026_g_strGongGaoInfo[2], PlayerName, strItemInfo )
	else
		str = format( x889026_g_strGongGaoInfo[3], PlayerName, strItemInfo)
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )
	
end
