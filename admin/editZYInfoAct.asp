<!--#include file="conn.asp" -->
<%
zy_id = request.form("zyId")
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

exec="update zy_info set zy_type="&zy_type&",zy_name='"&zy_name&"',zy_info='"&zy_info&"',zy_xzfs='"&zy_xzfs&"',zy_skfs='"&zy_skfs&"',zy_kcsz='"&zy_kcsz&"',zy_bdtj='"&zy_bdtj&"',zy_bfzs='"&zy_bfzs&"',zy_jxdd='"&zy_jxdd&"',zy_bmzx='"&zy_bmzx&"',zy_bmxz='"&zy_bmxz&"',zy_date='"&zy_date&"' where zy_id= "&zy_id&""
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('�༭�ɹ�!');window.location.href='listZYInfo.asp?type="&zy_type&"';</script>")
%>
