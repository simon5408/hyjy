<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>��Դ����-�Կ�ѧ��</title>
<!-- ͷ������������ -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- ͷ�������˵��� -->
	<!--#include file="common/xlTop.asp" -->
    
	<!-- ��������-start -->
    <!--#include file="common/zkxlAD.asp" -->
	<!-- ��������-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" style="border:0px solid red; min-height:1250px">
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- left -->
					<!--#include file="common/zyLeft.asp" -->
					
					<!-- right -->
					<div class="rightSide">
						<div class="zyjsTitle bgColor zyjsBgImg">
							<div class="phoneDiv">�Կ�һ��ȡ֤ �ٷ���ѯ�绰��4008-568-565</div>
						</div>
						<div class="zyjsDetail" style="padding-top:5px;">
						<% 
							dim fso,mydir,dname
							Set fso=server.createobject("Scripting.FileSystemObject")
							set mydir=fso.getfolder(server.mappath("/admin/vip"))
							for each items in mydir.files
							'���ζ�ȡwebĿ¼�µ�ÿ���ļ�����
							dname=items.path
							htmfile=replace(dname,mydir&"\","")
						%>
						<img src="admin/vip/<%=htmfile%>">
						<%
							next 
						%>
						</div>
						
					</div>
					<!-- -->
				</div>
			</div>
		</div>
	</div>
	<%
		conn.close
		set conn=nothing
	%>
	<!-- �ײ������˵��� -->
	<!--#include file="common/footer.asp" -->

</body>

</html>
