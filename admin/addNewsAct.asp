<!--#include file="conn.asp" -->
<%

typeId = cint(request.form("typeId"))
newsTitle = request.form("newsTitle")
newsInfo = Replace(request.form("newsInfo"), "'", "")
newsDate =  now()

exec="insert into news (news_type, news_title, news_info, news_date) values("&typeId&",'"&newsTitle&"','"&newsInfo&"','"&newsDate&"')"
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('��ӳɹ�!');window.location.href='adminConsole.asp';</script>")
%>
