<<<<<<< HEAD
<!--#include file="conn.asp" -->
<%
	zyType=request.querystring("zyType")
	zyTitle = "专业证书"
	zyBgCss = "zyzsBgImg"
	if zyType = 2 then
		zyTitle = "职业教育"
		zyBgCss = "zyjyBgImg"
	end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>慧源教育-<%=zyType%></title>
<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
		
		<style type="text/css">
		.kctdDetail .ulCss{margin-bottom:0px;}
		.kctdDetail .ulCss .liCss{border-bottom:0px dotted #ccc;}

		.kctdDetail .ulCss .liCss:hover{background:#fffced;}
		
		.kctdDetail .cl{background:url(images/icon02.gif) 10px 7px no-repeat;line-height:28px;padding-left:25px;float:left;width:55px;color:#666666; font-weight:bold}
		
		.kctdDetail .cr{width:695px;float:left;line-height:28px;}
		
		.kctdDetail .ulCss .bz{border:1px solid #ffee97;background:#fffced;line-height:30px;font-size:12px;padding:5px 10px;margin-top:10px;}

		
		.clean {
			clear: both;
		}
		</style>
		
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
					<!--#include file="common/xlLeft.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="kctdTitle bgColor <%=zyBgCss%>"><div class="phoneDiv" style="width:585px;">官方咨询电话：400-6565-800</div></div>
						<div class="kctdDetail">
							<%
								Idx = Request.QueryString("zyId")
								exec1="select * from zy_info where (zy_id="&Idx&")"
								set rs1=server.createobject("adodb.recordset")
								rs1.open exec1,conn,1,1 
							%>
							<ul class="ulCss">
							  <li class="liCss" style="margin:5px auto; font:黑体; font-size:18px; text-align:center; color:#000;"><strong><%=rs1("zy_name")%></strong></li>
							  <li class="bz"><%=rs1("zy_info")%></li>
							  	<li class="liCss">
									<div class="cl">学　　制</div>
									<div class="cr"><%=rs1("zy_xzfs")%></div>
									<div class="clean"></div>
								</li>
							 	<li class="liCss">
									<div class="cl">授课方式</div>
									<div class="cr"><%=rs1("zy_skfs")%></div>
									<div class="clean"></div>
								</li>
							 	<li class="liCss">
									<div class="cl">课程设置</div>
								 	<div class="cr"><%=RemoveHTML(rs1("zy_kcsz"))%></div>
					  				<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">报读条件</div>
									<div class="cr"><%=RemoveHTML(rs1("zy_bdtj"))%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">颁发证书</div>
									<div class="cr"><%=rs1("zy_bfzs")%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">教学地点</div>
									<div class="cr"><%=rs1("zy_jxdd")%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">报名中心</div>
									<div class="cr"><%=rs1("zy_bmzx")%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">报名须知</div>
									<div class="cr"><%=RemoveHTML(rs1("zy_bmxz"))%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss" style="color:#F00; font-weight:bold;">
									<div class="cl">报名咨询</div>
									<div class="cr">400-6565-800　（24小时报名咨询）</div>
									<div class="clean"></div>
								</li>
							</ul>
							<div class="clean"></div>
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
=======
<!--#include file="conn.asp" -->
<%
	zyType=request.querystring("zyType")
	zyTitle = "专业证书"
	zyBgCss = "zyzsBgImg"
	if zyType = 2 then
		zyTitle = "职业教育"
		zyBgCss = "zyjyBgImg"
	end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>慧源教育-<%=zyType%></title>
<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
		
		<style type="text/css">
		.kctdDetail .ulCss{margin-bottom:0px;}
		.kctdDetail .ulCss .liCss{border-bottom:0px dotted #ccc;}

		.kctdDetail .ulCss .liCss:hover{background:#fffced;}
		
		.kctdDetail .cl{background:url(images/icon02.gif) 10px 7px no-repeat;line-height:28px;padding-left:25px;float:left;width:55px;color:#666666; font-weight:bold}
		
		.kctdDetail .cr{width:695px;float:left;line-height:28px;}
		
		.kctdDetail .ulCss .bz{border:1px solid #ffee97;background:#fffced;line-height:30px;font-size:12px;padding:5px 10px;margin-top:10px;}

		
		.clean {
			clear: both;
		}
		</style>
		
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
					<!--#include file="common/xlLeft.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="kctdTitle bgColor <%=zyBgCss%>"><div class="phoneDiv" style="width:585px;">官方咨询电话：400-6565-800</div></div>
						<div class="kctdDetail">
							<%
								Idx = Request.QueryString("zyId")
								exec1="select * from zy_info where (zy_id="&Idx&")"
								set rs1=server.createobject("adodb.recordset")
								rs1.open exec1,conn,1,1 
							%>
							<ul class="ulCss">
							  <li class="liCss" style="margin:5px auto; font:黑体; font-size:18px; text-align:center; color:#000;"><strong><%=rs1("zy_name")%></strong></li>
							  <li class="bz"><%=rs1("zy_info")%></li>
							  	<li class="liCss">
									<div class="cl">学　　制</div>
									<div class="cr"><%=rs1("zy_xzfs")%></div>
									<div class="clean"></div>
								</li>
							 	<li class="liCss">
									<div class="cl">授课方式</div>
									<div class="cr"><%=rs1("zy_skfs")%></div>
									<div class="clean"></div>
								</li>
							 	<li class="liCss">
									<div class="cl">课程设置</div>
								 	<div class="cr"><%=RemoveHTML(rs1("zy_kcsz"))%></div>
					  				<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">报读条件</div>
									<div class="cr"><%=RemoveHTML(rs1("zy_bdtj"))%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">颁发证书</div>
									<div class="cr"><%=rs1("zy_bfzs")%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">教学地点</div>
									<div class="cr"><%=rs1("zy_jxdd")%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">报名中心</div>
									<div class="cr"><%=rs1("zy_bmzx")%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">报名须知</div>
									<div class="cr"><%=RemoveHTML(rs1("zy_bmxz"))%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss" style="color:#F00; font-weight:bold;">
									<div class="cl">报名咨询</div>
									<div class="cr">400-6565-800　（24小时报名咨询）</div>
									<div class="clean"></div>
								</li>
							</ul>
							<div class="clean"></div>
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
>>>>>>> 8bf1c93cc6555e2891f79405e018a17c52b61897
