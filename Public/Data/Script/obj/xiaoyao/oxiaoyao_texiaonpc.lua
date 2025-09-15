--NPCÑİÊ¾¼¼ÄÜÌØĞ§ÓÃ
--ÑİÊ¾NPC
--ÆÕÍ¨
--Cái này NPC×îºÃĞúng²»»á»¹ÊÖ,¿É¹¥»÷,µ«Ğúng²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801009_g_ScriptId = 801009;

--ÒªÑİÊ¾toÕ ğµ ¼¼ÄÜÁĞ±í 
x801009_g_DemoSkills = {};
--ÉùÃ÷·½·¨:   x801009_g_DemoSkills[¼¼ÄÜtoÕ ğµ ±àºÅ] = "¼¼ÄÜtoÕ ğµ Tên"; ×¢: ºóÃæ»á°Ñ¼¼ÄÜtoÕ ğµ ±àºÅµ±ÊÂ¼şºÅÊ¹ÓÃ 

x801009_g_DemoSkills[881]="V÷ng dß½ng hßng thán";
x801009_g_DemoSkills[882]="H° Ği®p Tr§n";
x801009_g_DemoSkills[883]="Bát Môn Kim Toä";
x801009_g_DemoSkills[884]="Nh¤t Tñ Trß¶ng Xà";
x801009_g_DemoSkills[885]="Thái „t Tam Tài";
x801009_g_DemoSkills[886]="Bát Tr§n Ğ°";
x801009_g_DemoSkills[887]="Hoä Nhãn Kim Tinh";
x801009_g_DemoSkills[888]="Chúng Di®u Chi Môn";
x801009_g_DemoSkills[889]="Th¥n Quang Ly Hşp";
x801009_g_DemoSkills[890]="Lång Ba Vi Bµ";
x801009_g_DemoSkills[891]="Læ Sß½ng Bång Chï";
x801009_g_DemoSkills[892]="Døc C¥m Ğ¸ch Tung";
x801009_g_DemoSkills[893]="Thoái BÕt Tam Xá";
x801009_g_DemoSkills[894]="Tri«u tam mµ tÑ";
x801009_g_DemoSkills[895]="Nh¤t Hô Bách ºng";

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIdÁĞ±í
x801009_g_eventList={881,882,883,884,885,886,887,888,889,890,891,892,893,894,895};
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x801009_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan nghênh ğã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801009_g_eventList) do 
	for nIdx, nEvent in x801009_g_eventList do
		--Ìí¼ÓÑİÊ¾¼¼ÄÜtoÕ ğµ °´Å¥ 
		AddNumText(sceneId, nEvent, x801009_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x801009_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ğĞúngÊ²Ã´toÕ ğµ ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801009, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
