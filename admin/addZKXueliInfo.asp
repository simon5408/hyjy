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
			var zkName = $("#zkName").val();
			if($.trim(zkName) == ""){
				alert("专业名称为必填项！");
				$("#zkName").focus();
				$("#zkName").addClass('errInpt');
				return false;
			}else{
				$("#zkName").removeClass('errInpt');
			}
			
			var zkType = $("#zkType").val();
			if(zkType == -99){
				alert("专业名称为必填项！");
				$("#zkType").focus();
				$("#zkType").addClass('errInpt');
				return false;
			}else{
				$("#zkType").removeClass('errInpt');
			}
						
			document.addEduType.submit();
		}

	</script>

</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "新增自考学历"
%>
	<!-- 头部操作菜单栏 -->
	<!--#include file="top.asp" -->

	<!-- 左边操作栏 -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- 主体功能区(开始) -->
	<form  name="addEduType" method="post" action="addZKXueliInfoAct.asp">
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">专业名称：</th>
			<td width="" align="left"><input type="text" name="zkName" id="zkName" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">专业类别：</th>
			<td width="" align="left">
				<select name="zkType" id="zkType" style="width:355px">
					<option value="-99">-选择-</option>
					<option value="1">专科</option>
					<option value="2">本科</option>
				</select>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">专业类型：</th>
			<td width="" align="left">
				<select name="zkLevel" id="zkLevel" style="width:355px">
					<option value="0">普通</option>
					<option value="1">VIP</option>
				</select>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">专业简介：</th>
			<td width="" align="left">
				<textarea id="zkZyjj" name="zkZyjj" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">报名学费：</th>
			<td width="" align="left"><input type="text" name="zkPrice" id="zkPrice" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">毕业时间：</th>
			<td width="" align="left"><input type="text" name="zkTime" id="zkTime" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">考核发证：</th>
			<td width="" align="left"><input type="text" name="zkKhfz" id="zkKhfz" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">毕业保障：</th>
			<td width="" align="left"><input type="text" name="zkBybz" id="zkBybz" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">课程特点：</th>
			<td width="" align="left">
				<textarea id="zkKctd" name="zkKctd" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">报名地址：</th>
			<td width="" align="left">
				<textarea id="zkBmdz" name="zkBmdz" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">课程介绍：</th>
			<td width="" align="left">
				<textarea id="zkKcjs" name="zkKcjs" style="height:300px;"></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">课程安排：</th>
			<td width="" align="left">
				<textarea id="zkKcap" name="zkKcap" style="height:300px;"></textarea>
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
