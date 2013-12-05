<!--#include file="conn.asp" -->
<%
zk_type = request.form("zkType")
zk_level = request.form("zkLevel")
zk_name = Replace(request.form("zkName"), "'", "")
zk_zyjj = Replace(request.form("zkZyjj"), "'", "")
zk_price = Replace(request.form("zkPrice"), "'", "")
zk_time = Replace(request.form("zkTime"), "'", "")
zk_khfz = Replace(request.form("zkKhfz"), "'", "")
zk_bybz = Replace(request.form("zkBybz"), "'", "")
zk_kctd = Replace(request.form("zkKctd"), "'", "")
zk_bmdz = Replace(request.form("zkBmdz"), "'", "")
zk_kcjs = Replace(request.form("zkKcjs"), "'", "")
zk_kcap = Replace(request.form("zkKcap"), "'", "")
zk_date =  now()

exec="insert into zk_info (zk_type, zk_level, zk_name, zk_zyjj, zk_price, zk_time, zk_khfz, zk_bybz, zk_kctd, zk_bmdz, zk_kcjs, zk_kcap, zk_date) values("&zk_type&","&zk_level&",'"&zk_name&"','"&zk_zyjj&"','"&zk_price&"','"&zk_time&"','"&zk_khfz&"','"&zk_bybz&"','"&zk_kctd&"','"&zk_bmdz&"','"&zk_kcjs&"','"&zk_kcap&"','"&zk_date&"')"
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('Ìí¼Ó³É¹¦!');window.location.href='addZKXueliInfo.asp';</script>")
%>
