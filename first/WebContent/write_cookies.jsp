<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.net.URLEncoder" %>
     <%@page import="java.util.*" %>
     <%@page import="java.text.SimpleDateFormat" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>写入Cookie</title>
</head>
<body>
<%
	//request.setCharacterEncoding("GB18030");
	String time=request.getParameter("time");
	String name=new String(request.getParameter("name").getBytes("ISO-8859-1"),"UTF-8");
	String user=URLEncoder.encode(name,"UTF-8");
	Cookie cookie=new Cookie("LJLusers",user);
	Cookie cookietime=new Cookie("LJLTimes",time.substring(time.indexOf(":")+1));
	cookie.setMaxAge(10*1);
	cookietime.setMaxAge(10*1);
	response.addCookie(cookie);
	response.addCookie(cookietime);
%>

 <script type="text/javascript">window.location.href="read_cookies.jsp"</script>
</body>
</html>