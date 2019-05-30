<%@ page language="java" contentType="text/html; charset=GB18030"
    pageEncoding="GB18030"%>
     <%@page import="java.net.URLEncoder" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>Insert title here</title>
</head>
<body>
<%
	String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"utf-8");
	name=URLEncoder.encode(name,"UTF-8");;
	String where=new String(request.getParameter("where").getBytes("ISO-8859-1"),"utf-8");
	where=URLEncoder.encode(where,"UTF-8");;
	session.setAttribute("name",name);
	session.setAttribute("where",where);
%>
<jsp:include page="session_show.jsp"></jsp:include>
</body>
</html>