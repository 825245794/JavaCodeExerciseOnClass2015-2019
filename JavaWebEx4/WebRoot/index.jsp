<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <a href="cart.jsp"><img alt="cart" src="cart.jpg" width="200px"></a>
   <table>
   <tr><td><a href="add?bookid=1"><img src="11.jpg" width="148px"></a></td><td><a href="add?bookid=2"><img src="12.jpg" width="148px"></a></td><td><a href="add?bookid=3"><img src="13.jpg" width="148px"></a></td></tr>
   <tr><td><a href="add?bookid=1">Servlet Jsp教学手册</a></td><td><a href="add?bookid=2">JQuery实战训练</a></td><td><a href="add?bookid=3">Java技术操作</a></td></tr>
   </table>
  </body>
</html>
