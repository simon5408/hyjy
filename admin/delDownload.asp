<!--#include file="conn.asp" -->
<%
	conn.execute ("delete * from download_info where dl_id = "&request.querystring("dlId"))
	conn.close
	set conn=nothing
	
	response.Redirect "listDownload.asp"
	Response.End 
	
%>