--NPC��ʾ������Ч��
--��ʾNPC
--��ͨ
--C�i n�y NPC�����ng���ỹ��,�ɹ���,����ng�����ܵ��κ��˺�
--�ű���
x801001_g_ScriptId = 801001;

--Ҫ��ʾto� � �����б� 
x801001_g_DemoSkills = {};
--��������:   x801001_g_DemoSkills[����to� � ���] = "����to� � T�n"; ע: �����Ѽ���to� � ��ŵ��¼���ʹ�� 

x801001_g_DemoSkills[752]="Ban kh� ch߷ng";
x801001_g_DemoSkills[753]="Kim Cu�ng Ph�c Ma Khuy�n";
x801001_g_DemoSkills[754]="Nh�t Ph�ch L��ng T�n";
x801001_g_DemoSkills[755]="Vi �� Ch�";
x801001_g_DemoSkills[756]="Thi�t B� Sam";
x801001_g_DemoSkills[757]="V� t߾ng ki�p ch�";
x801001_g_DemoSkills[758]="La H�n Tr�n";
x801001_g_DemoSkills[759]="S� T� H�ng";
x801001_g_DemoSkills[760]="T� H�ng ph� �";
x801001_g_DemoSkills[761]="L� K�nh Nh� Lai";
x801001_g_DemoSkills[762]="Nh�t V� е Giang";
x801001_g_DemoSkills[763]="Kh� qu�n to�n th�n";
x801001_g_DemoSkills[764]="Ma Kha V� L��ng";
x801001_g_DemoSkills[765]="�a La di�p ch�";
x801001_g_DemoSkills[766]="Kim Chung Tr�o";
 
--��ӵ��to� � �¼�Id�б�
x801001_g_eventList={752,753,754,755,756,757,758,759,760,761,762,763,764,765,766};
--**********************************
--�¼��������
--**********************************
function x801001_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan ngh�nh �� t�i. Xin m�i l�a ch�n c�c k� n�ng mu�n th�m quan.");
--	for i=1,getn(x801001_g_eventList) do 
	for nIdx, nEvent in x801001_g_eventList do
		--�����ʾ����to� � ��ť 
		AddNumText(sceneId, nEvent, x801001_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--�¼��б�ѡ��m�t ��
--**********************************
function x801001_OnEventRequest( sceneId, selfId, targetId, eventId )
	--����selfId,��TargetId�ֱ���ngʲôto� � ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId, 1,0,0,0,0);
	--CallScriptFunction( 801001, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
