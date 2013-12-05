<!--#include file="conn.asp" -->
<%
	conn.execute ("delete * from zk_info where zk_id = "&request.querystring("zkId"))
	conn.close
	set conn=nothing
	
	response.Redirect "listZKXueliInfo.asp"
	Response.End
%>