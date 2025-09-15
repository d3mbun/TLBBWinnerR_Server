--BOSS����㲥�ű�

--�ű���
x050044_g_ScriptId = 050044

--�������ؽű��ű���....
x050044_g_MainScriptId = 050030

--��ͨ�㲥ȯ��Ŀ��....
x050044_g_ChapterTblA = {

	[1] = { id=2,  name="Ca kh�c: H߾ng thi�n t� ng� tr�m n�m"				},
	[2] = { id=3,  name="Ca kh�c: B�o v� tam ho�n"						},
	[3] = { id=5,  name="Ca kh�c: Kh�e m�nh ca"								},
	[4] = { id=6,  name="Ca kh�c: Chim c�nh c�c v߾ng chuy�n x�a"					},
	[5] = { id=8,  name="Ca kh�c: Song ch߽ng c�n"								},
	[6] = { id=10, name="Ca kh�c: Nh�t ki�n chung t�nh"							},

}

--�߼��㲥ȯ��Ŀ��....
x050044_g_ChapterTblB = {

	[1] = { id=2,  name="Ca kh�c: H߾ng thi�n t� ng� tr�m n�m"				},
	[2] = { id=3,  name="Ca kh�c: B�o v� tam ho�n"						},
	[3] = { id=5,  name="Ca kh�c: Kh�e m�nh ca"								},
	[4] = { id=6,  name="Ca kh�c: Chim c�nh c�c v߾ng chuy�n x�a"					},
	[5] = { id=7,  name="Ca kh�c: C�i b�ng v�"								},
	[5] = { id=8,  name="Ca kh�c: Song ch߽ng c�n"								},
	[6] = { id=10, name="Ca kh�c: Nh�t ki�n chung t�nh"							},
	[8] = { id=11, name="Ca kh�c: Ch�ng ta l� c�c ph�m b�o v�t ng߶i n�i"	},

}

--��ͨ�㲥ȯID....
x050044_g_TicketIdA = 30900046

--�߼��㲥ȯID....
x050044_g_TicketIdB = 30900047


--**********************************
--�¼��������
--**********************************
function x050044_OnDefaultEvent( sceneId, selfId,targetId )

	local NumText = GetNumText()

	if NumText == 0	then

		--��ʾ��ͨ�㲥ȯ��Ŀ�б�....
		BeginEvent(sceneId)
			AddText(sceneId,"#{CWDB_20080225_02}")
			local ChapterCount = getn( x050044_g_ChapterTblA )
			for i=1, ChapterCount do
				AddNumText( sceneId, x050044_g_ScriptId, x050044_g_ChapterTblA[i].name, 6, i+100 )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	elseif NumText == 1	then

		--��ʾ�߼��㲥ȯ��Ŀ�б�....
		BeginEvent(sceneId)
			AddText(sceneId,"#{CWDB_20080225_03}")
			local ChapterCount = getn( x050044_g_ChapterTblB )
			for i=1, ChapterCount do
				AddNumText( sceneId, x050044_g_ScriptId, x050044_g_ChapterTblB[i].name, 6, i+200 )
			end
		EndEvent(sceneId)
		DispatchEventList(sceneId,selfId,targetId)

	end

	if NumText > 200 then

		--ʹ�ø߼��㲥ȯ�㲥��Ŀ....
		x050044_DianBo( sceneId, selfId, targetId, 2, NumText - 200 )

	elseif NumText > 100 then

		--ʹ����ͨ�㲥ȯ�㲥��Ŀ....
		x050044_DianBo( sceneId, selfId, targetId, 1, NumText - 100 )

	end

end


--**********************************
--�о��¼�
--**********************************
function x050044_OnEnumerate( sceneId, selfId, targetId )

--		AddNumText( sceneId, x050044_g_ScriptId, "��ͨ�㲥��㲥", 6, 0 )
--		AddNumText( sceneId, x050044_g_ScriptId, "�߼��㲥��㲥", 6, 1 )

end


--**********************************
--�㲥ָ����Ŀ....
--**********************************
function x050044_DianBo( sceneId, selfId, targetId, type, idx )

	--��⵱ǰ�Ƿ��ڲ��Ž�Ŀ....
	if 1 == CallScriptFunction( x050044_g_MainScriptId, "IsChapterPlaying", sceneId ) then
		BeginEvent(sceneId)
			AddText( sceneId, "#{CWDB_20080225_04}" )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	local ChapterData = nil
	if type == 1 then
		ChapterData = x050044_g_ChapterTblA[idx]
	elseif type == 2 then
		ChapterData = x050044_g_ChapterTblB[idx]
	end
	if not ChapterData then
		return
	end

	local needItemId = -1
	if type == 1 then
		needItemId = x050044_g_TicketIdA
	elseif type == 2 then
		needItemId = x050044_g_TicketIdB
	end

	local needItemName = "#{_ITEM"..needItemId.."}"
	local msgNoItem = "Ng߽i kh�ng c� mang theo "..needItemName..". n�n kh�ng th� ch�n ti�t m�c!"

	--����Ƿ��е㲥����....
	if LuaFnGetAvailableItemCount(sceneId, selfId, needItemId) < 1 then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--ɾ��ǰ��ȡ���ߵ�Transfer....
	local itemPos = GetItemBagPos( sceneId, selfId, needItemId, 1 )
	if itemPos < 0 then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end
	local needItemTransfer = GetBagItemTransfer(sceneId,selfId,itemPos)

	--ɾ���㲥����....
	if 1 ~= LuaFnDelAvailableItem( sceneId, selfId, needItemId, 1 ) then
		BeginEvent(sceneId)
			AddText( sceneId, msgNoItem )
		EndEvent(sceneId)
		DispatchMissionTips( sceneId, selfId )
		return
	end

	--�㲥....
	CallScriptFunction( x050044_g_MainScriptId, "PlayChapter", sceneId, ChapterData.id )

	--����....
	local PlayerName = GetName(sceneId, selfId)
	local str
	if type == 1 then
		str = format( "#{_INFOUSR%s}#P s� d�ng #{_INFOMSG%s}#P c� th� ch� �i�m t�n xu�n BOSS li�n hoan h�i tuy�t ��i b� ph�n ti�t m�c nga, ph�n kh�ch kh�ng th� b� qua!!", PlayerName, needItemTransfer )
	elseif type == 2 then
		str = format( "#{_INFOUSR%s}#P s� d�ng #{_INFOMSG%s}#P t�n xu�n BOSS li�n quan h�i ti�t m�c t�y � �i�m, ph�n kh�ch kh�ng th� b� qua!!", PlayerName, needItemTransfer )
	end
	BroadMsgByChatPipe( sceneId, selfId, str, 4 )

	--�رնԻ���....
	BeginUICommand(sceneId)
	EndUICommand(sceneId)
	DispatchUICommand(sceneId,selfId, 1000)

end
