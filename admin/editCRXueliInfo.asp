<!--#include file="conn.asp" -->
<%
	Idx = Request.QueryString("crId")
	exec="select * from crxl_info where (cr_id="&Idx&")"
	set rs=server.createobject("adodb.recordset")
	rs.open exec,conn,1,1 
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
			var crSchName = $("#crSchName").val();
			if($.trim(crSchName) == ""){
				alert("ѧУ����Ϊ�����");
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
	session("typeName") = "�༭����ѧ��"
%>
	<!-- ͷ�������˵��� -->
	<!--#include file="top.asp" -->

	<!-- ��߲����� -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- ���幦����(��ʼ) -->
	<form  name="addEduType" method="post" action="editCRXueliInfoAct.asp">
	<input type="hidden" name="crId" id="crId" value="<%=cint(Idx)%>" />
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">ѧУ���ƣ�</th>
			<td width="" align="left"><input type="text" name="crSchName" id="crSchName" style="width:355px" value="<%=rs("cr_sch_name")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">ѧУ��飺</th>
			<td width="" align="left">
				<textarea id="crSchInfo" name="crSchInfo" style="height:300px;"><%=rs("cr_sch_info")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">�߿����ܣ�</th>
			<td width="" align="left">
				<textarea id="crSchGk" name="crSchGk" style="height:300px;"><%=rs("cr_sch_gk")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">������ַ��</th>
			<td width="" align="left">
				<textarea id="crAddr" name="crAddr" style="height:300px;"><%=rs("cr_addr")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">����רҵ��</th>
			<td width="" align="left">
				<textarea id="crSpec" name="crSpec" style="height:300px;"><%=rs("cr_spec")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">ѧϰ���̣�</th>
			<td width="" align="left">
				<textarea id="crStudyLc" name="crStudyLc" style="height:300px;"><%=rs("cr_study_lc")%></textarea>
			</td>
		</tr>
	</table>
	</div>
	<div id="operateBtn">
		<a href="javascript:void(0);" onclick="doSbmit()" class="easyui-linkbutton" icon="icon-save">�� ��</a>
		<a href="javascript:void(0);" onclick="window.location.reload();" class="easyui-linkbutton" icon="icon-reload">ˢ ��</a>
	</div>
	</form>
	<!-- ���幦����(����) -->
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
