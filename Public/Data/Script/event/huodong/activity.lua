--»î¶¯toÕ ðµ È±Ê¡½Å±¾

--½Å±¾ºÅ
x808000_g_ScriptId	= 808000

--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x808000_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--²ÎÊýË ði¬m÷: ³¡¾°ID,»î¶¯ID,Ê±¼ä¼ä¸ô,¹«¸æÀàÐÍ(¿ÉÒÔ²»´«,Ä¬ÈÏÆÕÍ¨¹«¸æÀàÐÍ)
	StartOneActivity( sceneId, actId, floor(60*1000), iNoticeType )

end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x808000_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯Ðúng·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end
