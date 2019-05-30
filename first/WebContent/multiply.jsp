<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>multiply</title>
</head>
<body>
<%
	String a="";
	for(int i=1;i<10;i++){
		for(int j=1;j<=i;j++){
			a+=i+"*"+j+"="+(i*j)+"&nbsp";
		}
		a+="<br>";
	}
%>
<table width="450" height="88" border="1" bordercolor="#FFFFFF">
<tr><td height="30" align="center">九九乘法表</td></tr>
<tr><td height="58"><%=a %></td></tr>
</table>

</body>
</html>