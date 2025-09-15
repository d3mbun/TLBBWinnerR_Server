--慕容NPC
--风千里
--普通

x009042_g_shoptableindex=149

--**********************************
--事件交互入口
--**********************************
function x009042_OnDefaultEvent( sceneId, selfId,targetId )
	DispatchShopItem( sceneId, selfId,targetId, x009042_g_shoptableindex )
end
