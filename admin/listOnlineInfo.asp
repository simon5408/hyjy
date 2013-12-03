<!--#include file="conn.asp" -->
<%
olName = request.querystring("olName")
session("olName") = olName

olTypeId = request.querystring("olTypeId")
if olTypeId = "" then
	olTypeId = 0
end if

olLevelId = request.querystring("olLevelId")
if olLevelId = "" then
	olLevelId = 0
end if

sql= "select * from online where 1=1 "

if  olTypeId <> 0 then
	sql = sql + " and ol_type_id="&olTypeId&" "
end if

if  olLevelId <> 0 then
	sql = sql + " and ol_level_id="&olLevelId&" "
end if

if olName <> "" then
	sql =sql + " and ol_name like '%"&olName&"%' "
end if

sql =sql + " order by ol_date desc "

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
				window.location.href="delOnline.asp?olId="+id;
			}
		}
		
		// 条件查询
		function doSearch(){
			var olName = $("#olName").val();
			var olTypeId = $("#olTypeId").val();
			var olLevelId = $("#olLevelId").val();
						
			document.location.href="listOnlineInfo.asp?olName="+olName+"&olTypeId="+olTypeId+"&olLevelId="+olLevelId;
		}
</script>
</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "在线报名信息管理"
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
			<td style="font-family:'幼圆', Helvetica, sans-serif;">名称：</td>
			<td><input type="text" name="olName" id="olName" value="<%=session("olName")%>"></td>
			<td style="font-family:'幼圆', Helvetica, sans-serif;">类别：</td>
			<td>
				<select name="olTypeId" id="olTypeId" style="width:185px;">
					<option value="0">--不限--</option>
					<option value="1">自考学历</option>
					<option value="2">成人学历</option>
					<option value="3">远程学历</option>
					<option value="4">硕士研究生</option>
					<option value="5">专业证书</option>
					<option value="6">职业教育</option>
				</select> 
			</td>
			<td style="font-family:'幼圆', Helvetica, sans-serif;">层次：</td>
			<td>
				<select name="olLevelId" id="olLevelId" style="width:185px;">
					<option value="0">--不限--</option>
					<option value="1">高起专</option>
					<option value="2">高起本</option>
					<option value="3">专升本</option>
				</select> 
			</td>
		</tr>
	</table>
	<div class="searchBtnDiv" style="width:99.5%">
		<a href="javascript:void(0);" onclick="doSearch()" class="easyui-linkbutton" icon="icon-search">查 询</a>
	</div>
	<table width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th>姓名</th>
			<th>性别</th>
			<th>手机</th>
			<th>类别</th>
			<th>层次</th>
			<th>说明</th>
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
			<td><%=rs("ol_name")%></td>
			<td>
				<% if rs("ol_sex")=0 then %>
				女
				<% else %>
				男
				<% end if %>
			</td>
			<td><%=rs("ol_phone")%></td>
			<td><%=rs("ol_type_name")%></td>
			<td><%=rs("ol_level_name")%></td>
			<td><%=rs("ol_info")%></td>
			<td><%=rs("ol_date")%></td>
			<td style="width:80px;">
				<a href='javascript:doDel(<%=rs("ol_id")%>)'class="easyui-linkbutton" plain="true">删除</a>
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