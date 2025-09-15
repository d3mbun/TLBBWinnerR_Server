
--Thúc Hà C± Tr¤n*³¡¾°¹¦ÄÜÉè¼Æ*ÌìÆøH® th¯ng½Å±¾ÖÆ×÷

--½Å±¾ºÅ
x820001_g_ScriptId	= 820001

--¸ÅÂÊÒÔ10000Îª100%

x820001_WeatherRand ={
												3000,--ÓêÌì
												1000,--´óÎí
												1000,--¹Î·ç
															--ÆäËûÎªÇçÌì
											}

x820001_WeatherEffect = {
													19,--ÓêÌì
													17,--´óÎí
													18,--¹Î·ç
															--Ä¬ÈÏÎªÇçÌì
												} 
	
	x820001_WeatherTime = {
													
													24*60*60,--ÓêÌì 1Ìì µ¥Î» giây
													24*60*60,--´óÎí 1Ìì µ¥Î» giây
													24*60*60,--¹Î·ç 1Ìì µ¥Î» giây
															--Ä¬ÈÏÎªÇçÌì
												}											
											
--**********************************
--½Å±¾Èë¿Úº¯Êı
--**********************************
function x820001_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )
	
	--M· ra »î¶¯....
	StartOneActivity( sceneId, actId, 180*1000, iNoticeType )

	local randweather = random(10000);
	
	--ÉèÖÃÌìÆø±ä»¯
	if randweather < x820001_WeatherRand[1]+ 1 then
		LuaFnSetSceneWeather(sceneId, x820001_WeatherEffect[1],  x820001_WeatherTime[1]* 1000 );
	elseif randweather < x820001_WeatherRand[1] + x820001_WeatherRand[2] + 1 then
		LuaFnSetSceneWeather(sceneId, x820001_WeatherEffect[2], x820001_WeatherTime[2] * 1000 );
	elseif randweather < x820001_WeatherRand[1] + x820001_WeatherRand[2] + x820001_WeatherRand[3] + 1 then
		LuaFnSetSceneWeather(sceneId, x820001_WeatherEffect[3], x820001_WeatherTime[3] * 1000 );
	end

end

--**********************************
--ĞÄÌøº¯Êı
--**********************************
function x820001_OnTimer( sceneId, actId, uTime )

	--¼ì²â»î¶¯Ğúng·ñ¹ıÆÚ
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end


