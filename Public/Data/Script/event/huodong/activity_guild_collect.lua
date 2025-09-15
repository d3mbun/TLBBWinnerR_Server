--°ïÅÉÊÕ¼¯toÕ ðµ »î¶¯½Å±¾
--Created by zchw
--½Å±¾ºÅ
x808041_g_ScriptId	= 808041
x808041_g_Time = 2000;

--**********************************
--½Å±¾Èë¿Úº¯Êý
--**********************************
function x808041_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--²ÎÊýË ði¬m÷: ³¡¾°ID,»î¶¯ID,Ê±¼ä¼ä¸ô,¹«¸æÀàÐÍ(¿ÉÒÔ²»´«,Ä¬ÈÏÆÕÍ¨¹«¸æÀàÐÍ)
	StartOneActivity( sceneId, actId, floor(60*1000), iNoticeType )

end

--**********************************
--ÐÄÌøº¯Êý
--**********************************
function x808041_OnTimer( sceneId, actId, uTime )
	local curTime = GetHour()*100 + GetMinute();
	if curTime >= x808041_g_Time and curTime < x808041_g_Time+1 then
		--°ïÅÉÊÕ¼¯ ÅÅÃû
		LuaFnSortGuildCollectNum(sceneId); 		
	end
	--¼ì²â»î¶¯Ðúng·ñ¹ýÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		LuaFnClearGuildCollectNum(sceneId);
		StopOneActivity( sceneId, actId )
	end
end
