<!--#include file="conn.asp" -->
<%

fileTitle = request.form("fileTitle")
fileName = request.form("fileName")
dlDate =  now()

exec="insert into download_info (file_title, file_name, dl_date) values('"&fileTitle&"','"&fileName&"','"&dlDate&"')"
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('Ìí¼Ó³É¹¦!');window.location.href='adminConsole.asp';</script>")
%>
