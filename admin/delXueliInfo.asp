<!--#include file="conn.asp" -->
<%
	conn.execute ("delete * from xueli_school where xschool_id = "&request.querystring("xschoolId"))
	conn.close
	set conn=nothing
	
	response.Redirect "listXueliInfo.asp?type="&request.querystring("type")
	Response.End 
	
%>