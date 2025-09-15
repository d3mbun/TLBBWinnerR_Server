--门派令牌

-- 脚本号
x892100_g_ScriptId	= 892100

function x892100_Tips( sceneId, selfId,msg )
BeginEvent( sceneId )
		AddText( sceneId, msg)
	EndEvent( sceneId )
	DispatchMissionTips( sceneId, selfId )
end
--**********************************
-- 事件交互入口
--**********************************
function x892100_OnDefaultEvent( sceneId, selfId )

end

function x892100_OnActivateOnce( sceneId, selfId )
	local itemTblIndex = LuaFnGetItemIndexOfUsedItem( sceneId, selfId )
	if itemTblIndex==38000287 then
		local pos = TryRecieveItem( sceneId, selfId, 10157001, 1 )
		if pos==-1 then
			x892100_Tips( sceneId, selfId, "背包空间不足" )
			return
		end
		DelItem(sceneId,selfId,itemTblIndex,1)
		return
	end
	if GetItemCount(sceneId, selfId, itemTblIndex)<20 then
		x892100_Tips( sceneId, selfId,"您的碎片不足20个，请检查" )
		return
	end
	local pos = TryRecieveItem( sceneId, selfId, itemTblIndex-100, 20 )
	if pos==-1 then
		x892100_Tips( sceneId, selfId, "背包空间不足" )
		return
	end
	DelItem(sceneId,selfId,itemTblIndex,20)
end

--**********************************
-- 返回1：已经取消对应效果，不再执行后续操作；返回0：没有检测到相关效果，继续执行。
--**********************************
function x892100_CancelImpacts( sceneId, selfId )
	return 0
end

--**********************************
--消耗检测及处理入口，负责消耗的检测和执行：
--返回1：消耗处理通过，可以继续执行；返回0：消耗检测失败，中断后续执行。
--**********************************
function x892100_OnDeplete( sceneId, selfId )
	return 1
end

--**********************************
-- 条件检测入口：返回1：条件检测通过，可以继续执行；返回0：条件检测失败，中断后续执行。
--**********************************
function x892100_OnConditionCheck( sceneId, selfId )
	return 1
end
--**********************************
-- 
--**********************************
function x892100_IsSkillLikeScript( sceneId, selfId)
	return 1
end