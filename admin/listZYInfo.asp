<!--#include file="conn.asp" -->
<%
	xsType = request.querystring("type")
	xsTypeName = ""
	if xsType = 1 then
		xsTypeName = "����רҵ֤��"
	end if
	if xsType = 2 then
		xsTypeName = "����ְҵ����"
	end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<!--#include file="header.asp" -->
	
	<script language="javascript" type="text/javascript">
		// ɾ��ѧ����Ϣ
		function doDel(id){
			if(confirm("ȷ��Ҫɾ������Ϣ��")){
				window.location.href="delZYInfo.asp?zyId="+id+"&type=<%=xsType%>";
			}
		}
		
		// ������ѯ
		function doSearch(){
			var zyName = document.getElementById("zyName").value;
						
			document.location.href="listZYInfo.asp?zyName="+zyName+"&type=<%=xsType%>";
		}
</script>
</head>

<body>
<% username=session("username") 
	if username<>"" then 
		session("typeName") = xsTypeName
		
		Function RemoveHTML(strHTML) 
			Dim objRegExp, Match, Matches 
			Set objRegExp = New Regexp 
			objRegExp.IgnoreCase = True 
			objRegExp.Global = True 
			'ȡ�պϵ�<> 
			objRegExp.Pattern = "<.+?>" 
			'����ƥ�� 
			Set Matches = objRegExp.Execute(strHTML) 
			' ����ƥ�伯�ϣ����滻��ƥ�����Ŀ 
			For Each Match in Matches 
				strHtml=Replace(strHTML,Match.Value,"") 
			Next 
			RemoveHTML=strHTML 
			Set objRegExp = Nothing 
		End Function
				
		zyName = request.querystring("zyName")
		session("zyName") = zyName
		
		sql= "select * from zy_info where zy_type= "&xsType
		
		'ѧ������
		if zyName <> "" then
			sql =sql + " and zy_name like '%"&zyName&"%' "
		end if
		
		sql =sql + " order by zy_date desc "
		
		exec=sql
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
	<div id="tbleDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<td style="font-family:'��Բ', Helvetica, sans-serif;">���ƣ�</td>
			<td><input type="text" name="zyName" id="zyName" value="<%=session("zyName")%>"></td>
		</tr>
	</table>
	<div class="searchBtnDiv" style="width:99.5%">
		<a href="javascript:void(0);" onclick="doSearch()" class="easyui-linkbutton" icon="icon-search">�� ѯ</a>
	</div>
	<table width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		<tr>
			<th>���</th>
			<th>����</th>
			<th>ѧ��</th>
			<th>���</th>
			<th>�ڿη�ʽ</th>
			<th>�γ�����</th>
			<th>��������</th>
			<th>�䷢֤��</th>
			<th>��ѧ�ص�</th>
			<th>��������</th>
			<th>������֪</th>
			<th>��������</th>
			<th style="width:80px;">����</th>
		</tr>
		
		<%
			for i= 1 to rs.recordcount
			if rs.eof then
			exit for
			end if
		%>
		<tr>
			<td><%=i%></td>
			<td><%=rs("zy_name")%></td>
			<td><%=rs("zy_xzfs")%></td>
			<td><%=left(RemoveHTML(rs("zy_info")), 40)%>...</td>
			<td><%=rs("zy_skfs")%></td>
			<td><%=left(RemoveHTML(rs("zy_kcsz")), 40)%>...</td>
			<td><%=left(RemoveHTML(rs("zy_bdtj")), 40)%>...</td>
			<td><%=rs("zy_bfzs")%></td>
			<td><%=rs("zy_jxdd")%></td>
			<td><%=rs("zy_bmzx")%></td>
			<td><%=left(RemoveHTML(rs("zy_bmxz")), 40)%>...</td>
			<td><%=rs("zy_date")%></td>
			<td style="width:80px;">
				<a href='editZYInfo.asp?zyId=<%=rs("zy_id")%>&type=<%=xsType%>'class="easyui-linkbutton" plain="true">�༭</a>
				<!--<a href='showXueliInfo.asp?xschoolId=<=rs("xschool_id")%>'class="easyui-linkbutton" plain="true">Ԥ��</a>-->
				<a href='javascript:doDel(<%=rs("zy_id")%>)'class="easyui-linkbutton" plain="true">ɾ��</a>
			</td>
		</tr>
		<% 
			rs.movenext
			next 
		%>
	</table>
	</div>
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