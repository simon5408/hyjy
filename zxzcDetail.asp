<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>网上报名</title>
		<!-- 头部公共操作类 -->
		<!--#include file="common/header.asp" -->
		<script type="text/javascript">
			function doSbmit(){
				var zName = jQuery("#zName").val();
				if(jQuery.trim(zName) == ""){
					alert("姓名为必填项！");
					jQuery("#zName").focus();
					jQuery("#zName").addClass('errInpt');
					return false;
				}else{
					jQuery("#zName").removeClass('errInpt');
				}
				
				var zPhone = jQuery("#zPhone").val();
				if(jQuery.trim(zPhone) == ""){
					alert("电话为必填项！");
					jQuery("#zPhone").focus();
					jQuery("#zPhone").addClass('errInpt');
					return false;
				}else{
					jQuery("#zPhone").removeClass('errInpt');
				}
				
				var zTypeId = jQuery("#zTypeId").val();
				if(jQuery.trim(zTypeId) == "-99"){
					alert("类别为必选项！");
					jQuery("#zTypeId").focus();
					jQuery("#zTypeId").addClass('errInpt');
					return false;
				}else{
					jQuery("#zTypeId").removeClass('errInpt');
					jQuery("#zTypeName").val(jQuery("#zTypeId").find('option:selected').text());
				}
				
				var zLevelId = jQuery("#zLevelId").val();
				if(jQuery.trim(zLevelId) == "-99"){
					alert("层次为必选项！");
					jQuery("#zLevelId").focus();
					jQuery("#zLevelId").addClass('errInpt');
					return false;
				}else{
					jQuery("#zLevelId").removeClass('errInpt');
					jQuery("#zLevelName").val(jQuery("#zLevelId").find('option:selected').text());
				}
				
				var zInfo = jQuery("#zInfo").val();
				if(jQuery.trim(zInfo) == ""){
					alert("备注为必填项！");
					jQuery("#zInfo").focus();
					jQuery("#zInfo").addClass('errInpt');
					return false;
				}else{
					jQuery("#zInfo").removeClass('errInpt');
				}
				
				document.addOnline.submit();
			}
		</script>
</head>

<body>
	<!-- 头部操作菜单栏 -->
	<!--#include file="common/normalTop.asp" -->
    
	<!-- 广告标语区-start -->
    <!--#include file="common/ad.asp" -->
	<!-- 广告标语区-end -->
	
	<div id="gkPage">
		<div id="gkPageWrap" class="gkMain gkWrap">  
		    <div id="mainContent" style="border:0px solid red; min-height:1000px">
				
				<!-- -->
				<div id="gkTop2" class="gkMain clear">
					<!-- left -->
					<!--#include file="common/left.asp" -->
					<!-- right -->
					<div class="rightSide">
						<div class="newsTitle bgColor wsbmBgImg">
							<div class="phoneDiv">官方咨询电话：400-6565-800</div>
						</div>
						<div class="newsDetail">
							<form  name="addOnline" method="post" action="addOnlineInfoAct.asp">
							<div id="wsbmTab">
							<table cellpadding="0" cellspacing="0" border="0">
								<tr>
									<th><span>*</span> 姓名：</th>
									<td><input type="text" name="zName" id="zName" style="width:180px;" /></td>
									<td></td>
								</tr>
								<tr>
									<th>性别：</th>
									<td><input type="radio" name="zSex" value="1" checked="checked" /> 男 <input type="radio" name="zSex" value="0" /> 女 </td>
									<td></td>
								</tr>
								<tr>
									<th><span>*</span> 电话：</th>
									<td><input type="text" name="zPhone" id="zPhone" style="width:180px;" /> </td>
									<td></td>
								</tr>
								<tr>
									<th><span>*</span> 类别：</th>
									<td>
										<input type="hidden" name="zTypeName" id="zTypeName" />
										<select name="zTypeId" id="zTypeId" style="width:185px;">
											<option value="-99">--请选择--</option>
											<option value="1">自考学历</option>
											<option value="2">成人学历</option>
											<option value="3">远程学历</option>
											<option value="4">硕士研究生</option>
											<option value="5">专业证书</option>
											<option value="6">职业教育</option>
										</select> 
									</td>
									<td></td>
								</tr>
								<tr>
									<th><span>*</span> 层次：</th>
									<td>
										<input type="hidden" name="zLevelName" id="zLevelName" />
										<select name="zLevelId" id="zLevelId" style="width:185px;">
											<option value="-99">--请选择--</option>
											<option value="1">高起专</option>
											<option value="2">高起本</option>
											<option value="3">专升本</option>
										</select> 
									</td>
									<td></td>
								</tr>
								<tr>
									<th style="margin-bottom:30px;"><span>*</span> 备注：</th>
									<td colspan="2"><textarea cols="80" rows="10" name="zInfo" id="zInfo"></textarea></td>
								</tr>
							</table>
							</div>
							<div class="subBut">
								<div class="sDiv"><div class="buttonDiv" onclick="doSbmit()">提 交</div> <div class="buttonDiv" style="margin-left:5px;" onclick="window.location.reload()">重 置</div></div>
							</div>
							<div class="bmxqTitle">&nbsp;报名详情</div>
							<div class="subBut">&nbsp;&nbsp;&gt 请各位同学如实填写各项内容，以免影响正常报名；</div>
							<div class="subBut">&nbsp;&nbsp;&gt; 本中心会在一周内有专业指导老师联系您； </div>
							<div class="subBut bottom_5">&nbsp;&nbsp;&gt; 本中心未委托任何单位和个人代收学费，谨防上当受骗。</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
<!-- 底部操作菜单栏 -->
	<!--#include file="common/footer.asp" -->

</body>

</html>
