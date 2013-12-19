<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	Idx = Request.QueryString("dlid")
	exec="select * from download_info where (dl_id="&Idx&")"
	set rs=server.createobject("adodb.recordset")
	rs.open exec,conn,1,1
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<!--#include file="header.asp" -->
	
	<script language="javascript" type="text/javascript">
		function doSbmit(){
			var fileTitle = $("#fileTitle").val();
			if($.trim(fileTitle) == ""){
				alert("名称为必填项！");
				$("#fileTitle").focus();
				$("#fileTitle").addClass('errInpt');
				return false;
			}else{
				$("#fileTitle").removeClass('errInpt');
			}
			/*
			var fileName = $("#fileName").val();
			if($.trim(fileName) == ""){
				alert("上传文件名称有问题，请重新上传！");
				return false;
			}*/
						
			document.addEduType.submit();
		}
		
	</script>

</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "新增资料下载"
%>
	<!-- 头部操作菜单栏 -->
	<!--#include file="top.asp" -->

	<!-- 左边操作栏 -->
	<div id="left">
		
	</div>
	
	<div id="right">
	<!-- 主体功能区(开始) -->
	<form  name="addEduType" method="post" action="addUploadInfoAct.asp">
	<input type="hidden" name="dlid" id="dlid" value="<%=Idx%>" />
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">名称：</th>
			<td width="" align="left"><input type="text" name="fileTitle" id="fileTitle" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">上传文件：</th>
			<td width="" align="left" id="fileNameHTML"><%=rs("file_name")%></td>
		</tr>
	</table>
	</div>
	<div id="operateBtn">
		<a href="javascript:void(0);" onclick="doSbmit()" class="easyui-linkbutton" icon="icon-save">保 存</a>
		<a href="javascript:void(0);" onclick="window.location.reload();" class="easyui-linkbutton" icon="icon-reload">刷 新</a>
	</div>
	</form>
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
