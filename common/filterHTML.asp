<%
	Function RemoveHTML(strHTML) 
		Dim objRegExp, Match, Matches 
		Set objRegExp = New Regexp 
		objRegExp.IgnoreCase = True 
		objRegExp.Global = True 
		'ȡ�պϵ�<> 
		objRegExp.Pattern = "<.+?>" 
		'����ƥ�� 
		Set Matches = objRegExp.Execute(strHTML) 
		' ����ƥ�伯�ϣ����滻��ƥ�����Ŀ 
		For Each Match in Matches 
			strHtml=Replace(strHTML,Match.Value,"") 
		Next 
		RemoveHTML=strHTML 
		Set objRegExp = Nothing 
	End Function
%>