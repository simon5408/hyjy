<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%
	typeId = request.querystring("type")
	newsName = ""
	if typeId =1 then
		newsName = "编辑成人学历"
	end if
	if typeId =2 then
		newsName = "编辑远程学历"
	end if
	
	Idx = Request.QueryString("xschoolId")
	exec="select * from xueli_school where (xschool_id="&Idx&")"
	set rs=server.createobject("adodb.recordset")
	rs.open exec,conn,1,1 
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<!--#include file="header.asp" -->
	
	<!-- tinymce -->
	<script type="text/javascript" src="../js/tinymce/tinymce.min.js"></script>
	
	<script language="javascript" type="text/javascript">
		tinymce.init({
			selector: "textarea",
			theme: "modern",
			plugins: [
			],
			toolbar1: "insertfile undo redo | styleselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | link image",
			toolbar2: "print preview media | forecolor backcolor emoticons",
			image_advtab: true,
			templates: [
				{title: 'Test template 1', content: 'Test 1'},
				{title: 'Test template 2', content: 'Test 2'}
			]
		});
		
		function doSbmit(){
			var xschoolName = $("#xschoolName").val();
			if($.trim(xschoolName) == ""){
				alert("学校名称为必填项！");
				$("#xschoolName").focus();
				$("#xschoolName").addClass('errInpt');
				return false;
			}else{
				$("#xschoolName").removeClass('errInpt');
			}
			
			var xschoolSumm = $("#xschoolSumm").val();
			if($.trim(xschoolSumm) == ""){
				alert("学校简介为必填项！");
				$("#xschoolSumm").focus();
				$("#xschoolSumm").addClass('errInpt');
				return false;
			}else{
				$("#xschoolSumm").removeClass('errInpt');
			}
						
			document.addEduType.submit();
		}

	</script>

</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = newsName
%>
	<!-- 头部操作菜单栏 -->
	<!--#include file="top.asp" -->

	<!-- 左边操作栏 -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- 主体功能区(开始) -->
	<form  name="addEduType" method="post" action="editXueliInfoAct.asp">
	<input type="hidden" name="xschoolId" id="xschoolId" value="<%=cint(Idx)%>" />
	<input type="hidden" name="typeId" id="typeId" value="<%=cint(typeId)%>" />
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">学校名称：</th>
			<td width="" align="left"><input type="text" name="xschoolName" id="xschoolName" style="width:355px" value="<%=rs("xschool_name")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">学校简介：</th>
			<td width="" align="left">
				<textarea id="xschoolSumm" name="xschoolSumm" style="height:300px;"><%=rs("xschool_summ")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">学校简介：</th>
			<td width="" align="left">
				<textarea id="xschoolInfo" name="xschoolInfo" style="height:300px;"><%=rs("xschool_info")%></textarea>
			</td>
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
