<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
			var crSchName = $("#crSchName").val();
			if($.trim(crSchName) == ""){
				alert("学校名称为必填项！");
				$("#crSchName").focus();
				$("#crSchName").addClass('errInpt');
				return false;
			}else{
				$("#crSchName").removeClass('errInpt');
			}
						
			document.addEduType.submit();
		}

	</script>

</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "新增成人学历"
%>
	<!-- 头部操作菜单栏 -->
	<!--#include file="top.asp" -->

	<!-- 左边操作栏 -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- 主体功能区(开始) -->
	<form  name="addEduType" method="post" action="addCRXueliInfoAct.asp">
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">学校名称：</th>
			<td width="" align="left"><input type="text" name="crSchName" id="crSchName" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">学校简介：</th>
			<td width="" align="left">
				<textarea id="crSchInfo" name="crSchInfo" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">高考介绍：</th>
			<td width="" align="left">
				<textarea id="crSchGk" name="crSchGk" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">报名地址：</th>
			<td width="" align="left">
				<textarea id="crAddr" name="crAddr" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">招生专业：</th>
			<td width="" align="left">
				<textarea id="crSpec" name="crSpec" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">学习流程：</th>
			<td width="" align="left">
				<textarea id="crStudyLc" name="crStudyLc" style="height:300px;"></textarea>
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
    else
		response.Redirect "../login.asp"
 	end if 
%>
</body>
</html>
