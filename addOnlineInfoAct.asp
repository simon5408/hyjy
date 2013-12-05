<!--#include file="conn.asp" -->
<%

zName = request.form("zName")
zSex = request.form("zSex")
zPhone = request.form("zPhone")
zTypeName = request.form("zTypeName")
zTypeId = request.form("zTypeId")
zLevelName = request.form("zLevelName")
zLevelId = request.form("zLevelId")
zInfo = Replace(request.form("zInfo"), "'", "")
zDate =  now()

exec="insert into online (ol_name, ol_sex, ol_phone, ol_type_id, ol_type_name, ol_level_id, ol_level_name, ol_info, ol_date) values('"&zName&"',"&zSex&",'"&zPhone&"',"&zTypeId&",'"&zTypeName&"',"&zLevelId&",'"&zLevelName&"','"&zInfo&"','"&zDate&"')"
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('感谢你的在线报名，我们会尽快跟你联系!');window.location.href='index.asp';</script>")
%>