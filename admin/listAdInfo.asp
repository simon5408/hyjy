<!--#include file="conn.asp" -->
<%

sql= "select * from ad_info order by ad_date desc "

exec=sql
set rs=server.createobject("adodb.recordset")
rs.open exec,conn,1,1 
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<!--#include file="header.asp" -->
	
	<script language="javascript" type="text/javascript">
		// ɾ����Ϣ
		function doDel(id){
			if(confirm("ȷ��Ҫɾ������Ϣ��")){
				window.location.href="delNews.asp?newsId="+id+"&type="+<%=request.querystring("type")%>;
			}
		}
		
		// ������ѯ
		function doSearch(){
			var newsTitle = document.getElementById("newsTitle").value;
						
			document.location.href="listNews.asp?newsTitle="+newsTitle+"&type="+<%=request.querystring("type")%>;
		}
</script>
</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "�����Ϣ����"
%>
	<!-- ͷ�������˵��� -->
	<!--#include file="top.asp" -->

	<!-- ��߲����� -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- ���幦����(��ʼ) -->
	<div id="tbleDiv">
	<!--
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<td style="font-family:'��Բ', Helvetica, sans-serif;">���ƣ�</td>
			<td><input type="text" name="newsTitle" id="newsTitle" value="<%=session("newsTitle")%>"></td>
		</tr>
	</table>
	<div class="searchBtnDiv" style="width:99.5%">
		<a href="javascript:void(0);" onclick="doSearch()" class="easyui-linkbutton" icon="icon-search">�� ѯ</a>
	</div>
	-->
	<table width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th>���</th>
			<th>��������</th>
			<th>��������</th>
			<th style="width:80px;">����</th>
		</tr>
		
		<%
			for i= 1 to rs.recordcount
			if rs.eof then
			exit for
			end if
		%>
		<tr>
			<td><%=rs("ad_id")%></td>
			<td><%=rs("ad_title")%></td>
			<td><%=rs("ad_date")%></td>
			<td style="width:80px;">
				<a href='editAdInfo.asp?adId=<%=rs("ad_id")%>'class="easyui-linkbutton" plain="true">�༭</a>
				<a href='showAdInfo.asp?adId=<%=rs("ad_id")%>'class="easyui-linkbutton" plain="true">Ԥ��</a>
			</td>
		</tr>
		<% 
			rs.movenext
			next 
		%>
	</table>
	</div>
	<!-- ���幦����(����) -->
	</div>
<%
	conn.close
	set conn=nothing
%>
<%
    else
		response.Redirect "../login.asp"
 	end if 
%>
</body>
</html>