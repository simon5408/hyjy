<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>��Դ����-Զ��ѧ��</title>
<!-- ͷ������������ -->
		<!--#include file="common/header.asp" -->
		
		<style type="text/css">
		.kctdDetail .ulCss{margin-bottom:0px;}
		.kctdDetail .ulCss .liCss{border-bottom:0px dotted #ccc;}

		.kctdDetail .ulCss .liCss:hover{background:#fffced;}
		
		.kctdDetail .cl{background:url(images/icon02.gif) 10px 7px no-repeat;line-height:28px;padding-left:25px;float:left;width:55px;color:#666666; font-weight:bold}
		
		.kctdDetail .cr{width:695px;float:left;line-height:28px;}
		
		.kctdDetail .ulCss .bz{border:1px solid #ffee97;background:#fffced;line-height:30px;font-size:12px;padding:5px 10px;margin-top:10px;}
		
		.clean {
			clear: both;
		}
		</style>
		
</head>

<body>
	<!-- ͷ�������˵��� -->
	<!--#include file="common/normalTop.asp" -->
    
	<!-- ��������-start -->
    <!--#include file="common/ycxlAD.asp" -->
	<!-- ��������-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" style="border:0px solid red; min-height:1000px">
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- left -->
					<!--#include file="common/ycLeft.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="kctdTitle bgColor ycxlBgImg"><div class="phoneDiv" style="width:585px;">�ٷ���ѯ�绰��400-6565-800</div></div>
						<div class="kctdDetail">
							<%
								Idx = Request.QueryString("ycId")
								exec1="select * from ycxl_info where (yc_id="&Idx&")"
								set rs1=server.createobject("adodb.recordset")
								rs1.open exec1,conn,1,1 
							%>
							<ul class="ulCss">
							  <li class="liCss" style="margin:5px auto; font:����; font-size:18px; text-align:center; color:#000;"><strong><%=rs1("yc_name")%></strong></li>
							  <li class="bz"><%=rs1("yc_info")%></li>
							  </ul>
							<div class="dottedBottom">
								<div class="cl">ѧ������</div>
								<div class="cr"><%=rs1("yc_xzlx")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom">
								<div class="cl">�ڿη�ʽ</div>
								<div class="cr"><%=rs1("yc_skfs")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom">
								<div class="cl">רҵ����</div>
								<div class="cr"><%=rs1("yc_zysz")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom">
								<div class="cl">ѧ������</div>
								<div class="cr"><%=rs1("yc_xznx")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom">
								<div class="cl">ѧϰ���</div>
								<div class="cr"><%=rs1("yc_xlcc")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom">
								<div class="cl">ѧ��ѧλ</div>
								<div class="cr"><%=rs1("yc_xlxw")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom">
								<div class="cl">��������</div>
								<div class="cr"><%=rs1("yc_bdtj")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom"><div class="cl">�䷢֤��</div>
								<div class="cr"><%=rs1("yc_bfzs")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom">
								<div class="cl">��������</div>
								<div class="cr"><%=rs1("yc_bmzx")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom">
								<div class="cl">������֪</div>
								<div class="cr"><%=rs1("yc_bmxz")%></div>
								<div class="clean"></div>
							</div>
							<div class="dottedBottom" style="color:#F00; font-weight:bold;">
								<div class="cl">������ѯ</div>
								<div class="cr">400-6565-800����24Сʱ������ѯ��</div>
								<div class="clean"></div>
							</div>
							<div class="clean"></div>
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
	<!-- �ײ������˵��� -->
	<!--#include file="common/footer.asp" -->

</body>

</html>