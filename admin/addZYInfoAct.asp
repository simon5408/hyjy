<!--#include file="conn.asp" -->
<%
zy_type = request.form("zyType")
zy_name = Replace(request.form("zyName"), "'", "")
zy_info = Replace(request.form("zyInfo"), "'", "")
zy_xzfs = Replace(request.form("zyXzfs"), "'", "")
zy_skfs = Replace(request.form("zySkfs"), "'", "")
zy_kcsz = Replace(request.form("zyKcsz"), "'", "")
zy_bdtj = Replace(request.form("zyBdtj"), "'", "")
zy_bfzs = Replace(request.form("zyBfzs"), "'", "")
zy_jxdd = Replace(request.form("zyJxdd"), "'", "")
zy_bmzx = Replace(request.form("zyBmzx"), "'", "")
zy_bmxz = Replace(request.form("zyBmxz"), "'", "")
zy_date =  now()

exec="insert into zy_info (zy_type, zy_name, zy_info, zy_xzfs, zy_skfs, zy_kcsz, zy_bdtj, yc_bfzs, zy_jxdd, zy_bmzx, zy_bmxz, zy_date) values("&zy_type&",'"&zy_name&"','"&zy_info&"','"&zy_xzfs&"','"&zy_skfs&"','"&zy_kcsz&"','"&zy_bdtj&"','"&yc_bfzs&"','"&zy_jxdd&"','"&zy_bmzx&"','"&zy_bmxz&"','"&zy_date&"')"
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('Ìí¼Ó³É¹¦!');window.location.href='addZYInfo.asp';</script>")
%>
