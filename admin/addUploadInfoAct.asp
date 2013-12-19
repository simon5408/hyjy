<!--#include file="conn.asp" -->
<%
dlid = request.form("dlid")
fileTitle = request.form("fileTitle")
dlDate =  now()

exec="update download_info set file_title = '"&fileTitle&"', dl_date = '"&dlDate&"' where dl_id = "&dlid&""
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('Ìí¼Ó³É¹¦!');window.location.href='adminConsole.asp';</script>")
%>
