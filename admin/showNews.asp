<!--#include file="conn.asp" -->
<%
	Idx = Request.QueryString("newsId")
	exec="select * from news where news_id="&Idx&""
	set rs=server.createobject("adodb.recordset")
	rs.open exec,conn,1,1 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<!--#include file="header.asp" -->
</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "Ԥ��������Ϣ"
%>
	<!-- ͷ�������˵��� -->
	<!--#include file="top.asp" -->

	<!-- ��߲����� -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- ���幦����(��ʼ) -->
	
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" style="text-align:center"><%=rs("news_title")%></th>
		</tr>
		<tr>
			<td width="" style="text-align:right">
				�������ڣ�<%=rs("news_date")%>
			</td>
		</tr>
		<tr>
			<td width="" align="left">
				<%=rs("news_info")%>
			</td>
		</tr>
	</table>
	</div>
	
	<!-- ���幦����(����) -->
	</div>
<%
    conn.close
	set conn=nothing
	
	else
		response.Redirect "../login.asp"
 	end if 
%>
</body>
</html>