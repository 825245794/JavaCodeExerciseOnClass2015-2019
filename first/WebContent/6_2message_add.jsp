<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>6_2message_add.jsp</title>
</head>
<body>

<%--<%@include file="6_2message_main.jsp"%> --%>
<%
if(application.getAttribute("counter").toString()==null){
	application.setAttribute("counter", "0");}
if(request.getParameter("name")!=null){
	int k=Integer.parseInt(application.getAttribute("counter").toString());
	application.setAttribute("name"+String.valueOf(k), request.getParameter("name"));
	application.setAttribute("msg"+String.valueOf(k), request.getParameter("msg"));
	application.setAttribute("counter", String.valueOf(++k));
	}%>
<jsp:forward page="6_2message_main.jsp">
 
</body>
</html>