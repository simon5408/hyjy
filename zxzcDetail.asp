<!--#include file="conn.asp" -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0022)http://www.szhyedu.cn/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>���ϱ���</title>
		<!-- ͷ������������ -->
		<!--#include file="common/header.asp" -->
		<script type="text/javascript">
			function doSbmit(){
				var zName = jQuery("#zName").val();
				if(jQuery.trim(zName) == ""){
					alert("����Ϊ�����");
					jQuery("#zName").focus();
					jQuery("#zName").addClass('errInpt');
					return false;
				}else{
					jQuery("#zName").removeClass('errInpt');
				}
				
				var zPhone = jQuery("#zPhone").val();
				if(jQuery.trim(zPhone) == ""){
					alert("�绰Ϊ�����");
					jQuery("#zPhone").focus();
					jQuery("#zPhone").addClass('errInpt');
					return false;
				}else{
					jQuery("#zPhone").removeClass('errInpt');
				}
				
				var zTypeId = jQuery("#zTypeId").val();
				if(jQuery.trim(zTypeId) == "-99"){
					alert("���Ϊ��ѡ�");
					jQuery("#zTypeId").focus();
					jQuery("#zTypeId").addClass('errInpt');
					return false;
				}else{
					jQuery("#zTypeId").removeClass('errInpt');
					jQuery("#zTypeName").val(jQuery("#zTypeId").find('option:selected').text());
				}
				
				var zLevelId = jQuery("#zLevelId").val();
				if(jQuery.trim(zLevelId) == "-99"){
					alert("���Ϊ��ѡ�");
					jQuery("#zLevelId").focus();
					jQuery("#zLevelId").addClass('errInpt');
					return false;
				}else{
					jQuery("#zLevelId").removeClass('errInpt');
					jQuery("#zLevelName").val(jQuery("#zLevelId").find('option:selected').text());
				}
				
				var zInfo = jQuery("#zInfo").val();
				if(jQuery.trim(zInfo) == ""){
					alert("��עΪ�����");
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
	<!-- ͷ�������˵��� -->
	<!--#include file="common/normalTop.asp" -->
    
	<!-- ��������-start -->
    <!--#include file="common/ad.asp" -->
	<!-- ��������-end -->
	
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
							<div class="phoneDiv">�ٷ���ѯ�绰��400-6565-800</div>
						</div>
						<div class="newsDetail">
							<form  name="addOnline" method="post" action="addOnlineInfoAct.asp">
							<div id="wsbmTab">
							<table cellpadding="0" cellspacing="0" border="0">
								<tr>
									<th><span>*</span> ������</th>
									<td><input type="text" name="zName" id="zName" style="width:180px;" /></td>
									<td></td>
								</tr>
								<tr>
									<th>�Ա�</th>
									<td><input type="radio" name="zSex" value="1" checked="checked" /> �� <input type="radio" name="zSex" value="0" /> Ů </td>
									<td></td>
								</tr>
								<tr>
									<th><span>*</span> �绰��</th>
									<td><input type="text" name="zPhone" id="zPhone" style="width:180px;" /> </td>
									<td></td>
								</tr>
								<tr>
									<th><span>*</span> ���</th>
									<td>
										<input type="hidden" name="zTypeName" id="zTypeName" />
										<select name="zTypeId" id="zTypeId" style="width:185px;">
											<option value="-99">--��ѡ��--</option>
											<option value="1">�Կ�ѧ��</option>
											<option value="2">����ѧ��</option>
											<option value="3">Զ��ѧ��</option>
											<option value="4">˶ʿ�о���</option>
											<option value="5">רҵ֤��</option>
											<option value="6">ְҵ����</option>
										</select> 
									</td>
									<td></td>
								</tr>
								<tr>
									<th><span>*</span> ��Σ�</th>
									<td>
										<input type="hidden" name="zLevelName" id="zLevelName" />
										<select name="zLevelId" id="zLevelId" style="width:185px;">
											<option value="-99">--��ѡ��--</option>
											<option value="1">����ר</option>
											<option value="2">����</option>
											<option value="3">ר����</option>
										</select> 
									</td>
									<td></td>
								</tr>
								<tr>
									<th style="margin-bottom:30px;"><span>*</span> ��ע��</th>
									<td colspan="2"><textarea cols="80" rows="10" name="zInfo" id="zInfo"></textarea></td>
								</tr>
							</table>
							</div>
							<div class="subBut">
								<div class="sDiv"><div class="buttonDiv" onclick="doSbmit()">�� ��</div> <div class="buttonDiv" style="margin-left:5px;" onclick="window.location.reload()">�� ��</div></div>
							</div>
							<div class="bmxqTitle">&nbsp;��������</div>
							<div class="subBut">&nbsp;&nbsp;&gt ���λͬѧ��ʵ��д�������ݣ�����Ӱ������������</div>
							<div class="subBut">&nbsp;&nbsp;&gt; �����Ļ���һ������רҵָ����ʦ��ϵ���� </div>
							<div class="subBut bottom_5">&nbsp;&nbsp;&gt; ������δί���κε�λ�͸��˴���ѧ�ѣ������ϵ���ƭ��</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
<!-- �ײ������˵��� -->
	<!--#include file="common/footer.asp" -->

</body>

</html>
