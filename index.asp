<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>慧源教育</title>
		<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- 头部操作菜单栏 -->
	<!--#include file="common/normalTop.asp" -->
			
    <!-- 广告标语区-start -->
    <!-- #include file="common/ad.asp" -->
	<!-- 广告标语区-end -->
	
	<div id="gkPage1" style="border: 0px solid red;">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" style="border: 0px solid red;">
				
				<!-- -->
				<div id="gkToptop1" class="gkCol gkColFull">
					<ul id="work">
						<li>
							<a class="ilink" href="zkChannel.asp"><img src="images/l1.png" border="0"></a> 
							<a class="plinkInfo" href="zkChannel.asp"><img src="images/T1.png" border="0"></a>
						</li>
						<li>
							<a class="ilink" href="crxlList.asp"><img src="images/l2.png" border="0"></a> 
							<a class="plinkInfo" href="crxlList.asp"><img src="images/T2.png" border="0"></a>
						</li>
						<li>
							<a class="ilink" href="ycxlList.asp"><img src="images/l3.png" border="0"></a> 
							<a class="plinkInfo" href="ycxlList.asp"><img src="images/T3.png" border="0"></a>
						</li>
						<li>
							<a class="ilink" href="yjsDetail.asp"><img src="images/l4.png" border="0"></a> 
							<a class="plinkInfo" href="yjsDetail.asp"><img src="images/T4.png" border="0"></a>
						</li>
						<li style="width: 100px;">
							<a href="contactus.asp"><img src="images/l9.png" border="0"></a>
						</li>
						<li>
							<a class="ilink" href="zsChannel.asp"><img src="images/l5.png" border="0"></a> 
							<a class="plinkInfo" href="zsChannel.asp"><img src="images/T5.png" border="0"></a>
						</li>
						<li>
							<a class="ilink" href="zyChannel.asp"><img src="images/l6.png" border="0"></a> 
							<a class="plinkInfo" href="zyChannel.asp"><img src="images/T6.png" border="0"></a>
						</li>
						<li>
							<a class="ilink" href="cjcxList.asp"><img src="images/l8.png" border="0"></a> 
							<a class="plinkInfo" href="cjcxList.asp"><img src="images/T8.png" border="0"></a>
						</li>
						<li>
							<a class="ilink" href="downloadList.asp"><img src="images/l7.png" border="0"></a> 
							<a class="plinkInfo" href="downloadList.asp"><img src="images/T7.png" border="0"></a>
						</li>
					</ul>
				</div>
				<!-- -->
				<div id="gkToptop7" class="gkCol gkColLeft" style="margin-top:10px;">
					<div class="adDiv">
						最新公告 <span><a href="newsList.asp?type=1">更多...</a> </span>
					</div>
					<div class="newsItem" style="height:220px;">
					<%
						exec1="select * from news where news_type=1"
						set rs1=server.createobject("adodb.recordset")
						rs1.open exec1,conn,1,1
						for i= 1 to 5
						if rs1.eof then
						exit for
						end if
						
						newsTitle1 = RemoveHTML(rs1("news_title"))
						if len(newsTitle1) > 22 then
							newsTitle1 = left(newsTitle1, 22)+"..."
						end if 
					%>
						<p><img src="images/jt.gif"> <a href="newsDetail.asp?newsId=<%=rs1("news_id")%>" title="<%=rs1("news_title")%>"><%=newsTitle1%></a></p>
					<% 
						rs1.movenext
						next 
					%>
					</div>
				</div>
				<div id="gkToptop8" class="gkCol gkColCenter" style="margin-top:10px;">
					<div class="adDiv">
						教育新闻 <span><a href="newsList.asp?type=2">更多...</a> </span>
					</div>
					<div class="newsItem" style="height:220px;">
					<%
						exec2="select * from news where news_type=2"
						set rs2=server.createobject("adodb.recordset")
						rs2.open exec2,conn,1,1
						for i= 1 to 5
						if rs2.eof then
						exit for
						end if
						
						newsTitle2 = RemoveHTML(rs2("news_title"))
						if len(newsTitle2) > 22 then
							newsTitle2 = left(newsTitle2, 22)+"..."
						end if 
					%>
						<p><img src="images/jt.gif"> <a href="newsDetail.asp?newsId=<%=rs2("news_id")%>" title="<%=rs2("news_title")%>"><%=newsTitle2%></a></p>
					<% 
						rs2.movenext
						next 
					%>
					</div>
				</div>
				<div id="gkToptop9" class="gkCol gkColRight" style="margin-top:10px;">
					<div class="adDiv">
						考试常识 <span><a href="newsList.asp?type=3">更多...</a> </span>
					</div>
					<div class="newsItem" style="height:220px;">
					<%
						exec3="select * from news where news_type=3"
						set rs3=server.createobject("adodb.recordset")
						rs3.open exec3,conn,1,1
						for i= 1 to 5
						if rs3.eof then
						exit for
						end if
						
						newsTitle3 = RemoveHTML(rs3("news_title"))
						if len(newsTitle3) > 22 then
							newsTitle3 = left(newsTitle3, 22)+"..."
						end if 
					%>
						<p><img src="images/jt.gif"> <a href="newsDetail.asp?newsId=<%=rs3("news_id")%>" title="<%=rs3("news_title")%>"><%=newsTitle3%></a></p>
					<% 
						rs3.movenext
						next 
					%>
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