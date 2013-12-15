<!--#include file="conn.asp" -->
<%
	xsType = request.querystring("type")
	xsTypeName = ""
	if xsType = 1 then
		xsTypeName = "管理专业证书"
	end if
	if xsType = 2 then
		xsTypeName = "管理职业教育"
	end if
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
				window.location.href="delZYInfo.asp?zyId="+id+"&type=<%=xsType%>";
			}
		}
		
		// 条件查询
		function doSearch(){
			var zyName = document.getElementById("zyName").value;
						
			document.location.href="listZYInfo.asp?zyName="+zyName+"&type=<%=xsType%>";
		}
</script>
</head>

<body>
<% username=session("username") 
	if username<>"" then 
		session("typeName") = xsTypeName
		
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
				
		zyName = request.querystring("zyName")
		session("zyName") = zyName
		
		sql= "select * from zy_info where zy_type= "&xsType
		
		'学生姓名
		if zyName <> "" then
			sql =sql + " and zy_name like '%"&zyName&"%' "
		end if
		
		sql =sql + " order by zy_date desc "
		
		exec=sql
		set rs=server.createobject("adodb.recordset")
		rs.open exec,conn,1,1 
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
			<td><input type="text" name="zyName" id="zyName" value="<%=session("zyName")%>"></td>
		</tr>
	</table>
	<div class="searchBtnDiv" style="width:99.5%">
		<a href="javascript:void(0);" onclick="doSearch()" class="easyui-linkbutton" icon="icon-search">查 询</a>
	</div>
	<table width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th>序号</th>
			<th>名称</th>
			<th>学制</th>
			<th>简介</th>
			<th>授课方式</th>
			<th>课程设置</th>
			<th>报读条件</th>
			<th>颁发证书</th>
			<th>教学地点</th>
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
			<td><%=rs("zy_name")%></td>
			<td><%=rs("zy_xzfs")%></td>
			<td><%=left(RemoveHTML(rs("zy_info")), 40)%>...</td>
			<td><%=rs("zy_skfs")%></td>
			<td><%=left(RemoveHTML(rs("zy_kcsz")), 40)%>...</td>
			<td><%=left(RemoveHTML(rs("zy_bdtj")), 40)%>...</td>
			<td><%=rs("zy_bfzs")%></td>
			<td><%=rs("zy_jxdd")%></td>
			<td><%=rs("zy_bmzx")%></td>
			<td><%=left(RemoveHTML(rs("zy_bmxz")), 40)%>...</td>
			<td><%=rs("zy_date")%></td>
			<td style="width:80px;">
				<a href='editZYInfo.asp?zyId=<%=rs("zy_id")%>&type=<%=xsType%>'class="easyui-linkbutton" plain="true">编辑</a>
				<!--<a href='showXueliInfo.asp?xschoolId=<=rs("xschool_id")%>'class="easyui-linkbutton" plain="true">预览</a>-->
				<a href='javascript:doDel(<%=rs("zy_id")%>)'class="easyui-linkbutton" plain="true">删除</a>
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
    else
		response.Redirect "../login.asp"
 	end if 
%>
</body>
</html>