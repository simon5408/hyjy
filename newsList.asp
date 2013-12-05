<!--#include file="conn.asp" -->
<%
	kjType = Request.QueryString("type")
	typeTitle = ""
	if kjType =1 then
		typeTitle = "zxgg"
	else if kjType =2 then
		typeTitle = "jyxw"
	else if kjType =3 then
		typeTitle = "kscs"
	else
		typeTitle = "zxgg"
	end if
	end if
	end if
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>新闻资讯</title>
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
		    <div id="mainContent" class="clear">
				<div id="system-message-container"></div>
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- left -->
					<!--#include file="common/left.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="newsTitle bgColor <%=typeTitle%>BgImg">
							<div class="phoneDiv">官方咨询电话：400-6565-800</div>
						</div>
						<div class="newsList" style="min-height:692px;">
							<%
								exec1="select * from news where news_type="&kjType
								set rs1=server.createobject("adodb.recordset")
								rs1.open exec1,conn,1,1
								for i= 1 to 5
								if rs1.eof then
								exit for
								end if
							%>
							<div>&nbsp; <img src="images/jt.gif"> <a href="newsDetail.asp?newsId=<%=rs1("news_id")%>"><%=rs1("news_title")%></a></div>
							<% 
								rs1.movenext
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
