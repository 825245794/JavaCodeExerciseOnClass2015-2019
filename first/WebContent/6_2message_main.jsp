<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>6_2 Message</title>
</head>
<body>
<form action="6_2add.jsp" Method="post">
	<input type="text" name="name" width=50 value="LJL"><br>
	<input type="text" name="msg" style="width:350px; height:100px;"><br>
	<input type="submit" width=50>
</form>
<%
if(application.getAttribute("name0")!=null){
	int k=Integer.parseInt(application.getAttribute("counter").toString());
	for(int i=0;i<k;i++){
		%>
		<form action="6_2del.jsp?ids=<%=String.valueOf(i) %>" Method="post">
		<pre><%
		out.println("创建者:"+application.getAttribute("name"+String.valueOf(i)));
		out.println("留言:"+application.getAttribute("msg"+String.valueOf(i)));
		%>
		<input type="submit" value="删除">
		
		</pre>
		</form><%
	}
}
 else{%>没有留言...<%} %>

</body> 
</html>