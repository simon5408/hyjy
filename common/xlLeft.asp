					<div class="leftSide">
						<!--<div class="zkBtn" style="height:59px; background-image:url(../images/chaxun_bg.png); text-align:center"><img src="../images/chaxun.jpg"></div>-->
						<!-- BM -->
						<!--#include file="leftBM.asp" -->
						<!-- ZKZY -->
						<div class="xwBtn">
							<div class="xwTitle" style="height:35px; background-image:url(../images/title_bg.jpg);">
								<span style="padding-left:40px; font:'宋体'; color:#FFFFFF; font-size:18px; font-weight:bold">证书种类</span>
							</div>
							<div class="xwList1">
								<%
									if zyType = "" then
										zyType=request.querystring("zyType")
									end if
									
									exec11="select * from zy_info where zy_type="&zyType
									set rs11=server.createobject("adodb.recordset")
									rs11.open exec11,conn,1,1
									for i= 1 to rs11.recordcount
									if rs11.eof then
									exit for
									end if
																	
									zyName = RemoveHTML(rs11("zy_name"))
									if len(zyName) > 10 then
										zyName = left(zyName, 10)+"..."
									end if 
									
								%>
								<div><a href="zyDetail.asp?zyId=<%=rs11("zy_id")%>&zyType=<%=zyType%>" title="<%=rs11("zy_name")%>"><%=zyName%></a></div>
								<% 
									rs11.movenext
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