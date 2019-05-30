<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.util.*"%>
<%@page import="java.text.SimpleDateFormat" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>第一个Java Web应用</title>
</head>
<body onload="showtime()">
<script language="javascript">
var timerID = null; 
function showtime(){
	var now = new Date();  
	
    document.clock.thetime.value = now.toLocaleString();
    timerID = setTimeout("showtime()", 1000);  
}
</script>
<%
	
			Date date=new Date();
			SimpleDateFormat f=new SimpleDateFormat("yy-MM-dd HH:mm:ss");
			String today=f.format(date);
			
			
%>
<form action="" name="clock">
<input name="thetime" type="text" width="200">
</form>
当前时间:<%=today %>
<%@include file="copyright.jsp" %>
<jsp:include page="copyright.jsp"/>
</body>
</html>