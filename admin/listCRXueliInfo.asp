<!--#include file="conn.asp" -->
<%
Function RemoveHTML(strHTML) 
	Dim objRegExp, Match, Matches 
	Set objRegExp = New Regexp 
	objRegExp.IgnoreCase = True 
	objRegExp.Global = True 
	'ȡ�պϵ�<> 
	objRegExp.Pattern = "<.+?>" 
	'����ƥ�� 
	Set Matches = objRegExp.Execute(strHTML) 
	' ����ƥ�伯�ϣ����滻��ƥ�����Ŀ 
	For Each Match in Matches 
		strHtml=Replace(strHTML,Match.Value,"") 
	Next 
	RemoveHTML=strHTML 
	Set objRegExp = Nothing 
End Function

crSchName = request.querystring("crSchName")
session("crSchName") = crSchName

sql= "select * from crxl_info where 1=1 "

'ѧ������
if crSchName <> "" then
	sql =sql + " and cr_sch_name like '%"&crSchName&"%' "
end if

sql =sql + " order by cr_date desc "

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
		// ɾ��ѧ����Ϣ
		function doDel(id){
			if(confirm("ȷ��Ҫɾ������Ϣ��")){
				window.location.href="delCRXueliInfo.asp?crId="+id;
			}
		}
		
		// ������ѯ
		function doSearch(){
			var crSchName = document.getElementById("crSchName").value;
						
			document.location.href="listCRXueliInfo.asp?crSchName="+crSchName;
		}
</script>
</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "�������ѧ��"
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
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<td style="font-family:'��Բ', Helvetica, sans-serif;">ѧУ���ƣ�</td>
			<td><input type="text" name="crSchName" id="crSchName" value="<%=session("crSchName")%>"></td>
		</tr>
	</table>
	<div class="searchBtnDiv" style="width:99.5%">
		<a href="javascript:void(0);" onclick="doSearch()" class="easyui-linkbutton" icon="icon-search">�� ѯ</a>
	</div>
	<table width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th>���</th>
			<th>ѧУ����</th>
			<th>ѧУ���</th>
			<th>�߿�����</th>
			<th>������ַ</th>
			<th>����רҵ</th>
			<th>ѧϰ����</th>
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
			<td><%=i%></td>
			<td><%=rs("cr_sch_name")%></td>
			<td><%=left(RemoveHTML(rs("cr_sch_info")), 50)%>...</td>
			<td><%=left(RemoveHTML(rs("cr_sch_gk")), 50)%>...</td>
			<td><%=left(RemoveHTML(rs("cr_addr")), 50)%>...</td>
			<td><%=left(RemoveHTML(rs("cr_spec")), 50)%>...</td>
			<td><%=left(RemoveHTML(rs("cr_study_lc")), 50)%>...</td>
			<td><%=rs("cr_date")%></td>
			<td style="width:80px;">
				<a href='editCRXueliInfo.asp?crId=<%=rs("cr_id")%>'class="easyui-linkbutton" plain="true">�༭</a>
				<!--<a href='showXueliInfo.asp?xschoolId=<=rs("xschool_id")%>'class="easyui-linkbutton" plain="true">Ԥ��</a>-->
				<a href='javascript:doDel(<%=rs("cr_id")%>)'class="easyui-linkbutton" plain="true">ɾ��</a>
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