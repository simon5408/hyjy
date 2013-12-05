<!--#include file="conn.asp" -->
<%

crSchName = request.form("crSchName")
crSchInfo = Replace(request.form("crSchInfo"), "'", "")
crSchGk = Replace(request.form("crSchGk"), "'", "")
crAddr = Replace(request.form("crAddr"), "'", "")
crSpec = Replace(request.form("crSpec"), "'", "")
crStudyLc = Replace(request.form("crStudyLc"), "'", "")
crDate =  now()

exec="insert into crxl_info (cr_sch_name, cr_sch_info, cr_sch_gk, cr_addr, cr_spec, cr_study_lc, cr_date) values('"&crSchName&"','"&crSchInfo&"','"&crSchGk&"','"&crAddr&"','"&crSpec&"','"&crStudyLc&"','"&crDate&"')"
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('Ìí¼Ó³É¹¦!');window.location.href='addCRXueliInfo.asp';</script>")
%>
