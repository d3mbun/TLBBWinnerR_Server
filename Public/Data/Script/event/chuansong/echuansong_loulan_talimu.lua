--��ӵ�е��¼�ID�б�
x400943_g_Transport = 400900

--��ҽ���һ�� area ʱ����
function x400943_OnEnterArea( sceneId, selfId )
        if GetLevel( sceneId, selfId ) < 90 then 
		BeginEvent( sceneId )
			AddText( sceneId, "  Ngo�i th�nh r�t nguy hi�m, v� l�i ��ng c�p c�a c�c h� ch�a �n 90, v� s� an to�n c�a c�c h�, h�y luy�n l�n c�p 90 xong r�i c� th� ra ngo�i th�nh." )
		EndEvent( sceneId )
		DispatchEventList( sceneId, selfId, -1 )
	else 
		CallScriptFunction((x400943_g_Transport), "TransferFunc",sceneId, selfId, 425, 31, 27, 90, 1000)
	end
	
end


--�����һ�� area ����һ��ʱ��û����ʱ����
function x400943_OnTimer( sceneId, selfId )
	-- ���룬������� area ͣ�������
	StandingTime = QueryAreaStandingTime( sceneId, selfId )
	-- 5�����δ����
	if StandingTime >= 5000 then
		x400943_OnEnterArea( sceneId, selfId )
		ResetAreaStandingTime( sceneId, selfId, 0 )
	end
end

--����뿪һ�� area ʱ����
function x400943_OnLeaveArea( sceneId, selfId )
end
