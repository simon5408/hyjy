<!--#include file="conn.asp" -->
<%
xschoolId = request.form("xschoolId")
typeId = cint(request.form("typeId"))
xschoolName = request.form("xschoolId")
xschoolSumm = Replace(request.form("xschoolSumm"), "'", "")
xschoolInfo = Replace(request.form("xschoolInfo"), "'", "")
xschoolDate =  now()

exec="update xueli_school set xschool_name='"&xschoolName&"',xschool_summ='"&xschoolSumm&"',xschool_info='"&xschoolInfo&"',xschool_date='"&xschoolDate&"' where xschool_id= "&xschoolId&""
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('±à¼­³É¹¦!');window.location.href='listXueliInfo.asp?type='"&typeId&";</script>")
%>