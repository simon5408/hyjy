<%
typeId = request.querystring("type")
newsName = ""
if typeId =1 then
	newsName = "新增专业证书"
end if
if typeId =2 then
	newsName = "新增职业教育"
end if
%>
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
			var zyName = $("#zyName").val();
			if($.trim(zyName) == ""){
				alert("名称为必填项！");
				$("#zyName").focus();
				$("#zyName").addClass('errInpt');
				return false;
			}else{
				$("#zyName").removeClass('errInpt');
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
	<form  name="addEduType" method="post" action="addZYInfoAct.asp">
	<input type="hidden" name="zyType" id="zyType" value="<%=cint(typeId)%>" />
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">名称：</th>
			<td width="" align="left"><input type="text" name="zyName" id="zyName" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">简介：</th>
			<td width="" align="left">
				<textarea id="zyInfo" name="zyInfo" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">学制：</th>
			<td width="" align="left"><input type="text" name="zyXzfs" id="zyXzfs" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">授课方式：</th>
			<td width="" align="left"><input type="text" name="zySkfs" id="zySkfs" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">课程设置：</th>
			<td width="" align="left">
				<textarea id="zyKcsz" name="zyKcsz" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">报读条件：</th>
			<td width="" align="left">
				<textarea id="zyBdtj" name="zyBdtj" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">颁发证书：</th>
			<td width="" align="left"><input type="text" name="zyBfzs" id="zyBfzs" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">教学地点：</th>
			<td width="" align="left"><input type="text" name="zyJxdd" id="zyJxdd" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">报名中心：</th>
			<td width="" align="left"><input type="text" name="zyBmzx" id="zyBmzx" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">报名须知：</th>
			<td width="" align="left">
				<textarea id="zyBmxz" name="zyBmxz" style="height:300px;"></textarea>
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
