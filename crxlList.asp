<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>成人学历</title>
		<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- 头部操作菜单栏 -->
	<!--#include file="common/xlTop.asp" -->
	<!-- 广告标语区-start -->
    <!--#include file="common/ad.asp" -->
	<!-- 广告标语区-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" class="clear">
				
				<!-- -->
				<div id="gkTop1" class="gkMain">
					<div class="newsTitle bgColor crxlBgImg">
						<div class="phoneDiv" style="width:785px;">官方咨询电话：400-6565-800</div>
						<div class="moreDiv"><a href=""></a></div>
					</div>
				</div>
				<div id="gkTop1" class="gkMain clear" style="border:1px solid #909090; margin-top:0px; border-top:0px;">
					<%
						exec1="select * from xueli_school where xschool_type=1"
						set rs1=server.createobject("adodb.recordset")
						rs1.open exec1,conn,1,1
						for i= 1 to rs1.recordcount
						if rs1.eof then
						exit for
						end if
					%>
					
					<% 
						rs1.movenext
						next 
					%>
					
					<div class="zsDiv">
						<div class="zyBgDiv">Title</div>
						<div class="zyItem">
							<div class="zyContent" style="height:240px;">ssdsd</div>
							<div class="zyContent" style="height:25px;"><b>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;制：</b>111</div>
							<div class="zyContent" style="height:25px;"><b>授课方式：</b>111</div>
							<div class="zyContent" style="height:49px;"><b>报读条件：</b>1111</div>
							<div class="zyContent" style="height:49px;"><b>报名中心：</b>sss</div>
							<div class="zyContent"  style="height:35px;border:0;">
								<span class="detailSpan"><a href="zyDetail.asp?zyId="><img src="images/detail_btn.gif" /></a></span>
								<span class="baomiSpan"><a href="zxzcDetail.asp" target="_blank"><img src="images/baomi_btn.gif" /></a></span>
							</div>
						</div>
					</div>
					
					<div class="zsDiv">
						<div class="zyBgDiv">Title</div>
						<div class="zyItem">
							<div class="zyContent" style="height:240px;">ssdsd</div>
							<div class="zyContent" style="height:25px;"><b>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;制：</b>111</div>
							<div class="zyContent" style="height:25px;"><b>授课方式：</b>111</div>
							<div class="zyContent" style="height:49px;"><b>报读条件：</b>1111</div>
							<div class="zyContent" style="height:49px;"><b>报名中心：</b>sss</div>
							<div class="zyContent" style="height:35px;border:0;">
								<span class="detailSpan"><a href="zyDetail.asp?zyId="><img src="images/detail_btn.gif" /></a></span>
								<span class="baomiSpan"><a href="zxzcDetail.asp" target="_blank"><img src="images/baomi_btn.gif" /></a></span>
							</div>
						</div>
					</div>
					
					<div class="zsDiv">
						<div class="zyBgDiv">Title</div>
						<div class="zyItem">
							<div class="zyContent" style="height:240px;">ssdsd</div>
							<div class="zyContent" style="height:25px;"><b>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;制：</b>111</div>
							<div class="zyContent" style="height:25px;"><b>授课方式：</b>111</div>
							<div class="zyContent" style="height:49px;"><b>报读条件：</b>1111</div>
							<div class="zyContent" style="height:49px;"><b>报名中心：</b>sss</div>
							<div class="zyContent"  style="height:35px;border:0;">
								<span class="detailSpan"><a href="zyDetail.asp?zyId="><img src="images/detail_btn.gif" /></a></span>
								<span class="baomiSpan"><a href="zxzcDetail.asp" target="_blank"><img src="images/baomi_btn.gif" /></a></span>
							</div>
						</div>
					</div>
					
					<div class="zsDiv">
						<div class="zyBgDiv">Title</div>
						<div class="zyItem">
							<div class="zyContent" style="height:240px;">ssdsd</div>
							<div class="zyContent" style="height:25px;"><b>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;制：</b>111</div>
							<div class="zyContent" style="height:25px;"><b>授课方式：</b>111</div>
							<div class="zyContent" style="height:49px;"><b>报读条件：</b>1111</div>
							<div class="zyContent" style="height:49px;"><b>报名中心：</b>sss</div>
							<div class="zyContent"  style="height:35px;border:0;">
								<span class="detailSpan"><a href="zyDetail.asp?zyId="><img src="images/detail_btn.gif" /></a></span>
								<span class="baomiSpan"><a href="zxzcDetail.asp" target="_blank"><img src="images/baomi_btn.gif" /></a></span>
							</div>
						</div>
					</div>
					
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