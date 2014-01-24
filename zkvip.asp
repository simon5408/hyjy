
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>慧源教育-自考学历</title>
<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- 头部操作菜单栏 -->
	<!--#include file="common/xlTop.asp" -->
    
	<!-- 广告标语区-start -->
    <!--#include file="common/zkxlAD.asp" -->
	<!-- 广告标语区-end -->
	
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
							<div class="phoneDiv">官方咨询电话：400-6565-800</div>
						</div>
						-->
						<div style="border:1px solid #e0e0e0; margin-left:-5px;">
						<% 
							dim fso,mydir,dname
							Set fso=server.createobject("Scripting.FileSystemObject")
							set mydir=fso.getfolder(server.mappath("/admin/vip"))
							for each items in mydir.files
							'依次读取web目录下的每个文件对象
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
	
	<!-- 底部操作菜单栏 -->
	<!--#include file="common/footer.asp" -->

</body>

</html>
