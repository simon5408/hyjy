<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>慧源教育-成人学历</title>
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
					<!--#include file="common/crLeft.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="kctdTitle bgColor crxlBgImg"><div class="phoneDiv" style="width:585px;">官方咨询电话：400-6565-800</div></div>
						<div class="kctdDetail">
							<%
								Idx = Request.QueryString("crId")
								exec1="select * from crxl_info where (cr_id="&Idx&")"
								set rs1=server.createobject("adodb.recordset")
								rs1.open exec1,conn,1,1 
							%>
							<ul class="ulCss">
							  <li class="liCss" style="margin:5px auto; font:黑体; font-size:18px; text-align:center; color:#000;"><strong><%=rs1("cr_sch_name")%></strong></li>
							  <li class="bz"><%=rs1("cr_sch_info")%></li>
							  	<li class="liCss">
									<div class="cl">高考介绍</div>
									<div class="cr"><%=rs1("cr_sch_gk")%></div>
									<div class="clean"></div>
								</li>
							 	<li class="liCss">
									<div class="cl">招生专业</div>
									<div class="cr"><%=rs1("cr_spec")%></div>
									<div class="clean"></div>
								</li>
							 	
								<li class="liCss">
									<div class="cl">学习流程</div>
									<div class="cr"><%=rs1("cr_study_lc")%></div>
									<div class="clean"></div>
								</li>
								<li class="liCss">
									<div class="cl">报名地址</div>
									<div class="cr"><%=rs1("cr_addr")%></div>
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
