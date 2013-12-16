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
		    <div id="mainContent" class="clear" style="border:0px solid red; min-height:1000px">				
				<!-- -->
				<div id="gkTop2" class="gkMain clear" style="border:1 solid red;">
					<!-- left -->
					<!--#include file="common/left.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="zkTitle bgColor zkTitleBgImg">
							<div class="phoneDiv">自考一年取证 官方咨询电话：400-6565-800</div>
							<div class="moreDiv"><a href=""></a></div>
						</div>
						<div class="zkList">
							<%
								exec1="select * from zkxl_info where zk_type=1 order by zk_level"
								set rs1=server.createobject("adodb.recordset")
								rs1.open exec1,conn,1,1
								for i= 1 to 6
								if rs1.eof then
								exit for
								end if
								
								bgClass = "zkBg"
								if rs1("zk_level") =1 then
									bgClass = "cvipBg"
								end if
								
								zkZyjj = RemoveHTML(rs1("zk_zyjj"))
								if len(zkZyjj) > 25 then
									zkZyjj = left(zkZyjj, 25)+"..."
								end if 
							%>
							
							<div class="listDiv <%=bgClass%>">
								<table style="" width="90%" cellpadding="1" cellspacing="1" border="1">
									<tr>
										<td colspan="2" class="titleTd"><%=rs1("zk_name")%></td>
									</tr>
									<tr>
										<td colspan="2" class="contentTd"><%=zkZyjj%></td>
									</tr>
									<tr>
										<td><div class="priceDiv"><%=rs1("zk_price")%></div></td>
										<td><div class="butnDiv"><a href="channelDetail.asp?zkId=<%=rs1("zk_id")%>">详细信息</a></div></td>
									</tr>
								</table>
							</div>
							<% 
								rs1.movenext
								next 
							%>
						</div>
						
						<div style="width:100%; margin:5px auto; border:1px solid #808080;"><img src="images/wjbanner.gif" width="784px"></div>
						
						<div class="bkTitle bgColor"><img src="images/rmbk_title.jpg"></div>
						<div class="bkList">
							<%
								exec2="select * from zkxl_info where zk_type=2 order by zk_level"
								set rs2=server.createobject("adodb.recordset")
								rs2.open exec2,conn,1,1
								for i= 1 to 12
								if rs2.eof then
								exit for
								end if
								
								bgClass = "bkBg"
								if rs2("zk_level") =1 then
									bgClass = "cvipBg"
								end if
								
								zkZyjj = RemoveHTML(rs2("zk_zyjj"))
								if len(zkZyjj) > 25 then
									zkZyjj = left(zkZyjj, 25)+"..."
								end if 
							%>
							
							<div class="listDiv <%=bgClass%>">
								<table style="" width="90%" cellpadding="1" cellspacing="1" border="1">
									<tr>
										<td colspan="2" class="titleTd"><%=rs2("zk_name")%></td>
									</tr>
									<tr>
										<td colspan="2" class="contentTd"><%=zkZyjj%></td>
									</tr>
									<tr>
										<td><div class="priceDiv"><%=rs2("zk_price")%></div></td>
										<td><div class="butnDiv"><a href="channelDetail.asp?zkId=<%=rs2("zk_id")%>">详细信息</a></div></td>
									</tr>
								</table>
							</div>
							<% 
								rs2.movenext
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
