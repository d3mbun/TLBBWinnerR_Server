--�to� � ȱʡ�ű�

--�ű���
x808000_g_ScriptId	= 808000

--**********************************
--�ű���ں���
--**********************************
function x808000_OnDefaultEvent( sceneId, actId, iNoticeType, param2, param3, param4, param5 )

	--����� �i�m�: ����ID,�ID,ʱ����,��������(���Բ���,Ĭ����ͨ��������)
	StartOneActivity( sceneId, actId, floor(60*1000), iNoticeType )

end

--**********************************
--��������
--**********************************
function x808000_OnTimer( sceneId, actId, uTime )

	--�����ng�����
	if CheckActiviyValidity( sceneId, actId ) == 0 then
		StopOneActivity( sceneId, actId )
	end

end
