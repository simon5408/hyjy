<%
	Function RemoveHTML(strHTML) 
		Dim objRegExp, Match, Matches 
		Set objRegExp = New Regexp 
		objRegExp.IgnoreCase = True 
		objRegExp.Global = True 
		'取闭合的<> 
		objRegExp.Pattern = "<.+?>" 
		'进行匹配 
		Set Matches = objRegExp.Execute(strHTML) 
		' 遍历匹配集合，并替换掉匹配的项目 
		For Each Match in Matches 
			strHtml=Replace(strHTML,Match.Value,"") 
		Next 
		RemoveHTML=strHTML 
		Set objRegExp = Nothing 
	End Function
%>