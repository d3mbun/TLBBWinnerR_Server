-- Á¬»·¸±±¾»ØThành th¸toÕ ðµ ´«ËÍ ði¬m

x050105_g_ScriptId = 050105
x050105_g_ControlScript = 050100

x050105_g_Back_X = 60
x050105_g_Back_Z = 161

-- Íæ¼Ò½øÈë´«ËÍ ði¬m
function x050105_OnEnterArea( sceneId, selfId )
	--CallScriptFunction( x050105_g_ControlScript, "Exit", sceneId, selfId )	
	--2007.12.6 by alan,·ÀÖ¹×é¶Ó¸úËætoÕ ðµ Ðµi viên ±»´«ËÍ ði¬m´«×ß
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, oldsceneId,x050105_g_Back_X,x050105_g_Back_Z)
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ði¬m
function x050105_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ði¬m
function x050105_OnLeaveArea( sceneId, selfId )
	return
end
