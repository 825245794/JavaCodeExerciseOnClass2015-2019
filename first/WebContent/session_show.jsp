<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.net.URLDecoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
Name:<%=URLDecoder.decode(session.getAttribute("name").toString(),"UTF-8") %><br>
Where:<%=URLDecoder.decode(session.getAttribute("where").toString(),"UTF-8") %>
</body>
</html>