--NPCÑİÊ¾¼¼ÄÜÌØĞ§ÓÃ
--ÑİÊ¾NPC
--ÆÕÍ¨
--Cái này NPC×îºÃĞúng²»»á»¹ÊÖ,¿É¹¥»÷,µ«Ğúng²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801008_g_ScriptId = 801008;

--ÒªÑİÊ¾toÕ ğµ ¼¼ÄÜÁĞ±í 
x801008_g_DemoSkills = {};
--ÉùÃ÷·½·¨:   x801008_g_DemoSkills[¼¼ÄÜtoÕ ğµ ±àºÅ] = "¼¼ÄÜtoÕ ğµ Tên"; ×¢: ºóÃæ»á°Ñ¼¼ÄÜtoÕ ğµ ±àºÅµ±ÊÂ¼şºÅÊ¹ÓÃ 

x801008_g_DemoSkills[865]="LÕc mµc tiêu tiêu";
x801008_g_DemoSkills[866]="V÷ng mai chï khát";
x801008_g_DemoSkills[867]="Dß½ng Quan Tam Ği®p";
x801008_g_DemoSkills[868]="Dß½ng phù âm phän";
x801008_g_DemoSkills[869]="Dß½ng Ca Thiên Quân";
x801008_g_DemoSkills[870]="Dß½ng Xuân BÕch Tuyªt";
x801008_g_DemoSkills[871]="ĞÕp tuyªt vô ngân";
x801008_g_DemoSkills[872]="Quy tÑc công";
x801008_g_DemoSkills[873]="Môi h· rång lÕnh";
x801008_g_DemoSkills[874]="Th§p Di®n Mai Phøc";
x801008_g_DemoSkills[875]="Bao bi®n làm thay";
x801008_g_DemoSkills[876]="Qui khÑ lai h«";
x801008_g_DemoSkills[877]="B¢ng hß ngñ phong";
x801008_g_DemoSkills[878]="Tînh Änh Tr¥m Bích";
x801008_g_DemoSkills[879]="ĞÕi tßşng vô hình";

--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIdÁĞ±í
x801008_g_eventList={865,866,867,868,869,870,871,872,873,874,875,876,877,878,879};
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x801008_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan nghênh ğã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801008_g_eventList) do 
	for nIdx, nEvent in x801008_g_eventList do
		--Ìí¼ÓÑİÊ¾¼¼ÄÜtoÕ ğµ °´Å¥ 
		AddNumText(sceneId, nEvent, x801008_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x801008_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ğĞúngÊ²Ã´toÕ ğµ ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId, targetId,1,0,0,0,0);
	--CallScriptFunction( 801008, "LuaFnUnitUseSkill",sceneId, selfId, eventId , targetId);
	--return;
end
