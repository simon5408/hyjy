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
							exec="select * from vip_img order by vi_order"
							set rs=server.createobject("adodb.recordset")
							rs.open exec,conn,1,1 
							
							for i= 1 to rs.recordcount
							if rs.eof then
							exit for
							end if
						%>
						<span align="center"><a href="http://wpa.qq.com/msgrd?V=1&amp;Uin=770084666&amp;Site=慧源教育&amp;Menu=yes" target="_blank"><img src="admin/vip/<%=rs("vi_path")%>"></a></span>
						<%
							rs.movenext
							next 
						%>
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
