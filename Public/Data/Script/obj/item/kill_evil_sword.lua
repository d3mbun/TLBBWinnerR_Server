--------------------------------------------
--ն�������߽ű�
--Created By ��ΰ
--------------------------------------------

--�ű�ID
x335808_g_scriptId = 335808

--����ID
x335808_g_monster_info = 
{
	{ID = 12200, Level = 10, blood = 63360 },
	{ID = 12201, Level = 20, blood = 577920 },
	{ID = 12202, Level = 30, blood = 983040 }, 
	{ID = 12203, Level = 40, blood = 1468800 }, 
	{ID = 12204, Level = 50, blood = 2035200},
	{ID = 12205, Level = 60, blood = 2682240 }, 
	{ID = 12206, Level = 70, blood = 3409920},
	{ID = 12207, Level = 80, blood = 4218240}, 
	{ID = 12208, Level = 90, blood = 5107200}, 
	{ID = 12209, Level = 100, blood = 6076800}, 
	{ID = 12210, Level = 110, blood = 7127040}, 
	{ID = 12211, Level = 120, blood = 7772160}, 	
};
--Kinh nghi�m����ֵ
x335808_g_prize_exp =
{
	[10] = 788,[11] = 851,[12] = 907,[13] = 962,[14] = 1017,[15] = 1072,[16] = 1135,[17] = 1190,[18] = 1246,[19] = 1301,
	[20] = 1585,[21] = 1656,[22] = 1719,[23] = 1782,[24] = 1853,[25] = 1916,[26] = 1987,[27] = 2050,[28] = 2113,[29] = 2184,
	[30] = 2571,[31] = 2650,[32] = 2721,[33] = 2799,[34] = 2870,[35] = 2949,[36] = 3028,[37] = 3099,[38] = 3178,[39] = 3249,
	[40] = 3746,[41] = 3833,[42] = 3912,[43] = 3998,[44] = 4085,[45] = 4172,[46] = 4259,[47] = 4337,[48] = 4424,[49] = 4511,
	[50] = 5110,[51] = 5205,[52] = 5300,[53] = 5394,[54] = 5489,[55] = 5584,[56] = 5678,[57] = 5773,[58] = 5868,[59] = 5962,
	[60] = 6656,[61] = 6767,[62] = 6869,[63] = 6972,[64] = 7074,[65] = 7177,[66] = 7287,[67] = 7390,[68] = 7492,[69] = 7595,
	[70] = 8399,[71] = 8518,[72] = 8628,[73] = 8739,[74] = 8857,[75] = 8967,[76] = 9086,[77] = 9196,[78] = 9306,[79] = 9425,
	[80] = 10332,[81] = 10458,[82] = 10576,[83] = 10702,[84] = 10821,[85] = 10947,[86] = 11073,[87] = 11191,[88] = 11318,[89] = 11436,
	[90] = 11830,[91] = 11957,[92] = 12083,[93] = 12209,[94] = 12335,[95] = 12461,[96] = 12587,[97] = 12706,[98] = 12832,[99] = 12958,
	[100] = 13282,[101] = 13416,[102] = 13542,[103] = 13668,[104] = 13794,[105] = 13920,[106] = 14054,[107] = 14181,[108] = 14307,[109] = 14433,
	[110] = 14670,[111] = 14796,[112] = 14922,[113] = 15056,[114] = 15190,[115] = 15316,[116] = 15443,[117] = 15569,[118] = 15695,[119] = 15829,
	[120] = 15955,[121] = 16089,[122] = 16216,[123] = 16342,[124] = 16476,[125] = 16602,[126] = 16728,[127] = 16854,[128] = 16981,[129] = 17115,
	[130] = 17249,[131] = 17375,[132] = 17501,[133] = 17627,[134] = 17761,[135] = 17888,[136] = 18014,[137] = 18140,[138] = 18274,[139] = 18408,
	[140] = 18534,[141] = 18661,[142] = 18787,[143] = 18913,[144] = 19047,[145] = 19173,[146] = 19307,[147] = 19434,[148] = 19560,[149] = 19694,
}
--**********************************
--�¼��������
--**********************************
function x335808_OnDefaultEvent( sceneId, selfId, bagIndex )	
end

--**********************************
--C�i n�y ��Ʒto� � ʹ�ù�����ng�������ڼ���: 
--H� th�ng��T�i ִ�п�ʼʱ���C�i n�y ����to� � Tr� v�ֵ,���Tr� v�th�t b�i����Ժ���to� � ���Ƽ���to� � ִ��.
--Tr� v�1: ��������to� � ��Ʒ,���Լ������Ƽ���to� � ִ�У�Tr� v�0: ���Ժ���to� � ����.
--**********************************
function x335808_IsSkillLikeScript( sceneId, selfId)
	return 1
