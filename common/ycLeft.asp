					<div class="leftSide">
						<!--<div class="zkBtn" style="height:59px; background-image:url(../images/chaxun_bg.png); text-align:center"><img src="../images/chaxun.jpg"></div>-->
						<!-- BM -->
						<!--#include file="leftBM.asp" -->
						<!-- ZKZY -->
						<div class="xwBtn">
							<div class="xwTitle" style="height:35px; background-image:url(../images/title_bg.jpg);">
								<span style="padding-left:40px; font:'����'; color:#FFFFFF; font-size:18px; font-weight:bold">Զ��ѧУ</span>
							</div>
							<div class="xwList1">
								<%
									exec11="select * from ycxl_info order by yc_id asc"
									set rs11=server.createobject("adodb.recordset")
									rs11.open exec11,conn,1,1
									for i= 1 to rs11.recordcount
									if rs11.eof then
									exit for
									end if
																	
									crName = RemoveHTML(rs11("yc_name"))
									if len(crName) > 10 then
										crName = left(crName, 10)+"..."
									end if 
									
								%>
								<div><a href="ycDetail.asp?ycId=<%=rs11("yc_id")%>" title="<%=rs11("yc_name")%>"><%=crName%></a></div>
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