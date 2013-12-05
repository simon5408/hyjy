<!--#include file="conn.asp" -->
<%
crId = request.form("crId")
crSchName = request.form("crSchName")
crSchInfo = Replace(request.form("crSchInfo"), "'", "")
crSchGk = Replace(request.form("crSchGk"), "'", "")
crAddr = Replace(request.form("crAddr"), "'", "")
crSpec = Replace(request.form("crSpec"), "'", "")
crStudyLc = Replace(request.form("crStudyLc"), "'", "")
crDate =  now()

exec="update crxl_info set cr_sch_name='"&crSchName&"',cr_sch_info='"&crSchInfo&"',cr_sch_gk='"&crSchGk&"',cr_addr='"&crAddr&"',cr_spec='"&crSpec&"',cr_study_lc='"&crStudyLc&"',cr_date='"&crDate&"' where cr_id= "&crId&""
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('±à¼­³É¹¦!');window.location.href='listCRXueliInfo.asp';</script>")
%>