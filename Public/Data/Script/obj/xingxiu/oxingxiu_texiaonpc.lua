--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--C�i n�y NPC�����ng���ỹ��,�ɹ���,����ng�����ܵ��κ��˺�
--�ű���
x801006_g_ScriptId = 801006;

--Ҫ��ʾto� � �����б� 
x801006_g_DemoSkills = {};
--��������:   x801006_g_DemoSkills[����to� � ���] = "����to� � T�n"; ע: �����Ѽ���to� � ��ŵ��¼���ʹ�� 

x801006_g_DemoSkills[834]="Li�n Ch�u H� Thi еc";
x801006_g_DemoSkills[835]="Th�t tinh th�u c�t";
x801006_g_DemoSkills[836]="�m Tr�m Ch� Kh�t";
x801006_g_DemoSkills[837]="�� N� оi Thu�";
x801006_g_DemoSkills[838]="Ti�u Хu Lan Ng�ch";
x801006_g_DemoSkills[839]="Di Hoa Ti�p M�c";
x801006_g_DemoSkills[840]="Ti�u L� T�ng �ao";
x801006_g_DemoSkills[841]="Ti�u Kh�u Th߶ng Khai";
x801006_g_DemoSkills[842]="Ti�u Ng� Gi�i Di";
x801006_g_DemoSkills[843]="H�m Sa X� �nh";
x801006_g_DemoSkills[844]="T� Di�n S� Ca";
x801006_g_DemoSkills[845]="Ngai Nh��c M�c K�";
x801006_g_DemoSkills[846]="Th�y Y�m Th�t Qu�n";
x801006_g_DemoSkills[847]="H�nh Thi T�u Nh�c";
x801006_g_DemoSkills[848]="�c Qu�n M�n Doanh";
--��ӵ��to� � �¼�Id�б�
x801006_g_eventList={834,835,836,837,838,839,840,841,842,843,844,845,846,847,848};
--**********************************
--�¼��������
--**********************************
function x801006_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan.");
--	for i=1,getn(x801006_g_eventList) do 
	for nIdx, nEvent in x801006_g_eventList do
		--�����ʾ����to� � ��ť 
		AddNumText(sceneId, nEvent, x801006_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x801006_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ngʲôto� � ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801006, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
