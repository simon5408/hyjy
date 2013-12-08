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
			var zkName = $("#zkName").val();
			if($.trim(zkName) == ""){
				alert("רҵ����Ϊ�����");
				$("#zkName").focus();
				$("#zkName").addClass('errInpt');
				return false;
			}else{
				$("#zkName").removeClass('errInpt');
			}
			
			var zkType = $("#zkType").val();
			if(zkType == -99){
				alert("רҵ����Ϊ�����");
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
	session("typeName") = "�༭�Կ�ѧ��"
	
	Idx = Request.QueryString("zkId")
	exec="select * from zkxl_info where (zk_id="&Idx&")"
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
	<form  name="addEduType" method="post" action="editZKXueliInfoAct.asp">
	<input type="hidden" name="zkId" id="zkId" value="<%=cint(Idx)%>" />
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th width="100" height="50" align="right">רҵ���ƣ�</th>
			<td width="" align="left"><input type="text" name="zkName" id="zkName" style="width:355px" value="<%=rs("zk_name")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">רҵ���</th>
			<td width="" align="left">
				<select name="zkType" id="zkType" style="width:355px">
					<option value="-99">-ѡ��-</option>
					<option value="1" <% if rs("zk_type") = 1 then%>selected<%end if%>>ר��</option>
					<option value="2" <% if rs("zk_type") = 2 then%>selected<%end if%>>����</option>
				</select>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">רҵ���ͣ�</th>
			<td width="" align="left">
				<select name="zkLevel" id="zkLevel" style="width:355px">
					<option value="0" <% if rs("zk_level") = 0 then%>selected<%end if%>>��ͨ</option>
					<option value="1" <% if rs("zk_level") = 1 then%>selected<%end if%>>VIP</option>
				</select>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">רҵ��飺</th>
			<td width="" align="left">
				<textarea id="zkZyjj" name="zkZyjj" style="height:300px;"><%=rs("zk_zyjj")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">����ѧ�ѣ�</th>
			<td width="" align="left"><input type="text" name="zkPrice" id="zkPrice" style="width:355px" value="<%=rs("zk_price")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">��ҵʱ�䣺</th>
			<td width="" align="left"><input type="text" name="zkTime" id="zkTime" style="width:355px" value="<%=rs("zk_time")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">���˷�֤��</th>
			<td width="" align="left"><input type="text" name="zkKhfz" id="zkKhfz" style="width:355px" value="<%=rs("zk_khfz")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">��ҵ���ϣ�</th>
			<td width="" align="left"><input type="text" name="zkBybz" id="zkBybz" style="width:355px" value="<%=rs("zk_bybz")%>"></td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">�γ��ص㣺</th>
			<td width="" align="left">
				<textarea id="zkKctd" name="zkKctd" style="height:300px;"><%=rs("zk_kctd")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">������ַ��</th>
			<td width="" align="left">
				<textarea id="zkBmdz" name="zkBmdz" style="height:300px;"><%=rs("zk_bmdz")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">�γ̽��ܣ�</th>
			<td width="" align="left">
				<textarea id="zkKcjs" name="zkKcjs" style="height:300px;"><%=rs("zk_kcjs")%></textarea>
			</td>
		</tr>
		<tr>
			<th width="100" height="50" align="right">�γ̰��ţ�</th>
			<td width="" align="left">
				<textarea id="zkKcap" name="zkKcap" style="height:300px;"><%=rs("zk_kcap")%></textarea>
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