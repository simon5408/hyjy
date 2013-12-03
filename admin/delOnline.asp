<!--#include file="conn.asp" -->
<%
	conn.execute ("delete * from online where ol_id = "&request.querystring("olId"))
	conn.close
	set conn=nothing
	
	response.Redirect "listOnlineInfo.asp"
	Response.End 
	
%>