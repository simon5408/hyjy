<!--#include file="conn.asp" -->
<%
	Idx = Request.QueryString("viId")
	exec="select * from vip_img where (vi_id="&Idx&")"
	set rs=server.createobject("adodb.recordset")
	rs.open exec,conn,1,1 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<!--#include file="header.asp" -->
	
		
	<script language="javascript" type="text/javascript">
		function doSbmit(){
			var viOrder = $("#viOrder").val();
			if($.trim(viOrder) == 0){
				alert("ͼƬ����Ϊ��ѡ�");
				$("#viOrder").focus();
				$("#viOrder").addClass('errInpt');
				return false;
			}else{
				$("#viOrder").removeClass('errInpt');
			}
						
			document.addEduType.submit();
		}

	</script>

</head>

<body>
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "�༭VIPͼƬ"
%>
	<!-- ͷ�������˵��� -->
	<!--#include file="top.asp" -->

	<!-- ��߲����� -->
	<div id="left">
		<!--#include file="left.asp" -->
	</div>
	
	<div id="right">
	<!-- ���幦����(��ʼ) -->
	<form  name="addEduType" method="post" action="editVipImagesAct.asp">
	<input type="hidden" name="viId" id="viId" value="<%=rs("vi_id")%>" />
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		
		
		<tr>
			<th width="100" height="50" align="right">ͼƬ���У�</th>
			<td width="" align="left">
				<select id="viOrder" name="viOrder">
					<option value="0">-��ѡ��-</option>
					<% for i=1 to 15 %>
					<option value="<%=i%>" <% if rs("vi_order") = i then%>selected<%end if%>><%=i%></option>
					<% next%>
				</select>
			</td>
		</tr>
		
		<tr>
			<th width="100" height="50" align="right">ͼƬ��ַ��</th>
			<td width="" align="left"><img src="vip/<%=rs("vi_path")%>" height="150" width="200"></td>
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
