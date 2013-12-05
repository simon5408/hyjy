<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>成人学历</title>
		<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- 头部操作菜单栏 -->
	<!--#include file="common/xlTop.asp" -->
	<!-- 广告标语区-start -->
    <!--#include file="common/ad.asp" -->
	<!-- 广告标语区-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" class="clear">
				
				<!-- -->
				<div id="gkTop1" class="gkMain clear" style="border:1px solid #909090; border-bottom:0px;">
					<div class="newsTitle bgColor crxlBgImg">
						<div class="phoneDiv" style="width:785px;">官方咨询电话：400-6565-800</div>
						<div class="moreDiv"><a href=""></a></div>
					</div>
				</div>
				<div id="gkTop1" class="gkMain clear" style="border:1px solid #909090; margin-top:0px; border-top:0px;">
					<%
						exec1="select * from xueli_school where xschool_type=1"
						set rs1=server.createobject("adodb.recordset")
						rs1.open exec1,conn,1,1
						for i= 1 to rs1.recordcount
						if rs1.eof then
						exit for
						end if
					%>
					<div class="xxNameList">
						<table cellpadding="0" cellspacing="0" border="0" width="90%">
							<tr>
								<td class="xxTitleTd"><%=rs1("xschool_name")%></td>
							</tr>
							<tr>
								<td><%=left(rs1("xschool_summ"), 70)%>...</td>
							</tr>
							<tr>
								<td><div class="xxButnDiv"><a href="xueliDetail.asp?xschoolId=<%=rs1("xschool_id")%>&type=1">详细信息</a></div></td>
							</tr>
						</table>
					</div>
					<% 
						rs1.movenext
						next 
					%>
					
				</div>
				<div id="gkTop1" class="gkMain clear" style="border:1px solid #909090;">
					<div style="text-align:center"><img src="images/wjbanner.jpg" width="1100"></div>
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