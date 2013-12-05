<!--#include file="conn.asp" -->
<%
xsType = request.querystring("type")
xsTypeName = ""
if xsType = 1 then
	xsTypeName = "管理成人学历"
end if
if xsType = 2 then
	xsTypeName = "管理远程学历"
end if

schoolName = request.querystring("schoolName")
session("schoolName") = schoolName

sql= "select * from xueli_school where xschool_type= "&xsType

'学生姓名
if schoolName <> "" then
	sql =sql + " and xschool_name like '%"&schoolName&"%' "
end if

sql =sql + " order by xschool_date desc "

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
		// 删除学生信息
		function doDel(id){
			if(confirm("确定要删除该信息？")){
				window.location.href="delXueliInfo.asp?xschoolId="+id+"&type="+<%=request.querystring("type")%>;
			}
		}
		
		// 条件查询
		function doSearch(){
			var schoolName = document.getElementById("schoolName").value;
						
			document.location.href="listXueliInfo.asp?schoolName="+schoolName+"&type="+<%=request.querystring("type")%>;
		}
</script>
</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = xsTypeName
%>
	<!-- 头部操作菜单栏 -->
	<!--#include file="top.asp" -->

	<!-- 左边操作栏 -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- 主体功能区(开始) -->
	<div id="tbleDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<td style="font-family:'幼圆', Helvetica, sans-serif;">学校名称：</td>
			<td><input type="text" name="schoolName" id="schoolName" value="<%=session("schoolName")%>"></td>
		</tr>
	</table>
	<div class="searchBtnDiv" style="width:99.5%">
		<a href="javascript:void(0);" onclick="doSearch()" class="easyui-linkbutton" icon="icon-search">查 询</a>
	</div>
	<table width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th>序号</th>
			<th>学校名称</th>
			<th>学校简介</th>
			<th>发布日期</th>
			<th style="width:80px;">操作</th>
		</tr>
		
		<%
			for i= 1 to rs.recordcount
			if rs.eof then
			exit for
			end if
		%>
		<tr>
			<td><%=rs("xschool_id")%></td>
			<td><%=rs("xschool_name")%></td>
			<td><%=left(rs("xschool_summ"), 50)%></td>
			<td><%=rs("xschool_date")%></td>
			<td style="width:80px;">
				<a href='editXueliInfo.asp?xschoolId=<%=rs("xschool_id")%>&type=<%=xsType%>'class="easyui-linkbutton" plain="true">编辑</a>
				<a href='showXueliInfo.asp?xschoolId=<%=rs("xschool_id")%>'class="easyui-linkbutton" plain="true">预览</a>
				<a href='javascript:doDel(<%=rs("xschool_id")%>)'class="easyui-linkbutton" plain="true">删除</a>
			</td>
		</tr>
		<% 
			rs.movenext
			next 
		%>
	</table>
	</div>
	<!-- 主体功能区(结束) -->
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