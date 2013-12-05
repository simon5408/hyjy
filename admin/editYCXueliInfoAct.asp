<!--#include file="conn.asp" -->
<%
ycId = request.form("ycId")
ycName = Replace(request.form("ycName"), "'", "")
ycInfo = Replace(request.form("ycInfo"), "'", "")
ycXzlx = Replace(request.form("ycXzlx"), "'", "")
ycSkfs = Replace(request.form("ycSkfs"), "'", "")
ycZysz = Replace(request.form("ycZysz"), "'", "")
ycXznx = Replace(request.form("ycXznx"), "'", "")
ycBdtj = Replace(request.form("ycBdtj"), "'", "")
ycBfzs = Replace(request.form("ycBfzs"), "'", "")
ycBmzx = Replace(request.form("ycBmzx"), "'", "")
ycBmxz = Replace(request.form("ycBmxz"), "'", "")
ycXlcc = Replace(request.form("ycXlcc"), "'", "")
ycXlxw = Replace(request.form("ycXlxw"), "'", "")
ycDate =  now()

exec="update ycxl_info set yc_name='"&ycName&"',yc_info='"&ycInfo&"',yc_xzlx='"&ycXzlx&"',yc_skfs='"&ycSkfs&"',yc_zysz='"&ycZysz&"',yc_xznx='"&ycXznx&"',yc_bdtj='"&ycBdtj&"',yc_bfzs='"&ycBfzs&"',yc_bmzx='"&ycBmzx&"',yc_bmxz='"&ycBmxz&"',yc_xlcc='"&ycXlcc&"',yc_xlxw='"&ycXlxw&"',yc_date='"&ycDate&"' where yc_id= "&ycId&""
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('±à¼­³É¹¦!');window.location.href='listYCXueliInfo.asp';</script>")
%>