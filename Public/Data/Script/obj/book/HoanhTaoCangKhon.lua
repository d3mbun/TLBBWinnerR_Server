--
x808238_g_ScriptId = 808238

--**********************************
--....
--**********************************
function x808238_OnImpactFadeOut( sceneId, selfId, impactId )
	if GetHp( sceneId, selfId ) == 0 then
		return
	end
	--cho ban than
	--mien dich
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 29550, 0 )
	--ko su dung skill
	LuaFnSendSpecificImpactToUnit( sceneId, selfId, selfId, selfId, 29551, 0 )
end
--**********************************
-- 心法加成
--**********************************
function x808238_NotifyFailTips( sceneId, selfId, Tip )
	BeginEvent( sceneId )
		AddText( sceneId, Tip )
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end