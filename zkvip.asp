
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
		    <div id="mainContent" class="clear">
				<div id="system-message-container"></div>
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- right -->
					<div class="rightSide" style="width:100%;">
						<!--
						<div class="newsTitle bgColor yjsBgImg">
							<div class="phoneDiv">�ٷ���ѯ�绰��400-6565-800</div>
						</div>
						-->
						<div style="border:1px solid #e0e0e0; margin-left:-5px;">
						<% 
							dim fso,mydir,dname
							Set fso=server.createobject("Scripting.FileSystemObject")
							set mydir=fso.getfolder(server.mappath("/admin/vip"))
							for each items in mydir.files
							'���ζ�ȡwebĿ¼�µ�ÿ���ļ�����
							dname=items.path
							htmfile=replace(dname,mydir&"\","")
						%>
						<p align="center"><img src="admin/vip/<%=htmfile%>"></p>
						<%
							next 
						%>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	
	<!-- �ײ������˵��� -->
	<!--#include file="common/footer.asp" -->

</body>

</html>
