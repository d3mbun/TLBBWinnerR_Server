-- ´óÀí
--æäÕ¾
--ÎÊÂ·½Å±¾
x500043_g_scriptId = 500043

-- ÎÊÂ·ÀàĞÍ type: 1 Îª¶ş¼¶²Ëµ¥, 2 ÎªÖ±½ÓÎÊÂ·
x500043_g_Signpost = {
	{ type=2, name="D¸ch trÕm", x=241, y=136, tip="Thôi Phùng CØu", desc="Ğß¶ng xa vÕn d£m, nát vÕn cu¯n thß, mu¯n thåm thú các n½i khác, D¸ch trÕm là n½i thu§n ti®n nh¤t. Lão Thôi · D¸ch trÕm · tÕi hß¾ng B¡c ğß¶ng l¾n phía Ğông. „n phím TAB, trên bän ğ° có kı hi®u nh¤p nháy", eventId=-1 },
}

--**********************************
--ÁĞ¾ÙÊÂ¼ş
--**********************************
function x500043_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500043_g_Signpost do
		AddNumText(sceneId, x500043_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--ÈÎÎñÈë¿Úº¯Êı
--**********************************
function x500043_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500043_g_Signpost[GetNumText()]

	if signpost.type == 1 then
		BeginEvent(sceneId)
			AddText(sceneId, signpost.name .. ": ")
			CallScriptFunction( signpost.eventId, "OnEnumerate", sceneId, selfId, targetId )
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	elseif signpost.type == 2 then
		CallScriptFunction( SCENE_SCRIPT_ID, "AskTheWay", sceneId, selfId, sceneId, signpost.x, signpost.y, signpost.tip )

		BeginEvent(sceneId)
			AddText(sceneId, signpost.desc)
		EndEvent(sceneId)
		DispatchEventList(sceneId, selfId, targetId)
	end

end
