<!--#include file="conn.asp" -->
<%
adId = request.form("adId")
adTitle = request.form("adTitle")
adInfo = Replace(request.form("adInfo"), "'", "")
adDate =  now()

exec="update ad_info set ad_title='"&adTitle&"',ad_info='"&adInfo&"',ad_date='"&adDate&"' where ad_id= "&adId&""
conn.execute exec
conn.close
set conn=nothing
response.write("<script language=javascript>alert('�����Ϣ�༭�ɹ�!');window.location.href='listAdInfo.asp';</script>")
%>