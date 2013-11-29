<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<title>��Դ����-��̨����ƽ̨</title>
	<LINK href="../css/onto_style.css" type="text/css" rel="stylesheet">
	
	<!-- jquery js -->
	<script language="javascript" src="../js/common/jQuery/jquery-1.4.4.min.js"></script>
	<script language="javascript" src="../js/common/jQuery/easyui/jquery.easyui.min.js"></script>
	
	<!-- jquery css -->
	<link rel="stylesheet" type="text/css" href="../js/common/jQuery/easyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="../js/common/jQuery/easyui/themes/icon.css">
	
	<!-- private css -->
	<link rel="stylesheet" type="text/css" href="../css/manage/hyMng.css">
	
	<!-- attr css -->
	<link rel="stylesheet" type="text/css" href="../css/manage/hyAttr.css">
	
	<!-- tinymce -->
	<script type="text/javascript" src="../js/tinymce/tinymce.min.js"></script>
	
	<script language="javascript" type="text/javascript">
		tinymce.init({
			selector: "textarea",
			theme: "modern",
			plugins: [
				"advlist autolink lists link image charmap print preview hr anchor pagebreak",
				"searchreplace wordcount visualblocks visualchars code fullscreen",
				"insertdatetime media nonbreaking save table contextmenu directionality",
				"emoticons template paste textcolor moxiemanager"
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
			var schName = $("#schName").val();
			if($.trim(schName) == ""){
				alert("ѧУ����Ϊ�����");
				$("#schName").focus();
				$("#schName").addClass('errInpt');
				return false;
			}else{
				$("#schName").removeClass('errInpt');
			}
			
			var eduId = $("#eduId").val();
			if($.trim(eduId) == "-99"){
				alert("������ʽΪ��ѡ�");
				$("#eduId").focus();
				$("#eduId").addClass('errInpt');
				return false;
			}else{
				$("#eduId").removeClass('errInpt');
				$("#eduname").val($("#eduId").find('option:selected').text());
			}
			
			document.addSchName.submit();
		}

	</script>

</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "����ѧУ��Ϣ"
%>
	<!-- ͷ�������˵��� -->
	<!--#include file="top.asp" -->

	<!-- ��߲����� -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- ���幦����(��ʼ) -->
	<form  name="addSchName" method="post" action="addSchNameAct.asp">
	<div id="oprtDiv" style="width:80%">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">ѧУ���ƣ�</th>
			<td width="" align="left"><input type="text" name="schName" id="schName" style="width:355px"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">������ʽ��</th>
			<td width="" align="left">
				<input type="hidden" name="eduname" id="eduname" value="" />
				<select id="eduId" name="eduId">
					<option value="-99">- ѡ�� -</option>
					<%
						exec1="select * from edu_type"
						set rs1=server.createobject("adodb.recordset")
						rs1.open exec1,conn,1,1
						for i= 1 to rs1.recordcount
						if rs1.eof then
						exit for
						end if
					%>
					<option value="<%=rs1("edu_id")%>"><%=rs1("edu_name")%></option>
					<% 
						rs1.movenext
						next 
					%>
				</select>
			</td>
		</tr>
		<tr>
			<th width="100" align="right">ѧУ��飺</th>
			<td width="" align="left"><textarea id="schInfo" name="schInfo"></textarea></td>
		</tr>
	</table>
	</div>
	<div id="operateBtn" style="width:80%">
		<a href="javascript:void(0);" onclick="doSbmit()" class="easyui-linkbutton" icon="icon-save">�� ��</a>
		<a href="javascript:void(0);" onclick="window.location.reload();" class="easyui-linkbutton" icon="icon-reload">ˢ ��</a>
	</div>
	</form>
	<!-- ���幦����(����) -->
	</div>
<%
    else
		response.Redirect "../login.asp"
 	end if 
%>
</body>
</html>