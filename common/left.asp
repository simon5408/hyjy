					<div class="leftSide">
						<!--<div class="zkBtn" style="height:59px; background-image:url(../images/chaxun_bg.png); text-align:center"><img src="../images/chaxun.jpg"></div>-->
						<!-- BM -->
						<!--#include file="leftBM.asp" -->
						<!-- ZXGG -->
						<div class="xwBtn">
							<div class="xwTitle" style="height:35px; background-image:url(../images/title_bg.jpg);">
								<span style="padding-left:40px; font:'����'; color:#FFFFFF; font-size:18px; font-weight:bold">���¹���</span>
								<span style="padding-left:140px; font:'����'; color:#FFFFFF; font-size:12px;"><a href="newsList.asp?type=1">����...</a></span>
							</div>
							<div class="xwList" id="tickerDiv">
								<%
									exec11="select * from news where news_type=1"
									set rs11=server.createobject("adodb.recordset")
									rs11.open exec11,conn,1,1
									for i= 1 to 6
									if rs11.eof then
									exit for
									end if
								%>
								<dt class="heading"><a href="newsDetail.asp?newsId=<%=rs11("news_id")%>" title="<%=rs11("news_title")%>"><%=left(rs11("news_title"), 18)%>...</a></dt><dd></dd>
								<% 
									rs11.movenext
									next 
								%>
							</div>
						</div>
						<!-- ��������-start -->
						<!--#include file="leftAD.asp" -->
						<!-- ��������-end -->
						
						<!-- ������ѯ����-start -->
						<!--#include file="leftDZ.asp" -->
						<!-- ������ѯ����-end -->
					</div>
					
					