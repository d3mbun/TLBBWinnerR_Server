--NPCÑİÊ¾¼¼ÄÜÌØĞ§ÓÃ
--ÑİÊ¾NPC
--ÆÕÍ¨
--Cái này NPC×îºÃĞúng²»»á»¹ÊÖ,¿É¹¥»÷,µ«Ğúng²»»áÊÜµ½ÈÎºÎÉËº¦
--½Å±¾ºÅ
x801006_g_ScriptId = 801006;

--ÒªÑİÊ¾toÕ ğµ ¼¼ÄÜÁĞ±í 
x801006_g_DemoSkills = {};
--ÉùÃ÷·½·¨:   x801006_g_DemoSkills[¼¼ÄÜtoÕ ğµ ±àºÅ] = "¼¼ÄÜtoÕ ğµ Tên"; ×¢: ºóÃæ»á°Ñ¼¼ÄÜtoÕ ğµ ±àºÅµ±ÊÂ¼şºÅÊ¹ÓÃ 

x801006_g_DemoSkills[834]="Liên Châu Hü Thi Ğµc";
x801006_g_DemoSkills[835]="Th¤t tinh th¤u c¯t";
x801006_g_DemoSkills[836]="†m Tr¤m Chï Khát";
x801006_g_DemoSkills[837]="Ğà Nê Ğ¾i ThuÖ";
x801006_g_DemoSkills[838]="Tiêu Ğ¥u Lan NgÕch";
x801006_g_DemoSkills[839]="Di Hoa Tiªp Mµc";
x801006_g_DemoSkills[840]="Tiªu Lı Tàng Ğao";
x801006_g_DemoSkills[841]="Tiªu Kh¦u Thß¶ng Khai";
x801006_g_DemoSkills[842]="Tiªu Ngæ Giäi Di";
x801006_g_DemoSkills[843]="Hàm Sa XÕ Änh";
x801006_g_DemoSkills[844]="TÑ Di®n S· Ca";
x801006_g_DemoSkills[845]="Ngai Nhßşc Mµc Kê";
x801006_g_DemoSkills[846]="Thüy Yêm Th¤t Quân";
x801006_g_DemoSkills[847]="Hành Thi T¦u Nhøc";
x801006_g_DemoSkills[848]="Ác Quán Mãn Doanh";
--ËùÓµÓĞtoÕ ğµ ÊÂ¼şIdÁĞ±í
x801006_g_eventList={834,835,836,837,838,839,840,841,842,843,844,845,846,847,848};
--**********************************
--ÊÂ¼ş½»»¥Èë¿Ú
--**********************************
function x801006_OnDefaultEvent( sceneId, selfId,targetId )
	AbilityLevel = QueryHumanAbilityLevel( sceneId, selfId, ABILITY_ZHONGZHI);
	BeginEvent(sceneId);
	AddText(sceneId, "    Hoan nghênh ğã t¾i. Xin m¶i lña ch÷n các kÛ nång mu¯n thåm quan.");
--	for i=1,getn(x801006_g_eventList) do 
	for nIdx, nEvent in x801006_g_eventList do
		--Ìí¼ÓÑİÊ¾¼¼ÄÜtoÕ ğµ °´Å¥ 
		AddNumText(sceneId, nEvent, x801006_g_DemoSkills[nEvent]);
	end
	EndEvent(sceneId);
	DispatchEventList(sceneId, selfId, targetId);

end

--**********************************
--ÊÂ¼şÁĞ±íÑ¡ÖĞmµt Ïî
--**********************************
function x801006_OnEventRequest( sceneId, selfId, targetId, eventId )
	--ÎÊÌâselfId,ºÍTargetId·Ö±ğĞúngÊ²Ã´toÕ ğµ ID? 
	LuaFnUnitUseSkill(sceneId, selfId, eventId,targetId,1,0,0,0,0);
	--CallScriptFunction( 801006, "LuaFnUnitUseSkill",sceneId, selfId, eventId, targetId );
	--return;
end