end

--**********************************
--ֱ��Hu� b�Ч��: 
--H� th�ng��ֱ�ӵ���C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �Ѿ�Hu� b���ӦЧ��,����ִ�к���������Tr� v�0: û�м�⵽���Ч��,����ִ��.
--**********************************
function x335808_CancelImpacts( sceneId, selfId )
	return 0;
end

--**********************************
--����������: 
--H� th�ng��T�i ���ܼ��to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: �������ͨ��,���Լ���ִ�У�Tr� v�0: �������th�t b�i,�жϺ���ִ��.
--**********************************
function x335808_OnConditionCheck( sceneId, selfId )
	--У��ʹ��to� � ��Ʒ
	if(1 ~= LuaFnVerifyUsedItem(sceneId, selfId)) then
		return 0
	end	
	--ѡ��ʹ�ö�����?
	local targetId = LuaFnGetTargetObjID(sceneId, selfId);
	if targetId < 0 or targetId == selfId then
		x335808_MsgBox(sceneId, selfId, "Ch�m y�u ki�m ch� c� th� �i ni�n th� s� d�ng.");	
		return 0;
	end	
	--Ŀ���������
	local objType = GetCharacterType( sceneId, targetId )
	if(objType ~= 2)then	--������ng����
		x335808_MsgBox( sceneId, selfId, "Ch�m y�u ki�m ch� c� th� �i ni�n th� s� d�ng.")	
		return 0;
	else
		local dataId = GetMonsterDataID(sceneId, targetId); 
		if dataId < 12200 or dataId > 12211 then
			x335808_MsgBox( sceneId, selfId, "Ch�m y�u ki�m ch� c� th� �i ni�n th� s� d�ng.")
			return 0;
		end
	end	
	return 1;
end

--**********************************
--���ļ�⼰�������: 
--H� th�ng��T�i ��������to� � ʱ�� �i�m����C�i n�y �ӿ�,������C�i n�y ����to� � Tr� v�ֵX�c nh�n�Ժ�to� � ������ng��ִ��.
--Tr� v�1: ���Ĵ���ͨ��,���Լ���ִ�У�Tr� v�0: ���ļ��th�t b�i,�жϺ���ִ��.
--ע��: �ⲻ�⸺������to� � ���Ҳ��������to� � ִ��.
--**********************************
function x335808_OnDeplete( sceneId, selfId )
	if(0 < LuaFnDepletingUsedItem(sceneId, selfId)) then
		return 1
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
function x335808_OnActivateOnce( sceneId, selfId )
	local targetId = LuaFnGetTargetObjID(sceneId, selfId)
	local damage = GetMaxHp(sceneId, targetId)/6+1; --+1ȷ����6��ɱ��
	LuaFnSetDamage(sceneId, selfId, targetId, damage);
	
	local mstLevel = GetLevel(sceneId, targetId);
	local extraExp = 1;
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 62) == 1 then --СLinh��
		extraExp = 1.5;
	end
	if LuaFnHaveImpactOfSpecificDataIndex(sceneId, selfId, 60) == 1 then
		extraExp = 2;
	end
	local nFreeHave = DEGetFreeTime(sceneId, selfId)
	local nMoneyHave = DEGetMoneyTime(sceneId, selfId)
	if DEIsLock(sceneId,selfId) <= 0 then								
		if nFreeHave > 0 or nMoneyHave > 0 then
			extraExp = 2						
		end
	end	
	LuaFnAddExp(sceneId, selfId, x335808_g_prize_exp[mstLevel] * extraExp);
	if extraExp > 1 then
		BeginEvent(sceneId)
			local msg = format("#{NSJYTS_1}%d#{NSJYTS_2}", x335808_g_prize_exp[mstLevel] * (extraExp-1))
			AddText(sceneId, msg)
		EndEvent()
		DispatchMissionTips(sceneId, selfId)
	end
	return 1;
end

--**********************************
--���������������: 
--�������ܻ�T�i ÿ����������ʱ����C�i n�y �ӿ�.
--Tr� v�: 1�����´�������0: �ж�����.
--ע: ������ng������Чm�t ��to� � ���
--**********************************
function x335808_OnActivateEachTick( sceneId, selfId)
	return 1;
end

--**********************************
--��Ϣ��ʾ
--**********************************
function x335808_MsgBox( sceneId, selfId, msg )
	BeginEvent( sceneId )
		AddText( sceneId, msg )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
