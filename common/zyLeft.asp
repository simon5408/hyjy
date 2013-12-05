					<div class="leftSide">
						<!--<div class="zkBtn" style="height:59px; background-image:url(../images/chaxun_bg.png); text-align:center"><img src="../images/chaxun.jpg"></div>-->
						<!-- BM -->
						<!--#include file="leftBM.asp" -->
						<!-- ZKZY -->
						<div class="xwBtn">
							<div class="xwTitle" style="height:35px; background-image:url(../images/title_bg.jpg);">
								<span style="padding-left:40px; font:'宋体'; color:#FFFFFF; font-size:18px; font-weight:bold">专科专业</span>
							</div>
							<div class="xwList1">
								<%
									exec11="select * from zkxl_info where zk_type=1 order by zk_level"
									set rs11=server.createobject("adodb.recordset")
									rs11.open exec11,conn,1,1
									for i= 1 to rs11.recordcount
									if rs11.eof then
									exit for
									end if
								%>
								<div><a href="channelDetail.asp?zkId=<%=rs11("zk_id")%>"><%=rs11("zk_name")%></a></div>
								<% 
									rs11.movenext
									next 
								%>
							</div>
						</div>
						<!-- BKZY -->
						<div class="xwBtn">
							<div class="xwTitle" style="height:35px; background-image:url(../images/title_bg.jpg);">
								<span style="padding-left:40px; font:'宋体'; color:#FFFFFF; font-size:18px; font-weight:bold">本科专业</span>
							</div>
							<div class="xwList1">
								<%
									exec12="select * from zkxl_info where zk_type=2 order by zk_level"
									set rs12=server.createobject("adodb.recordset")
									rs12.open exec12,conn,1,1
									for i= 1 to rs12.recordcount
									if rs12.eof then
									exit for
									end if
								%>
								<div><a href="channelDetail.asp?zkId=<%=rs12("zk_id")%>"><%=rs12("zk_name")%></a></div>
								<% 
									rs12.movenext
									next 
								%>
							</div>
						</div>
						<!-- 广告标语区-start -->
						<!--#include file="leftAD.asp" -->
						<!-- 广告标语区-end -->
						
						<!-- 报名咨询中心-start -->
						<!--#include file="leftDZ.asp" -->
						<!-- 报名咨询中心-end -->
					</div>