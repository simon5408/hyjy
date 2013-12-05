<!--#include file="conn.asp" -->
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
			var ycName = $("#ycName").val();
			if($.trim(ycName) == ""){
				alert("ѧУ����Ϊ�����");
				$("#ycName").focus();
				$("#ycName").addClass('errInpt');
				return false;
			}else{
				$("#ycName").removeClass('errInpt');
			}
						
			document.addEduType.submit();
		}

	</script>

</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "����Զ��ѧ��"
	
	Idx = Request.QueryString("ycId")
	exec="select * from ycxl_info where (yc_id="&Idx&")"
	set rs=server.createobject("adodb.recordset")
	rs.open exec,conn,1,1 
%>
	<!-- ͷ�������˵��� -->
	<!--#include file="top.asp" -->

	<!-- ��߲����� -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- ���幦����(��ʼ) -->
	<form  name="addEduType" method="post" action="editYCXueliInfoAct.asp">
	<input type="hidden" name="ycId" id="ycId" value="<%=cint(Idx)%>" />
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">ѧУ���ƣ�</th>
			<td width="" align="left"><input type="text" name="ycName" id="ycName" style="width:355px" value="<%=rs("yc_name")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">ѧУ��飺</th>
			<td width="" align="left">
				<textarea id="ycInfo" name="ycInfo" style="height:300px;"><%=rs("yc_info")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">ѧУѧ�ƣ�</th>
			<td width="" align="left"><input type="text" name="ycXzlx" id="ycXzlx" style="width:355px" value="<%=rs("yc_xzlx")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">�ڿη�ʽ��</th>
			<td width="" align="left"><input type="text" name="ycSkfs" id="ycSkfs" style="width:355px" value="<%=rs("yc_skfs")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">רҵ���ã�</th>
			<td width="" align="left">
				<textarea id="ycZysz" name="ycZysz" style="height:300px;"><%=rs("yc_zysz")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">ѧ�����ޣ�</th>
			<td width="" align="left"><input type="text" name="ycXznx" id="ycXznx" style="width:355px" value="<%=rs("yc_xznx")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">����������</th>
			<td width="" align="left">
				<textarea id="ycBdtj" name="ycBdtj" style="height:300px;"><%=rs("yc_bdtj")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">�䷢֤�飺</th>
			<td width="" align="left"><input type="text" name="ycBfzs" id="ycBfzs" style="width:355px" value="<%=rs("yc_bfzs")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">�������ģ�</th>
			<td width="" align="left"><input type="text" name="ycBmzx" id="ycBmzx" style="width:355px" value="<%=rs("yc_bmzx")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">������֪��</th>
			<td width="" align="left">
				<textarea id="ycBmxz" name="ycBmxz" style="height:300px;"><%=rs("yc_bmxz")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">ѧ����Σ�</th>
			<td width="" align="left"><input type="text" name="ycXlcc" id="ycXlcc" style="width:355px" value="<%=rs("yc_xlcc")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">ѧ��ѧλ��</th>
			<td width="" align="left"><input type="text" name="ycXlxw" id="ycXlxw" style="width:355px" value="<%=rs("yc_xlxw")%>"></td>
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
