-- ����
--����ܴ�ʦ
--��·�ű�
x500046_g_scriptId = 500046

-- ��·���� type: 1 Ϊ�����˵�, 2 Ϊֱ����·
x500046_g_Signpost = {
	{ type=2, name="��i s� tr�ng tr�t", x=277, y=167, tip="C�ng T�n ��i Th�c ", desc="Mu�n h�c l�m ru�ng xin t�i ru�ng c�a C�ng T�n ��i Th�c g�n ��ng M�n N�i, �ng ta � ��. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� khai th�c m�", x=214, y=117, tip="аng Ho� Kim ", desc="Mu�n h�c khai kho�ng xin t�m аng Ho� Kim, �ng � ph�a sau ti�m binh kh�, �n TAB ch�nh l� ch� vi�t ch� \"Thi�t\" tr�n b�n �", eventId=-1 },
	{ type=2, name="��i s� h�i thu�c", x=99, y=133, tip="L�u K� N� ", desc="��i s� l�m thu�c L�u K� N� � ti�m d��c n�m tr�n �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Ng� phu", x=103, y=157, tip="M�c T� L�ng ", desc="Ng� phu M�c T� L�ng � h߾ng Nam �߶ng l�n ph�a T�y, c�nh t�u �i�m. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� m� ngh�", x=207, y=195, tip="L� Minh Nguy�t ", desc="��i s� c�ng ngh� L� Minh Nguy�t � ph�a sau Th߽ng Ph� . �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� may v�", x=240, y=171, tip="Ho�ng L�ng Ba ", desc="��i s� may v� Ho�ng L�ng Ba � h߾ng Nam �߶ng l�n ph�a ��ng. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� luy�n kim", x=216, y=109, tip="Qu� Tam Chu� ", desc="��i s� l� r�n Qu� Tam Ch�y � ph�a sau ti�m binh kh�. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� n�u �n", x=117, y=157, tip="в T� Phi ", desc="��i s� n�u n߾ng в T� Phi � h߾ng Nam �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="��i s� ch� du�c", x=99, y=128, tip="Ph� �߽ng Quy ", desc="��i s� ch� d��c Ph� �߽ng Quy � h߾ng B�c �߶ng l�n ph�a T�y. �n ph�m TAB, tr�n b�n � c� k� hi�u nh�p nh�y", eventId=-1 },
	{ type=2, name="Tr�ng c�u ph�i ph߽ng", x=141, y=133, tip="Ti�u Cao", desc="#GMua l�i ph�i ph߽ng: #Wdo nh�ng sai s�t v� t�nh khi�n nh�ng th� ng߶i ch�i �� h�c nh�#G Ph�i ph߽ng gia c�ng nguy�n li�u, b�nh bao ph�i ph߽ng, s�/trung/cao c�p lo�i th�c t�i ph�i ph߽ng, Ch� X�ch Thi�n Nhai ph�i ph߽ng#W m�t �i, c� th� �n #GT� Ch�u", eventId=-1 },
	{ type=2, name="Gi�i thi�u gia c�ng nguy�n li�u", x=-1, y=-1, tip="Ph�ng Ch� Thi�t", desc="#{CLJG_20071204}", eventId=-1 },	
}

--**********************************
--�о��¼�
--**********************************
function x500046_OnEnumerate( sceneId, selfId, targetId )
	for i, signpost in x500046_g_Signpost do
		AddNumText(sceneId, x500046_g_scriptId, signpost.name, -1, i)
	end
end

--**********************************
--������ں���
--**********************************
function x500046_OnDefaultEvent( sceneId, selfId, targetId )
	signpost = x500046_g_Signpost[GetNumText()]

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
