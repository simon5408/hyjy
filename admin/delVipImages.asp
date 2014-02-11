<!--#include file="conn.asp" -->
<%
	Idx = Request.QueryString("viId")
	
	exec="select * from vip_img where (vi_id="&Idx&")"
	set rs=server.createobject("adodb.recordset")
	rs.open exec,conn,1,1 
	filepath = "/admin/vip/"&rs("vi_path")
	Set deleteFileObject=Server.CreateObject("Scripting.FileSystemObject")
	delefilepath=Server.MapPath(filepath)
	if deleteFileObject.FileExists(delefilepath) then
		Set delefilepath=deleteFileObject.GetFile(delefilepath)
		delefilepath.Delete
		
		conn.execute ("delete * from vip_img where vi_id = "&Idx)
		conn.close
		set conn=nothing
	end if
		
	'response.Redirect "listVipImages.asp"
	response.write("<script language=javascript>alert('É¾³ý³É¹¦!');window.location.href='listVipImages.asp';</script>")
	Response.End 
	
%>