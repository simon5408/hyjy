<!--#include file="conn.asp" -->
<%
viId = request.form("viId")
viOrder = request.form("viOrder")

exec="update vip_img set vi_order="&viOrder&" where vi_id= "&viId&""
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('VIPÍ¼Æ¬±à¼­³É¹¦!');window.location.href='listVipImages.asp';</script>")
%>