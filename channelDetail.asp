<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>��Դ����-�Կ�ѧ��</title>
<!-- ͷ������������ -->
		<!--#include file="common/header.asp" -->
</head>

<body>
	<!-- ͷ�������˵��� -->
	<!--#include file="common/xlTop.asp" -->
    
	<!-- ��������-start -->
    <!--#include file="common/zkxlAD.asp" -->
	<!-- ��������-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent">
				<div id="system-message-container"></div>
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- left -->
					<!--#include file="common/zyLeft.asp" -->
					<%
						Idx = Request.QueryString("zkId")
						exec1="select * from zkxl_info where (zk_id="&Idx&")"
						set rs1=server.createobject("adodb.recordset")
						rs1.open exec1,conn,1,1 
					%>
					<!-- right -->
					<div class="rightSide">
						<div class="zyjsTitle bgColor zyjsBgImg">
							<div class="phoneDiv">�Կ�һ��ȡ֤ �ٷ���ѯ�绰��400-6565-800</div>
						</div>
						<div class="zyjsDetail">
							<div class="logoDiv"><img src="images/ad/Ad.jpg" style="margin-top:1px;" /></div>
							<div class="contentDiv">
								<div class="xxDiv"><span>רҵ����:</span> <%=rs1("zk_name")%></div>
								<div class="xxDiv"><span>����ѧ��:</span> <%=rs1("zk_price")%></div>
								<div class="xxDiv"><span>��ҵʱ��:</span> <%=rs1("zk_time")%></div>
								<div class="xxDiv"><span>���˷�֤:</span> <%=rs1("zk_khfz")%></div>
								<div class="xxDiv"><span>��ҵ����:</span> <%=rs1("zk_bybz")%></div>
								<div class="btnDivs xxDiv">
									<div><a href="zxzcDetail.asp" target="_blank"><img src="images/baoming.jpg" /></a></div>
									<div><a href="http://wpa.qq.com/msgrd?V=1&Uin=737099789&Site=%E6%85%A7%E6%BA%90%E6%95%99%E8%82%B2&Menu=yes" target="_blank"><img src="images/zhixun.jpg" /></a></div>
									<div><img src="images/vip_xiangqing.jpg" /></div>
								</div>
							</div>
						</div>
						<div class="kctdTitle bgColor top_5"><img src="images/kctd_title.jpg"></div>
						<div class="kctdDetail">
							<div style="width:100%; margin-left:3px;"><%=rs1("zk_kctd")%></div>
						</div>
						<div class="bmdzTitle bgColor top_5"><img src="images/bmdz_title.jpg"></div>
						<div class="bmdzDetail">
							<div style="width:100%; margin-left:3px;"><%=rs1("zk_bmdz")%></div>
						</div>
						<div class="kcjsTitle bgColor top_5"><img src="images/kcjs_title.jpg"></div>
						<div class="kcjsDetail">
							<div style="width:100%; margin-left:3px;"><%=rs1("zk_kcjs")%></div>
						</div>
						<div class="kcjsTitle bgColor top_5"><img src="images/ksap_title.jpg"></div>
						<div class="kcjsDetail">
							<div style="width:100%; margin-left:3px;"><%=rs1("zk_kcap")%></div>
						</div>
					</div>
					<!-- -->
					
				</div>
			</div>
		</div>
	</div>
	<%
		conn.close
		set conn=nothing
	%>
	<!-- �ײ������˵��� -->
	<!--#include file="common/footer.asp" -->

</body>

</html>
