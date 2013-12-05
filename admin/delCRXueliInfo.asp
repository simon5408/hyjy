<!--#include file="conn.asp" -->
<%
	conn.execute ("delete * from crxl_info where cr_id = "&request.querystring("crId"))
	conn.close
	set conn=nothing
	
	response.Redirect "listCRXueliInfo.asp"
	Response.End 
	
%>