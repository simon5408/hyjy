<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>网络远程</title>
		<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- 头部操作菜单栏 -->
	<!--#include file="common/xlTop.asp" -->
	<!-- 广告标语区-start -->
    <!--#include file="common/ycxlAD.asp" -->
	<!-- 广告标语区-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" class="clear">
				
				<!-- -->
				<div id="gkTop1" class="gkMain">
					<div class="newsTitle bgColor ycxlBgImg">
						<div class="phoneDiv" style="width:785px;">官方咨询电话：400-6565-800</div>
						<div class="moreDiv"><a href="ycDetail.asp?ycId=1">更多...</a></div>
					</div>
				</div>
				<div id="gkTop1" class="gkMain clear" style="border:1px solid #909090; margin-top:0px; border-top:0px;">
					<%
						exec1="select * from ycxl_info order by yc_id asc"
						set rs1=server.createobject("adodb.recordset")
						rs1.open exec1,conn,1,1
						for i= 1 to 6
						if rs1.eof then
						exit for
						end if
						
						dxImg = ""
						select case i
							case 1
							dxImg = "images/dx/gddx.gif"
							case 2
							dxImg = "images/dx/hdlgdx.gif"
							case 3
							dxImg = "images/dx/nkdx.gif"
							case 4
							dxImg = "images/dx/dllgdx.gif"
							case 5
							dxImg = "images/dx/xadzkjdx.gif"
							case 6
							dxImg = "images/dx/tjdx.gif"
						end select
						
						crInfo = RemoveHTML(rs1("yc_info"))
						if len(crInfo) > 280 then
							crInfo = left(crInfo, 280)+"..."
						end if 
						
						ycBdtj = RemoveHTML(rs1("yc_bdtj"))
						if len(ycBdtj) > 50 then
							ycBdtj = left(ycBdtj, 50)+"..."
						end if 
						
						ycSkfs = RemoveHTML(rs1("yc_skfs"))
						if len(ycSkfs) > 20 then
							ycSkfs = left(ycSkfs, 20)+"..."
						end if 
					%>
					<div class="zsDiv">
						<div class="zyBgDiv"><%=rs1("yc_name")%></div>
						<div class="zyItem">
							<div class="zyContent" style="height:240px;">
								<div style="background:url('<%=dxImg%>');" class="logoDiv"></div>
								<%=crInfo%>
							</div>
							<div class="zyContent" style="height:25px;"><b>学&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;制：</b><%=rs1("yc_xzlx")%></div>
							<div class="zyContent" style="height:25px;"><b>授课方式：</b><%=ycSkfs%></div>
							<div class="zyContent" style="height:49px;"><b>报读条件：</b><%=ycBdtj%></div>
							<div class="zyContent" style="height:49px;"><b>报名中心：</b><%=RemoveHTML(rs1("yc_bmzx"))%></div>
							<div class="zyContent"  style="height:35px;border:0;">
								<span class="detailSpan"><a href="ycDetail.asp?ycId=<%=rs1("yc_id")%>"><img src="images/detail_btn.gif" /></a></span>
								<span class="baomiSpan"><a href="zxzcDetail.asp" target="_blank"><img src="images/baomi_btn.gif" /></a></span>
							</div>
						</div>
					</div>
					<% 
						rs1.movenext
						next 
					%>					
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