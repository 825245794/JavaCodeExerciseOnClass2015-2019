<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>

<body>

<%
application.setAttribute("url2", "123");
response.setHeader("refresh", "3;URL=6_1Login.jsp");
%>
<p align="center">用户名或密码错误，3秒后跳转....</p>
<%=application.getAttribute("url2") %>
</body>
</html>