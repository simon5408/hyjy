
<%@LANGUAGE="VBSCRIPT" CODEPAGE="936"%>
<!--#include file="conn.asp" -->
<%
cateId = request.querystring("cate")
If request.totalbytes>0 Then
 formsize=request.totalbytes             ' ȡ���������ֽڳ���
 formdata=request.binaryread(formsize)        ' ��ȡ������������
 bncrlf=chrB(13)&chrB(10)
 datastart=instrb(formdata,bncrlf&bncrlf)+3       ' ȡ���������ļ���ʼλ�� (�����س����з�)
 divider=leftB(formdata,instrb(formdata,bncrlf)-1)     ' ����ȡ�������� Field �ָ���� (����Ϊ������)
 dataend=instrb(datastart,formdata,divider)-datastart   ' ȡ���������ļ����ֽ���λ��
'���ļ���Ϣ���浽���ݿ�
 Call SaveTofile()       '���ϴ����ļ����浽������
End If


Sub SaveTofile()'���ϴ����ļ����浽������
'2.����ȡ����Ϣ�Զ��������ļ���� --- stm
 savepath=server.mappath("vip")&"\"   '��������Լ�Ҫ�Ƚ�����ӦĿ¼ ���߿���fso�Զ�����
 Set  strm=createObject("adodb.str"&"eam")
 with strm
  .type=1          ' ������ģʽ
  .mode=3          ' ָ����ģʽΪ��д
  .open
  .write formdata        'д�������������
  '���ı�ģʽ��ȡ����,���ڻ���ύ�������ļ�·�������Ƶ���Ϣ
  .position=0         '���α�ָ�������ײ�
  .type=2          '���ı�ģʽ��ȡ
  .CharSet = "gb2312"     '�������ı���
  formhead=.ReadText(datastart-1)   '��ȡ��ͷ������
 End with
   '2.1��ȡ�ϴ����ļ�����filename
   fullname=fRegExpSgl(formhead,true,true,true,"[\s\S]*filename\=""(.*?)""[\s\S]*","$1")
   fname=Split(fullname,"\")
   filename=fname(UBound(fname))  '��ȡ���ļ���
   Set fso = Server.CreateObject("Scripting.File"&"System"&"Object") '�ж��Ƿ��뱾�����ļ�����,���������� XXX(1).xxx
    If fso.FileExists(savepath&filename) Then
     For i=1 To 999
      Fxname=Split(filename,".")
      Fn=Left(filename,InstrRev(filename,".")-1)
      Fnx=fxname(UBound(fxname))
      If Not fso.FileExists(SavePath&Fn&"("&i&")."&Fnx) Then
       filename=Fn&"("&i&")."&Fnx
       Exit For
      End If
     Next
    End If
'3.��stm���������ļ��л�ȡ��Ч��Ϣ �� �����ļ�
 Set  formstrm=createOBject("adodb.str"&"eam")
  with formstrm
   .type=1         ' ������ģʽ
   .mode=3
   .open
   strm.position = datastart      ' ָ�� stm �������ʼλ��, �Ա��� bStart ��ֵΪ��ʼλ��
   strm.copyTo formstrm,dataend    ' ���� stm ���������� fromStm ����, ����Ϊ bEnd �����ĳ���
   .saveTofile (savepath&filename),2   ' ����Ϣ���浽�ļ�, ���������ͬ����, �򸲸�
   .close
  end with
 Set strm=Nothing
 Set formstrm=Nothing
  
 response.redirect "addVipImages.asp"
End Sub
function fRegExpSgl(str,glb,igc,mtl,pt,rpt)
 dim re
 set re=new RegExp
  re.global=glb
  re.ignoreCase=igc
  re.multiline=mtl
  re.pattern=pt
  fRegExpSgl=re.replace(str,rpt)
 set re=nothing
end function
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" " http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns=" http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<!--#include file="header.asp" -->
	
	<script language="javascript" type="text/javascript">
		function doSbmit(){
			
			var scFile = $("#scFile").val();
			if($.trim(scFile) == ""){
				alert("ͼƬΪ��ѡ�");
				$("#scFile").focus();
				$("#scFile").addClass('errInpt');
				return false;
			}else{
				$("#scFile").removeClass('errInpt');
			}
						
			document.form1.submit();
		}

	</script>
</head>

<body  leftmargin="0" topmargin="0">
<% username=session("username") 
	if username<>"" then 
	session("typeName") = "����VIPͼƬ"
%>
	<!-- ͷ�������˵��� -->
	<!--#include file="top.asp" -->

	<!-- ��߲����� -->
	<div id="left">
		
	</div>
	
	<div id="right">
	<form action="" method="post" name="form1" enctype="multipart/form-data">
	<!-- enctype="multipart/form-data"����ʡ��,�Ա�֤�ύ��������Ϣ����ȷ��,����Զ���ύ��Ϣ -->
	<div id="oprtDiv">
	<table class="trgTbl" width="100%" border="0" cellpadding="1" cellspacing="1" style="background:#f5f5f5">
		
		<tr>
			<th width="100" height="50" align="right">�ϴ�ͼƬ��</th>
			<td width="" align="left">
				<input name="FileName" id="scFile" type="FILE" class="tx1" size="40" style="height:22">�����Ϊ1090px��
			</td>
		</tr>
	</table>
	</div>
	<div id="operateBtn">
		<a href="javascript:void(0);" onclick="doSbmit()" class="easyui-linkbutton" icon="icon-save">�� ��</a>
	</div>
	
</form>
<!-- ���幦����(����) -->
	</div>
<%
    else
		response.Redirect "../login.asp"
 	end if 
%>
</body>
</html>
