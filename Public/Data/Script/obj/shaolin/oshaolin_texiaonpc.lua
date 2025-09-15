--NPCÑİÊ¾¼¼ÄÜÌØĞ§ÓÃ
--ÑİÊ¾NPC
--ÆÕÍ¨
--Cái này NPC×îºÃĞúng²»»á»¹ÊÖ,¿É¹¥»÷,µ«Ğúng²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801001_g_ScriptId = 801001;

--ÒªÑİÊ¾toÕ ğµ ¼¼ÄÜÁĞ±í 
x801001_g_DemoSkills = {};
--ÉùÃ÷·½·¨:   x801001_g_DemoSkills[¼¼ÄÜtoÕ ğµ ±àºÅ] = "¼¼ÄÜtoÕ ğµ Tên"; ×¢: ºóÃæ»á°Ñ¼¼ÄÜtoÕ ğµ ±àºÅµ±ÊÂ¼şºÅÊ¹ÓÃ 

x801001_g_DemoSkills[752]="Ban kh± chß·ng";
x801001_g_DemoSkills[753]="Kim Cu½ng Phøc Ma Khuyên";
x801001_g_DemoSkills[754]="Nh¤t Phách LßŞng Tän";
x801001_g_DemoSkills[755]="Vi Ğà ChØ";
x801001_g_DemoSkills[756]="Thiªt B¯ Sam";
x801001_g_DemoSkills[757]="Vô tß¾ng kiªp chï";
x801001_g_DemoSkills[758]="La Hán Tr§n";
x801001_g_DemoSkills[759]="Sß TØ H¯ng";
x801001_g_DemoSkills[760]="T× Hàng ph± ğµ";
x801001_g_DemoSkills[761]="L­ Kính Nhß Lai";
x801001_g_DemoSkills[762]="Nh¤t Vî Ğµ Giang";
x801001_g_DemoSkills[763]="Khí quán toàn thân";
x801001_g_DemoSkills[764]="Ma Kha Vô Lßşng";
x801001_g_DemoSkills[765]="Ğa La di®p chï";
x801001_g_DemoSkills[766]="Kim Chung Tráo";
 
--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIdÁĞ±í
x801001_g_eventList={752,753,754,755,756,757,758,759,760,761,762,763,764,765,766};
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x801001_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan nghênh ğã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801001_g_eventList) do 
	for nIdx, nEvent in x801001_g_eventList do
		--Ìí¼ÓÑİÊ¾¼¼ÄÜtoÕ ğµ °´Å¥ 
		AddNumText(sceneId, nEvent, x801001_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x801001_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ğĞúngÊ²Ã´toÕ ğµ ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId, 1,0,0,0,0);
	--CallScriptFunction( 801001, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
