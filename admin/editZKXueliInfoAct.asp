<!--#include file="conn.asp" -->
<%
zk_id = request.form("zk_id")
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

exec="update zk_info set zk_type="&zk_type&",zk_level="&zk_level&",zk_name='"&zk_name&"',zk_zyjj='"&zk_zyjj&"',zk_price='"&zk_price&"',zk_time='"&zk_time&"',zk_khfz='"&zk_khfz&"',zk_bybz='"&zk_bybz&"',zk_kctd='"&zk_kctd&"',zk_bmdz='"&zk_bmdz&"',zk_kcjs='"&zk_kcjs&"',zk_kcap='"&zk_kcap&"',zk_date='"&zk_date&"' where zk_id= "&zk_id&""

conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('±à¼­³É¹¦!');window.location.href='addZKXueliInfo.asp';</script>")
%>
