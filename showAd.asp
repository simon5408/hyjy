<!--#include file="conn.asp" -->
<%
	Idx = Request.QueryString("adId")
	exec="select * from ad_info where ad_id="&Idx&""
	set rs=server.createobject("adodb.recordset")
	rs.open exec,conn,1,1 
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>新闻咨询</title>
<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- 头部操作菜单栏 -->
	<!--#include file="common/normalTop.asp" -->
    
	<!-- 广告标语区-start -->
    <!--#include file="common/ad.asp" -->
	<!-- 广告标语区-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" style="border:0px solid red; min-height:1000px">
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- left -->
					<!--#include file="common/left.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="newsTitle bgColor ggzxBgImg">
							<div class="phoneDiv">官方咨询电话：400-6565-800</div>
						</div>
						<div class="newsDetail" style="min-height:692px;">
							<div style="height:45px; width:100%; padding-top:5px; font-family:黑体; font-size:24px; text-align:center; font-weight:bold;border:0px solid #c0c0c0; background-color:f0f0f0;"><%=rs("ad_title")%></div>
							<div style="height:25px; width:100%; border:0px solid #c0c0c0; background-color:#dfdfdf; text-align:right">发布日期：<%=rs("ad_date")%></div>
							<div style="border:0px solid #c0c0c0; border-top: 0px;">
								<%=rs("ad_info")%>
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
