<!--#include file="conn.asp" -->
<%zyType=2%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>慧源教育-职业教育</title>
		<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- 头部操作菜单栏 -->
	<!--#include file="common/zyTop.asp" -->
    
	<!-- 广告标语区-start -->
    <!--#include file="common/zyjyAD.asp" -->
	<!-- 广告标语区-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" style="border:0px solid red; min-height:930px">
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- left -->
					<!--#include file="common/xlLeft.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="zkTitle bgColor zyjyBgImg">
							<div class="phoneDiv">官方咨询电话：400-6565-800</div>
							<div class="moreDiv"><a href=""></a></div>
						</div>
						<div class="zkList">
							<%
								exec1="select * from zy_info where zy_type="&zyType
								set rs1=server.createobject("adodb.recordset")
								rs1.open exec1,conn,1,1
								for i= 1 to 6
								if rs1.eof then
								exit for
								end if
																
								zyName = RemoveHTML(rs1("zy_name"))
								if len(zyName) > 16 then
									zyName = left(zyName, 16)+"..."
								end if 
								
								zyInfo = RemoveHTML(rs1("zy_info"))
								if len(zyInfo) > 215 then
									zyInfo = left(zyInfo, 215)+"..."
								end if 
								
								bdtjInfo = RemoveHTML(rs1("zy_bdtj"))
								if len(bdtjInfo) > 35 then
									bdtjInfo = left(bdtjInfo, 35)+"..."
								end if 
							%>
							<div class="zsDiv">
								<div class="zyBgDiv"><%=zyName%></div>
								<div class="zyItem">
									<div class="zyContent" style="height:240px;">
										<!--<div style="background:url('http://www.edunewline.net/img/hdsf.gif');" class="logoDiv"></div>-->
										<%=zyInfo%>
									</div>
									<div class="zyContent" style="height:25px;"><b>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;制：</b><%=rs1("zy_xzfs")%></div>
									<div class="zyContent" style="height:25px;"><b>授课方式：</b><%=rs1("zy_skfs")%></div>
									<div class="zyContent" style="height:49px;"><b>报读条件：</b><%=bdtjInfo%></div>
									<div class="zyContent" style="height:49px;"><b>报名中心：</b><%=RemoveHTML(rs1("zy_bmzx"))%></div>
									<div class="zyContent" style="border:0;"><span class="detailSpan"><a href="zyDetail.asp?zyId=<%=rs1("zy_id")%>&zyType=<%=zyType%>"><img src="images/detail_btn.gif" /></a></span><span class="baomiSpan"><a href="zxzcDetail.asp" target="_blank"><img src="images/baomi_btn.gif" /></a></span></div>
								</div>
							</div>
							<% 
								rs1.movenext
								next 
							%>
						</div>
						
						<div style="width:100%; margin:5px auto; border:1px solid #808080;"><img src="images/wjbanner.gif" width="784px"></div>
						
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
