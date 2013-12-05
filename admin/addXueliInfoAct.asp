<!--#include file="conn.asp" -->
<%

typeId = cint(request.form("typeId"))
xschoolName = request.form("xschoolName")
xschoolSumm = Replace(request.form("xschoolSumm"), "'", "")
xschoolInfo = Replace(request.form("xschoolInfo"), "'", "")
xschoolDate =  now()

exec="insert into xueli_school (xschool_type, xschool_name, xschool_summ, xschool_info, xschool_date) values("&typeId&",'"&xschoolName&"','"&xschoolSumm&"','"&xschoolInfo&"','"&xschoolDate&"')"
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('Ìí¼Ó³É¹¦!');window.location.href='adminConsole.asp';</script>")
%>
