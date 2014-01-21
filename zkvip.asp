<!--#include file="conn.asp" -->
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
		    <div id="mainContent" style="border:0px solid red; min-height:1250px">
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- left -->
					<!--#include file="common/zyLeft.asp" -->
					
					<!-- right -->
					<div class="rightSide">
						<div class="zyjsTitle bgColor zyjsBgImg">
							<div class="phoneDiv">自考一年取证 官方咨询电话：4008-568-565</div>
						</div>
						<div class="zyjsDetail" style="padding-top:5px;">
						<% 
							dim fso,mydir,dname
							Set fso=server.createobject("Scripting.FileSystemObject")
							set mydir=fso.getfolder(server.mappath("/admin/vip"))
							for each items in mydir.files
							'依次读取web目录下的每个文件对象
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
	<!-- 底部操作菜单栏 -->
	<!--#include file="common/footer.asp" -->

</body>

</html>
