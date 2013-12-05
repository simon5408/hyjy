<!--#include file="conn.asp" -->
<%
	conn.execute ("delete * from zy_info where zy_id = "&request.querystring("zyId"))
	conn.close
	set conn=nothing
	
	response.Redirect "listZYInfo.asp?type="&request.querystring("type")
	Response.End 
	
%>