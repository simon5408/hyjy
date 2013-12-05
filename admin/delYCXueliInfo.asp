<!--#include file="conn.asp" -->
<%
	conn.execute ("delete * from ycxl_info where yc_id = "&request.querystring("ycId"))
	conn.close
	set conn=nothing
	
	response.Redirect "listYCXueliInfo.asp"
	Response.End 
	
%>