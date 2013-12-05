<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<!--#include file="header.asp" -->
	
	<script language="javascript" type="text/javascript">
		// 删除学生信息
		function doDel(id){
			if(confirm("确定要删除该信息？")){
				window.location.href="delZKXueliInfo.asp?zkId="+id;
			}
		}
		
		// 条件查询
		function doSearch(){
			var zyName = document.getElementById("zyName").value;
			var zkType = document.getElementById("zkType").value;
			var zkLevel = document.getElementById("zkLevel").value;
						
			document.location.href="listZKXueliInfo.asp?zyName="+zyName+"&zkType="+zkType+"&zkLevel="+zkLevel;
		}
</script>
</head>

<body>
<% username=session("username") 
	if username<>"" then 
		session("typeName") = "管理自考学历"
		
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
				
		zkName = request.querystring("zkName")
		session("zkName") = zkName
		
		zkType = request.querystring("zkType")
		if zkType = "" then
			zkType = -99
		end if
		session("zkType") = zkType
		
		zkLevel = request.querystring("zkLevel")
		if zkLevel = "" then
			zkLevel = -99
		end if
		session("zkLevel") = zkLevel
		
		sql= "select * from zk_info where 1=1 "
		
		if zkName <> "" then
			sql =sql + " and zk_name like '%"&zkName&"%' "
		end if
		
		if zkType <> -99 then
			sql =sql + " and zk_type ="&zkType&" "
		end if
		
		if zkLevel <> -99 then
			sql =sql + " and zk_level ="&zkLevel&" "
		end if
		
		sql =sql + " order by zk_date desc "
		
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
			<td style="font-family:'幼圆', Helvetica, sans-serif;">专业名称：</td>
			<td><input type="text" name="zyName" id="zyName" value="<%=session("zyName")%>"></td>
		</tr>
		<tr>
			<td style="font-family:'幼圆', Helvetica, sans-serif;">专业类别：</td>
			<td>
				<select name="zkType" id="zkType">
					<option value="-99">-不限-</option>
					<option value="1" <% if session("zkType") = 1 then%>selected<%end if%>>专科</option>
					<option value="2" <% if session("zkType") = 2 then%>selected<%end if%>>本科</option>
				</select>
			</td>
		</tr>
		<tr>
			<td style="font-family:'幼圆', Helvetica, sans-serif;">专业类型：</td>
			<td>
				<select name="zkLevel" id="zkLevel" style="width:355px">
					<option value="-99">-不限-</option>
					<option value="0" <% if session("zkLevel") = 0 then%>selected<%end if%>>普通</option>
					<option value="1" <% if session("zkLevel") = 1 then%>selected<%end if%>>VIP</option>
				</select>
			</td>
		</tr>
	</table>
	<div class="searchBtnDiv" style="width:99.5%">
		<a href="javascript:void(0);" onclick="doSearch()" class="easyui-linkbutton" icon="icon-search">查 询</a>
	</div>
	<table width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th>序号</th>
			<th>专业名称</th>
			<th>专业类别</th>
			<th>专业类型</th>
			<th>专业简介</th>
			<th>报名学费</th>
			<th>毕业时间</th>
			<th>考核发证</th>
			<th>毕业保障</th>
			<th>课程特点</th>
			<th>报名地址</th>
			<th>课程介绍</th>
			<th>课程安排</th>
			<th>发布日期</th>
			<th style="width:80px;">操作</th>
		</tr>
		
		<%
			for i= 1 to rs.recordcount
			if rs.eof then
			exit for
			end if
			
			zkTypeName = "-"
			if rs("zk_type") = 1 then 
				zkTypeName = "专科"
			end if
			if rs("zk_type") = 2 then 
				zkTypeName = "本科"
			end if
			
			zkLevelName = "-"
			if rs("zk_level") = 0 then 
				zkLevelName = "普通"
			end if
			if rs("zk_level") = 1 then 
				zkLevelName = "VIP"
			end if
		%>
		<tr>
			<td><%=i%></td>
			<td><%=rs("zk_name")%></td>
			<td><%=zkTypeName%></td>
			<td><%=zkLevelName%></td>
			<td><%=left(RemoveHTML(rs("zkZyjj")), 40)%>...</td>
			<td><%=rs("zk_price")%></td>
			<td><%=rs("zk_time")%></td>			
			<td><%=rs("zk_khfz")%></td>
			<td><%=rs("zk_bybz")%></td>
			<td><%=left(RemoveHTML(rs("zk_kctd")), 40)%>...</td>
			<td><%=left(RemoveHTML(rs("zk_bmdz")), 40)%>...</td>
			<td><%=left(RemoveHTML(rs("zk_kcjs")), 40)%>...</td>
			<td><%=left(RemoveHTML(rs("zk_kcap")), 40)%>...</td>
			<td><%=rs("zk_date")%></td>
			<td style="width:80px;">
				<a href='editZKXueliInfo.asp?zkId=<%=rs("zk_id")%>'class="easyui-linkbutton" plain="true">编辑</a>
				<!--<a href='showXueliInfo.asp?xschoolId=<=rs("xschool_id")%>'class="easyui-linkbutton" plain="true">预览</a>-->
				<a href='javascript:doDel(<%=rs("zk_id")%>)'class="easyui-linkbutton" plain="true">删除</a>
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