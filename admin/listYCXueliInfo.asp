<!--#include file="conn.asp" -->
<%
Function RemoveHTML(strHTML) 
	Dim objRegExp, Match, Matches 
	Set objRegExp = New Regexp 
	objRegExp.IgnoreCase = True 
	objRegExp.Global = True 
	'取闭合的<> 
	objRegExp.Pattern = "<.+?>" 
	'进行匹配 
	Set Matches = objRegExp.Execute(strHTML) 
	' 遍历匹配集合，并替换掉匹配的项目 
	For Each Match in Matches 
		strHtml=Replace(strHTML,Match.Value,"") 
	Next 
	RemoveHTML=strHTML 
	Set objRegExp = Nothing 
End Function

ycName = request.querystring("ycName")
session("ycName") = ycName

sql= "select * from ycxl_info where 1=1 "

'学生姓名
if ycName <> "" then
	sql =sql + " and yc_name like '%"&ycName&"%' "
end if

sql =sql + " order by yc_date desc "

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
				window.location.href="delYCXueliInfo.asp?ycId="+id;
			}
		}
		
		// 条件查询
		function doSearch(){
			var ycName = document.getElementById("ycName").value;
						
			document.location.href="listYCXueliInfo.asp?ycName="+ycName;
		}
</script>
</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "管理远程学历"
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
			<td><input type="text" name="ycName" id="ycName" value="<%=session("ycName")%>"></td>
		</tr>
	</table>
	<div class="searchBtnDiv" style="width:99.5%">
		<a href="javascript:void(0);" onclick="doSearch()" class="easyui-linkbutton" icon="icon-search">查 询</a>
	</div>
	<table width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th>序号</th>
			<th>学校名称</th>
			<th>学校学制</th>
			<th>学制年限</th>
			<th>学校简介</th>
			<th>授课方式</th>
			<th>专业设置</th>
			<th>报读条件</th>
			<th>学历层次</th>
			<th>学历学位</th>
			<th>颁发证书</th>
			<th>报名中心</th>
			<th>报名须知</th>
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
			<td><%=i%></td>
			<td><%=rs("yc_name")%></td>
			<td><%=rs("yc_xzlx")%></td>
			<td><%=rs("yc_xznx")%></td>
			<td><%=left(RemoveHTML(rs("yc_info")), 40)%>...</td>
			<td><%=rs("yc_skfs")%></td>
			<td><%=left(RemoveHTML(rs("yc_zysz")), 40)%>...</td>
			<td><%=left(RemoveHTML(rs("yc_bdtj")), 40)%>...</td>
			<td><%=rs("yc_xlcc")%></td>
			<td><%=rs("yc_xlxw")%></td>
			<td><%=rs("yc_bfzs")%></td>
			<td><%=rs("yc_bmzx")%></td>
			<td><%=left(RemoveHTML(rs("yc_bmxz")), 40)%>...</td>
			<td><%=rs("yc_date")%></td>
			<td style="width:80px;">
				<a href='editYCXueliInfo.asp?ycId=<%=rs("yc_id")%>'class="easyui-linkbutton" plain="true">编辑</a>
				<!--<a href='showXueliInfo.asp?xschoolId=<=rs("xschool_id")%>'class="easyui-linkbutton" plain="true">预览</a>-->
				<a href='javascript:doDel(<%=rs("yc_id")%>)'class="easyui-linkbutton" plain="true">删除</a>
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