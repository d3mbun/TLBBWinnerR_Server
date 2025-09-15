-- Á¬»·¸±±¾»ØThành th¸toÕ ðµ ´«ËÍ ði¬m

x050104_g_ScriptId = 050104
x050104_g_ControlScript = 050101

x050104_g_Back_X = 250
x050104_g_Back_Z = 107

-- Íæ¼Ò½øÈë´«ËÍ ði¬m
function x050104_OnEnterArea( sceneId, selfId )
	--CallScriptFunction( x050104_g_ControlScript, "Exit", sceneId, selfId )	
	--2007.12.6 by alan,·ÀÖ¹×é¶Ó¸úËætoÕ ðµ Ðµi viên ±»´«ËÍ ði¬m´«×ß
	local oldsceneId = LuaFnGetCopySceneData_Param( sceneId, 3 )				-- È¡ ði¬m¸±±¾Èë¿Ú³¡¾°ºÅ
	CallScriptFunction((400900), "TransferFunc",sceneId, selfId, oldsceneId,x050104_g_Back_X,x050104_g_Back_Z)
end

-- Íæ¼ÒÍ£ÁôTÕi ´«ËÍ ði¬m
function x050104_OnTimer( sceneId, selfId )
	return
end

-- Íæ¼ÒÀë¿ª´«ËÍ ði¬m
function x050104_OnLeaveArea( sceneId, selfId )
	return
end
