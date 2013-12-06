<!--#include file="conn.asp" -->
<%
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

exec="insert into ycxl_info (yc_name, yc_info, yc_xzlx, yc_skfs, yc_zysz, yc_xznx, yc_bdtj, yc_bfzs, yc_bmzx, yc_bmxz, yc_xlcc, yc_xlxw, yc_date) values('"&ycName&"','"&ycInfo&"','"&ycXzlx&"','"&ycSkfs&"','"&ycZysz&"','"&ycXznx&"','"&ycBdtj&"','"&ycBfzs&"','"&ycBmzx&"','"&ycBmxz&"','"&ycXlcc&"','"&ycXlxw&"','"&ycDate&"')"
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('Ìí¼Ó³É¹¦!');window.location.href='addYCXueliInfo.asp';</script>")
%>
